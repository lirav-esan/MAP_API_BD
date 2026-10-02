using API_BD.Models;
using API_BD.Data;
using Microsoft.EntityFrameworkCore;
using System;

namespace API_BD.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private readonly AppDbContext _context; // Cambia AppDbContext por el nombre de tu DbContext

        public UsuarioRepository(AppDbContext context)
        {
            _context = context;
        }

        // Busca un usuario por correo electrónico (ignorando mayúsculas/minúsculas)
        public async Task<Usuario?> ObtenerPorEmailAsync(string email)
        {
            return await _context.Usuarios
                .FirstOrDefaultAsync(u => u.Email.ToLower() == email.ToLower());
        }

        // Busca un usuario por su ID primario
        public async Task<Usuario?> ObtenerPorIdAsync(int id)
        {
            return await _context.Usuarios.FindAsync(id);
        }

        // Registra un nuevo usuario en la base de datos
        public async Task<Usuario> CrearAsync(Usuario usuario)
        {
            await _context.Usuarios.AddAsync(usuario);
            await _context.SaveChangesAsync();
            return usuario;
        }
    }
}
