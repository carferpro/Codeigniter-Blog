-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2015 a las 03:22:35
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_project`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `id_blog`, `author`, `comment`, `date`) VALUES
(9, 14, 'pedro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, tenetur natus doloremque laborum quos iste ipsum rerum obcaecati impedit odit illo dolorum ab tempora nihil dicta earum fugiat. Temporibus, voluptatibus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, doloribus, dolorem iusto blanditiis unde eius illum consequuntur neque dicta incidunt ullam ea hic porro optio ratione repellat perspiciatis. Enim, iure!', '2015-08-30 23:24:29'),
(10, 14, 'pedro', 'olor sit amet, consectetur adipisicing elit. Ut, tenetur natus doloremque laborum quos iste ipsum rerum obcaecati impedit odit illo dolorum ab tempora nihil dicta earum fugiat. Temporibus, voluptatibus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, doloribus, dolorem iusto blanditiis unde eiu', '2015-08-30 23:46:26'),
(11, 15, 'pedro', 'Si analizamos el importe de las ventas, El Corte Inglés es el líder indiscutible entre los grandes almacenes europeos. Con sus 14.592 millones de euros en 2014, mantiene su posición en la cabeza de la tabla por encima de las británicas Marks & Spencer Group (12.791 millones) y John Lewis Partnership (12.034 millones) y gran distancia de la cuarta en lista, la francesa Lafayette, con 3.360 millones.', '2015-08-31 01:09:40'),
(12, 16, 'antonio', 'el elevado índice de intencionalidad y de imprudencias relacionadas con el uso del fuego en el medio rural, así como de maquinaria agraria en días de riesgo extremo de incendio: el 55% de los incendios son intencionados, de los cuales casi un 43% se deben a quemas agrícolas y el 26% a quemas ganaderas. ', '2015-08-31 01:25:03'),
(13, 16, 'antonio', 'Desde el principio, las organizaciones conservacionistas nos hemos opuesto radicalmente a esta reforma, por considerarla innecesaria y peligrosa. Estaremos muy alerta para que nadie intente maniobras especulativas en los montes quemados, pero mientras tanto es fundamental que seamos rigurosos y no perdamos de vista las causas de fondo del problema. Lo más alarmante es que nuestros montes están listos para arder y los grandes incendios forestales son cada vez más frecuentes y devastadores.', '2015-08-31 01:28:31'),
(14, 16, 'maria', 'Desde el principio, las organizaciones conservacionistas nos hemos opuesto radicalmente a esta reforma, por considerarla innecesaria y peligrosa. Estaremos muy alerta para que nadie intente maniobras especulativas en los montes quemados, pero mientras tanto es fundamental que seamos rigurosos y no perdamos de vista las causas de fondo del problema. Lo más alarmante es que nuestros montes están listos para arder y los grandes incendios forestales son cada vez más frecuentes y devastadores.', '2015-08-31 01:32:18'),
(15, 16, 'pedro', ' han ardido 65.912 hectáreas, un 60% más que en todo el año pasado. Titulares como "Fines especulativos detrás de la ola incendiaria" o "Tras la ley llegó el fuego" han calado en la sociedad, que ha reaccionado indignada ante lo que considera un negocio de unos pocos a costa de la naturaleza.', '2015-08-31 02:31:34'),
(16, 17, 'antonio', 'En este lugar cuenta la leyenda, que fue coronado D. Pelayo, después de vencer al ejército agareno en la batalla de Covadonga. Parece ser que después de la batalla, el Rey avanzaba con sus huestes en persecución del enemigo y era reconocido como tal en cada uno de los nuevos territorios que iba alcanzando, en los cuales se le hacían proclamaciones sucesivas o “coronaciones parciales”, así podría esplicarse el hecho de que numerosos lugares de los picos de Europa, reclamen para sí la gloria de la coronación definitiva del rey. ', '2015-08-31 02:38:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entries`
--

