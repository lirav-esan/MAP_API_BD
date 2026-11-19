namespace API_BD.Data.Entities
{
    public class CategoriaEntity
    {
        public long Id { get; set; }
        public string Categoria { get; set; } = string.Empty;
        public long JuegoId { get; set; }

        public JuegoEntity? Juego { get; set; }
        public ICollection<PuntoInteresEntity> PuntosInteres { get; set; } = new List<PuntoInteresEntity>();
    }
}
