USE GYM
GO

-------------------------------------------
----------------TABLA PERSONA--------------
-------------------------------------------

CREATE TABLE Persona
(
Id_Persona INT IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(50) NULL,
PrimerApellido VARCHAR(50) NULL,
SegundoApellido VARCHAR(50) NULL,
FechaNacimiento DATE NULL,
Peso NUMERIC(3, 2) NULL,
Estatura NUMERIC(2, 2) NULL,
Objetivo VARCHAR(100) NULL,
FechaInscripcion DATE NULL
);
Alter table Persona add constraint PK_Id_Persona Primary key (Id_Persona);

ALTER TABLE Perona WITH CHECK ADD CONSTRAINT FK_Id_Persona FOREIGN KEY(Id_Persona)
REFERENCES ControlMedidas(Id_Persona)
ALTER TABLE Perona CHECK CONSTRAINT FK_Id_Persona

-------------------------------------------
----------------TABLA CONTROL--------------
-------------------------------------------

CREATE TABLE ControlMedidas
(
Id_Persona INT NOT NULL,
FechaMedicion DATE NULL,
Peso NUMERIC(3, 2) NULL,
BrazoIzq  NUMERIC(2, 2) NULL,
BrazoDerc  NUMERIC(2, 2) NULL,
PiernaIzq  NUMERIC(2, 2) NULL,
PiernaDerc  NUMERIC(2, 2) NULL,
PantorrillaIzq  NUMERIC(2, 2) NULL,
PantorrillaDerc  NUMERIC(2, 2) NULL,
Abdomen  NUMERIC(2, 2) NULL,
Cadera  NUMERIC(2, 2) NULL,
Pecho  NUMERIC(2, 2) NULL,
GrasaCorporal  NUMERIC(2, 2) NULL,
GrasaViceral  NUMERIC(2, 2) NULL,
EdadMetabolica  NUMERIC(2, 2) NULL
);
Alter table ControlMedidas add constraint PK_Id_Persona Primary key (Id_Persona);


-------------------------------------------
--------------TABLA INSTRUCTOR-------------
-------------------------------------------

CREATE TABLE Instructor
(
Id_Instructor INT IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(50) NULL,
PrimerApellido VARCHAR(50) NULL,
SegundoApellido VARCHAR(50) NULL,
FechaNacimiento DATE NULL
);
Alter table Instructor add constraint PK_Id_Instructor Primary key (Id_Instructor);

-------------------------------------------
----------------TABLA RUTINAS--------------
-------------------------------------------

CREATE TABLE Rutinas
(
Id_Rutina INT NOT NULL,
Nombre VARCHAR(50) NULL,
Descripcion VARCHAR(MAX) NULL
);
Alter table Rutinas add constraint PK_Id_Rutina Primary key (Id_Rutina);