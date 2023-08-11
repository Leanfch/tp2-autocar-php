-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 09:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `davinci_prog2_tp2_autocar`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrocerias`
--

CREATE TABLE `carrocerias` (
  `id_carroceria` int(10) UNSIGNED NOT NULL,
  `tipo_carroceria` varchar(256) NOT NULL,
  `cantidad_puertas` tinyint(4) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carrocerias`
--

INSERT INTO `carrocerias` (`id_carroceria`, `tipo_carroceria`, `cantidad_puertas`, `descripcion`) VALUES
(1, 'Sedan', 4, 'Los sedanes son vehículos de cuatro puertas con un compartimento de carga separado y un área de pasajeros. Son conocidos por su estilo elegante y capacidad para transportar a varios pasajeros de manera cómoda.'),
(2, 'SUV', 5, 'Los SUV son vehículos robustos y versátiles que ofrecen espacio amplio para pasajeros y carga. Tienen una carrocería elevada y tracción en las cuatro ruedas en muchos casos. Son populares por su capacidad para transitar tanto en carreteras como en terrenos más exigentes.'),
(3, 'Hatchback', 5, 'Los hatchbacks son vehículos de tamaño compacto o mediano con una puerta trasera que se abre hacia arriba, permitiendo el acceso al compartimento de carga. Son prácticos y versátiles, ideales para la conducción en entornos urbanos.'),
(4, 'Coupe', 2, 'Los coupés son vehículos de dos puertas con un diseño deportivo y elegante. Se caracterizan por tener un techo bajo y líneas aerodinámicas. Suelen tener un enfoque en el rendimiento y la estética.'),
(5, 'Station Wagon', 5, 'Las station wagons, también conocidas como \"familiar\" o \"vagoneta\", son vehículos con carrocería alargada y un espacio de carga amplio detrás de los asientos traseros. Son ideales para familias y ofrecen una mayor capacidad de almacenamiento en comparación con otros tipos de vehículos.'),
(6, 'Pick-up', 4, 'Se considera una carrocería distintiva en el mundo de los vehículos. Es un tipo de carrocería que se caracteriza por tener una cabina para los pasajeros y una cama abierta en la parte trasera, diseñada para transportar carga.');

-- --------------------------------------------------------

--
-- Table structure for table `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `fecha`, `importe`) VALUES
(1, 2, '2023-08-08', 686660000),
(2, 2, '2023-08-08', 686660000),
(3, 2, '2023-08-08', 5880000),
(4, 2, '2023-08-08', 0),
(5, 2, '2023-08-08', 4030000),
(6, 2, '2023-08-08', 4030000),
(7, 2, '2023-08-08', 35340000),
(8, 2, '2023-08-08', 7030000),
(9, 2, '2023-08-08', 3520000);

-- --------------------------------------------------------

--
-- Table structure for table `item_x_compra`
--

CREATE TABLE `item_x_compra` (
  `id` int(10) UNSIGNED NOT NULL,
  `compra_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_x_compra`
--

INSERT INTO `item_x_compra` (`id`, `compra_id`, `item_id`, `cantidad`) VALUES
(1, 1, 33, 5),
(2, 1, 21, 6),
(3, 1, 4, 16),
(4, 2, 33, 5),
(5, 2, 21, 6),
(6, 2, 4, 16),
(7, 3, 9, 1),
(8, 5, 21, 1),
(9, 6, 21, 1),
(10, 7, 11, 6),
(11, 8, 4, 1),
(12, 9, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(10) UNSIGNED NOT NULL,
  `nombre_marca` varchar(256) NOT NULL,
  `pais_origen` varchar(256) NOT NULL,
  `fundacion` year(4) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `sitio_web` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre_marca`, `pais_origen`, `fundacion`, `logo`, `sitio_web`) VALUES
