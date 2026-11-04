USE ISSMap;
GO

-- 1. Insertar el Juego
INSERT INTO Juegos (juego) VALUES ('Monster Hunter Rise (Shrine Ruins)');
DECLARE @juegoId INT = SCOPE_IDENTITY();

-- 2. Insertar Categorías (GroupNames) y mapearlas temporalmente
DECLARE @CatMap TABLE (NombreCat VARCHAR(100), CatId INT);
INSERT INTO Categorias (categoria, juegoId) VALUES ('Endemic Life', @juegoId);
INSERT INTO @CatMap (NombreCat, CatId) VALUES ('Endemic Life', SCOPE_IDENTITY());
INSERT INTO Categorias (categoria, juegoId) VALUES ('General', @juegoId);
INSERT INTO @CatMap (NombreCat, CatId) VALUES ('General', SCOPE_IDENTITY());
INSERT INTO Categorias (categoria, juegoId) VALUES ('Items', @juegoId);
INSERT INTO @CatMap (NombreCat, CatId) VALUES ('Items', SCOPE_IDENTITY());
INSERT INTO Categorias (categoria, juegoId) VALUES ('Locale', @juegoId);
INSERT INTO @CatMap (NombreCat, CatId) VALUES ('Locale', SCOPE_IDENTITY());
INSERT INTO Categorias (categoria, juegoId) VALUES ('Materials', @juegoId);
INSERT INTO @CatMap (NombreCat, CatId) VALUES ('Materials', SCOPE_IDENTITY());

-- 3. Declarar variables para los puntos
DECLARE @CatId INT;
DECLARE @puntoId INT;

-- 4. Insertar Puntos de Interés, Coordenadas e Iconos

-- [1481845] Main Camp (Camp)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Main Camp', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 31.9, 119.33);

    IF 'https://img.game8.co/4532088/28a8c4d217ad58cc9b6fa16ae577d543.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532088/28a8c4d217ad58cc9b6fa16ae577d543.png/show');
    END;
END;


-- [1481963] Shrine Ruins Message 1 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 1', @CatId, 'Climb up to the highest peaks of the mountain in Area 5 using your wirebug until you find an old shrine.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 124.99, 115.93);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1481964] Jewel Lilies 1 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 1', @CatId, 'Near the edge of the Cliff');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 95.95, 95.66);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1481965] Junk Pile (Junk Piles)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Junk Pile', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 117.67, 168.3);

    IF 'https://img.game8.co/4532096/ab5695d402822ba781c7a6190a6b9023.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532096/ab5695d402822ba781c7a6190a6b9023.png/show');
    END;
END;


-- [1481966] Melynx''s Gatherings (Melynx's Gatherings)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Melynx''s Gatherings', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 118.96, 164.75);

    IF 'https://img.game8.co/4532092/5687ca8bd567590a3008a7f8378fba16.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532092/5687ca8bd567590a3008a7f8378fba16.png/show');
    END;
END;


-- [1481967] Antidote Herb (Antidote Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Antidote Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 63.51, 151.25);

    IF 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show');
    END;
END;


-- [1482003] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 100.13, 100.02);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1482004] Vigorwasp (Endemic Life)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Endemic Life';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Vigorwasp', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 52.52, 154.07);

    IF 'https://img.game8.co/4532095/0c849ffaca3eec2c45002076ead879c3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532095/0c849ffaca3eec2c45002076ead879c3.png/show');
    END;
END;


-- [1482005] Fishing Spot (Fishing Spots)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Fishing Spot', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 150.95, 85.18);

    IF 'https://img.game8.co/4532093/18f72c684071985fd001048bfa3c2955.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532093/18f72c684071985fd001048bfa3c2955.png/show');
    END;
END;


-- [1482006] Health Permabuffer (Permabuffers)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Endemic Life';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Health Permabuffer', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 64.08, 108.06);

    IF 'https://img.game8.co/4532090/ca84f60fac39d7803d7dbf8ccef3f302.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532090/ca84f60fac39d7803d7dbf8ccef3f302.png/show');
    END;
END;


-- [1482007] Stinkmink (Hunting Helpers)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Endemic Life';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Stinkmink', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 107.27, 146.77);

    IF 'https://img.game8.co/4532091/9f993762e3e680c5826406f1e50af721.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532091/9f993762e3e680c5826406f1e50af721.png/show');
    END;
END;


