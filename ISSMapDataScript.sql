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


--- MAPA WUWA

-- 1. Insertar el Juego
INSERT INTO Juegos (juego) VALUES ('Wuthering Waves (Simulacrum Nexus)');
DECLARE @juegoId INT = SCOPE_IDENTITY();

-- 2. Insertar Categorías (GroupNames) y mapearlas temporalmente
DECLARE @CatMap TABLE (NombreCat VARCHAR(100), CatId INT);
INSERT INTO Categorias (categoria, juegoId) VALUES ('General', @juegoId);
INSERT INTO @CatMap (NombreCat, CatId) VALUES ('General', SCOPE_IDENTITY());

-- 3. Declarar variables para los puntos
DECLARE @CatId INT;
DECLARE @puntoId INT;

-- 4. Insertar Puntos de Interés, Coordenadas e Iconos

-- [1597988] Bloom of Hearkening x4 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x4', @CatId, 'Four Bloom of Hearkening is found in front of the Repair Workshop''s main hall entrance. It can be reached by using the Resonance Beacon on the northeast side of the Repair Workshop.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 92.16, 117.5);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598003] Bloom of Hearkening x2 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x2', @CatId, 'Two Bloom of Hearkening is found near the lake beside the Repair Workshop. You can reach it from the southeast of the Repair Workshop''s Resonance Beacon.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 83.35, 119.9);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598004] Bloom of Hearkening x3 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x3', @CatId, 'Found on the south side of Mengxuan Vale, near the outskirts of the area. A total of three Bloom of Hearkening can be found at this location.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 112.98, 143.56);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598005] Bloom of Hearkening x3 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x3', @CatId, 'Located on the south side of Mengxuan Vale, on the side of the road. Three Bloom of Hearkening can be found amongst the patches of grass.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 113.95, 141.61);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598006] Bloom of Hearkening x5 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x5', @CatId, 'Five Bloom of Hearkening is found at the northern entrance of Mengxuan Vale. They are near the Resonance Beacon located in the area.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 127.56, 126.04);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598007] Bloom of Hearkening x5 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x5', @CatId, 'Found at the northern entrance of Mengxuan Vale, near the Resonance Beacon. Five Bloom of Hearkening can be found at this location.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 130.77, 129.51);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598008] Bloom of Hearkening x3 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x3', @CatId, 'Three Bloom of Hearkening is found on the northern outskirts of Mengxuan Vale. It is directly on the north side of the Resonance Beacon located in the area.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 138.06, 122.75);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598009] Bloom of Hearkening x3 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x3', @CatId, 'Located on the northern outskirts of Mengxuan Vale. Three Bloom of Hearkening can be found near a giant rock.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 135.4, 116.53);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598010] Bloom of Hearkening x5 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x5', @CatId, 'Five Bloom of Hearkening is found amongst the tall grass on the south side of Heart of Flames. You can use the Resonance Nexus on the southwest side of Heart of Flames, cross over to the bridge on the east side, and then use the sensor around the foliage to look for the Bloom of Hearkening.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 161.36, 108.25);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598011] Bloom of Hearkening x3 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x3', @CatId, 'Three Bloom of Hearkening is found on the roadside on the south side of Heart of Flames. You can use the Resonance Nexus on the southwest side of Heart of Flames, cross over to the bridge on the east side, and go right at the forked road to look for the Bloom of Hearkening.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 158.88, 105.85);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598012] Bloom of Hearkening x3 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x3', @CatId, 'Found south of the Resonance Nexus, near the house with a Golden Tidal Heritage. The house is also on the northwest side of the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 149.36, 81.21);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598013] Bloom of Hearkening x5 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x5', @CatId, 'Located south of Resonance Nexus, on the northwest side of Heart of Stillness. Five Bloom of Hearkening can be found near a tree branch.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 148.64, 76.49);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598014] Bloom of Hearkening x6 (Bloom of Hearkening)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Bloom of Hearkening x6', @CatId, 'Six Bloom of Hearkening is found at the elevated road on the north side of Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 138.49, 144.9);

    IF 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634170/9f6bf7c576f6a317568df3adf8102e40.png/show');
    END;
END;