(1, 'Chevrolet', 'Estados Unidos', 1911, 'chevrolet-logo.jpg', 'www.chevrolet.com'),
(2, 'audi', 'Alemania', 1909, 'audi-logo.jpg', 'https://www.audi.com/'),
(3, 'bmw', 'Alemania', 1916, 'bmw-logo.jpg', 'bmw.com'),
(4, 'fiat', 'Italia', 1901, 'fiat-logo.jpg', 'https://www.fiat.com/'),
(5, 'ford', 'Estados Unidos', 1903, 'ford-logo.jpg', 'www.ford.com'),
(6, 'honda', 'Japon', 1946, 'honda-logo.jpg', 'https://global.honda/'),
(7, 'volkswagen', 'Alemania', 1937, 'vw-logo.jpg', 'https://www.vw.com/');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_usuario` varchar(256) NOT NULL,
  `nombre_completo` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `rol` enum('cliente','admin','superadmin','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `nombre_completo`, `password`, `email`, `rol`) VALUES
(1, 'leandro_dv', 'Leandro Fernandez', '$2y$10$bSIbwuwEjk9CiDnph44Gg.8Ript7UEnvWGPFUgx/LbF1KXWZW7C8a', 'leandro.fernandez@davinci.edu.ar', 'admin'),
(2, 'martin_dv', 'Martin Fernandez', '$2y$10$mvYf2cNpu79.ElUmHzS5ruG4j6iXI117EQRa3WrqRBgC1II9Y8DKK', 'martin@davinci.edu.ar', 'cliente'),
(3, 'owner', 'Capo de la empresa', '$2y$10$9g9BuTuQTeGaglVA79PFG.Ls7pI46ji00E7jmtkQNjW3d7QIeMO9G', 'owner-autocar@gmail.com', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(10) UNSIGNED NOT NULL,
  `modelo` varchar(256) NOT NULL,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `version` varchar(256) NOT NULL,
  `ano` year(4) NOT NULL,
  `carroceria_id` int(10) UNSIGNED NOT NULL,
  `motor` decimal(2,1) UNSIGNED NOT NULL,
  `turbo` tinyint(1) NOT NULL,
  `potencia` smallint(6) NOT NULL,
  `traccion` enum('delantera','trasera','4x4','AWD') NOT NULL,
  `combustible` enum('nafta','diesel','GNC','hibrido','electrico') NOT NULL,
  `transmision` enum('manual','automatica','','') NOT NULL,
  `airbags` tinyint(4) NOT NULL,
  `abs` tinyint(1) NOT NULL,
  `kilometraje` mediumint(9) NOT NULL,
  `precio` decimal(12,2) UNSIGNED NOT NULL,
  `imagen` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `modelo`, `marca_id`, `version`, `ano`, `carroceria_id`, `motor`, `turbo`, `potencia`, `traccion`, `combustible`, `transmision`, `airbags`, `abs`, `kilometraje`, `precio`, `imagen`) VALUES
(1, 'Cruze', 1, 'LTZ', 2017, 1, '1.4', 1, 150, 'delantera', 'nafta', 'automatica', 6, 1, 88000, '5250000.00', 'chevrolet-cruze.jpeg'),
(3, 'Onix', 1, 'LS', 2018, 3, '1.4', 0, 90, 'delantera', 'nafta', 'manual', 4, 1, 48000, '3520000.00', 'chevrolet-onix.jpeg'),
(4, 'S10', 1, 'High Country', 2019, 6, '2.8', 1, 200, '4x4', 'diesel', 'manual', 6, 1, 19000, '7030000.00', 'chevrolet-s10.jpeg'),
(5, 'A3', 2, 'Sedan', 2015, 1, '1.4', 1, 180, 'delantera', 'nafta', 'automatica', 6, 1, 97000, '7030000.00', 'audi-a3.jpeg'),
(6, 'A4', 2, 'Executive', 2017, 1, '2.0', 1, 190, 'delantera', 'nafta', 'automatica', 6, 1, 97500, '6490000.00', 'audi-a4.jpeg'),
(7, 'Q3', 2, 'Premium', 2016, 2, '1.4', 1, 150, 'delantera', 'nafta', 'automatica', 5, 1, 71000, '9590000.00', 'audi-q3.jpeg'),
(8, 'A3', 2, 'Sportback', 2013, 3, '1.4', 1, 150, 'delantera', 'nafta', 'automatica', 4, 1, 65000, '5880000.00', 'audi-a3sportback.jpeg'),
(9, 'Serie 3', 3, '318i', 2012, 1, '2.0', 0, 136, 'trasera', 'nafta', 'manual', 4, 1, 65000, '5880000.00', 'bmw-318i.jpeg'),
(10, 'Serie 1', 3, '118i', 2018, 3, '1.5', 1, 136, 'delantera', 'nafta', 'automatica', 5, 1, 82000, '11460000.00', 'bmw-118i.jpeg'),
(11, '500', 4, '595', 2014, 3, '1.4', 1, 160, 'delantera', 'nafta', 'manual', 4, 1, 52000, '5890000.00', 'fiat-500.jpeg'),
(12, 'Toro', 4, 'Freedom', 2022, 6, '2.0', 1, 160, '4x4', 'diesel', 'manual', 6, 1, 13000, '11500000.00', 'fiat-toro.jpeg'),
(13, 'Ranger', 5, 'XLT', 2020, 6, '3.2', 1, 200, '4x4', 'diesel', 'manual', 6, 1, 26000, '9510000.00', 'ford-ranger.jpeg'),
(14, 'Focus', 5, 'Titanium', 2018, 3, '2.0', 0, 170, 'delantera', 'GNC', 'automatica', 6, 1, 89150, '6070000.00', 'ford-focus.jpeg'),
(15, 'Kuga', 5, 'Titanium', 2018, 2, '2.0', 1, 220, 'AWD', 'nafta', 'automatica', 7, 1, 18500, '8850000.00', 'ford-kuga.jpeg'),
(16, 'HRV', 6, 'EX-L', 2017, 2, '1.8', 0, 140, 'delantera', 'nafta', 'automatica', 7, 1, 100200, '7030000.00', 'honda-hrv.jpeg'),
(17, 'CRV', 6, 'LX', 2016, 2, '2.4', 0, 175, '4x4', 'nafta', 'automatica', 6, 1, 42000, '10360000.00', 'honda-crv.jpeg'),
(18, 'Civic', 6, 'EX', 2017, 1, '2.0', 0, 150, 'delantera', 'nafta', 'automatica', 6, 1, 44000, '7360000.00', 'honda-civic.jpeg'),
(19, 'Amarok', 7, 'Ultimate', 2016, 6, '2.0', 1, 180, '4x4', 'diesel', 'manual', 6, 1, 58000, '9610000.00', 'volkswagen-amarok.jpeg'),
(20, 'Golf', 7, 'Comfortline', 2018, 3, '1.4', 1, 150, 'delantera', 'nafta', 'automatica', 5, 1, 74000, '7300000.00', 'volkswagen-golf.jpeg'),
(21, 'Gol', 7, 'Comfortline', 2018, 3, '1.6', 0, 101, 'delantera', 'GNC', 'manual', 2, 1, 41065, '4030000.00', 'volkswagen-gol.jpeg'),
(33, 'A5', 2, 'Luxury', 2022, 4, '2.0', 1, 252, 'AWD', 'nafta', 'automatica', 6, 1, 2300, '110000000.00', '1688071511.webp');

-- --------------------------------------------------------

--
-- Table structure for table `vehiculo_x_carroceria`
--

CREATE TABLE `vehiculo_x_carroceria` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehiculo_id` int(10) UNSIGNED NOT NULL,
  `carroceria_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehiculo_x_carroceria`