-- [1483716] Shrine Ruins Message 2 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 2', @CatId, 'Found in between Areas 6 and 8 below a cliff, climb up the cliffside from the river at Area 6 until you find a vine wall.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 157.12, 102.82);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483717] Shrine Ruins Message 3 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 3', @CatId, 'Found at the top of a mountain south of Area 12 in front of a shrine.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 217.19, 152.43);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483718] Shrine Ruins Message 4 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 4', @CatId, 'Below an archway found above the Wyvern Nest in Area 11.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 206.62, 194.96);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483719] Shrine Ruins Message 5 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 5', @CatId, 'Go up the cliffs in Area 12 and find the bridge that crosses over into Area 13 towards an old shrine.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 223.01, 106.75);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483720] Shrine Ruins Message 6 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 6', @CatId, 'Found up a cliff to the left of an archway in bbetween Areas 7 and 8.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 148.53, 150.59);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483721] Shrine Ruins Message 7 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 7', @CatId, 'On a tree branch in Area 2, start from Area 1 and climb up the cliffs to reach the branch.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 76.88, 94.3);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483828] Shrine Ruins Message 8 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 8', @CatId, 'Walk up the mountain in Area 5 until you reach some lanterns then drop down to some Jewel Lillies. Aim your Wirebug at the wall to your left and run over to the cave entrance.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 126.77, 111.32);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483829] Shrine Ruins Message 9 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 9', @CatId, 'Found behind a fence where there''s a patch of Sending Sprigs.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 158.5, 162.36);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483830] Shrine Ruins Message 10 (Relic Records)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shrine Ruins Message 10', @CatId, 'Found on a cliff above the waterfall that separates Areas 2 and 6, you can start from Area 1 to climb the cliffs if you have trouble finding the way.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 102.86, 98.45);

    IF 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532126/77f776249f78ba2dbe4847f89e99f82f.png/show');
    END;
END;


-- [1483831] Jewel Lilies 2 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 2', @CatId, 'Edge of the cliff north of Jewel Lillies 1');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 93.49, 96.33);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1483832] Jewel Lilies 3 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 3', @CatId, 'Use wirebug to climb terrain until you reach the jewel lilies');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 110.38, 99.96);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1483833] Jewel Lilies 5 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 5', @CatId, 'Use the wirebug to cross to the other side to reach the jewel lilies');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 134.52, 103.09);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1483975] Buddy Recon 1 (Buddy Recon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Buddy Recon 1', @CatId, 'At the top shrine of Area 5');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 122.48, 118.14);

    IF 'https://img.game8.co/4536459/215220a49c6ab8bba79e5e5e37ea76e1.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4536459/215220a49c6ab8bba79e5e5e37ea76e1.png/show');
    END;
END;


-- [1486253] Jewel Lilies 6 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 6', @CatId, 'Use the wirebug to climb up until you see the jewel lillies');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 108.14, 123.27);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486254] Jewel Lilies 7 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 7', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 188.94, 125.14);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486255] Jewel Lilies 8 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 8', @CatId, 'Located beside the fallen tree ');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 188.3, 102.94);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486256] Jewel Lilies 9 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 9', @CatId, 'Located northeast beside the river');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 194.79, 109.77);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486257] Jewel Lilies 10 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 10', @CatId, 'Located northwest of the map ');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 225.4, 128.27);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486258] Jewel Lilies 11 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 11', @CatId, 'Located near the bamboos');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 202.32, 160.63);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486259] Jewel Lilies 12 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 12', @CatId, 'Use the wirebug to climb up until you reach and old shrine next to it is the jewel lillies');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 208.67, 169.61);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486260] Jewel Lilies 13 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 13', @CatId, 'Located behind the old huts ');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 198.71, 171.03);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486261] Jewel Lilies 14 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 14', @CatId, 'Located at the top of the hill');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 165.43, 163.52);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486262] Jewel Lilies 15 (Jewel Lilies)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Jewel Lilies 15', @CatId, 'Use the wirebug to climb up until you reach the jewel lilies');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.92, 153.04);

    IF 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532099/5b92e89edd19468317fd93bb9f4809f2.png/show');
    END;
END;


-- [1486309] Sub-Camp (Camp)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Sub-Camp', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 197.71, 139.37);

    IF 'https://img.game8.co/4532088/28a8c4d217ad58cc9b6fa16ae577d543.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532088/28a8c4d217ad58cc9b6fa16ae577d543.png/show');
    END;
END;


-- [1486310] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 115.56, 90.99);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486311] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 118.22, 90.11);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486312] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 129.97, 113.24);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486313] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 136.56, 131.03);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486314] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 131.57, 131.91);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486315] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 116.27, 133.33);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486316] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 125.17, 144.37);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486317] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 117.33, 144.37);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486318] Mushroom Colony (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mushroom Colony', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 115.91, 169.95);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486319] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 44.42, 122.49);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486320] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 60.74, 165.15);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486321] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 134.74, 159.22);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486322] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 175.92, 107.84);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486323] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 198.36, 103.94);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486324] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 195.58, 137.7);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486325] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 197.63, 148.36);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486326] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 219.88, 115.99);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486327] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 206.47, 156.28);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486328] Shimmering Red Berry (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shimmering Red Berry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 205.76, 195.61);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486329] Shoot Patch (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shoot Patch', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 39.1, 113.52);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486330] Shoot Patch (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shoot Patch', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 88.2, 133.99);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486331] Shoot Patch (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shoot Patch', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 99.5, 163.29);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486332] Shoot Patch (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shoot Patch', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 146.99, 161.06);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486333] Shoot Patch (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Shoot Patch', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 164.79, 150.69);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486334] Wyvern Nest (Special Items)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Items';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Wyvern Nest', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 205.97, 193.34);

    IF 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532094/2a97778542e96e85f6c55681630f8887.png/show');
    END;
