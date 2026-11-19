namespace API_BD.Configuration
{
    public class SupabaseSettings
    {
        public string Url { get; set; } = string.Empty;
        public string Key { get; set; } = string.Empty;
        public string? PostgresPassword { get; set; }

        /// <summary>
        /// Construye la cadena de conexión PostgreSQL para Supabase.
        /// Incluye forzar IPv4 para evitar problemas de conectividad IPv6
        /// </summary>
        public string GetConnectionString(string username = "postgres", string password = "")
        {
            // Obtener la contraseña
            var pwd = password;
            if (string.IsNullOrEmpty(pwd) && !string.IsNullOrEmpty(PostgresPassword))
            {
                pwd = PostgresPassword;
            }

            if (string.IsNullOrEmpty(pwd))
            {
                throw new InvalidOperationException(
                    "Contraseña de PostgreSQL no configurada. " +
                    "Agrega 'PostgresPassword' a la sección 'Supabase' en appsettings.json");
            }

            // Extraer el project ID de la URL
            var projectId = Url
                .Replace("https://", "")
                .Replace("http://", "")
                .Split('.')[0];

            // Construir el host correcto para PostgreSQL: db.[PROJECT_ID].supabase.co
            var host = $"db.{projectId}.supabase.co";

            // IMPORTANTE: Incluir parámetros para forzar IPv4 y mejorar la compatibilidad
            // No usamos "No Reset On Close" porque queremos conexiones limpias
            return $"Host={host};Database=postgres;Username={username};Password={pwd};Port=5432;SSL Mode=Require;Include Error Detail=true;";
        }
    }
}
