namespace API_BD.Data.Entities
{
    public class CategoriaEntity
    {
        public int Id { get; set; }
        public string Categoria { get; set; } = string.Empty;

        public ICollection<PuntoInteresEntity> PuntosInteres { get; set; } = new List<PuntoInteresEntity>();
    }
}
