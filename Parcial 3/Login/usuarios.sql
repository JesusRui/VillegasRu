create database Loggin

CREATE TABLE `loggin`.`usuarios` (
  `idusuarios` INT NOT NULL,
  `usuario` VARCHAR(45) NULL,
  `contraseña` VARCHAR(45) NULL,
  PRIMARY KEY (`idusuarios`));

SELECT * FROM loggin.usuarios;

INSERT INTO `loggin`.`usuarios` (`idusuarios`, `usuario`, `contraseña`) VALUES ('1', 'jesus', 'li3902');
