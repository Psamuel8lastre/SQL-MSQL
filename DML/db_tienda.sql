-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2024 a las 02:04:19
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `codigoEmpleado` varchar(50) DEFAULT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaContratacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `salario` decimal(10,2) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `codigoEmpleado`, `nombreCompleto`, `fechaNacimiento`, `fechaContratacion`, `salario`, `email`) VALUES
(1, 'EMP001', 'Raúl Martínez', '1988-04-10', '2020-03-01 05:00:00', 16000.00, 'raul.martinez@example.com'),
(2, 'EMP002', 'Sofía González', '1984-06-25', '2019-07-15 05:00:00', 18000.00, 'sofia.gonzalez@example.com'),
(3, 'EMP003', 'Juan Pérez', '1992-11-14', '2022-02-01 05:00:00', 15000.00, 'juan.perez@example.com'),
(4, 'EMP004', 'Elena Rodríguez', '1990-09-20', '2018-05-30 05:00:00', 17000.00, 'elena.rodriguez@example.com'),
(5, 'EMP005', 'Ricardo Díaz', '1996-12-05', '2023-06-10 05:00:00', 14500.00, 'ricardo.diaz@example.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD UNIQUE KEY `codigoEmpleado` (`codigoEmpleado`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