CREATE TABLE IF NOT EXISTS `entries` (
  `id` int(11) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `tags` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entries`
--

INSERT INTO `entries` (`id`, `permalink`, `author`, `title`, `content`, `date`, `tags`) VALUES
(10, 'blog-de-prueba', 'pedro', 'Blog de prueba', 'sdoaiuññdsoihfdlshldwh', '2015-08-30 21:45:25', 'oñiiooyhohy'),
(11, 'otra-prueba', 'pedro', 'otra prueba', 'esto es otra prueba del funcionamiento del blog', '2015-08-30 22:09:14', 'wewq'),
(12, 'prueba-realizada-por-antonio', 'antonio', 'prueba realizada por antonio', 'una prueba mas, la tercera, para verificar el funcionamiento del blog', '2015-08-30 22:11:28', 'asds'),
(13, 'fdqfqfq', 'antonio', 'fdqfqfq', 'wfrqeqe', '2015-08-30 22:12:40', 'qerqeqe'),
(14, 'entrada-de-pedro', 'pedro', 'Entrada de Pedro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, tenetur natus doloremque laborum quos iste ipsum rerum obcaecati impedit odit illo dolorum ab tempora nihil dicta earum fugiat. Temporibus, voluptatibus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, doloribus, dolorem iusto blanditiis unde eius illum consequuntur neque dicta incidunt ullam ea hic porro optio ratione repellat perspiciatis. Enim, iure!', '2015-08-30 23:23:56', 'Lorem'),
(15, 'la-crisis-economica', 'pedro', 'La crisis economica', 'Faltaba sólo que los resultados de El Corte Inglés hablasen para certificar que la economía española ha cambiado de ciclo. Tras seis ejercicios marcados por el retroceso de ventas, la cifra de negocio del grupo de grandes almacenes volvió a los números negros en 2014: un total de 14.592 millones de euros, un 2,6% más que en 2013.', '2015-08-31 01:08:01', 'crisis'),
(16, 'el-fuego-como-s', 'antonio', 'El fuego como síntoma', 'En las últimas semanas no han sido pocos los medios de comunicación que se han hecho eco de la posible relación entre la reciente modificación de la Ley de Montes y el incremento de los incendios forestales respecto a 2013 y 2014. En lo que va de 2015 han ardido 65.912 hectáreas, un 60% más que en todo el año pasado. Titulares como "Fines especulativos detrás de la ola incendiaria" o "Tras la ley llegó el fuego" han calado en la sociedad, que ha reaccionado indignada ante lo que considera un negocio de unos pocos a costa de la naturaleza.', '2015-08-31 01:24:30', 'fuego'),
(17, 'garganta-del-cares', 'pilar', 'Garganta del Cares', 'Garganta del Cares.- (ver galería de fotos)\r\nTambién conocida por muchos como la “Garganta divina”.\r\nEsta ruta transcurre por un camino bien marcado y sin ninguna dificultad, pero que dada su longitud 12Kmts. De ida y otros 12 de vuelta, no todo el mundo puede realizarla completa en un día. A pesar de la anchura del camino, debemos estar vigilantes ya que el mismo bordea vertiginosos cortados sobre el río.\r\nEsta ruta nos permite unir León con Asturias,caminando por las entrañas de los Picos de Europa rodeados de cumbres de más de 2.000 mts. De altura a la vez que disfrutamos de las aguas cristalinas del Cares.\r\nDe espectacular belleza, esta senda es itinerario obligado para los amantes de la naturaleza. ', '2015-08-31 02:38:04', 'Asturias, picos de europa'),
(18, 'errores-comunes-al-comprar-un-dominio', 'pilar', 'Errores comunes al comprar un dominio', 'Elegir dominios largos: No es recomendable elegir dominios que sean muy largos, ya que normalmente si son muy largos suelen ser bastante difíciles de escribir. Recomiendo no superar los 10 caracteres y como mucho llegar a 15.\r\nNúmeros en el dominio: No incluyas números en los dominios, antes tenía un dominio que contenía un número seguido de una palabra, el problema era que los usuarios normalmente no se acordaban de introducir el número y únicamente ponían la palabra, el resultado es que iban a la Web de la competencia.\r\nNo elegir correctamente la extensión del dominio: Recuerda que siempre que te orientes a un país en concreto elegir la extensión del país y si no la .com, más información en los ', '2015-08-31 02:44:50', 'hosting, dominios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(9, 'Pedro', 'pedro', '5869fa3a9124684a86015a1a90428b22'),
(10, 'Pedro', 'pedro', 'c6cc8094c2dc07b700ffcc36d64e2138'),
(11, 'Antonio', 'antonio', '4a181673429f0b6abbfd452f0f3b5950'),
(12, 'Maria', 'maria', '263bce650e68ab4e23f28263760b9fa5'),
(13, 'guillem', 'guillem', 'eef9a734b537cc645f5842f6c436ff70'),
(14, 'sebas', 'sebas', '0d40d9aea2b3b5a149dc34495fff0a0a'),
(15, 'pilar', 'pilar', '31c7d084f0460fcde98ee9314fc8ef30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `entries`
--
ALTER TABLE `entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
