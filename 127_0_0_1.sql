-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 24/03/2023 às 04:19
-- Versão do servidor: 8.0.31
-- Versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `exemplo`
--
CREATE DATABASE IF NOT EXISTS `exemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exemplo`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `amigos`
--

CREATE TABLE IF NOT EXISTS `amigos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `sexo` enum('M','F') COLLATE utf8mb4_general_ci NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `amigos`
--

INSERT INTO `amigos` (`id`, `nome`, `sexo`, `telefone`) VALUES
(1, 'Maria', 'F', '2222-3333'),
(2, 'João', 'M', '1111-2222'),
(3, 'José', 'M', '3333-4444');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
