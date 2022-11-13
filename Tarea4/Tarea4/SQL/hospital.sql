create database HOSPITAL

use HOSPITAL

 create table Paciente
(
Cedula varchar(14) primary key,
Nombre varchar(50) not null,
Edad TINYINT,
Genero char(1),
Telefono varchar(10),
Seguro bit,
Provincia varchar(50),
Canton varchar(50),
Distrito varchar(50),
)

Insert into Paciente values('117060602','Moises Esquivel Coto',24,'M','72453032',1,'San Jose','Goicoechea','Rancho Redondo')


select * FROM Paciente

