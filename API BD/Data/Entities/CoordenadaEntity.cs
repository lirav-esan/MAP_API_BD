namespace API_BD.Data.Entities
{
    public class CoordenadaEntity
    {
        public long Id { get; set; }
        public long? PuntoId { get; set; }
        public decimal X { get; set; }
        public decimal Y { get; set; }

        public PuntoInteresEntity? PuntoInteres { get; set; }
    }
}
