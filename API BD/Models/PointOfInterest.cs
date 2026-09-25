using System.Collections.Generic;

namespace API_BD.Models
{
    public class PointOfInterest
    {
        public string Id { get; init; } = Guid.NewGuid().ToString();
        public string Name { get; set; } = string.Empty;
        public PointOfInterestCategory Category { get; set; }
        public string? IconUrl { get; set; }
        public List<Coordinate> Coordinates { get; set; } = new();
        public string? Description { get; set; }
    }
}
