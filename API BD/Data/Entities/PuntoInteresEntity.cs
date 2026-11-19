namespace API_BD.Data.Entities
{
    public class PuntoInteresEntity
    {
        public long Id { get; set; }
        public string? Nombre { get; set; }
        public long? CategoryId { get; set; }
        public string? Descripcion { get; set; }

        public CategoriaEntity? Categoria { get; set; }
        public ICollection<CoordenadaEntity> Coordenadas { get; set; } = new List<CoordenadaEntity>();
        public IconEntity? Icon { get; set; }
    }
}
