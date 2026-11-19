namespace API_BD.Models
{
    public class Usuario
    {
        public long Id { get; set; }
        public string Username { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        public string? PassHash { get; set; }
        public DateTime FechaRegistro { get; set; } = DateTime.UtcNow;
    }
}
