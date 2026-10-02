using API_BD.DTOs;
using API_BD.Models;
using API_BD.Repositories;
using API_BD.Services;
using BCrypt.Net;
using Google.Apis.Auth;
using Microsoft.AspNetCore.Mvc;

namespace API_BD.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        private readonly JwtService _jwtService;
        private readonly IUsuarioRepository _usuarioRepository;

        public AuthController(IConfiguration configuration, JwtService jwtService, IUsuarioRepository usuarioRepository)
        {
            _configuration = configuration;
            _jwtService = jwtService;
            _usuarioRepository = usuarioRepository;
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody] RegisterDto dto)
        {
            var existeUsuario = await _usuarioRepository.ObtenerPorEmailAsync(dto.Email);
            if (existeUsuario != null)
                return BadRequest("El correo electrónico ya está registrado.");

            var nuevoUsuario = new Usuario
            {
                Username = dto.Username,
                
                Email = dto.Email,
                
                PassHash = BCrypt.Net.BCrypt.HashPassword(dto.Password), // Encriptar contraseña
                FechaRegistro = DateTime.UtcNow
            };

            var usuarioCreado = await _usuarioRepository.CrearAsync(nuevoUsuario);
            var token = _jwtService.GenerarToken(usuarioCreado);

            return Ok(new AuthResponseDto
            {
                Token = token,
                Username = usuarioCreado.Username,
                Email = usuarioCreado.Email
            });
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] LoginDto dto)
        {
            var usuario = await _usuarioRepository.ObtenerPorEmailAsync(dto.Email);
            if (usuario == null || string.IsNullOrEmpty(usuario.PassHash)) 
                return Unauthorized("Credenciales inválidas.");

            bool passValida = BCrypt.Net.BCrypt.Verify(dto.Password, usuario.PassHash); 
            if (!passValida)
                return Unauthorized("Credenciales inválidas.");

            var token = _jwtService.GenerarToken(usuario);

            return Ok(new AuthResponseDto
            {
                Token = token,
                Username = usuario.Username,
                Email = usuario.Email
            });
        }

        [HttpPost("google")]
        public async Task<IActionResult> GoogleLogin([FromBody] GoogleLoginDTO dto)
        {
            try
            {
                var clientId = _configuration["Google:ClientId"];

                // valida el token con los servidores de google
                var settings = new GoogleJsonWebSignature.ValidationSettings()
                {
                    Audience = new[] { clientId }
                };

                var payload = await GoogleJsonWebSignature.ValidateAsync(dto.IdToken, settings);
                //informacion del usuario: 
                //payload.Email, payload.Name, payload.Subject (id unico de google)

                // Buscar si el usuario ya existe por email
                var usuario = await _usuarioRepository.ObtenerPorEmailAsync(payload.Email);

                if (usuario == null)
                {
                    // Si no existe, registrar
                    usuario = new Usuario
                    {
                        Username = payload.Name ?? payload.Email.Split('@')[0], // Generar username desde el nombre o correo
                        Email = payload.Email,
                        PassHash = null, // Sin contraseña local por ser inicio con Google
                        FechaRegistro = DateTime.UtcNow
                    };

                    usuario = await _usuarioRepository.CrearAsync(usuario);
                }

                // Generar el JWT
                var token = _jwtService.GenerarToken(usuario);

                return Ok(new AuthResponseDto
                {
                    Token = token,
                    Username = usuario.Username,
                    Email = usuario.Email
                });
            }
            catch (InvalidJwtException)
            {
                return Unauthorized("Token de Google inválido.");
            }
        }
    }
}
