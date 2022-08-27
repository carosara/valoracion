CREATE DATABASE CaninoPelu;

USE CaninoPelu;

CREATE TABLE Dueno (
    DNI int NOT NULL UNIQUE,
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) NOT NULL,
    Telefono int NOT NULL,
    Direccion varchar(100) NOT NULL,
   CONSTRAINT pk_dni PRIMARY KEY (DNI)
);

CREATE TABLE Perro (
    id_perro int NOT NULL PRIMARY KEY,
    NombrePerro varchar(50) NOT NULL,
    Fecha_nac date NOT NULL,
    Sexo varchar(25) NOT NULL,
   Dni_Dueno int NOT NULL,
    CONSTRAINT fk_dd FOREIGN KEY (Dni_Dueno) REFERENCES Dueno (DNI)
);
 
 CREATE TABLE Historial (
    id_historial int AUTO_INCREMENT,
    Fecha date NOT NULL,
    Descripcion varchar(250) NULL,
    Monto float NOT NULL,
    perro int NOT NULL,
  PRIMARY KEY (id_historial),
  CONSTRAINT fk_ip FOREIGN KEY (perro) REFERENCES Perro (id_perro)
);

-- se carga datos en tabla Dueno
 INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES 
 (38146780,'Jose','Vera',1158762345,'Arroyo 1834'),
 (28548123,'Jose','Martinez',1567892334,'Lavalle 968'),
 (32987456,'Ana','Perez',156340987,'Junin 345');
 
 -- se carga datos en tabla Perro
INSERT INTO Perro (id_perro, NombrePerro, Fecha_nac, Sexo, Dni_Dueno) VALUES 
(1,'toti','2020-12-04','Macho',38146780),
(2,'bobi','2015-08-12','Macho',28548123),
(3,'niki','2009-11-03','hembra',32987456);

-- se actualiza fecha de nacimiento de un perro
 UPDATE Perro SET Fecha_nac='2018-07-11' WHERE NombrePerro='toti';

-- se muestra la actualizacion en la tabla Perro
SELECT * FROM Perro;

