CREATE FUNCTION dbo.OrdenarHobbies (@hobbies NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @ResultadoHobbies NVARCHAR(MAX);
	
	-- Creamos una tabla temporal para los Hobbies
    DECLARE @tablaHobbiesTmp TABLE (hobby NVARCHAR(MAX));

    -- Insertamos los valores de Hobbies en la tabla temporal
    INSERT INTO @tablaHobbiesTmp (hobby)
    SELECT value
    FROM STRING_SPLIT(@hobbies, '-');

    -- Ordena los hobbies y se concaten en una sola cadena
    SELECT @ResultadoHobbies = STUFF((
        SELECT ',' + hobby
        FROM @tablaHobbiesTmp
        ORDER BY hobby
        FOR XML PATH('')
    ), 1, 1, '');

    RETURN @ResultadoHobbies;
END
GO
