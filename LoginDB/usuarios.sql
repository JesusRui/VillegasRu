create database villegasru;

CREATE TABLE `villegasru`.`usuarios` (
  `idusuarios` INT NOT NULL,
  `usuario` VARCHAR(45) NULL,
  `contraseña` VARCHAR(45) NULL,
  PRIMARY KEY (`idusuarios`));

SELECT * FROM villegasru.usuarios;

INSERT INTO `villegasru`.`usuarios` (`idusuarios`, `usuario`, `contraseña`) VALUES ('1', 'jesus', 'villegas');

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `celular` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `celular`) VALUES
(680, 'Alex puti', 'alexsarriahenao.2307@gmail.com', '3112781478'),
(682, 'Adriana', 'amilenita64@hotmail.com', '3176802693'),
(684, 'DAMARIS', 'damaris-rincon@hotmail.com', '3115050103'),
(685, 'Magaly', 'magaly_vega87@yahoo.com', '3014378134'),
(686, 'Oscar', 'oscarbogota79@gmail.com', '3162655524'),
(687, 'Francy', 'francymesa@gmail.com', '3212060512'),
(688, 'ADRIANA MERCEDES', 'adrimher_99@hotmail.com', '3108039620'),
(690, 'Fredy', 'fbejarano1982@yahoo.es', '3142159522'),
(692, 'JAVIER ', 'javierdario.0870@gmail.com', '3124861910'),
(693, 'JAIRO NEL ', 'jaironel2007@gmail.com', '3209642982'),
(695, 'Marcos', 'aldanilly@yahoo.com.co', '3102418894');

ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `clientes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2000;
COMMIT;