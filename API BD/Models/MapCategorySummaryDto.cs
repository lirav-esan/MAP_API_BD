namespace API_BD.Models
{
    public class MapCategorySummaryDto
    {
        public string Id { get; set; } = string.Empty;
        public string Label { get; set; } = string.Empty;
        public int Count { get; set; }
        public bool Visible { get; set; } = true;
        public string Group { get; set; } = string.Empty;
    }
}
