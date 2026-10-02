namespace API_BD.Data.Entities
{
    public class IconEntity
    {
        public int PuntoId { get; set; }
        public string? ImgUrl { get; set; }

        public PuntoInteresEntity? PuntoInteres { get; set; }
    }
}
