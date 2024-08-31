-- Paso 1: Crear la base de datos Ternium_Pruebas
CREATE DATABASE Ternium_Pruebas;
GO

-- Paso 2: Usar la base de datos Ternium_Pruebas para poder ejecutar los scrip de creacion de las tablas
USE Ternium_Pruebas;
GO

--Paso 3: dentro del contexto de Ternium_Pruebas crear la tabla Usuarios
CREATE TABLE Usuarios (
    IdUsuario INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL,
    Apellido NVARCHAR(50) NOT NULL,
    Edad INT NOT NULL,
	Correo NVARCHAR(150) NOT NULL,
	Hobbies NVARCHAR(500) NOT NULL,
    Activo Bit NOT NULL,
    FechaCreacion DATETIME NULL DEFAULT GETDATE(),
    FechaActualizacion DATETIME NULL DEFAULT GETDATE(),
	UsuarioCreacion NVARCHAR(50),
    UsuarioActualizacion NVARCHAR(50)
);
GO


