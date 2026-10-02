using Microsoft.AspNetCore.Mvc;
using Google.Apis.Auth;
using API_BD.DTOs;

namespace API_BD.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public AuthController(IConfiguration configuration)
        {
            _configuration = configuration;
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

                //TODO: generar un token JWT desde la aplicacion

                return Ok(new {
                    message = "Autenticación exitosa",
                    email = payload.Email,
                    nombre = payload.Name
                });
            }
            catch (InvalidJwtException)
            {
                return Unauthorized("Token de Google inválido.");
            }
        }
    }
}
