using System.Collections.Generic;

namespace API_BD.Models
{
    public class PointOfInterest
    {
        public long Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public long CategoryId { get; set; }
        public string Category { get; set; } = string.Empty;
        public string Group { get; set; } = string.Empty;
        public string? IconUrl { get; set; }
        public List<Coordinate> Coordinates { get; set; } = new();
        public string? Description { get; set; }
    }
}
