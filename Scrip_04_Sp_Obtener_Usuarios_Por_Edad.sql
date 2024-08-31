CREATE PROCEDURE ObtenerUsuariosPorEdad
    @Edad INT
AS
BEGIN
    SELECT 
        IdUsuario,
        Nombre,
        Apellido,
        Edad,
        Correo,
        dbo.OrdenarHobbies(Hobbies) AS Hobbies,
        Activo,
        FechaCreacion,
        FechaActualizacion,
        UsuarioCreacion,
        UsuarioActualizacion
    FROM Usuarios
    WHERE Edad >= @Edad
END;
