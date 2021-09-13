-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.4-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla db_sofka.historico
CREATE TABLE IF NOT EXISTS `historico` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nom_jugador` varchar(50) NOT NULL,
  `nivel` int(1) unsigned NOT NULL,
  `puntos` int(5) unsigned NOT NULL,
  `estado` varchar(50) NOT NULL,
  `horario` varchar(50) NOT NULL,
  KEY `Índice 1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='esta tabla guarda los eventos que se realizan en el juego, como son: nuembre del jugador, nivel alcanzado, total de puntos, estado, fecha y hora de la jugada.';

-- Volcando datos para la tabla db_sofka.historico: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;

-- Volcando estructura para tabla db_sofka.preguntas
CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(150) NOT NULL,
  `nivel` int(1) unsigned NOT NULL,
  `categoria` varchar(50) NOT NULL,
  KEY `Índice 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COMMENT='esta tabla contiene las preguntas categorizadas por 5 niveles de complejidad.';

-- Volcando datos para la tabla db_sofka.preguntas: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` (`id`, `pregunta`, `nivel`, `categoria`) VALUES
	(1, '¿Qué rama de la Biología estudia los animales?', 1, 'Biologia'),
	(2, '¿Qué es un ovíparo?', 2, 'Biologia'),
	(3, '¿Cómo se llama el pigmento verde que se encuentra en las plantas?', 3, 'Biologia'),
	(4, '¿Cuál es el denominado “fluido vital”, imprescindible en los seres vivos?', 4, 'Biologia'),
	(5, '¿Cuál es la proteína encontrada en cabellos y uñas?', 5, 'Biologia'),
	(6, '¿Quién es el autor de el Quijote?', 1, 'Litertura'),
	(7, '¿Qué escritor colombiano es autor de El amor en los tiempos del cólera?', 2, 'Litertura'),
	(8, '¿Quién escribió La Odisea?', 3, 'Litertura'),
	(9, '¿De qué país es el escritor latinoamericano Rubén Darío?', 4, 'Litertura'),
	(10, '¿Quién escribió el cuento Alicia en el País de las Maravillas?', 5, 'Litertura'),
	(11, '¿Qué instrumento óptico permite ver los astros de cerca?', 1, 'Astronimia'),
	(12, '¿Cómo se llama esta galaxia a la cual pertenece el Sistema Solar?', 2, 'Astronimia'),
	(13, '¿Qué planeta tiene la atmósfera más fría del sistema solar?', 3, 'Astronimia'),
	(14, '¿Cuál es la estrella más brillante de la constelación de la Osa Menor?', 4, 'Astronimia'),
	(15, '¿Cómo se llama la estación espacial rusa?', 5, 'Astronimia'),
	(16, '¿En qué país puedes visitar Machu Picchu?', 1, 'Geografia'),
	(17, '¿En qué país se encuentra la Universidad de Standford?', 2, 'Geografia'),
	(18, '¿Dónde desemboca el río Amazonas?', 3, 'Geografia'),
	(19, '¿En qué cordillera se encuentra el Monte Everest?', 4, 'Geografia'),
	(20, '¿Cuál es la isla más grande del mar Caribe?', 5, 'Geografia'),
	(21, '¿Cómo se les llamaba a los primeros pobladores que se desplazaban en busca de alimento?', 1, 'Historia'),
	(22, '¿Qué conflicto tuvo lugar entre Rusia y Estados Unidos desde los años 40?', 2, 'Historia'),
	(23, '¿En qué ciudad fue asesinado John F. Kennedy? ', 3, 'Historia'),
	(24, '¿Entre qué dos países se luchó la guerra de los 100 años? ', 4, 'Historia'),
	(25, '¿En qué país nació Adolf Hitler? ', 5, 'Historia');
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;

