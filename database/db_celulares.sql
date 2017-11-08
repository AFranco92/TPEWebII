-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-11-2017 a las 15:56:10
-- Versión del servidor: 10.1.24-MariaDB
-- Versión de PHP: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_celulares`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Celular`
--

CREATE TABLE `Celular` (
  `id_celular` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `caracteristicas` text NOT NULL,
  `precio` float NOT NULL,
  `sinstock` tinyint(4) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `imagenes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Celular`
--

INSERT INTO `Celular` (`id_celular`, `modelo`, `caracteristicas`, `precio`, `sinstock`, `id_marca`, `imagenes`) VALUES
(22, 'Galaxy A3', 'El Samsung Galaxy A3 es el smartphone más básico de la nueva línea Galaxy A con el antecedente inmediato del Galaxy Alpha. Con un chasis totalmente de metal, el Galaxy A cuenta entre sus características una pantalla Super AMOLED qHD de 4.5 pulgadas, procesador quad-core a 1.2GHz, 1GB de RAM, 16GB de almacenamiento, ranura microSD, cámara principal de 8MP y frontal de 5MP y corre Android 4.4 KitKat.', 7000, 1, 1, ''),
(23, 'Galaxy A5', 'El Samsung Galaxy A5 es un smartphone Android fabricado en metal, parte de la línea Galaxy A iniciada por el Galaxy Alpha. Posee una pantalla Super AMOLED HD de 5 pulgadas, procesador quad-core a 1.2GHz, 2GB de RAM, 16GB de almacenamiento expandibles mediante microSD, cámara trasera de 13MP y frontal de 5MP y versiones SIM dual y 4G LTE.', 8000, 0, 1, ''),
(24, 'Galaxy A7', 'El Samsung Galaxy A7 es un smartphone Android de la serie Galaxy A, con características que incluyen una pantalla Super AMOLED 720p de 5.5 pulgadas, procesador octa-core a 1.5GHz de 64 bits, 2GB de RAM, cámara principal de 13 megapixels y cámara frontal de 5 megapixels, corriendo Android 4.4 KitKat.', 9600, 0, 1, ''),
(25, 'P8 Lite', 'El Huawei P8 Lite es la versión económica del Huawei P8. Entre sus características cuenta con una pantalla HD de 5 pulgadas, cámara trasera de 13 megapixels, cámara frontal de 5 megapixels, procesador octa-core a 1.3GHz, conectividad LTE, 2GB de RAM, y 16GB de almacenamiento interno.', 5700, 0, 2, ''),
(26, 'P9', 'El Huawei P9 es el nuevo smartphone insignia de Huawei. Creado en conjunto con Leica, el P9 cuenta con una cámara dual de 12 MP que permite infinidad de trucos y posprocesamiento. También está fabricado en metal, con un chasis unibody con su cámara perfectamente integrada. En cuanto a características, posee una pantalla 1080p de 5.2 pulgadas, procesador Kirin 955 octa-core, versiones de 2GB de RAM y 32GB de ROM o bien 3GB de RAM y 64GB de ROM, cámara frontal de 8 megapixels, y batería de 3000 mAh, corriendo Android 6.0 Marshmallow.', 6200, 0, 2, ''),
(27, 'P10', 'El Huawei P10 es el sucesor del Huawei P9, manteniendo muchas de las características. El P10 cuenta con una pantalla Full HD de 5.1 pulgadas, procesador octa-core Kirin 960, 4GB de RAM, 64GB de almacenamiento interno expandible, cámara dual Leica de dos sensores: 13 MP y 20 MP monocromático, mientras que al frente cuenta con una cámara de 8 megapixels. El Huawei P10 también tiene una batería de 3200 mAh con carga rápida Super Charge, y corre Android 7.0 Nougat con la interfaz EMUI 5.1.', 7200, 0, 2, ''),
(28, 'G4 Plus', 'El Motorola Moto G4 Plus es una versión mejorada del Moto G4. Si bien conserva su pantalla 1080p de 5.5 pulgadas y su procesador octa-core Snapdragon 617, sus características mejoran con un lector de huellas dactilares y una cámara principal de 16 MP, superior a la del iPhone 6s, según Motorola. También tiene en sus especificaciones 2GB o 3GB de RAM, 32GB de almacenamiento interno, cámara frontal de 5 MP y corre Android 6.0.1 Marshmallow.', 5790, 0, 3, ''),
(29, 'G5', 'El Motorola Moto G5 es el quinto sucesor de la serie Moto G, esta vez con un chasis metálico e incorporando lector de huellas dactilares en la gama media de Moto. El Moto G5 cuenta entre sus características destacadas con una pantalla Full HD de 5 pulgadas, procesador octa-core Snapdragon 430 a 1.4GHz, 2GB o 3GB de RAM, 16GB o 32GB de almacenamiento interno expandible, cámara principal de 13 megapixels, cámara frontal de 5 megapixels, batería de 2800 mAh y corre Android 7.0 Nougat.', 8700, 0, 3, ''),
(30, 'Z Play', 'El Motorola Moto Z Play es el smartphone de gama media de la serie Moto Z, compatible con los módulos Moto Mod. En cuanto a características, el Moto Z Play cuenta con una pantalla 1080p de 5.5 pulgadas, procesador octa-core Snapdragon 625 a 2GHz, 3GB de RAM, 32GB de almacenamiento interno expandible, cámara principal de 16 megapixels con flash LED y autofoco láser, cámara frontal de 5 MP con flash LED y corre Android 6.0 Marshmallow.', 11000, 1, 3, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Marca`
--

CREATE TABLE `Marca` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Marca`
--

INSERT INTO `Marca` (`id_marca`, `nombre`, `descripcion`) VALUES
(1, 'Samsung', 'Corea del Sur'),
(2, 'Huawei', 'China'),
(3, 'Motorola', 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `administrador` tinyint(1) NOT NULL,
  `online` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`id_usuario`, `usuario`, `mail`, `password`, `administrador`, `online`) VALUES
(1, 'profesor', 'profesor@tudai.com.ar', '$2y$10$oqywdLKj3LiswzLVXaW0X.MHz9sKVlq7NhQESSLEypL9YDJn1aEf6', 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Celular`
--
ALTER TABLE `Celular`
  ADD PRIMARY KEY (`id_celular`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `modelo` (`modelo`);

--
-- Indices de la tabla `Marca`
--
ALTER TABLE `Marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Celular`
--
ALTER TABLE `Celular`
  MODIFY `id_celular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `Marca`
--
ALTER TABLE `Marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Celular`
--
ALTER TABLE `Celular`
  ADD CONSTRAINT `Celular_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `Marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