--

INSERT INTO `vehiculo_x_carroceria` (`id`, `vehiculo_id`, `carroceria_id`) VALUES
(25, 1, 3),
(26, 1, 1),
(27, 20, 3),
(28, 20, 5),
(48, 33, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrocerias`
--
ALTER TABLE `carrocerias`
  ADD PRIMARY KEY (`id_carroceria`);

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `item_x_compra`
--
ALTER TABLE `item_x_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compra_id` (`compra_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marca_id` (`marca_id`),
  ADD KEY `carroceria_id` (`carroceria_id`);

--
-- Indexes for table `vehiculo_x_carroceria`
--
ALTER TABLE `vehiculo_x_carroceria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiculo_id` (`vehiculo_id`),
  ADD KEY `carroceria_id` (`carroceria_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carrocerias`
--
ALTER TABLE `carrocerias`
  MODIFY `id_carroceria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item_x_compra`
--
ALTER TABLE `item_x_compra`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `vehiculo_x_carroceria`
--
ALTER TABLE `vehiculo_x_carroceria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `item_x_compra`
--
ALTER TABLE `item_x_compra`
  ADD CONSTRAINT `item_x_compra_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_x_compra_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `vehiculos` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`carroceria_id`) REFERENCES `carrocerias` (`id_carroceria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id_marca`) ON UPDATE CASCADE;

--
-- Constraints for table `vehiculo_x_carroceria`
--
ALTER TABLE `vehiculo_x_carroceria`
  ADD CONSTRAINT `vehiculo_x_carroceria_ibfk_1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vehiculo_x_carroceria_ibfk_2` FOREIGN KEY (`carroceria_id`) REFERENCES `carrocerias` (`id_carroceria`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
