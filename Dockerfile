FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 10000

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

COPY ["API BD/API BD.csproj", "API BD/"]
RUN dotnet restore "API BD/API BD.csproj"

COPY . .
WORKDIR "/src/API BD"
RUN dotnet publish "API BD.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .

ENV ASPNETCORE_ENVIRONMENT=Production

# Render provides PORT; 10000 is a local/default fallback.
CMD ["sh", "-c", "dotnet 'API BD.dll' --urls http://0.0.0.0:${PORT:-10000}"]
