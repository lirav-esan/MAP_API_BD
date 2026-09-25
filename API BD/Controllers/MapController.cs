using Microsoft.AspNetCore.Mvc;
using API_BD.Models;
using API_BD.Repositories;

namespace API_BD.Controllers;

[ApiController]
[Route("api/[controller]")]
public class MapController : ControllerBase
{
    private readonly IMapRepository _repo;
    public MapController(IMapRepository repo)
    {
        _repo = repo;
    }

    // GET: api/map/categories
    [HttpGet("categories")]
    public ActionResult<IEnumerable<string>> GetCategories()
    {
        var cats = _repo.GetCategories().Select(c => c.ToString());
        return Ok(cats);
    }

    // GET: api/map/points?category=Resources
    [HttpGet("points")]
    public ActionResult<IEnumerable<PointOfInterest>> GetPoints([FromQuery] string? category)
    {
        var points = _repo.GetPoints(category);
        return Ok(points);
    }

    // GET: api/map/points/{id}
    [HttpGet("points/{id}")]
    public ActionResult<PointOfInterest> GetPointById(string id)
    {
        var p = _repo.GetPointById(id);
        if (p is null) return NotFound();
        return Ok(p);
    }

    // GET: api/map/icons
    [HttpGet("icons")]
    public ActionResult<IEnumerable<object>> GetIcons()
    {
        var icons = _repo.GetIcons().Select(i => new { category = i.Category, icon = i.IconUrl });
        return Ok(icons);
    }

    // GET: api/map/coordinates?category=Resources
    [HttpGet("coordinates")]
    public ActionResult<IEnumerable<Coordinate>> GetCoordinates([FromQuery] string category)
    {
        if (string.IsNullOrWhiteSpace(category)) return BadRequest("Se requiere el parámetro 'category'.");
        var coords = _repo.GetCoordinatesByCategory(category);
        return Ok(coords);
    }
}
