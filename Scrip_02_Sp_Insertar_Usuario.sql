USE Ternium_Pruebas;
GO

CREATE PROCEDURE InsertarUsuario
    @Nombre NVARCHAR(50),
    @Apellido NVARCHAR(50),
    @Edad INT,
    @Correo NVARCHAR(100),
    @Hobbies NVARCHAR(MAX),
    @Activo BIT,
    @UsuarioCreacion NVARCHAR(50)
AS
BEGIN
    INSERT INTO Usuarios (Nombre, Apellido, Edad, Correo, Hobbies, Activo, FechaCreacion, UsuarioCreacion)
    VALUES (@Nombre, @Apellido, @Edad, @Correo, @Hobbies, @Activo, GETDATE(), @UsuarioCreacion);
END;
