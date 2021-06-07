Create database ruvillegas;
use ruvillegas;

/* base de datos para los ejercicios */

create table personas
(
    id int(11) not null auto_increment,
    Nombre varchar(30),
    apPaterno varchar(30),
    apMaterno varchar(30),
    edad int(11) NOT NULL,
    telefono varchar(10) NOT NULL,
    PRIMARY KEY(id)
);

select * from personas;

INSERT INTO personas (Nombre, apPaterno, apMaterno, edad, telefono) 
VALUES('Sergio', 'Osto', 'Rojas', '21', '8672308615');

INSERT INTO personas (Nombre, apPaterno, apMaterno, edad, telefono) 
VALUES('Adela', 'Rojas', 'Camargo', '49', '8673140009');

INSERT INTO personas (Nombre, apPaterno, apMaterno, edad, telefono) 
VALUES('Lizandro', 'Valdez', 'Gutierrez', '20', '8671231233');

INSERT INTO personas (Nombre, apPaterno, apMaterno, edad, telefono)  
VALUES('Carlos', 'Lopez', 'Coto', '20', '8670980989');

INSERT INTO personas (Nombre, apPaterno, apMaterno, edad, telefono) 
VALUES('Jesus', 'Villegas', 'Ruiz', '21', '8677899877');
