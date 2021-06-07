CREATE DATABASE villegasru
use villegasru;

CREATE TABLE `villegasru`.`clientes` (
  `idclientes` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `NumeroTel` VARCHAR(45) NULL,
  PRIMARY KEY (`idclientes`));

INSERT INTO `villegasru`.`clientes` (`idclientes`, `Nombre`, `Apellido`, `NumeroTel`) VALUES ('1', 'Jesus', 'Villegas', '123');
INSERT INTO `villegasru`.`clientes` (`idclientes`, `Nombre`, `Apellido`, `NumeroTel`) VALUES ('2', 'Oziel', 'Benavides', '321');
INSERT INTO `villegasru`.`clientes` (`idclientes`, `Nombre`, `Apellido`, `NumeroTel`) VALUES ('3', 'Rosita ', 'Montes', '789');
INSERT INTO `villegasru`.`clientes` (`idclientes`, `Nombre`, `Apellido`, `NumeroTel`) VALUES ('4', 'Juan ', 'Hernandez', '456');
INSERT INTO `villegasru`.`clientes` (`idclientes`, `Nombre`, `Apellido`, `NumeroTel`) VALUES ('5', 'Leo', 'Messi', '987');

