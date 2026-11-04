namespace API_BD.Models
{
    public class MapMarkerDto
    {
        public string Id { get; set; } = string.Empty;
        public decimal[] Position { get; set; } = [];
        public string Category { get; set; } = string.Empty;
        public string Group { get; set; } = string.Empty;
        public string Title { get; set; } = string.Empty;
        public string Content { get; set; } = string.Empty;
        public string? IconUrl { get; set; }
    }
}