-- [1598015] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found in the courtyard of Heart of Stillness, on top of the stone sculpture in the middle.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 116.09, 72.85);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598016] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on top of the buildings on the northern side of the Heart of Stillness. The buildings can be reached by using the edge of the nearby cliffs.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 133.88, 72.49);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598017] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found north of the Resonance Nexus, northwest of the Heart of Stillness. It is located near an empty stall beside the river stream.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 160.65, 78.62);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598018] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found underneath a bridge on the northeast side of the Resonance Nexus, which is located on the northwest side of the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 158.25, 96.41);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598019] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on top of a pavilion on the cliff on the south side of the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 162.78, 111.09);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598020] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found high up on top of the buildings at the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 192.06, 91.25);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598021] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on the side of the northern bridge of the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 193.93, 116.43);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598022] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found underneath the southeast bridge of the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 176.85, 120.7);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598023] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on the eastern path of the Heart of Flames, on top of a decaying tree trunk.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 187.17, 129.51);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598024] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on top of a tall pillar on the side of the cliff at the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 130.37, 90.41);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598025] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Located next to the path leading to the Thousandbloom Grotto. Be cautious approaching it, as there is a Censure Lock Crisis.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 105.07, 93.23);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598026] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Seen flying around at the top of the pavilion on the northwest side of the Repair Workshop.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 99.19, 94.34);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598027] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Seen flying on top of a giant boulder at the western border of the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 80.74, 142.02);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598028] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Located at the central area of the Heart of Bloom.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 62.19, 64.44);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598029] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Located on the eastern cliffside of the Heart of Bloom.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 44.81, 92.86);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598030] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Located inside a spherical structure on the north side of the Heart of Bloom.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 82.42, 73.23);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598031] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Located on top of a cliff on the western side of the Heart of Appearance.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 62.19, 156.34);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598032] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Located on the top of a snowy pavilion bridge on the south side of the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 91.4, 166.5);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598033] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Located near the hanging bridge on the northwest side of the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 109.75, 160.78);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598034] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Located inside a spherical structure on the northeast side of the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 119.63, 178.94);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598035] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on top of a boulder on the western border of the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 135.03, 153.57);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598036] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found flying around a tall cliff on the northeast side of the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 140.06, 201.05);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598037] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found near the Seat of Serenity, which is on the northeast side of Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 148.35, 150.21);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598038] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on top of a lamp post on the northeast path outside of the Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 136.11, 139.75);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598039] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on a lamp post on the western path near the border of Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 129.7, 114.68);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598040] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on the side of a bridge at the northeast side of Mengxuan Village.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.82, 114.87);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598041] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found flying near a stone fox statue inside the courtyard of the Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 128.02, 125.35);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598042] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on top of a stone fox statue inside the courtyard of the Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 131.48, 128.8);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598043] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on top of a lamp post inside the courtyard of the Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 119.43, 131.46);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598044] Rafter Kite (Rafter Kite)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Rafter Kite', @CatId, 'Found on top of a tall cliff on the south side of the Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 111.64, 136.0);

    IF 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4556464/4784e1536bcd281abd88e23f005fce3b.png/show');
    END;
END;


