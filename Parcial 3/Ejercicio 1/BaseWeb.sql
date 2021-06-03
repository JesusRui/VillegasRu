
USE [master]
CREATE DATABASE VillegasRu
go

use VillegasRu
create table clientes
(
clave int not null identity(1,1),
appaterno varchar(15) not null,
apmaterno varchar(15) not null default '',
nombre varchar(20) not null,
nomcompleto as (rtrim(ltrim(nombre))+' '+rtrim(ltrim(appaterno))+' '+rtrim(ltrim(apmaterno))),
fechanac smalldatetime not null,
edad as (datediff(day, fechanac, getdate()) / 365),
genero char(1) not null,
domicilio varchar(50) not null,
telefono varchar(15) default '',
email varchar(30),
constraint pk_clientes primary key (clave)
)

--Insercion de registros
insert into clientes values ('ALVAREZ', 'CUEVAS', 'JUAN CARLOS', '1965-01-01', 'M', 'GUERRERO #2421', '148-8745', 'juancarlos@correo.com')
insert into clientes values ('VILLARREAL', 'MARTINEZ', 'SILVIA', '1980-08-29', 'F', 'SOLARES #38', '130-5566', 'silvia@trabajo.org')
insert into clientes values ('RENTERIA', 'ACOSTA', 'JOSE LUIS', '1974-02-02', 'M', 'FUNDADORES #564', '144-1546', 'pepe@micorreo.com.mx')
insert into clientes values ('MONTES', 'SALDIVAR', 'GUADALUPE', '1970-11-11', 'F', 'CHAPALA #5462', '258-4518', 'lupita@escuela.edu')
insert into clientes values ('ROBLES', 'AGUILAR', 'MARCO ANTONIO', '1957-04-04', 'M', 'AVE. ROSALES #21', '148-8745', 'marcos@correo.com')