END;


-- [1486335] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 36.45, 132.69);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486336] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 80.59, 122.12);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486337] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 85.97, 104.69);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486338] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 102.48, 113.03);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486339] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 106.93, 156.07);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486340] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 120.84, 170.16);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486341] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 87.83, 157.54);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486342] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 148.11, 112.47);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486343] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 153.29, 136.21);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486344] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 195.4, 129.54);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486345] Herb (Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 225.44, 118.97);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486346] Antidote Herb (Antidote Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Antidote Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 90.98, 94.3);

    IF 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show');
    END;
END;


-- [1486347] Antidote Herb (Antidote Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Antidote Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 116.06, 125.95);

    IF 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show');
    END;
END;


-- [1486348] Antidote Herb (Antidote Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Antidote Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 130.68, 100.42);

    IF 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show');
    END;
END;


-- [1486349] Antidote Herb (Antidote Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Antidote Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 165.91, 169.8);

    IF 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show');
    END;
END;


-- [1486350] Antidote Herb (Antidote Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Antidote Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 188.15, 166.07);

    IF 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show');
    END;
END;


-- [1486351] Antidote Herb (Antidote Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Antidote Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 216.25, 179.41);

    IF 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show');
    END;
END;


-- [1486352] Antidote Herb (Antidote Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Antidote Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 232.8, 141.7);

    IF 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499231/8ecfc3db30cbe3d50b51282bb4ba9eab.jpeg/show');
    END;
END;


-- [1486353] Fire Herb (Fire Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Fire Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 129.74, 111.37);

    IF 'https://img.game8.jp/5499224/6f38358d98e540143a6c79e4de27ff0f.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499224/6f38358d98e540143a6c79e4de27ff0f.jpeg/show');
    END;
END;


-- [1486354] Fire Herb (Fire Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Fire Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 212.82, 118.97);

    IF 'https://img.game8.jp/5499224/6f38358d98e540143a6c79e4de27ff0f.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499224/6f38358d98e540143a6c79e4de27ff0f.jpeg/show');
    END;
END;


-- [1486355] Ivy (Ivy)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Ivy', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 84.11, 138.07);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486356] Ivy (Ivy)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Ivy', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 134.1, 145.43);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486357] Ivy (Ivy)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Ivy', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 152.73, 104.32);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486358] Ivy (Ivy)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Ivy', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 163.68, 158.47);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486359] Ivy (Ivy)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Ivy', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 217.1, 165.9);

    IF 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499225/99fb8df3b1613af3eb1c62fa9f3c0ab7.jpeg/show');
    END;
END;


-- [1486360] Sleep Herb (Sleep Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Sleep Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 99.2, 96.59);

    IF 'https://img.game8.jp/5499167/c7b0ea8bd95795bc99cb6e6e0ff7c228.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499167/c7b0ea8bd95795bc99cb6e6e0ff7c228.jpeg/show');
    END;
END;


-- [1486361] Sleep Herb (Sleep Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Sleep Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 201.12, 113.33);

    IF 'https://img.game8.jp/5499167/c7b0ea8bd95795bc99cb6e6e0ff7c228.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499167/c7b0ea8bd95795bc99cb6e6e0ff7c228.jpeg/show');
    END;
END;


-- [1486362] Sleep Herb (Sleep Herb)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Sleep Herb', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 209.44, 136.45);

    IF 'https://img.game8.jp/5499167/c7b0ea8bd95795bc99cb6e6e0ff7c228.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499167/c7b0ea8bd95795bc99cb6e6e0ff7c228.jpeg/show');
    END;
END;


-- [1486363] Flowfern (Flowfern)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flowfern', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 81.29, 91.73);

    IF 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show');
    END;
END;


-- [1486364] Flowfern (Flowfern)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flowfern', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 126.6, 88.77);

    IF 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show');
    END;
END;


-- [1486365] Flowfern (Flowfern)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flowfern', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 145.8, 98.11);

    IF 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show');
    END;
END;


-- [1486366] Flowfern (Flowfern)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flowfern', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 190.99, 97.93);

    IF 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show');
    END;
END;


-- [1486367] Flowfern (Flowfern)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flowfern', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 178.54, 154.33);

    IF 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499208/07032031e79c722d479f568e67c84e6f.jpeg/show');
    END;
END;


