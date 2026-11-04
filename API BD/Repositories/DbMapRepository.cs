using API_BD.Data;
using API_BD.Data.Entities;
using API_BD.Models;
using Microsoft.EntityFrameworkCore;

namespace API_BD.Repositories
{
    public class DbMapRepository : IMapRepository
    {
        private readonly AppDbContext _context;

        public DbMapRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<MapCategoryDto>> GetCategoriesAsync()
        {
            return await _context.Categorias
                .AsNoTracking()
                .OrderBy(c => c.Id)
                .Select(c => new MapCategoryDto
                {
                    Id = c.Id,
                    Name = c.Categoria
                })
                .ToListAsync();
        }

        public async Task<IEnumerable<PointOfInterest>> GetPointsAsync(string? category = null)
        {
            var entities = await BuildPointsQuery(category)
                .OrderBy(p => p.Id)
                .ToListAsync();

            return entities.Select(MapPoint).ToList();
        }

        public async Task<PointOfInterest?> GetPointByIdAsync(int id)
        {
            var entity = await _context.PuntosInteres
                .AsNoTracking()
                .Include(p => p.Categoria)
                    .ThenInclude(c => c!.Juego)
                .Include(p => p.Icon)
                .Include(p => p.Coordenadas)
                .FirstOrDefaultAsync(p => p.Id == id);

            return entity is null ? null : MapPoint(entity);
        }

        public async Task<IEnumerable<MapIconDto>> GetIconsAsync()
        {
            var entities = await _context.PuntosInteres
                .AsNoTracking()
                .Include(p => p.Categoria)
                    .ThenInclude(c => c!.Juego)
                .Include(p => p.Icon)
                .Where(p => p.Icon != null)
                .OrderBy(p => p.Id)
                .ToListAsync();

            return entities.Select(p => new MapIconDto
            {
                PuntoId = p.Id,
                Nombre = p.Nombre,
                Categoria = p.Categoria?.Categoria,
                ImgUrl = p.Icon?.ImgUrl
            }).ToList();
        }

        public async Task<IEnumerable<Coordinate>> GetCoordinatesByCategoryAsync(string category)
        {
            var entities = await BuildPointsQuery(category).ToListAsync();

            return entities
                .SelectMany(p => p.Coordenadas.OrderBy(c => c.Id))
                .OrderBy(c => c.PuntoId)
                .ThenBy(c => c.Id)
                .Select(c => new Coordinate(c.X, c.Y))
                .ToList();
        }

        public async Task<IEnumerable<MapMarkerDto>> GetMarkersAsync(string? juego = null, string? category = null)
        {
            var entities = await BuildPointsQuery(category, juego)
                .OrderBy(p => p.Id)
                .ToListAsync();

            return entities
                .SelectMany(p => p.Coordenadas.OrderBy(c => c.Id).Select(c => new MapMarkerDto
                {
                    Id = c.Id.ToString(),
                    Position = [c.X, c.Y],
                    Category = p.Categoria?.Categoria ?? string.Empty,
                    Group = p.Categoria?.Juego?.Juego ?? string.Empty,
                    Title = p.Nombre ?? string.Empty,
                    Content = p.Descripcion ?? string.Empty,
                    IconUrl = p.Icon?.ImgUrl
                }))
                .ToList();
        }

        public async Task<IEnumerable<MapCategorySummaryDto>> GetCategorySummariesAsync(string? juego = null)
        {
            var entities = await BuildPointsQuery(null, juego).ToListAsync();

            return entities
                .GroupBy(p => new
                {
                    Id = p.Nombre ?? string.Empty,
                    Group = p.Categoria?.Categoria ?? string.Empty
                })
                .OrderBy(g => g.Key.Group)
                .ThenBy(g => g.Key.Id)
                .Select(g => new MapCategorySummaryDto
                {
                    Id = g.Key.Id,
                    Label = g.Key.Id,
                    Count = g.Sum(p => p.Coordenadas.Count),
                    Visible = true,
                    Group = g.Key.Group
                })
                .ToList();
        }

        private IQueryable<PuntoInteresEntity> BuildPointsQuery(string? category, string? juego = null)
        {
            var query = _context.PuntosInteres
                .AsNoTracking()
                .Include(p => p.Categoria)
                    .ThenInclude(c => c!.Juego)
                .Include(p => p.Icon)
                .Include(p => p.Coordenadas)
                .AsQueryable();

            if (!string.IsNullOrWhiteSpace(category))
            {
                if (int.TryParse(category, out var categoryId))
                {
                    query = query.Where(p => p.CategoryId == categoryId);
                }
                else
                {
                    var normalizedCategory = category.Trim().ToLower();
                    query = query.Where(p => p.Categoria != null && p.Categoria.Categoria.ToLower() == normalizedCategory);
                }
            }

            if (string.IsNullOrWhiteSpace(juego))
            {
                return query;
            }

            if (int.TryParse(juego, out var juegoId))
            {
                return query.Where(p => p.Categoria != null && p.Categoria.JuegoId == juegoId);
            }

            var normalizedJuego = juego.Trim().ToLower();
            return query.Where(p => p.Categoria != null && p.Categoria.Juego != null && p.Categoria.Juego.Juego.ToLower() == normalizedJuego);
        }

        private static PointOfInterest MapPoint(PuntoInteresEntity entity)
        {
            return new PointOfInterest
            {
                Id = entity.Id,
                Name = entity.Nombre ?? string.Empty,
                CategoryId = entity.CategoryId ?? 0,
                Category = entity.Categoria?.Categoria ?? string.Empty,
                Group = entity.Categoria?.Juego?.Juego ?? string.Empty,
                IconUrl = entity.Icon?.ImgUrl,
                Description = entity.Descripcion,
                Coordinates = entity.Coordenadas
                    .OrderBy(c => c.Id)
                    .Select(c => new Coordinate(c.X, c.Y))
                    .ToList()
            };
        }
    }
}
