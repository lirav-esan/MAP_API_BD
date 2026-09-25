using System.Collections.Generic;
using System.Linq;
using API_BD.Models;

namespace API_BD.Repositories
{
    // Implementación en memoria para desarrollo y pruebas.
    public class InMemoryMapRepository : IMapRepository
    {
        private readonly List<PointOfInterest> _points;

        public InMemoryMapRepository()
        {
            _points = new List<PointOfInterest>
            {
                // Recursos - "Rock" similar a Monster Hunter Rise mineral nodes
                new PointOfInterest
                {
                    Name = "Roca de mineral",
                    Category = PointOfInterestCategory.Resources,
                    IconUrl = "/assets/icons/mineral.png",
                    Description = "Nódulo de mineral común usado para forjar armas.",
                    Coordinates = new List<Coordinate>
                    {
                        new Coordinate(12.4, 34.6),
                        new Coordinate(58.1, 22.9),
                        new Coordinate(101.3, 47.7)
                    }
                },
                // Enemigos
                new PointOfInterest
                {
                    Name = "Mini Kulu-Ya-Ku",
                    Category = PointOfInterestCategory.Enemies,
                    IconUrl = "/assets/icons/enemy_small.png",
                    Description = "Pequeño monstruo territorial.",
                    Coordinates = new List<Coordinate>
                    {
                        new Coordinate(45.0, 66.2),
                        new Coordinate(49.3, 62.1)
                    }
                },
                // Vida endémica
                new PointOfInterest
                {
                    Name = "Mushi curioso",
                    Category = PointOfInterestCategory.EndemicLife,
                    IconUrl = "/assets/icons/endemic.png",
                    Description = "Criatura pequeña e inofensiva.",
                    Coordinates = new List<Coordinate>
                    {
                        new Coordinate(5.2, 12.8),
                        new Coordinate(7.1, 14.0)
                    }
                },
                // Puzzle / evento
                new PointOfInterest
                {
                    Name = "Puzzle de ruinas",
                    Category = PointOfInterestCategory.Puzzles,
                    IconUrl = "/assets/icons/puzzle.png",
                    Description = "Interacción ambiental para desbloquear un cofre.",
                    Coordinates = new List<Coordinate>
                    {
                        new Coordinate(88.0, 13.2)
                    }
                }
            };
        }

        public IEnumerable<PointOfInterestCategory> GetCategories()
        {
            return _points.Select(p => p.Category).Distinct();
        }

        public IEnumerable<PointOfInterest> GetPoints(string? category = null)
        {
            if (string.IsNullOrWhiteSpace(category))
                return _points;

            if (!Enum.TryParse<PointOfInterestCategory>(category, true, out var cat))
                return Enumerable.Empty<PointOfInterest>();

            return _points.Where(p => p.Category == cat);
        }

        public PointOfInterest? GetPointById(string id)
        {
            return _points.FirstOrDefault(p => p.Id == id);
        }

        public IEnumerable<(string Category, string IconUrl)> GetIcons()
        {
            return _points.GroupBy(p => p.Category)
                .Select(g => (Category: g.Key.ToString(), IconUrl: g.First().IconUrl ?? string.Empty));
        }

        public IEnumerable<Coordinate> GetCoordinatesByCategory(string category)
        {
            if (!Enum.TryParse<PointOfInterestCategory>(category, true, out var cat))
                return Enumerable.Empty<Coordinate>();

            return _points.Where(p => p.Category == cat).SelectMany(p => p.Coordinates);
        }
    }
}