-- [1598525] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found after defeating a mob of enemies on the south of the Resonance Nexus at the northwest side of Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 148.82, 80.02);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598526] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found beside a building near a waterway at Heartscape Labyrinth.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 188.1, 59.1);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598527] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found at the exit of the Heartscape Labyrinth main hall gate. This chest is guarded by several enemies.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 174.25, 80.97);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598528] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found in one of the halls in the Heart of Flames near the Heartscape Labyrinth. The chest is located above the mezzanine.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 194.2, 90.64);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598529] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found after defeating a mob of enemies on the northwest side of the Resonance Nexus at the northwest side of the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 153.77, 69.82);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598530] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found at the exit of the Heartscape Labyrinth main hall gate. The chest is located under a hidden water formation with a single pier near a waterfall.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 167.37, 69.48);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598531] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located on the south side of the Heartscape Labyrinth. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 161.88, 61.8);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598532] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located on the south side of the Heartscape Labyrinth. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 162.48, 63.46);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598533] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located on the south side of the Heartscape Labyrinth. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 161.09, 59.97);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598534] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found on the top of the tower near the Resonance Nexus at the northwest side of the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.54, 81.23);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598535] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found on the south side of the Tacet Field, near the bridge, in the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 193.16, 122.27);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598536] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found at the high road near the Tacet Discord Nest in the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 185.93, 129.93);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598537] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found at the top of the center bridge, behind the open wall-like object, near the Tacet Discord Nest.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 180.36, 120.09);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598538] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located near the bridge at the Heart of Flames. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 178.61, 127.67);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598539] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located near the bridge at the Heart of Flames. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 178.95, 129.41);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598540] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located near the bridge at the Heart of Flames. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 178.25, 125.67);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598541] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located on the higher ground on the north side of the bridge near the Resonance Beacon, which is on the northwest side of Heart of Stillness. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge at Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 173.73, 92.65);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598542] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located on the higher ground on the north side of the bridge near the Resonance Beacon, which is on the northwest side of Heart of Stillness. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge at Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 175.21, 92.82);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598543] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located on the higher ground on the north side of the bridge near the Resonance Beacon, which is on the northwest side of Heart of Stillness. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge at Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 171.47, 92.82);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598544] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found north of the bridge at the border of the Heart of Stillness and Heart of Flames. Located in a cave-in with several enemies.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 173.82, 95.69);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598545] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located south of the bridge and the Controlled Anomaly Zone. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 169.21, 111.82);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598546] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located south of the bridge and the Controlled Anomaly Zone. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 168.27, 110.53);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598547] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located south of the bridge and the Controlled Anomaly Zone. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 170.06, 112.76);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598548] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found on top of the center bridge at the border of Mengxuan Vale and Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 144.98, 110.19);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598549] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found on the outskirts of a large settlement on the west side of the map at the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 128.68, 62.32);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598550] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found behind the northernmost building of a large settlement west of the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 133.8, 71.96);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598551] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found after completing the Censure Lock Crisis Challenge in the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 235.01, 125.73);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598552] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located to the south of the large settlement in the west of Heart of Stillness and above the Thousandbloom Grotto. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 94.38, 81.52);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598553] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located to the south of the large settlement in the west of Heart of Stillness and above the Thousandbloom Grotto. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 94.8, 79.73);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598554] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located to the south of the large settlement in the west of Heart of Stillness and above the Thousandbloom Grotto. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 95.4, 84.0);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598555] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Thousandbloom Grotto, on top of a platform in a submerged area near a Jade Platform.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 119.38, 17.83);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598556] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found outside the north path towards the Thousandbloom Grotto.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 110.3, 94.24);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598557] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found on top of a tower near the Thousandbloom Grotto and north of the Repair Workshop.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 99.36, 94.5);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598558] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found northeast of the Heart of Bloom, near the Wandering Heart Ruins.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 74.99, 82.04);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598559] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found on the south side of the Tacet Field: Heart of the Stillness. Additionally, it is surrounded by mobs.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 62.58, 120.66);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598560] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found on the east side of the Tacet Field: Heart of Stillness, near the border of the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 80.96, 139.89);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598561] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found near the Repair Workshop along the pathway towards the northern entrance of the area.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 98.19, 120.66);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598562] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found on the southwest side of the Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 115.71, 115.47);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598563] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found on the west side of the Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 128.08, 112.59);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598564] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located east of Mengxuan Vale, near a Controlled Anomaly Zone. Found after defeating enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 132.51, 158.17);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598565] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located east of Mengxuan Vale, near a Controlled Anomaly Zone. Found after defeating enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 133.13, 161.13);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598566] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located east of Mengxuan Vale, near a Controlled Anomaly Zone. Found after defeating enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 132.43, 156.78);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598567] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found on the south edge of the map where water flow transforms into a waterfall, near the Heart of Appearance.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 51.24, 175.9);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598568] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located directly on the north side of the Heart of Appearance Resonance Beacon. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 81.04, 181.95);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598569] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located directly on the north side of the Heart of Appearance Resonance Beacon. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 80.86, 184.44);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598570] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located directly on the north side of the Heart of Appearance Resonance Beacon. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 80.59, 179.55);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598571] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found south of Stillfrost Crossing, underneath a land bridge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 67.87, 148.5);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598572] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found on the northwest side of the Resonance Beacon at the Heart of Appearance.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 85.85, 168.52);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598573] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found on a bridge tower on the north side of the Heart of Appearance.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 97.23, 166.92);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598574] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located directly north of the Rime Grotto on the east side of the map. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.59, 181.86);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598575] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located directly north of the Rime Grotto on the east side of the map. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.86, 183.65);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598576] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located directly north of the Rime Grotto on the east side of the map. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 142.59, 180.26);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598577] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located southeast of the Rime Grotto on the east side of the map. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 115.91, 195.21);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1598578] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located southeast of the Rime Grotto on the east side of the map. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 116.44, 197.24);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1598579] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Located southeast of the Rime Grotto on the east side of the map. Found after defeating the enemies in the Treasures of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 115.56, 194.13);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1598580] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found on the south side of the Rime Grotto, which is on the east side of the map.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 113.24, 183.91);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598770] Tidal Heritage (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Tidal Heritage', @CatId, 'Found after completing the Censure Lock Crisis and defeating the Myriadform Bloomburst.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 103.54, 89.79);

    IF 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3896539/13d127fad255663ecebb4ab67e94854f.png/show');
    END;
