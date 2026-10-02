using System.Collections.Generic;

namespace API_BD.Models
{
    public class PointOfInterest
    {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public int CategoryId { get; set; }
        public string Category { get; set; } = string.Empty;
        public string? IconUrl { get; set; }
        public List<Coordinate> Coordinates { get; set; } = new();
        public string? Description { get; set; }
    }
}