-- [1486378] Rampage Message 1  (Rampage Messages)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rampage Message 1 ', @CatId, 'Found in a building at the top of a cliff in Shrine Ruins Area 4.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 108.66, 124.31);

    IF 'https://img.game8.co/4532116/3c0b72ca34102493fd6f8ac8d24cd970.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532116/3c0b72ca34102493fd6f8ac8d24cd970.png/show');
    END;
END;


-- [1486379] Rampage Message 2 (Rampage Messages)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rampage Message 2', @CatId, 'Inside a tree near a Felyne house in Shrine Ruins Area 3. The Felyne house can be found right after climbing up some ivy vines so the tree should immediately come into sight.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 120.61, 167.66);

    IF 'https://img.game8.co/4532116/3c0b72ca34102493fd6f8ac8d24cd970.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4532116/3c0b72ca34102493fd6f8ac8d24cd970.png/show');
    END;
END;


-- [1486443] Buddy Recon 2 (Buddy Recon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Locale';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Buddy Recon 2', @CatId, 'Found near Area 13 by the bushes near the bridge to the 5th Relic Record.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 220.1, 116.09);

    IF 'https://img.game8.co/4536459/215220a49c6ab8bba79e5e5e37ea76e1.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4536459/215220a49c6ab8bba79e5e5e37ea76e1.png/show');
    END;
END;


-- [1487945] Felvine (Felvine)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Felvine', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 114.87, 162.96);

    IF 'https://img.game8.jp/5511034/19d8500075cbebb1344316d75895a1a3.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5511034/19d8500075cbebb1344316d75895a1a3.jpeg/show');
    END;
END;


-- [1487946] Might Seed (Might Seed)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Might Seed', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 126.38, 111.31);

    IF 'https://img.game8.jp/5499212/dcf48d33d9b6714bf0b248eb8e50e7d4.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499212/dcf48d33d9b6714bf0b248eb8e50e7d4.jpeg/show');
    END;
END;


-- [1487947] Might Seed (Might Seed)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Might Seed', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 221.08, 106.7);

    IF 'https://img.game8.jp/5499212/dcf48d33d9b6714bf0b248eb8e50e7d4.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499212/dcf48d33d9b6714bf0b248eb8e50e7d4.jpeg/show');
    END;
END;


-- [1487948] Might Seed (Might Seed)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Might Seed', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 115.58, 138.3);

    IF 'https://img.game8.jp/5499212/dcf48d33d9b6714bf0b248eb8e50e7d4.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499212/dcf48d33d9b6714bf0b248eb8e50e7d4.jpeg/show');
    END;
END;


-- [1487949] Adamant Seed (Adamant Seed)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Adamant Seed', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 22.26, 113.17);

    IF 'https://img.game8.jp/5499238/e5087286d3ebab0a2d674e017a13750a.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499238/e5087286d3ebab0a2d674e017a13750a.jpeg/show');
    END;
END;


-- [1487950] Adamant Seed (Adamant Seed)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Adamant Seed', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 106.04, 115.05);

    IF 'https://img.game8.jp/5499238/e5087286d3ebab0a2d674e017a13750a.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499238/e5087286d3ebab0a2d674e017a13750a.jpeg/show');
    END;
END;


-- [1487951] Adamant Seed (Adamant Seed)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Adamant Seed', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 204.81, 196.58);

    IF 'https://img.game8.jp/5499238/e5087286d3ebab0a2d674e017a13750a.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499238/e5087286d3ebab0a2d674e017a13750a.jpeg/show');
    END;
END;


-- [1487952] Nulberry (Nulberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Nulberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 53.08, 142.24);

    IF 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show');
    END;
END;


-- [1487953] Nulberry (Nulberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Nulberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 138.26, 84.3);

    IF 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show');
    END;
END;


-- [1487954] Nulberry (Nulberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Nulberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 168.63, 118.38);

    IF 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show');
    END;
END;


-- [1487955] Nulberry (Nulberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Nulberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 186.28, 171.97);

    IF 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show');
    END;
END;


-- [1487956] Nulberry (Nulberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Nulberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 211.68, 114.04);

    IF 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499188/e70fdc019ad61e38d0c45af73851ca40.jpeg/show');
    END;
END;


-- [1487957] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 76.32, 153.39);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487958] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 72.29, 123.95);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487959] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 91.19, 101.66);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487960] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 97.68, 139.75);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487961] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 116.27, 172.29);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487962] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 123.71, 115.6);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487963] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.6, 135.42);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487964] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 138.89, 136.65);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487965] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 143.22, 162.37);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487966] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 162.11, 129.54);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487967] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 158.09, 119.93);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487968] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 201.15, 149.05);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487969] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 214.16, 136.97);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487970] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 206.72, 117.14);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487971] Latchberry (Latchberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Latchberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 225.93, 115.9);

    IF 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499207/8768a2ed2efbf0306032ed092f5f0f77.jpeg/show');
    END;
END;


