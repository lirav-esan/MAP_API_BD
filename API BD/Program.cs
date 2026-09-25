var builder = WebApplication.CreateBuilder(args);

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
