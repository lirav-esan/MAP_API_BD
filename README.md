# API de datos del mapa

## Endpoints

**•	GET /api/map/categories**

----> Devuelve listado de `categorías` (Enemies, Resources, EndemicLife, Puzzles, ...).

**•	GET /api/map/points**

----> •	Devuelve puntos de interés; si se pasa category filtra por categoría (query string: `?category=Resources`)

**•	GET /api/map/points/{id}**

----> Devuelve un punto de interés por `id`.

**•	GET /api/map/icons**

----> Devuelve pares `{ category, icon }` para uso en leyenda.

**•	GET /api/map/coordinates**

----> Requiere query string: `?category={Category}`. Devuelve solo coordenadas de todos los puntos de una categoría.

## Importación en Postman

La API ya tiene su colección exportada como **JSON**, asi que es facilmente importable en otra computadora, el unico requisito es tener que desplegar el repositorio para hacer las pruebas necesarias