-- [1487972] Huskberry (Huskberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Huskberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 102.33, 90.19);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1487973] Huskberry (Huskberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Huskberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 124.32, 111.87);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1487974] Huskberry (Huskberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Huskberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 144.5, 112.02);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1487975] Huskberry (Huskberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Huskberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 146.48, 139.63);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1487976] Huskberry (Huskberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Huskberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 117.82, 166.01);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1487977] Needleberry (Needleberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Needleberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 68.07, 140.83);

    IF 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show');
    END;
END;


-- [1487978] Needleberry (Needleberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Needleberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 109.93, 97.74);

    IF 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show');
    END;
END;


-- [1487979] Needleberry (Needleberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Needleberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 149.05, 173.94);

    IF 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show');
    END;
END;


-- [1487980] Needleberry (Needleberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Needleberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 141.5, 125.46);

    IF 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show');
    END;
END;


-- [1487981] Needleberry (Needleberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Needleberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 164.98, 117.81);

    IF 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499390/df4109cb7e352d8921e4e2dc9e66cfc7.jpeg/show');
    END;
END;


-- [1487982] Bomberry (Bomberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bomberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 88.99, 143.01);

    IF 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show');
    END;
END;


-- [1487983] Bomberry (Bomberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bomberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 139.27, 121.82);

    IF 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show');
    END;
END;


-- [1487984] Bomberry (Bomberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bomberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 145.59, 133.84);

    IF 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show');
    END;
END;


-- [1487985] Bomberry (Bomberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bomberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 150.66, 143.64);

    IF 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show');
    END;
END;


-- [1487986] Bomberry (Bomberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bomberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 198.73, 161.66);

    IF 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show');
    END;
END;


-- [1487987] Bomberry (Bomberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bomberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 226.53, 136.05);

    IF 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499386/073d41b3efdf103cf9f57c2fc4871fc6.jpeg/show');
    END;
END;


-- [1487988] Blastnut (Blastnut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blastnut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 69.29, 113.21);

    IF 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show');
    END;
END;


-- [1487989] Blastnut (Blastnut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blastnut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 121.47, 102.29);

    IF 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show');
    END;
END;


-- [1487990] Blastnut (Blastnut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blastnut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.7, 123.53);

    IF 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show');
    END;
END;


-- [1487991] Blastnut (Blastnut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blastnut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 147.25, 135.67);

    IF 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show');
    END;
END;


-- [1487992] Blastnut (Blastnut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blastnut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 164.85, 159.03);

    IF 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499384/c35271cfc814eaf8ef29e3d842595184.jpeg/show');
    END;
END;


-- [1487993] Dragonstrike Nut (Dragonstrike Nut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dragonstrike Nut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 105.69, 140.21);

    IF 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show');
    END;
END;


-- [1487994] Dragonstrike Nut (Dragonstrike Nut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dragonstrike Nut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 140.52, 139.46);

    IF 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show');
    END;
END;


-- [1487995] Dragonstrike Nut (Dragonstrike Nut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dragonstrike Nut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 157.27, 102.6);

    IF 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show');
    END;
END;


-- [1487996] Dragonstrike Nut (Dragonstrike Nut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dragonstrike Nut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 174.25, 99.87);

    IF 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show');
    END;
END;


-- [1487997] Dragonstrike Nut (Dragonstrike Nut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dragonstrike Nut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 183.96, 151.14);

    IF 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499388/cf1fa50385e666e35922fb256a4d6fa9.jpeg/show');
    END;
END;


-- [1487998] Slashberry (Slashberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Slashberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 126.62, 112.01);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1487999] Slashberry (Slashberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Slashberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.4, 132.02);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1488000] Slashberry (Slashberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Slashberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.4, 139.91);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1488001] Slashberry (Slashberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Slashberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 161.2, 167.52);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1488002] Slashberry (Slashberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Slashberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 190.64, 110.48);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1488003] Slashberry (Slashberry)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Slashberry', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 210.05, 106.85);

    IF 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499205/b51c814b671141036ae2235e731aa973.jpeg/show');
    END;
END;


-- [1488004] Flamenut (Flamenut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flamenut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 89.6, 109.28);

    IF 'https://img.game8.jp/5499389/46230744ed2a10dcadbe8c6237eae0f0.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499389/46230744ed2a10dcadbe8c6237eae0f0.jpeg/show');
    END;
END;


-- [1488005] Flamenut (Flamenut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flamenut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 141.18, 130.51);

    IF 'https://img.game8.jp/5499389/46230744ed2a10dcadbe8c6237eae0f0.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499389/46230744ed2a10dcadbe8c6237eae0f0.jpeg/show');
    END;
END;


-- [1488006] Flamenut (Flamenut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flamenut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.4, 134.15);

    IF 'https://img.game8.jp/5499389/46230744ed2a10dcadbe8c6237eae0f0.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499389/46230744ed2a10dcadbe8c6237eae0f0.jpeg/show');
    END;
