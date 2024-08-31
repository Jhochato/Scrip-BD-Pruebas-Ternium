CREATE PROCEDURE ObtUsuarioCreadosUltimas2Horas
AS
BEGIN
    SELECT 
        IdUsuario,
        Nombre,
        Apellido,
        Edad,
        Correo,
        Hobbies,
        Activo,
        FechaCreacion,
        FechaActualizacion,
        UsuarioCreacion,
        UsuarioActualizacion
    FROM Usuarios
    WHERE FechaCreacion >= DATEADD(HOUR, -2, GETDATE())
END;