END;


-- [1598771] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Found on the north side of the Heart of Bloom Resonance Beacon. It is easy to spot by looking for the red tree stump flowing with electricity.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 91.05, 70.69);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598772] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Located on the north side of the Heart of Bloom Resonance Beacon and near a Jade Roostone.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 88.52, 69.12);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598773] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Found outside the Censure Lock Crisis arena, near the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 104.03, 84.97);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598774] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Located outside the Censure Lock Crisis arena, inside a subterranean area near the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 100.02, 82.88);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598775] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Found at the center of the Heartscale Labyrinth, across the road from the central structure.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 187.14, 53.35);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598776] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Located at the center of the Heartscale Labyrinth, across the road from the central structure, near another tree stump filled with Miasmic Branch.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 189.41, 55.7);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598777] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Found at the start of the Heartscale Labyrinth, just across the main road near some white flowers.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 194.81, 54.57);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598778] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Located at the start of the Heartscale Labyrinth on the central island near some white flowers.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 198.81, 54.31);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598779] Miasmic Branch x8 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x8', @CatId, 'Found at the start of the Heartscale Labyrinth, on the east side of the central island.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 203.27, 60.49);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598780] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Found at the start of the Heartscale Labyrinth, ahead of the Resonance Beacon.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 210.93, 49.52);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598781] Miasmic Branch x4 (Miasmic Branch)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Miasmic Branch x4', @CatId, 'Found at the start of the Heartscale Labyrinth, near a body of water around the Resonance Beacon.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 206.83, 47.86);

    IF 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4634915/6a0dab826299efb960eb723e54894168.png/show');
    END;
END;


-- [1598826] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 131.31, 124.01);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1598827] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 141.09, 193.69);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1598828] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 74.46, 183.65);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1598829] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 88.33, 107.49);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1598830] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 194.36, 106.15);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1598831] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 208.84, 45.58);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1598832] Resonance Nexus (Resonance Nexus)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Nexus', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 153.55, 77.68);

    IF 'https://img.game8.co/3893156/addabd17826c2a4964cf5ec1b081a34c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893156/addabd17826c2a4964cf5ec1b081a34c.png/show');
    END;
END;


-- [1598833] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 126.37, 68.18);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1598834] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 77.37, 69.3);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1598835] Resonance Beacon (Resonance Beacon)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Resonance Beacon', @CatId, '');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 68.04, 93.86);

    IF 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3893022/21de8118ea07128695abc5fad7ee9710.png/show');
    END;
END;


-- [1599149] Dream Fox Statue (Dream Fox Statue)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Fox Statue', @CatId, 'Found on a ridge, surrounded by broken circular structures.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 183.69, 103.12);

    IF 'https://img.game8.co/4635310/50e515b9dcc45853634165e457baf9e8.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4635310/50e515b9dcc45853634165e457baf9e8.png/show');
    END;
END;


-- [1599150] Dream Fox Statue (Dream Fox Statue)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Fox Statue', @CatId, 'Found on a platform in the water.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 183.61, 112.96);

    IF 'https://img.game8.co/4635310/50e515b9dcc45853634165e457baf9e8.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4635310/50e515b9dcc45853634165e457baf9e8.png/show');
    END;
END;


