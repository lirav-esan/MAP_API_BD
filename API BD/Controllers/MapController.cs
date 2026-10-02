using API_BD.Models;
using API_BD.Repositories;
using Microsoft.AspNetCore.Mvc;

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

    [HttpGet("categories")]
    public async Task<ActionResult<IEnumerable<MapCategoryDto>>> GetCategories()
    {
        var cats = await _repo.GetCategoriesAsync();
        return Ok(cats);
    }

    [HttpGet("points")]
    public async Task<ActionResult<IEnumerable<PointOfInterest>>> GetPoints([FromQuery] string? category)
    {
        var points = await _repo.GetPointsAsync(category);
        return Ok(points);
    }

    [HttpGet("points/{id:int}")]
    public async Task<ActionResult<PointOfInterest>> GetPointById(int id)
    {
        var point = await _repo.GetPointByIdAsync(id);
        return point is null ? NotFound() : Ok(point);
    }

    [HttpGet("icons")]
    public async Task<ActionResult<IEnumerable<MapIconDto>>> GetIcons()
    {
        var icons = await _repo.GetIconsAsync();
        return Ok(icons);
    }

    [HttpGet("coordinates")]
    public async Task<ActionResult<IEnumerable<Coordinate>>> GetCoordinates([FromQuery] string category)
    {
        if (string.IsNullOrWhiteSpace(category))
        {
            return BadRequest("Se requiere el parámetro 'category'.");
        }

        var coords = await _repo.GetCoordinatesByCategoryAsync(category);
        return Ok(coords);
    }
}
