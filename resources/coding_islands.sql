-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2018 a las 14:06:13
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coding_islands`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `Nombre_curso` varchar(15) NOT NULL,
  `Lecciones` int(10) DEFAULT NULL,
  `Usuarios` int(10) DEFAULT NULL,
  `Puntos` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`Nombre_curso`, `Lecciones`, `Usuarios`, `Puntos`) VALUES
('CSS', 0, 0, 0),
('HTML', 0, 0, 0),
('javascript', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `Nombre_curso` varchar(25) NOT NULL,
  `Nombre_usuario` varchar(50) NOT NULL,
  `Puntos_curso` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lecciones`
--

CREATE TABLE `lecciones` (
  `ID_Leccion` varchar(20) NOT NULL,
  `Nombre_leccion` text,
  `Respuesta` varchar(100) DEFAULT NULL,
  `Puntuacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lecciones`
--

INSERT INTO `lecciones` (`ID_Leccion`, `Nombre_leccion`, `Respuesta`, `Puntuacion`) VALUES
('CSS1', '¿Qué significa CSS?', 'a', 31),
('CSS10', '¿Cual es el valor por defecto de la propiedad position?', 'd', 22),
('CSS2', '¿Qué atributo de HTML se emplea para definir los estilos en línea?', 'd', 15),
('CSS3', 'En CSS3, ¿cómo se indica un color rojo casi transparente?', 'a', 28),
('CSS4', 'La etiqueta <style> se escribe', 'b', 12),
('CSS5', '¿Cómo podemos modificar el tamaño del texto?', 'b', 20),
('CSS6', '¿Qué atributo CSS nos permite configurar el estilo del puntero del ratón?', 'b', 41),
('CSS7', '¿Cómo puedo dar estilo al tamaño de fuente de todos los elementos H2 de una página?', 'a', 37),
('CSS8', '¿Cómo ponemos un texto en negrita?', 'c', 15),
('CSS9', 'Cómo seleccionamos un elemento con id demo?', 'a', 19),
('HTML1', 'El significado de las siglas de HTML es:', 'b', 20),
('HTML10', '¿Que atributo se utiliza para especificar la dirección donde se va a enviar un formulario?', 'd', 27),
('HTML2', 'En HTML, para referenciar una hoja de estilo externa se emplea la etiqueta <link> con el atributo', 'a', 12),
('HTML3', '¿Qué etiqueta de HTML formatea el texto y conserva los espacios en blanco tal como se introducen?', 'd', 38),
('HTML4', '¿Qué etiqueta define un salto de línea?', 'a', 30),
('HTML5', 'Elija la etiqueta que nos dá el título más grande', 'c', 10),
('HTML6', '¿Cuál es la forma correcta de insertar un comentario?', 'a', 12),
('HTML7', '¿Qué etiqueta nos permite crear un formulario?', 'c', 15),
('HTML8', 'En HTML, <input name=\"boton\" type=\"submit\" value=\"cargar\" id=\"enviar\"> muestra un botón con el texto', 'b', 21),
('HTML9', '¿Que etiqueta utilizaremos para crear una lista desordenada?', 'a', 56),
('javascript1', '¿Qué etiqueta de HTML se emplea para escribir código JavaScript?', 'a', 10),
('javascript10', '¿Qué significa NaN?', 'b', 28),
('javascript2', '¿Dónde se puede insertar código JavaScript en un documento HTML?', 'c', 18),
('javascript3', '¿Qué dos tipos de datos acepta una variable Boolean?', 'b', 23),
('javascript4', 'DOM es el acrónimo de', 'd', 31),
('javascript5', 'Indica la forma correcta para crear un Array.', 'd', 47),
('javascript6', '¿Cómo escribimos \"hello world\" en una ventana de alerta?', 'c', 52),
('javascript7', '¿Cómo creamos una función?', 'd', 69),
('javascript8', '¿Cómo empezaría un bucle FOR?', 'a', 71),
('javascript9', '¿Qué evento se activa cuando el usuario hace click en un elemento HTML?', 'c', 72);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lecciones_curso`
--

CREATE TABLE `lecciones_curso` (
  `Nombre_curso` varchar(15) NOT NULL,
  `ID_Leccion` varchar(20) NOT NULL,
  `Nombre_usuario` varchar(50) NOT NULL,
  `Leccion_superada` varchar(10) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre_usuario` varchar(50) NOT NULL,
  `Password` text NOT NULL,
  `Email` varchar(70) DEFAULT NULL,
  `Puntos` int(11) DEFAULT '0',
  `Alias` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`Nombre_curso`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`Nombre_curso`,`Nombre_usuario`),
  ADD KEY `Nombre_usuario` (`Nombre_usuario`);

--
-- Indices de la tabla `lecciones`
--
ALTER TABLE `lecciones`
  ADD PRIMARY KEY (`ID_Leccion`);

--
-- Indices de la tabla `lecciones_curso`
--
ALTER TABLE `lecciones_curso`
  ADD PRIMARY KEY (`Nombre_curso`,`ID_Leccion`,`Nombre_usuario`),
  ADD KEY `ID_Leccion` (`ID_Leccion`),
  ADD KEY `Nombre_usuario` (`Nombre_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Nombre_usuario`),
  ADD UNIQUE KEY `Alias` (`Alias`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`Nombre_curso`) REFERENCES `cursos` (`Nombre_curso`),
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`Nombre_usuario`) REFERENCES `usuarios` (`Nombre_usuario`);

--
-- Filtros para la tabla `lecciones_curso`
--
ALTER TABLE `lecciones_curso`
  ADD CONSTRAINT `lecciones_curso_ibfk_1` FOREIGN KEY (`Nombre_curso`) REFERENCES `cursos` (`Nombre_curso`),
  ADD CONSTRAINT `lecciones_curso_ibfk_2` FOREIGN KEY (`ID_Leccion`) REFERENCES `lecciones` (`ID_Leccion`),
  ADD CONSTRAINT `lecciones_curso_ibfk_3` FOREIGN KEY (`Nombre_usuario`) REFERENCES `usuarios` (`Nombre_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