END;


-- [1488007] Flamenut (Flamenut)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flamenut', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 196.4, 102.9);

    IF 'https://img.game8.jp/5499389/46230744ed2a10dcadbe8c6237eae0f0.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499389/46230744ed2a10dcadbe8c6237eae0f0.jpeg/show');
    END;
END;


-- [1488008] Honey (Honey)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Honey', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 82.93, 143.86);

    IF 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show');
    END;
END;


-- [1488009] Honey (Honey)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Honey', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 81.72, 108.96);

    IF 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show');
    END;
END;


-- [1488010] Honey (Honey)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Honey', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 105.08, 127.48);

    IF 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show');
    END;
END;


-- [1488011] Honey (Honey)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Honey', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 219.16, 107.75);

    IF 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show');
    END;
END;


-- [1488012] Honey (Honey)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Honey', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 232.5, 154.17);

    IF 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499200/1191c037e0902bf72957b869415dd7ef.jpeg/show');
    END;
END;


-- [1488013] Blue Mushroom (Blue Mushroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blue Mushroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 78.08, 105.02);

    IF 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show');
    END;
END;


-- [1488014] Blue Mushroom (Blue Mushroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blue Mushroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 92.65, 99.25);

    IF 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show');
    END;
END;


-- [1488015] Blue Mushroom (Blue Mushroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blue Mushroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 104.17, 166.31);

    IF 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show');
    END;
END;


-- [1488016] Blue Mushroom (Blue Mushroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blue Mushroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 119.64, 147.49);

    IF 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show');
    END;
END;


-- [1488017] Blue Mushroom (Blue Mushroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blue Mushroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 128.75, 142.03);

    IF 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show');
    END;
END;


-- [1488018] Blue Mushroom (Blue Mushroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blue Mushroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 129.96, 109.28);

    IF 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show');
    END;
END;


-- [1488019] Blue Mushroom (Blue Mushroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blue Mushroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 175.17, 147.49);

    IF 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show');
    END;
END;


-- [1488020] Blue Mushroom (Blue Mushroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Blue Mushroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 193.67, 137.48);

    IF 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499381/766743421d0bca1f39d4a2a5ad368c40.jpeg/show');
    END;
END;


-- [1488021] Nitroshroom (Nitroshroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Nitroshroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 119.64, 162.36);

    IF 'https://img.game8.jp/5499211/609f2b5713fda50be20073eb91d4d356.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499211/609f2b5713fda50be20073eb91d4d356.jpeg/show');
    END;
END;


-- [1488022] Nitroshroom (Nitroshroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Nitroshroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 120.55, 109.58);

    IF 'https://img.game8.jp/5499211/609f2b5713fda50be20073eb91d4d356.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499211/609f2b5713fda50be20073eb91d4d356.jpeg/show');
    END;
END;


-- [1488023] Nitroshroom (Nitroshroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Nitroshroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 151.19, 124.45);

    IF 'https://img.game8.jp/5499211/609f2b5713fda50be20073eb91d4d356.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499211/609f2b5713fda50be20073eb91d4d356.jpeg/show');
    END;
END;


-- [1488024] Parashroom (Parashroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Parashroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 97.19, 135.37);

    IF 'https://img.game8.jp/5499195/e347453726dd315bb753b8894a267d42.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499195/e347453726dd315bb753b8894a267d42.jpeg/show');
    END;
END;


-- [1488025] Parashroom (Parashroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Parashroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 174.55, 149.92);

    IF 'https://img.game8.jp/5499195/e347453726dd315bb753b8894a267d42.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499195/e347453726dd315bb753b8894a267d42.jpeg/show');
    END;
END;


-- [1488026] Parashroom (Parashroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Parashroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 192.15, 118.07);

    IF 'https://img.game8.jp/5499195/e347453726dd315bb753b8894a267d42.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499195/e347453726dd315bb753b8894a267d42.jpeg/show');
    END;
END;


-- [1488027] Toadstool (Toadstool)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Toadstool', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 41.0, 157.72);

    IF 'https://img.game8.jp/5499160/f805a13ad80601a3a98a70e5f7d6a14e.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499160/f805a13ad80601a3a98a70e5f7d6a14e.jpeg/show');
    END;
END;


-- [1488028] Toadstool (Toadstool)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Toadstool', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 69.8, 121.17);

    IF 'https://img.game8.jp/5499160/f805a13ad80601a3a98a70e5f7d6a14e.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499160/f805a13ad80601a3a98a70e5f7d6a14e.jpeg/show');
    END;
END;


-- [1488029] Toadstool (Toadstool)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Toadstool', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 130.83, 123.95);

    IF 'https://img.game8.jp/5499160/f805a13ad80601a3a98a70e5f7d6a14e.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499160/f805a13ad80601a3a98a70e5f7d6a14e.jpeg/show');
    END;
END;


