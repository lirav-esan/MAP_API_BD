namespace API_BD.Data.Entities
{
    public class JuegoEntity
    {
        public int Id { get; set; }
        public string Juego { get; set; } = string.Empty;

        public ICollection<CategoriaEntity> Categorias { get; set; } = new List<CategoriaEntity>();
    }
}
