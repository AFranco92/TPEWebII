-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-11-2017 a las 21:29:01
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
CREATE DATABASE IF NOT EXISTS `db_celulares` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_celulares`;

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
  `imagenes` varchar(255) NOT NULL,
  `puntaje` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Celular`
--

INSERT INTO `Celular` (`id_celular`, `modelo`, `caracteristicas`, `precio`, `sinstock`, `id_marca`, `imagenes`, `puntaje`) VALUES
(22, 'Galaxy A3', 'El Samsung Galaxy A3 es el smartphone más básico de la nueva línea Galaxy A con el antecedente inmediato del Galaxy Alpha. Con un chasis totalmente de metal, el Galaxy A cuenta entre sus características una pantalla Super AMOLED qHD de 4.5 pulgadas, procesador quad-core a 1.2GHz, 1GB de RAM, 16GB de almacenamiento, ranura microSD, cámara principal de 8MP y frontal de 5MP y corre Android 4.4 KitKat.', 7000, 1, 1, '', 0),
(23, 'Galaxy A5', 'El Samsung Galaxy A5 es un smartphone Android fabricado en metal, parte de la línea Galaxy A iniciada por el Galaxy Alpha. Posee una pantalla Super AMOLED HD de 5 pulgadas, procesador quad-core a 1.2GHz, 2GB de RAM, 16GB de almacenamiento expandibles mediante microSD, cámara trasera de 13MP y frontal de 5MP y versiones SIM dual y 4G LTE.', 8000, 1, 1, '', 0),
(24, 'Galaxy A7', 'El Samsung Galaxy A7 es un smartphone Android de la serie Galaxy A, con características que incluyen una pantalla Super AMOLED 720p de 5.5 pulgadas, procesador octa-core a 1.5GHz de 64 bits, 2GB de RAM, cámara principal de 13 megapixels y cámara frontal de 5 megapixels, corriendo Android 4.4 KitKat.', 9600, 0, 1, '', 0),
(25, 'P8 Lite', 'El Huawei P8 Lite es la versión económica del Huawei P8. Entre sus características cuenta con una pantalla HD de 5 pulgadas, cámara trasera de 13 megapixels, cámara frontal de 5 megapixels, procesador octa-core a 1.3GHz, conectividad LTE, 2GB de RAM, y 16GB de almacenamiento interno.', 5700, 0, 2, '', 0),
(26, 'P9', 'El Huawei P9 es el nuevo smartphone insignia de Huawei. Creado en conjunto con Leica, el P9 cuenta con una cámara dual de 12 MP que permite infinidad de trucos y posprocesamiento. También está fabricado en metal, con un chasis unibody con su cámara perfectamente integrada. En cuanto a características, posee una pantalla 1080p de 5.2 pulgadas, procesador Kirin 955 octa-core, versiones de 2GB de RAM y 32GB de ROM o bien 3GB de RAM y 64GB de ROM, cámara frontal de 8 megapixels, y batería de 3000 mAh, corriendo Android 6.0 Marshmallow.', 6200, 0, 2, '', 0),
(27, 'P10', 'El Huawei P10 es el sucesor del Huawei P9, manteniendo muchas de las características. El P10 cuenta con una pantalla Full HD de 5.1 pulgadas, procesador octa-core Kirin 960, 4GB de RAM, 64GB de almacenamiento interno expandible, cámara dual Leica de dos sensores: 13 MP y 20 MP monocromático, mientras que al frente cuenta con una cámara de 8 megapixels. El Huawei P10 también tiene una batería de 3200 mAh con carga rápida Super Charge, y corre Android 7.0 Nougat con la interfaz EMUI 5.1.', 7200, 0, 2, '', 0),
(28, 'G4 Plus', 'El Motorola Moto G4 Plus es una versión mejorada del Moto G4. Si bien conserva su pantalla 1080p de 5.5 pulgadas y su procesador octa-core Snapdragon 617, sus características mejoran con un lector de huellas dactilares y una cámara principal de 16 MP, superior a la del iPhone 6s, según Motorola. También tiene en sus especificaciones 2GB o 3GB de RAM, 32GB de almacenamiento interno, cámara frontal de 5 MP y corre Android 6.0.1 Marshmallow.', 5790, 0, 3, '', 0),
(29, 'G5', 'El Motorola Moto G5 es el quinto sucesor de la serie Moto G, esta vez con un chasis metálico e incorporando lector de huellas dactilares en la gama media de Moto. El Moto G5 cuenta entre sus características destacadas con una pantalla Full HD de 5 pulgadas, procesador octa-core Snapdragon 430 a 1.4GHz, 2GB o 3GB de RAM, 16GB o 32GB de almacenamiento interno expandible, cámara principal de 13 megapixels, cámara frontal de 5 megapixels, batería de 2800 mAh y corre Android 7.0 Nougat.', 8700, 0, 3, '', 0),
(30, 'Z Play', 'El Motorola Moto Z Play es el smartphone de gama media de la serie Moto Z, compatible con los módulos Moto Mod. En cuanto a características, el Moto Z Play cuenta con una pantalla 1080p de 5.5 pulgadas, procesador octa-core Snapdragon 625 a 2GHz, 3GB de RAM, 32GB de almacenamiento interno expandible, cámara principal de 16 megapixels con flash LED y autofoco láser, cámara frontal de 5 MP con flash LED y corre Android 6.0 Marshmallow.', 11000, 1, 3, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comentario`
--

CREATE TABLE `Comentario` (
  `id_comentario` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  `fk_usuario` varchar(255) NOT NULL,
  `fk_id_celular` int(11) NOT NULL,
  `fk_puntaje` int(10) UNSIGNED NOT NULL,
  `textocomentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Comentario`
--

INSERT INTO `Comentario` (`id_comentario`, `fk_id_usuario`, `fk_usuario`, `fk_id_celular`, `fk_puntaje`, `textocomentario`) VALUES
(6, 1, 'profesor', 22, 5, 'aaaaaaa'),
(7, 1, 'profesor', 23, 2, 'malaso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Imagen`
--

CREATE TABLE `Imagen` (
  `id_imagen` int(11) NOT NULL,
  `fk_id_celular` int(11) NOT NULL,
  `ruta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Imagen`
--

INSERT INTO `Imagen` (`id_imagen`, `fk_id_celular`, `ruta`) VALUES
(16, 23, 'images/5a05298ad643b.jpg'),
(17, 24, 'images/5a05299769a9f.jpg'),
(20, 26, 'images/5a052b52d54b8.jpg'),
(21, 30, 'images/5a052b60dc634.jpg'),
(22, 27, 'images/5a052b7c32c8c.jpg'),
(23, 28, 'images/5a052b8773d37.jpg'),
(29, 22, 'images/5a0a13e6076e2.jpg'),
(31, 25, 'images/5a0b3ddd6eb9d.jpg'),
(32, 25, 'images/5a0b3ddd6ec0b.jpg'),
(33, 25, 'images/5a0b3ddd6ec58.jpg');

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
(3, 'Motorola', 'Estados Unidos'),
(4, 'Apple', 'Estados Unidos');

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
  ADD KEY `modelo` (`modelo`),
  ADD KEY `puntaje` (`puntaje`);

--
-- Indices de la tabla `Comentario`
--
ALTER TABLE `Comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`),
  ADD KEY `fk_id_celular` (`fk_id_celular`),
  ADD KEY `usuario` (`fk_usuario`),
  ADD KEY `fk_puntaje` (`fk_puntaje`);

--
-- Indices de la tabla `Imagen`
--
ALTER TABLE `Imagen`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `fk_id_celular` (`fk_id_celular`);

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
  ADD KEY `usuario` (`usuario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `fk_usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Celular`
--
ALTER TABLE `Celular`
  MODIFY `id_celular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `Comentario`
--
ALTER TABLE `Comentario`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `Imagen`
--
ALTER TABLE `Imagen`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `Marca`
--
ALTER TABLE `Marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Celular`
--
ALTER TABLE `Celular`
  ADD CONSTRAINT `Celular_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `Marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Comentario`
--
ALTER TABLE `Comentario`
  ADD CONSTRAINT `Comentario_ibfk_2` FOREIGN KEY (`fk_id_celular`) REFERENCES `Celular` (`id_celular`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Comentario_ibfk_3` FOREIGN KEY (`fk_usuario`) REFERENCES `Usuario` (`usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Comentario_ibfk_5` FOREIGN KEY (`fk_id_usuario`) REFERENCES `Usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Imagen`
--
ALTER TABLE `Imagen`
  ADD CONSTRAINT `Imagen_ibfk_1` FOREIGN KEY (`fk_id_celular`) REFERENCES `Celular` (`id_celular`) ON DELETE CASCADE;
--
-- Base de datos: `db_figuras`
--
CREATE DATABASE IF NOT EXISTS `db_figuras` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_figuras`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `circulo`
--

CREATE TABLE `circulo` (
  `id_circulo` int(11) NOT NULL,
  `radio` double NOT NULL,
  `area` double NOT NULL,
  `perimetro` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `circulo`
--

INSERT INTO `circulo` (`id_circulo`, `radio`, `area`, `perimetro`) VALUES
(1, 1.5, 0, 0),
(2, 2.1, 0, 0),
(3, 3, 0, 0),
(4, 4.4, 0, 0),
(5, 1.5, 0, 0),
(6, 2.1, 0, 0),
(7, 3, 0, 0),
(8, 4.4, 0, 0),
(9, 1.5, 0, 0),
(10, 2.1, 0, 0),
(11, 3, 0, 0),
(12, 4.4, 0, 0),
(13, 1.5, 0, 0),
(14, 2.1, 0, 0),
(15, 3, 0, 0),
(16, 4.4, 0, 0),
(17, 1.5, 0, 0),
(18, 2.1, 0, 0),
(19, 3, 0, 0),
(20, 4.4, 0, 0),
(21, 1.5, 0, 0),
(22, 2.1, 0, 0),
(23, 3, 0, 0),
(24, 4.4, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuadrado`
--

CREATE TABLE `cuadrado` (
  `id_cuadrado` int(11) NOT NULL,
  `lado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuadrado`
--

INSERT INTO `cuadrado` (`id_cuadrado`, `lado`) VALUES
(1, 3),
(2, 6),
(3, 8),
(4, 9),
(5, 3),
(6, 6),
(7, 8),
(8, 9),
(9, 3),
(10, 6),
(11, 8),
(12, 9),
(13, 3),
(14, 6),
(15, 8),
(16, 9),
(17, 3),
(18, 6),
(19, 8),
(20, 9),
(21, 3),
(22, 6),
(23, 8),
(24, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `triangulo`
--

CREATE TABLE `triangulo` (
  `id_triangulo` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `altura` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `perimetro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `triangulo`
--

INSERT INTO `triangulo` (`id_triangulo`, `base`, `altura`, `area`, `perimetro`) VALUES
(1, 1, 4, 0, 0),
(2, 9, 0, 0, 0),
(3, 4, 5, 0, 0),
(4, 5, 5, 0, 0),
(5, 1, 4, 0, 0),
(6, 9, 0, 0, 0),
(7, 4, 5, 0, 0),
(8, 5, 5, 0, 0),
(9, 1, 4, 0, 0),
(10, 9, 0, 0, 0),
(11, 4, 5, 0, 0),
(12, 5, 5, 0, 0),
(13, 1, 4, 0, 0),
(14, 9, 0, 0, 0),
(15, 4, 5, 0, 0),
(16, 5, 5, 0, 0),
(17, 1, 4, 0, 0),
(18, 9, 0, 0, 0),
(19, 4, 5, 0, 0),
(20, 5, 5, 0, 0),
(21, 1, 4, 0, 0),
(22, 9, 0, 0, 0),
(23, 4, 5, 0, 0),
(24, 5, 5, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `circulo`
--
ALTER TABLE `circulo`
  ADD PRIMARY KEY (`id_circulo`);

--
-- Indices de la tabla `cuadrado`
--
ALTER TABLE `cuadrado`
  ADD PRIMARY KEY (`id_cuadrado`);

--
-- Indices de la tabla `triangulo`
--
ALTER TABLE `triangulo`
  ADD PRIMARY KEY (`id_triangulo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `circulo`
--
ALTER TABLE `circulo`
  MODIFY `id_circulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `cuadrado`
--
ALTER TABLE `cuadrado`
  MODIFY `id_cuadrado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `triangulo`
--
ALTER TABLE `triangulo`
  MODIFY `id_triangulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;--
-- Base de datos: `db_fotos`
--
CREATE DATABASE IF NOT EXISTS `db_fotos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_fotos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Foto`
--

CREATE TABLE `Foto` (
  `id_foto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Foto`
--

INSERT INTO `Foto` (`id_foto`, `nombre`) VALUES
(1, ''),
(2, 'pato');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Foto`
--
ALTER TABLE `Foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Foto`
--
ALTER TABLE `Foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"angular\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'db_celulares', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"Celular\",\"Marca\",\"Usuario\"],\"table_structure[]\":[\"Celular\",\"Marca\",\"Usuario\"],\"table_data[]\":[\"Celular\",\"Marca\",\"Usuario\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"phparray_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continÃºa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continÃºa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"yaml_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"excel_removeCRLF\":null,\"ods_columns\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_celulares\",\"table\":\"Celular\"},{\"db\":\"db_celulares\",\"table\":\"Comentario\"},{\"db\":\"db_celulares\",\"table\":\"Usuario\"},{\"db\":\"db_celulares\",\"table\":\"Imagen\"},{\"db\":\"db_tareas\",\"table\":\"tarea\"},{\"db\":\"db_tarjetas\",\"table\":\"producto\"},{\"db\":\"db_celulares\",\"table\":\"Marca\"},{\"db\":\"db_fotos\",\"table\":\"Foto\"},{\"db\":\"db_figuras\",\"table\":\"circulo\"},{\"db\":\"db_figuras\",\"table\":\"cuadrado\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_celulares', 'Celular', '[]', '2017-09-26 16:19:42'),
('root', 'db_celulares', 'Marca', '{\"sorted_col\":\"`Marca`.`id_marca`  ASC\"}', '2017-10-19 02:25:43'),
('root', 'db_celulares', 'Usuario', '{\"sorted_col\":\"`id_usuario` ASC\"}', '2017-11-14 19:00:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-08-22 14:11:06', '{\"lang\":\"es\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
