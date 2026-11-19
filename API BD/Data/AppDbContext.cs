using API_BD.Data.Entities;
using API_BD.Models;
using Microsoft.EntityFrameworkCore;

namespace API_BD.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<JuegoEntity> Juegos { get; set; }
        public DbSet<CategoriaEntity> Categorias { get; set; }
        public DbSet<PuntoInteresEntity> PuntosInteres { get; set; }
        public DbSet<CoordenadaEntity> Coordenadas { get; set; }
        public DbSet<IconEntity> Icons { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Usuario>(entity =>
            {
                entity.ToTable("usuario");
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Id).HasColumnName("id");
                entity.Property(e => e.Username).HasColumnName("username");
                entity.Property(e => e.Email).HasColumnName("email");
                entity.Property(e => e.PassHash).HasColumnName("pass_hash");
                entity.Property(e => e.FechaRegistro).HasColumnName("fecha_registro");
            });

            modelBuilder.Entity<JuegoEntity>(entity =>
            {
                entity.ToTable("juegos");
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Id).HasColumnName("id");
                entity.Property(e => e.Juego).HasColumnName("juego").HasMaxLength(100).IsRequired();
            });

            modelBuilder.Entity<CategoriaEntity>(entity =>
            {
                entity.ToTable("categorias");
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Id).HasColumnName("id");
                entity.Property(e => e.Categoria).HasColumnName("categoria").HasMaxLength(100).IsRequired();
                entity.Property(e => e.JuegoId).HasColumnName("juego_id");

                entity.HasOne(e => e.Juego)
                    .WithMany(j => j.Categorias)
                    .HasForeignKey(e => e.JuegoId)
                    .OnDelete(DeleteBehavior.Cascade);
            });

            modelBuilder.Entity<PuntoInteresEntity>(entity =>
            {
                entity.ToTable("puntos_interes");
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Id).HasColumnName("id");
                entity.Property(e => e.Nombre).HasColumnName("nombre").HasMaxLength(100);
                entity.Property(e => e.CategoryId).HasColumnName("category_id");
                entity.Property(e => e.Descripcion).HasColumnName("descripcion").HasMaxLength(300);

                entity.HasOne(e => e.Categoria)
                    .WithMany(c => c.PuntosInteres)
                    .HasForeignKey(e => e.CategoryId)
                    .OnDelete(DeleteBehavior.SetNull);
            });

            modelBuilder.Entity<CoordenadaEntity>(entity =>
            {
                entity.ToTable("coordenadas");
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Id).HasColumnName("id");
                entity.Property(e => e.PuntoId).HasColumnName("punto_id");
                entity.Property(e => e.X).HasColumnName("x").HasPrecision(6, 3);
                entity.Property(e => e.Y).HasColumnName("y").HasPrecision(6, 3);

                entity.HasOne(e => e.PuntoInteres)
                    .WithMany(p => p.Coordenadas)
                    .HasForeignKey(e => e.PuntoId)
                    .OnDelete(DeleteBehavior.Cascade);
            });

            modelBuilder.Entity<IconEntity>(entity =>
            {
                entity.ToTable("icons");
                entity.HasKey(e => e.PuntoId);
                entity.Property(e => e.PuntoId).HasColumnName("punto_id");
                entity.Property(e => e.ImgUrl).HasColumnName("img_url").HasMaxLength(300);

                entity.HasOne(e => e.PuntoInteres)
                    .WithOne(p => p.Icon)
                    .HasForeignKey<IconEntity>(e => e.PuntoId)
                    .OnDelete(DeleteBehavior.Cascade);
            });
        }
    }
}
