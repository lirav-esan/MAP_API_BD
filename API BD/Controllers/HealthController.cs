using API_BD.Configuration;
using Microsoft.AspNetCore.Mvc;

namespace API_BD.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HealthController : ControllerBase
    {
        private readonly SupabaseSettings _supabaseSettings;

        public HealthController()
        {
            // Para prueba simple
        }

        [HttpGet("status")]
        public IActionResult GetStatus()
        {
            return Ok(new
            {
                status = "API running",
                timestamp = DateTime.UtcNow,
                message = "API BD - Supabase Migration"
            });
        }

        [HttpGet("connection-info")]
        public IActionResult GetConnectionInfo()
        {
            try
            {
                var settings = new SupabaseSettings
                {
                    Url = "https://oeqypojkxtqxgpmgpkmj.supabase.co",
                    PostgresPassword = "configured"
                };

                var connString = settings.GetConnectionString();

                // Ocultar contraseña en respuesta
                var safeConnString = System.Text.RegularExpressions.Regex.Replace(
                    connString, 
                    @"Password=[^;]+", 
                    "Password=***HIDDEN***"
                );

                return Ok(new
                {
                    host = "db.oeqypojkxtqxgpmgpkmj.supabase.co",
                    database = "postgres",
                    connectionString = safeConnString,
                    status = "Configuration loaded"
                });
            }
            catch (Exception ex)
            {
                return BadRequest(new { error = ex.Message });
            }
        }
    }
}
