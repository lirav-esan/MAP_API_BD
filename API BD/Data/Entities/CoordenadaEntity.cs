namespace API_BD.Data.Entities
{
    public class CoordenadaEntity
    {
        public int Id { get; set; }
        public int? PuntoId { get; set; }
        public decimal X { get; set; }
        public decimal Y { get; set; }

        public PuntoInteresEntity? PuntoInteres { get; set; }
    }
}