-- [1599151] Dream Fox Statue (Dream Fox Statue)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Fox Statue', @CatId, 'Found beside a cliff, near the path leading to a bridge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 170.47, 115.6);

    IF 'https://img.game8.co/4635310/50e515b9dcc45853634165e457baf9e8.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4635310/50e515b9dcc45853634165e457baf9e8.png/show');
    END;
END;


-- [1599152] Dream Fox Statue (Dream Fox Statue)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Fox Statue', @CatId, 'Found at the cliffside, beside the path between the two bridges.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 192.71, 132.95);

    IF 'https://img.game8.co/4635310/50e515b9dcc45853634165e457baf9e8.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4635310/50e515b9dcc45853634165e457baf9e8.png/show');
    END;
END;


-- [1599412] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found within the Dream Fox Statue Puzzle, on the side platform behind the crates and vases.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 181.38, 103.04);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1599413] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found in the Dream Fox Statue Puzzle, inside the inner threshold, behind an enemy.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 182.25, 104.69);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1599414] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found within the Dream Fox Statue Puzzle, on the second floor, beside a green console.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 183.82, 104.62);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1599415] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found within the Dream Fox Statue Puzzle, inside the second inner threshold near the exit point at the other end.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 184.86, 103.27);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1599416] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found after completing the Dream Fox Statue Puzzle.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 184.3, 102.0);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1599417] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found in the Dream Fox Statue Puzzle, in the lower inner threshold after going through a set of stairs, behind some breakable objects.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 182.29, 112.85);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1599418] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found in the Dream Fox Statue Puzzle, inside the lower inner threshold near a Flamejaw Chi.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 183.56, 114.42);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1599419] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found in the Dream Fox Statue Puzzle, inside the lower inner threshold, and high up on a landing between a set of stairs. You need to repeatedly turn on the lamp, exit, and enter the threshold while heading up.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 184.82, 113.33);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1599420] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found in the Dream Fox Statue Puzzle, inside the lower inner threshold and the highest floor. You need to repeatedly turn on the lamp, exit, and enter the threshold while heading up.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 184.52, 112.28);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1599421] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found after completing the Dream Fox Statue Puzzle.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 182.99, 111.46);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1599422] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Dream Fox Statue Puzzle, on the other side after riding the moving platform.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 170.72, 116.94);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1599423] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Dream Fox Statue Puzzle, beside a railing on a platform guarded by an Autopuppet enemy.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 169.42, 116.36);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1599424] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Dream Fox Statue Puzzle, after crossing the moving platform for a second time it should be beside the Flamejaw Chi.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 169.38, 114.7);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1599425] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Dream Fox Statue Puzzle, near the Flaemjaw Chi at the highest level.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 170.53, 114.23);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1599426] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found after completing the Dream Fox Statue Puzzle.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 171.55, 115.12);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1599427] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Dream Fox Statue Puzzle, in a corner with some crates.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 191.14, 132.87);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1599428] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Dream Fox Statue Puzzle, in the back area beside another locked chest.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 191.99, 134.58);

    IF 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894791/8a0a8b26e5e90f55ae32a3f759112a4f.png/show');
    END;
END;


-- [1599429] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Dream Fox Statue Puzzle, in the back area underneath a set of stairs.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 193.65, 134.37);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1599430] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found inside the Dream Fox Statue Puzzle. You need to light up four nearby lamps in four different corner areas to get this chest.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 193.79, 132.79);

    IF 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894792/b145f33baa32312ad31b93fba5b159b3.png/show');
    END;
END;


-- [1599431] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found after completing the Dream Fox Statue Puzzle.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 192.47, 131.64);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1599531] Seat of Serenity (Seat of Serenity)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Seat of Serenity', @CatId, 'Found in front of a small building in the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 97.81, 164.27);

    IF 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show');
    END;
END;


-- [1599532] Seat of Serenity (Seat of Serenity)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Seat of Serenity', @CatId, 'Found on a cliff that is overlooking the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 137.09, 69.49);

    IF 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show');
    END;
END;


-- [1599533] Seat of Serenity (Seat of Serenity)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Seat of Serenity', @CatId, 'Found in the middle of the bridge above the waterfall in the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 194.94, 114.59);

    IF 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show');
    END;
END;


-- [1599534] Seat of Serenity (Seat of Serenity)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Seat of Serenity', @CatId, 'Found by the cliffside pagoda in Mengxuan Vale.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 149.76, 148.56);

    IF 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show');
    END;