-- [1488030] Exciteshroom (Exciteshroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Exciteshroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 130.52, 122.1);

    IF 'https://img.game8.jp/5499221/5624ea07faf89087a06fadc75fd6c74e.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499221/5624ea07faf89087a06fadc75fd6c74e.jpeg/show');
    END;
END;


-- [1488031] Exciteshroom (Exciteshroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Exciteshroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 139.82, 161.75);

    IF 'https://img.game8.jp/5499221/5624ea07faf89087a06fadc75fd6c74e.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499221/5624ea07faf89087a06fadc75fd6c74e.jpeg/show');
    END;
END;


-- [1488032] Exciteshroom (Exciteshroom)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Exciteshroom', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 163.67, 129.54);

    IF 'https://img.game8.jp/5499221/5624ea07faf89087a06fadc75fd6c74e.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499221/5624ea07faf89087a06fadc75fd6c74e.jpeg/show');
    END;
END;


-- [1488033] Mandragora (Mandragora)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mandragora', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 128.04, 110.33);

    IF 'https://img.game8.jp/5499192/ae46459ada9ac9104f2727b1c018ddb3.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499192/ae46459ada9ac9104f2727b1c018ddb3.jpeg/show');
    END;
END;


-- [1488034] Mandragora (Mandragora)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mandragora', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 160.26, 132.01);

    IF 'https://img.game8.jp/5499192/ae46459ada9ac9104f2727b1c018ddb3.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499192/ae46459ada9ac9104f2727b1c018ddb3.jpeg/show');
    END;
END;


-- [1488035] Mandragora (Mandragora)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mandragora', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 204.55, 145.64);

    IF 'https://img.game8.jp/5499192/ae46459ada9ac9104f2727b1c018ddb3.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499192/ae46459ada9ac9104f2727b1c018ddb3.jpeg/show');
    END;
END;


-- [1488036] Bitterbug (Bitterbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bitterbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 39.62, 123.53);

    IF 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show');
    END;
END;


-- [1488037] Bitterbug (Bitterbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bitterbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 116.72, 126.48);

    IF 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show');
    END;
END;


-- [1488038] Bitterbug (Bitterbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bitterbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 117.13, 123.15);

    IF 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show');
    END;
END;


-- [1488039] Bitterbug (Bitterbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bitterbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 131.74, 126.27);

    IF 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show');
    END;
END;


-- [1488040] Bitterbug (Bitterbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bitterbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 123.6, 107.71);

    IF 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show');
    END;
END;


-- [1488041] Bitterbug (Bitterbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bitterbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 158.52, 125.77);

    IF 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show');
    END;
END;


-- [1488042] Bitterbug (Bitterbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bitterbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 167.25, 159.55);

    IF 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499227/a6911caeeb0b73f6e06a78ed7ec981cc.jpeg/show');
    END;
END;


-- [1488043] Godbug (Godbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Godbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 121.84, 97.79);

    IF 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show');
    END;
END;


-- [1488044] Godbug (Godbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Godbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 137.46, 134.13);

    IF 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show');
    END;
END;


-- [1488045] Godbug (Godbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Godbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 143.27, 119.23);

    IF 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show');
    END;
END;


-- [1488046] Godbug (Godbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Godbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 159.26, 163.18);

    IF 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show');
    END;
END;


-- [1488047] Godbug (Godbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Godbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 183.24, 146.84);

    IF 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show');
    END;
END;


-- [1488048] Godbug (Godbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Godbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 189.41, 99.96);

    IF 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show');
    END;
END;


-- [1488049] Godbug (Godbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Godbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 221.74, 166.46);

    IF 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499364/2a8c68827aedd1cded2ed24dafb98ad6.jpeg/show');
    END;
END;


-- [1488050] Flashbug (Flashbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flashbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 74.97, 152.65);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488051] Flashbug (Flashbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flashbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 90.95, 118.86);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488052] Flashbug (Flashbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flashbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 99.68, 100.33);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488053] Flashbug (Flashbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flashbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 123.79, 162.5);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488054] Flashbug (Flashbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Flashbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 200.97, 101.08);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488055] Thunderbug (Thunderbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Thunderbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 47.99, 97.62);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488056] Thunderbug (Thunderbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Thunderbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 102.95, 161.15);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488057] Thunderbug (Thunderbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Thunderbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 141.18, 158.11);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488058] Thunderbug (Thunderbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Thunderbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 143.91, 107.45);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488059] Thunderbug (Thunderbug)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Thunderbug', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 176.07, 168.44);

    IF 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499366/d0a0334b06c3c713db1ab06c78843013.jpeg/show');
    END;
END;


-- [1488060] Mining Outcrop (Rare) (Mining Outcrop (Rare))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Rare)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 106.6, 110.79);

    IF 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show');
    END;
END;


