namespace API_BD.Data.Entities
{
    public class PuntoInteresEntity
    {
        public int Id { get; set; }
        public string? Nombre { get; set; }
        public int? CategoryId { get; set; }
        public string? Descripcion { get; set; }

        public CategoriaEntity? Categoria { get; set; }
        public ICollection<CoordenadaEntity> Coordenadas { get; set; } = new List<CoordenadaEntity>();
        public IconEntity? Icon { get; set; }
    }
}