END;


-- [1599535] Seat of Serenity (Seat of Serenity)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Seat of Serenity', @CatId, 'Found at the highest mountain peak at the southwest side of Heart of Bloom.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 57.13, 58.57);

    IF 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4557535/48284b0cc60e1692b28e3e6ddd74c43c.png/show');
    END;
END;


-- [1599812] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the west side of the map, near the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 117.22, 59.61);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599813] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the west side of the map, near the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 110.03, 59.61);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599814] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the south side of the Resonance Nexus, which is on the northwest side of the Heart of Stillness.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 145.36, 76.63);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599815] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the east side of Repair Workshop and near the Thousandbloom Grotto.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 94.46, 90.34);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599816] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the north side of Cascade Hollow, near the left edge of the map.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 94.83, 49.11);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599817] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the north side of Cascade Hollow, near the Heart of Bloom.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 91.17, 54.2);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599818] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found inside the Stillfrost Crossing.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 27.75, 118.44);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599819] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found near the bridge of the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 92.92, 167.29);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599820] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found in the Heart of Frost, near the Treasure of Perilous Enclave Challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 121.36, 193.87);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599821] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the south side of the Resonance Beacon in the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 128.5, 201.01);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599822] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the west side of the Resonance Beacon in the Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 137.13, 182.14);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599823] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the east side of the map, near the Rime Grotto.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 126.07, 165.81);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599824] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the south side of the Simulacrum Nexus nest in the Heart of Flames.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 173.6, 122.51);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599825] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found on the northwest side of the Heart of Flames Resonance Beacon.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 202.95, 94.41);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599826] Controlled Anomaly Zone (Controlled Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Controlled Anomaly Zone', @CatId, 'Found inside the Thousandbloom Grotto.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 117.92, 18.22);

    IF 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636452/8f6608fa732e4e5baf5b22de4c643e72.png/show');
    END;
END;


-- [1599836] Censure Lock Crisis (Censure Lock Crisis)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Censure Lock Crisis', @CatId, 'Skywatch Lancer: Unit-01 is found in the southwestern Heart of Bloom area, inside a cave called Cascade Hollow');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 80.99, 18.58);

    IF 'https://img.game8.co/4589973/f99dd4f2d7dc4d6e2d6c7247472f013c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4589973/f99dd4f2d7dc4d6e2d6c7247472f013c.png/show');
    END;
END;


-- [1599837] Censure Lock Crisis (Censure Lock Crisis)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Censure Lock Crisis', @CatId, 'Rimewind Soulfrayer is found in a cave behind the large waterfall in Heart of Frost, and requires the completion of the Tales from the Capsule: Ashen Fox quest');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 110.1, 232.09);

    IF 'https://img.game8.co/4589973/f99dd4f2d7dc4d6e2d6c7247472f013c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4589973/f99dd4f2d7dc4d6e2d6c7247472f013c.png/show');
    END;
END;


-- [1599838] Censure Lock Crisis (Censure Lock Crisis)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Censure Lock Crisis', @CatId, 'Myriadform Bloomburst is found in the Heart of Stillness, in the canyon northwest of the Repair Works');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 102.86, 86.16);

    IF 'https://img.game8.co/4589973/f99dd4f2d7dc4d6e2d6c7247472f013c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4589973/f99dd4f2d7dc4d6e2d6c7247472f013c.png/show');
    END;
END;


-- [1599839] Censure Lock Crisis (Censure Lock Crisis)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Censure Lock Crisis', @CatId, 'Abysswatch Formrender is found in Heart of Flames, behind a waterfall south of the Tacet Field in the area');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 233.48, 127.16);

    IF 'https://img.game8.co/4589973/f99dd4f2d7dc4d6e2d6c7247472f013c.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4589973/f99dd4f2d7dc4d6e2d6c7247472f013c.png/show');
    END;
END;


-- [1599840] Dream Jade Rootstone (Dream Jade Rootstone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Jade Rootstone', @CatId, 'Found on the northwest side of the Heart of Bloom Resonance Beacon.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 87.8, 67.2);

    IF 'https://img.game8.co/4636597/7b9c00782e795ca90eeaab778d31a882.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636597/7b9c00782e795ca90eeaab778d31a882.png/show');
    END;
