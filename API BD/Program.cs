using API_BD.Data;
using API_BD.Repositories;
using API_BD.Services;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection")
    ?? throw new InvalidOperationException(
        "No se encontró ConnectionStrings:DefaultConnection.");

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseNpgsql(connectionString, npgsqlOptions =>
    {
        npgsqlOptions.CommandTimeout(30);
        npgsqlOptions.EnableRetryOnFailure(maxRetryCount: 3);
    }));

// Inyección de dependencias de Repositorios y Servicios
builder.Services.AddScoped<IUsuarioRepository, UsuarioRepository>();
builder.Services.AddScoped<JwtService>();

// Add services to the container.
builder.Services.AddControllers();
// OpenAPI (funciones integradas del template original)
builder.Services.AddOpenApi();

// Repositorios.
builder.Services.AddScoped<API_BD.Repositories.IMapRepository, API_BD.Repositories.DbMapRepository>();

// El origen CORS del frontend map-front en GitHub Pages.
// CORS valida el origen (esquema + host + puerto), no la ruta /map-front ni el fragmento #/login.
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowFrontend", policy =>
        policy.WithOrigins("https://lirav-esan.github.io/map-front")
            .AllowAnyHeader()
            .AllowAnyMethod());
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseHttpsRedirection();
app.UseCors("AllowFrontend");

app.UseAuthorization();

app.MapControllers();

app.Run();
