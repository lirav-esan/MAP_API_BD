using API_BD.Data;
using API_BD.Repositories;
using API_BD.Services;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Configurar DbContext con la cadena de conexión
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// Inyección de dependencias de Repositorios y Servicios
builder.Services.AddScoped<IUsuarioRepository, UsuarioRepository>();
builder.Services.AddScoped<JwtService>();

// Add services to the container.
builder.Services.AddControllers();
// OpenAPI (funciones integradas del template original)
builder.Services.AddOpenApi();

// Repositorios / almacenamiento. Implementación en memoria por ahora.
builder.Services.AddSingleton<API_BD.Repositories.IMapRepository, API_BD.Repositories.InMemoryMapRepository>();

// Permitir llamadas desde el navegador (CORS) durante desarrollo.
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", policy => policy.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod());
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseHttpsRedirection();
app.UseCors("AllowAll");

app.UseAuthorization();

app.MapControllers();

app.Run();
