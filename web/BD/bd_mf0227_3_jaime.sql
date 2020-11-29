-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2020 a las 20:05:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_mf0227_3_jaime`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `gen_id` int(11) NOT NULL,
  `gen_genero` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `gen_foto` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`gen_id`, `gen_genero`, `gen_foto`) VALUES
(1, 'Terror', 'terror.png'),
(2, 'Thriller', 'thriller.png'),
(3, 'Acción', 'accion.png'),
(4, 'Drama', 'drama.png'),
(5, 'Romance', 'romance.png'),
(6, 'Animación', 'animacion.png'),
(7, 'Comedia', 'comedia.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `pel_id` int(11) NOT NULL,
  `pel_titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pel_gen_id` int(11) NOT NULL,
  `pel_director` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pel_reparto` mediumtext COLLATE utf8_spanish_ci NOT NULL,
  `pel_foto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pel_sinopsis` mediumtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`pel_id`, `pel_titulo`, `pel_gen_id`, `pel_director`, `pel_reparto`, `pel_foto`, `pel_sinopsis`) VALUES
(1, 'El silencio de los corderos', 1, 'Jonathan Demme', 'Jodie Foster\r\nAnthony Hopkins\r\nScott Glenn\r\nAnthony Heald', 'silencio_corderos.jpg', 'El FBI busca a \"Buffalo Bill\", un asesino en serie que mata a sus víctimas, todas adolescentes, después de prepararlas minuciosamente y arrancarles la piel. Para poder atraparlo recurren a Clarice Starling, una brillante licenciada universitaria, experta en conductas psicópatas, que aspira a formar parte del FBI. Siguiendo las instrucciones de su jefe, Jack Crawford, Clarice visita la cárcel de alta seguridad donde el gobierno mantiene encerrado al Dr. Hannibal Lecter, antiguo psicoanalista y asesino, dotado de una inteligencia superior a la normal. Su misión será intentar sacarle información sobre los patrones de conducta del asesino que están buscando.'),
(2, 'Pulp Fiction', 2, 'Quentin Tarantino', 'John Travolta\r\nSamuel L. Jackson\r\nUma Thurman\r\nHarvey Keitel\r\nTim Roth\r\nAmanda Plummer\r\nMaria de Medeiros\r\nVing Rhames\r\nEric Stoltz\r\nRosanna Arquette\r\nChristopher Walken\r\nBruce Willis', 'pulp_fiction.jpg', 'Jules y Vincent, dos asesinos a sueldo con no demasiadas luces, trabajan para el gángster Marsellus Wallace. Vincent le confiesa a Jules que Marsellus le ha pedido que cuide de Mia, su atractiva mujer. Jules le recomienda prudencia porque es muy peligroso sobrepasarse con la novia del jefe. Cuando llega la hora de trabajar, ambos deben ponerse \"manos a la obra\". Su misión: recuperar un misterioso maletín.'),
(3, 'Moulin Rouge', 4, 'John Huston', 'José Ferrer\r\nZsa Zsa Gabor\r\nSuzanne Flon,\r\nEric Pohlmann\r\nColette Marchand\r\nChristopher Lee\r\nMichael Balfour\r\nPeter Cushing\r\nKatherine Kath\r\nTheodore Bikel\r\nMuriel Smith.', 'moulin.jpg', 'Ambientada en el París bohemio de 1900. Satine, la estrella más rutilante del Moulin Rouge, encandila a toda la ciudad con sus bailes llenos de sensualidad y su enorme belleza. Atrapada entre el amor de dos hombres, un joven escritor y un duque, lucha por hacer realidad su sueño de convertirse en actriz. Pero, en un mundo en el que todo vale, excepto enamorarse, nada es fácil.'),
(4, 'La momia', 3, 'Stephen Sommers', 'Brendan Fraser\r\nRachel Weisz\r\nJohn Hannah\r\nArnold Vosloo\r\nOded Fehr\r\nKevin J. O\'Connor', 'momia.jpg', 'Durante una batalla en Egipto, el legionario Rick O\'Connell y un compañero descubren las ruinas de Hamunaptra, la ciudad de los muertos. Algún tiempo después vuelven al mismo lugar con una egiptóloga y su hermano. Allí coinciden con un grupo de estadounidenses, deseosos de correr aventuras, que acabarán provocando la resurrección de la momia de un diabólico sacerdote egipcio que intenta desesperadamente recuperar a su amada.'),
(5, 'Casablanca', 5, 'Michael Curtiz', 'Humphrey Bogart\r\nIngrid Bergman\r\nPaul Henreid\r\nClaude Rains\r\nConrad Veidt\r\nSydney Greenstreet\r\nPeter Lorre\r\nS. K. Sakall\r\nMadeleine LeBeau\r\nDooley Wilson\r\nJoy Page\r\nJohn Qualen\r\nLeonid Kinskey\r\nCurt Bois', 'casablanca.jpg', 'Años 40. A consecuencia de la Segunda Guerra Mundial, Casablanca era una ciudad a la que llegaban huyendo del nazismo gente de todas partes: llegar era fácil, pero salir era casi imposible, especialmente si el nombre del fugitivo figuraba en las listas de la Gestapo, que presionaba a la autoridades francesas al mando del corrupto inspector Renault. En este caso, el objetivo de la policía secreta alemana es el líder checo y héroe de la resistencia Victor Laszlo, cuya única esperanza es Rick Blaine, propietario del \'Rick’s Café\' y antiguo amante de su mujer, Ilsa Lund. Rick e Ilsa se habían conocido en París, pero la entrada de las tropas alemanas en la capital francesa les separó. '),
(6, '1917', 3, 'Sam Mendes', 'George MacKay, Dean-Charles Chapman, Mark Strong, Richard Madden, Benedict Cumberbatch, Colin Firth, Andrew Scott, Daniel Mays, Adrian Scarborough, Jamie Parker, Nabhaan Rizwan, Justin Edwards, Gerran Howell, Richard McCabe, Robert Maaser, Claire Duburcq, John Hollingworth, Anson Boon, Jonny Lavelle, Michael Jibson, Chris Walley, Pip Carter, Paul Tinto, Andy Apollo, William Postlethwaite, Gabriel Akuwudike, Josef Davies, Spike Leighton, Adam Hugill, Benjamin Adams, Tommy French, Merlin Leonhardt, Jos Slovick, Jack Shalloo, Elliot Edusah, Jacob James Beswick, Daniel Attwell, Samson Cox-Vinell, Michael Rouse, Richard Dempsey, Phil Cheadle, Jonah Russell', '1917.jpg', 'En lo más crudo de la Primera Guerra Mundial, dos jóvenes soldados británicos, Schofield (George MacKay) y Blake (Dean-Charles Chapman) reciben una misión aparentemente imposible. En una carrera contrarreloj, deberán atravesar el territorio enemigo para entregar un mensaje que evitará un mortífero ataque contra cientos de soldados, entre ellos el propio hermano de Blake.'),
(7, 'Padre no hay más que uno', 7, 'Santiago Segura', 'Santiago Segura, Toni Acosta, Silvia Abril, Leo Harlem, Luna Fulgencio, Carlos González Morollón, Calma Segura, Sirena Segura, Martina D\'Antiochia, Anabel Alonso, Pepa Charro, Wendy Ramos, Fernando Gil, Goizalde Núñez, Marta González de Vega, Carlo D\'Ursi, Pilar Calvo Morillas, Alberto Casado, Carlos Baute, Boris Izaguirre, Rosa López, El Rubius', 'padre.jpg', 'Javier es lo que se ha bautizado como un “marido-cuñado”. Ese que sin ocuparse en absoluto de lo que supone el cuidado de la casa y de los niños, sabe perfectamente qué es lo que hay que hacer, y que continuamente regala a su mujer frases del tipo: “es que no te organizas”, o “no te pongas nerviosa”, ya que considera que su desbordada mujer se ahoga en un vaso de agua. Javier tendrá que enfrentarse a la realidad que supone bregar con cinco hijos (de entre cuatro y doce años) cuando su mujer decide irse de viaje y dejarle solo con ellos. La caótica situación que se produce en casa les dará, al mismo tiempo, la oportunidad de pasar más tiempo juntos y conocerse mejor.'),
(8, 'Coco', 6, 'Lee Unkrich, Adrián Molina', 'Animación', 'coco.jpg', 'Miguel es un joven con el sueño de convertirse en leyenda de la música a pesar de la prohibición de su familia. Su pasión le llevará a adentrarse en la \"Tierra de los Muertos\" para conocer su verdadero legado familiar.'),
(9, 'Dumbo', 6, 'Ben Sharpsteen', 'Animación', 'dumbo.jpg', 'Las cigüeñas llegan, como todos los años, hasta un pintoresco circo para repartir los bebés a sus respectivas mamás. La señora Dumbo, una elefanta, descubre que su bebé tiene unas orejas enormes; todas sus compañeras se ríen de él, pero la señora Dumbo lo defiende siempre, hasta el punto de ser encerrada por enfrentarse a todo aquel que se mofe de su retoño. El pequeño Dumbo, maltratado y ridiculizado por todos sus compañeros, sólo cuenta con la ayuda de un minúsculo ratoncito llamado Timothy, que decide hacer de él una estrella del circo. '),
(10, 'Inside Out', 6, 'Pete Docter, Ronaldo Del Carmen', 'Animación', 'inside.jpg', 'Riley es una chica que disfruta o padece toda clase de sentimientos. Aunque su vida ha estado marcada por la Alegría, también se ve afectada por otro tipo de emociones. Lo que Riley no entiende muy bien es por qué motivo tiene que existir la Tristeza en su vida. Una serie de acontecimientos hacen que Alegría y Tristeza se mezclen en una peligrosa aventura que dará un vuelco al mundo de Riley.'),
(11, 'Toy Story 4', 6, 'Josh Cooley', 'Animación', 'toy.jpg', 'Woody siempre ha tenido claro cuál es su labor en el mundo y su prioridad: cuidar a su dueño, ya sea Andy o Bonnie. Pero cuando Bonnie añade a Forky, un nuevo juguete de fabricación propia, a su habitación, arranca una nueva aventura que servirá para que los viejos y nuevos amigos le enseñen a Woody lo grande que puede ser el mundo para un juguete.'),
(12, 'Jurassic Park ', 3, 'Steven Spielberg', 'Sam Neill, Laura Dern, Jeff Goldblum, Richard Attenborough, Ariana Richards, Joseph Mazzello, Wayne Knight, Samuel L. Jackson, Bob Peck, Martin Ferrero, BD Wong, Miguel Sandoval, Gerald R. Molen', 'Jurassic.jpg', 'El multimillonario John Hammond consigue hacer realidad su sueño de clonar dinosaurios del Jurásico y crear con ellos un parque temático en una isla remota. Antes de abrirlo al público, invita a una pareja de eminentes científicos y a un matemático para que comprueben la viabilidad del proyecto. Pero las medidas de seguridad del parque no prevén el instinto de supervivencia de la madre naturaleza ni la codicia humana. '),
(13, 'El rey león', 6, 'Jon Favreau', 'Animación', 'rey.jpg', 'Tras el asesinato de su padre, un joven león abandona su reino para descubrir el auténtico significado de la responsabilidad y de la valentía.'),
(14, 'Titanic', 5, 'James Cameron', 'Leonardo DiCaprio, Kate Winslet, Billy Zane, Kathy Bates, Frances Fisher, Gloria Stuart, Bill Paxton, Bernard Hill, David Warner, Victor Garber, Jonathan Hyde, Suzy Amis, Danny Nucci, Jason Barry, Ewan Stewart, Ioan Gruffudd', 'titanic.jpg', 'Jack (DiCaprio), un joven artista, gana en una partida de cartas un pasaje para viajar a América en el Titanic, el transatlántico más grande y seguro jamás construido. A bordo conoce a Rose (Kate Winslet), una joven de una buena familia venida a menos que va a contraer un matrimonio de conveniencia con Cal (Billy Zane), un millonario engreído a quien sólo interesa el prestigioso apellido de su prometida. Jack y Rose se enamoran, pero el prometido y la madre de ella ponen todo tipo de trabas a su relación. Mientras, el gigantesco y lujoso transatlántico se aproxima hacia un inmenso iceberg.'),
(15, 'Bohemian Rhapsody', 4, 'Bryan Singer', 'Rami Malek, Joseph Mazzello, Ben Hardy, Gwilym Lee, Lucy Boynton, Aidan Gillen, Tom Hollander, Mike Myers, Allen Leech, Aaron McCusker, Jess Radomska, Max Bennett, Michelle Duncan, Ace Bhatti, Dickie Beau, Charlotte Sharland, Ian Jareth Williamson, Jesús Gallo, Jessie Vinning, Martin Oelbermann', 'bohemian.jpg', 'El film plasma el meteórico ascenso de la banda al olimpo de la música a través de sus icónicas canciones y su revolucionario sonido, su crisis cuando el estilo de vida de Mercury estuvo fuera de control, y su triunfal reunión en la víspera del Live Aid, en la que Mercury, mientras sufría una enfermedad que amenazaba su vida.'),
(16, 'Avatar', 6, 'James Cameron', 'Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang, Michelle Rodriguez, Giovanni Ribisi, Joel David Moore, Wes Studi, CCH Pounder, Laz Alonso, Dileep Rao, Terry Notary', 'avatar.jpg', 'Año 2154. Jake Sully (Sam Worthington), un ex-marine condenado a vivir en una silla de ruedas, sigue siendo, a pesar de ello, un auténtico guerrero. Precisamente por ello ha sido designado para ir a Pandora, donde algunas empresas están extrayendo un mineral extraño que podría resolver la crisis energética de la Tierra. Para contrarrestar la toxicidad de la atmósfera de Pandora, se ha creado el programa Avatar, gracias al cual los seres humanos mantienen sus conciencias unidas a un avatar: un cuerpo biológico controlado de forma remota que puede sobrevivir en el aire letal. Esos cuerpos han sido creados con ADN humano, mezclado con ADN de los nativos de Pandora, los Na\'vi. Convertido en avatar, Jake puede caminar otra vez. Su misión consiste en infiltrarse entre los Na\'vi, que se han convertido en el mayor obstáculo para la extracción del mineral. Pero cuando Neytiri, una bella Na\'vi (Zoe Saldana), salva la vida de Jake, todo cambia: Jake, tras superar ciertas pruebas, es admitido en su clan. Mientras tanto, los hombres esperan los resultados de la misión de Jake.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`gen_id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`pel_id`),
  ADD KEY `pel_gen_id` (`pel_gen_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `gen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `pel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `rest_generos` FOREIGN KEY (`pel_gen_id`) REFERENCES `generos` (`gen_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