-- [1488061] Mining Outcrop (Rare) (Mining Outcrop (Rare))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Rare)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 124.8, 86.82);

    IF 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show');
    END;
END;


-- [1488062] Mining Outcrop (Rare) (Mining Outcrop (Rare))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Rare)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 114.79, 133.54);

    IF 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show');
    END;
END;


-- [1488063] Mining Outcrop (Rare) (Mining Outcrop (Rare))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Rare)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 136.94, 133.24);

    IF 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show');
    END;
END;


-- [1488064] Mining Outcrop (Rare) (Mining Outcrop (Rare))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Rare)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 141.02, 121.71);

    IF 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539391/fa304bfcf989e67ed68a94bc348ac593.png/show');
    END;
END;


-- [1488065] Mining Outcrop (Common) (Mining Outcrop (Common))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Common)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 35.6, 124.79);

    IF 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show');
    END;
END;


-- [1488066] Mining Outcrop (Common) (Mining Outcrop (Common))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Common)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 89.94, 141.61);

    IF 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show');
    END;
END;


-- [1488067] Mining Outcrop (Common) (Mining Outcrop (Common))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Common)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 110.38, 118.07);

    IF 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show');
    END;
END;


-- [1488068] Mining Outcrop (Common) (Mining Outcrop (Common))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Common)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 202.08, 178.79);

    IF 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show');
    END;
END;


-- [1488069] Mining Outcrop (Common) (Mining Outcrop (Common))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Common)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 217.87, 157.72);

    IF 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show');
    END;
END;


-- [1488070] Mining Outcrop (Common) (Mining Outcrop (Common))
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Mining Outcrop (Common)', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 205.48, 113.74);

    IF 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539393/cfa322962b0f5514e0488d6d7ee4c14c.png/show');
    END;
END;


-- [1488071] Bonepile  (Bonepile )
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bonepile ', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 97.07, 176.93);

    IF 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show');
    END;
END;


-- [1488072] Bonepile  (Bonepile )
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bonepile ', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 141.09, 152.98);

    IF 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show');
    END;
END;


-- [1488073] Bonepile  (Bonepile )
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bonepile ', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 144.5, 118.51);

    IF 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show');
    END;
END;


-- [1488074] Bonepile  (Bonepile )
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bonepile ', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 194.0, 97.34);

    IF 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show');
    END;
END;


-- [1488075] Bonepile  (Bonepile )
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bonepile ', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 201.85, 191.89);

    IF 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539392/601487b3576327a5679bf976341544c0.png/show');
    END;
END;


-- [1488076] Spider Web (Spider Web)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Spider Web', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 37.66, 107.92);

    IF 'https://img.game8.jp/5499161/3258fb032436e24889fde6667d2cd925.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499161/3258fb032436e24889fde6667d2cd925.jpeg/show');
    END;
END;


-- [1488077] Spider Web (Spider Web)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Spider Web', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 117.2, 154.69);

    IF 'https://img.game8.jp/5499161/3258fb032436e24889fde6667d2cd925.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499161/3258fb032436e24889fde6667d2cd925.jpeg/show');
    END;
END;


-- [1488078] Spider Web (Spider Web)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Spider Web', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 159.86, 129.09);

    IF 'https://img.game8.jp/5499161/3258fb032436e24889fde6667d2cd925.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499161/3258fb032436e24889fde6667d2cd925.jpeg/show');
    END;
END;


-- [1488079] Fishing Spot (Fishing Spot)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Fishing Spot', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 151.33, 81.3);

    IF 'https://img.game8.co/4539394/ff42f27b96c404526a4a8e99c036df59.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539394/ff42f27b96c404526a4a8e99c036df59.png/show');
    END;
END;


-- [1488080] Fishing Spot (Fishing Spot)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Fishing Spot', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 152.97, 86.38);

    IF 'https://img.game8.co/4539394/ff42f27b96c404526a4a8e99c036df59.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539394/ff42f27b96c404526a4a8e99c036df59.png/show');
    END;
END;


-- [1488081] Fishing Spot (Fishing Spot)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Fishing Spot', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 236.76, 111.69);

    IF 'https://img.game8.co/4539394/ff42f27b96c404526a4a8e99c036df59.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4539394/ff42f27b96c404526a4a8e99c036df59.png/show');
    END;
END;


-- [1488082] Dung (Dung)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dung', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 85.06, 154.47);

    IF 'https://img.game8.jp/5499373/1c270cb8c879ade09f6ddbb8410ce5f9.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499373/1c270cb8c879ade09f6ddbb8410ce5f9.jpeg/show');
    END;
END;


-- [1488083] Dung (Dung)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'Materials';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dung', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 122.67, 89.25);

    IF 'https://img.game8.jp/5499373/1c270cb8c879ade09f6ddbb8410ce5f9.jpeg/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.jp/5499373/1c270cb8c879ade09f6ddbb8410ce5f9.jpeg/show');
    END;
END;
