using System.Collections.Generic;
using API_BD.Models;

namespace API_BD.Repositories
{
    public interface IMapRepository
    {
        IEnumerable<PointOfInterestCategory> GetCategories();
        IEnumerable<PointOfInterest> GetPoints(string? category = null);
        PointOfInterest? GetPointById(string id);
        IEnumerable<(string Category, string IconUrl)> GetIcons();
        IEnumerable<Coordinate> GetCoordinatesByCategory(string category);
    }
}