END;


-- [1599841] Dream Kernel Puppet (Dream Kernel Puppet)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Kernel Puppet', @CatId, 'Found on the east side of the Mengxuan Vale and the north side of Heart of Frost.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 135.67, 164.54);

    IF 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show');
    END;
END;


-- [1599842] Dream Kernel Puppet (Dream Kernel Puppet)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Kernel Puppet', @CatId, 'Found on the east side of Mengxuan Vale and northeast of Heart of Frost, near the upper Resonance Beacon.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 130.48, 189.95);

    IF 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show');
    END;
END;


-- [1599843] Dream Kernel Puppet (Dream Kernel Puppet)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Kernel Puppet', @CatId, 'Found on the southeast side of the Repair Workshop and the southwest side of Heart of Frost, near the lower Resonance Beacon.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 79.28, 150.92);

    IF 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show');
    END;
END;


-- [1599844] Dream Kernel Puppet (Dream Kernel Puppet)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Kernel Puppet', @CatId, 'Found on the northwest side of Heart of Frost, near the bridge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 98.63, 160.87);

    IF 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show');
    END;
END;


-- [1600898] Dream Kernel Puppet (Dream Kernel Puppet)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Kernel Puppet', @CatId, 'Found on the east side of Mengxuan Vale and northeast of Heart of Frost, near the upper Resonance Beacon.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 119.75, 177.53);

    IF 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636596/f0078c504f017aa9429f407dd01dfb20.png/show');
    END;
END;


-- [1601076] Composite Anomaly Zone (Composite Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Composite Anomaly Zone', @CatId, 'Found northeast of Mengxuan Vale near the edge of a waterfall.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 146.86, 145.33);

    IF 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show');
    END;
END;


-- [1601077] Composite Anomaly Zone (Composite Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Composite Anomaly Zone', @CatId, 'Situated by the lake in the Heart of Flames. You can find it at the top of the waterfall.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 181.84, 91.45);

    IF 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show');
    END;
END;


-- [1601078] Composite Anomaly Zone (Composite Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Composite Anomaly Zone', @CatId, 'Located at the plaza of the Heart of Stillness in the Simulacrum Nexus. Search for the burning carriage to initiate the challenge.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 123.04, 73.94);

    IF 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show');
    END;
END;


-- [1601079] Composite Anomaly Zone (Composite Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Composite Anomaly Zone', @CatId, 'Found in the east side of Heart of Bloom, situated above the Wandering Heart Ruins.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 68.58, 87.66);

    IF 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show');
    END;
END;


-- [1601080] Composite Anomaly Zone (Composite Anomaly Zone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Composite Anomaly Zone', @CatId, 'Found in the underground area, Stillfrost Crossing.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 30.77, 120.72);

    IF 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4637912/ae4e9bc3d1cdf8ffd6dc6b4ad056a926.png/show');
    END;
END;


-- [1601084] Dream Jade Rootstone (Dream Jade Rootstone)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Dream Jade Rootstone', @CatId, 'Found on the south side of the map, near the Heart of Stillness and the Thousandbloom Grotto');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 105.77, 77.61);

    IF 'https://img.game8.co/4636597/7b9c00782e795ca90eeaab778d31a882.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/4636597/7b9c00782e795ca90eeaab778d31a882.png/show');
    END;
END;


-- [1601099] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found after completing the Dream Jade Rootstone near the Thousandbloom Grotto.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 104.8, 77.42);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;


-- [1601100] Supply Chest (Supply Chest)
BEGIN
    SELECT @CatId = CatId FROM @CatMap WHERE NombreCat = 'General';
    
    INSERT INTO PuntosInteres (nombre, categoryId, descripcion) 
    VALUES ('Supply Chest', @CatId, 'Found after completing the Dream Jade Rootstone Heart of Bloom found south of the map near Heart of Bloom.');
    
    SET @puntoId = SCOPE_IDENTITY();

    INSERT INTO Coordenadas (puntoId, x, y) 
    VALUES (@puntoId, 87.91, 66.2);

    IF 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show' <> ''
    BEGIN
        INSERT INTO Icons (puntoId, imgUrl) VALUES (@puntoId, 'https://img.game8.co/3894794/4f077e716f334f517ae2101827763281.png/show');
    END;
END;
