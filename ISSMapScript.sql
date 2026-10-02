create database ISSMap;
go
use ISSMap;
go
create table Categorias(
	id int identity(1,1) primary key,
	categoria varchar(100) not null,
);

create table PuntosInteres(
	id int identity(1,1) primary key,
	nombre varchar(100),
	categoryId int,
	descripcion varchar(100)

	constraint FK_PuntosInteres_Categorias 
		foreign key (categoryId) references Categorias(id),
);
create table Coordenadas(
	id int identity(1,1) primary key,
	puntoId int,
	x decimal(4,3),
	y decimal(4,3),

	constraint FK_Coordenadas_PuntosInteres
		foreign key (puntoId) references PuntosInteres(id),
);
create table Icons(
	puntoId int,
	imgUrl varchar(300),

	constraint FK_Icons_PuntosInteres
		foreign key (puntoId) references PuntosInteres(id),
);

CREATE TABLE Usuario (
	id INT IDENTITY(1,1) PRIMARY KEY,
	username VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
    pass_hash VARCHAR(255),
	fecha_registro DATETIME2 DEFAULT GETDATE()
);

create table PuntosGuardados(
	userId int,
	coordId int,
	marked bit not null default 0,

	constraint FK_PuntosGuardados_Usuarios
		foreign key (userId) references Usuario(id),
	constraint FK_PuntosGuardados_Coordenadas
		foreign key (coordId) references Coordenadas(id),

);
