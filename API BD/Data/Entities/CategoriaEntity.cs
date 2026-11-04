namespace API_BD.Data.Entities
{
    public class CategoriaEntity
    {
        public int Id { get; set; }
        public string Categoria { get; set; } = string.Empty;
        public int JuegoId { get; set; }

        public JuegoEntity? Juego { get; set; }
        public ICollection<PuntoInteresEntity> PuntosInteres { get; set; } = new List<PuntoInteresEntity>();
    }
}