-- Volcando estructura para tabla db_sofka.respuestas
CREATE TABLE IF NOT EXISTS `respuestas` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(50) NOT NULL,
  `comprobar` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `asociacion` int(3) unsigned NOT NULL,
  KEY `Índice 1` (`id`),
  KEY `FK_respuestas_preguntas` (`asociacion`),
  CONSTRAINT `FK_respuestas_preguntas` FOREIGN KEY (`asociacion`) REFERENCES `preguntas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COMMENT='esta tabla contiene las respuestas asociadas a las preguntas, 4 respuestas y solo una de ellas es verdadera';

-- Volcando datos para la tabla db_sofka.respuestas: ~100 rows (aproximadamente)
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` (`id`, `respuesta`, `comprobar`, `asociacion`) VALUES
	(1, 'Zoología', 1, 1),
	(2, 'Arquitectura', 0, 1),
	(3, 'Botanica', 0, 1),
	(4, 'Medio Ambiente', 0, 1),
	(5, 'Los animales invertebrados', 0, 2),
	(6, 'Los animales que comen carne', 0, 2),
	(7, 'Los animales que nacen de un huevo', 1, 2),
	(8, 'Los animales de cuatro patas', 0, 2),
	(9, 'Verdin', 0, 3),
	(10, 'Sabila', 0, 3),
	(11, 'Clorofila', 1, 3),
	(12, 'Planton', 0, 3),
	(13, 'Sal', 0, 4),
	(14, 'Sabila', 0, 4),
	(15, 'Oxigeno', 0, 4),
	(16, 'Agua', 1, 4),
	(17, 'Treonina', 0, 5),
	(18, 'Queratina', 1, 5),
	(19, 'Lisina', 0, 5),
	(20, 'Taurina', 0, 5),
	(21, 'Homero', 0, 6),
	(22, 'Paulo Coelho', 0, 6),
	(23, 'Gabriel Garcia Marquez', 0, 6),
	(24, 'Miguel de Cervantes', 1, 6),
	(25, 'Miguel de Cervantes', 0, 7),
	(26, 'Gabriel Garcia Marquez', 1, 7),
	(27, 'Paulo Coelho', 0, 7),
	(28, 'Homero', 0, 7),
	(29, 'Miguel de Cervantes', 0, 8),
	(30, 'Shakespeare', 0, 8),
	(31, 'Da vinci', 0, 8),
	(32, 'Homero', 1, 8),
	(33, 'Mexico', 0, 9),
	(34, 'Nicaragua', 1, 9),
	(35, 'Panama', 0, 9),
	(36, 'Honduras', 0, 9),
	(37, 'Lewis Carroll', 1, 10),
	(38, 'Homero', 0, 10),
	(39, 'Shakespeare', 0, 10),
	(40, 'Da vinci', 0, 10),
	(41, 'Gafas', 0, 11),
	(42, 'Binoculares', 0, 11),
	(43, 'Lupa', 0, 11),
	(44, 'Telescopio', 1, 11),
	(45, 'Andrómeda', 0, 12),
	(46, 'Vía Láctea', 1, 12),
	(47, 'Barnard', 0, 12),
	(48, 'Bode', 0, 12),
	(49, 'Jupiter', 0, 13),
	(50, 'Saturno', 0, 13),
	(51, 'Neptuno', 1, 13),
	(52, 'Marte', 0, 13),
	(53, 'Polux', 0, 14),
	(54, 'sol', 0, 14),
	(55, 'Polar', 1, 14),
	(56, 'Sirio', 0, 14),
	(57, 'MIR', 1, 15),
	(58, 'SSI', 0, 15),
	(59, 'MRS', 0, 15),
	(60, 'SRUS', 0, 15),
	(61, 'Brasil', 0, 16),
	(62, 'Colombia', 0, 16),
	(63, 'Argentina', 0, 16),
	(64, 'Perú', 1, 16),
	(65, 'Canada', 0, 17),
	(66, 'España', 0, 17),
	(67, 'Estados Unidos', 1, 17),
	(68, 'Inglaterra', 0, 17),
	(69, 'Índico', 0, 18),
	(70, 'Pacífico', 0, 18),
	(71, 'Atlántico', 1, 18),
	(72, 'Antártico', 0, 18),
	(73, 'Himalaya', 1, 19),
	(74, 'Montes Urales', 0, 19),
	(75, 'Apalaches', 0, 19),
	(76, 'Central', 0, 19),
	(77, 'San Andres', 0, 20),
	(78, 'Puerto Rico', 0, 20),
	(79, 'Cuba', 1, 20),
	(80, 'Republica Dominicana', 0, 20),
	(81, 'Recolectores', 0, 21),
	(82, 'Nómadas', 1, 21),
	(83, 'Agricultores', 0, 21),
	(84, 'Campesinos', 0, 21),
	(85, 'La guerra de normandia', 0, 22),
	(86, 'La guerra de los mil dias', 0, 22),
	(87, 'La Guerra Fría', 1, 22),
	(88, 'la guerra de los 100 años', 0, 22),
	(89, 'Dallas', 1, 23),
	(90, 'New York', 0, 23),
	(91, 'Chicago', 0, 23),
	(92, 'Washington DC', 0, 23),
	(93, 'China y Japon', 0, 24),
	(94, 'USA y Rusia', 0, 24),
	(95, 'Alemania y Francia', 0, 24),
	(96, 'Francia e Inglaterra', 1, 24),
	(97, 'Israel', 0, 25),
	(98, 'Austria', 1, 25),
	(99, 'Alemania', 0, 25),
	(100, 'Francia', 0, 25);
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
