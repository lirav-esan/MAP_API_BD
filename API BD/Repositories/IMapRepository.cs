using API_BD.Models;

namespace API_BD.Repositories
{
    public interface IMapRepository
    {
        Task<IEnumerable<MapCategoryDto>> GetCategoriesAsync();
        Task<IEnumerable<PointOfInterest>> GetPointsAsync(string? category = null);
        Task<PointOfInterest?> GetPointByIdAsync(int id);
        Task<IEnumerable<MapIconDto>> GetIconsAsync();
        Task<IEnumerable<Coordinate>> GetCoordinatesByCategoryAsync(string category);
    }
}
