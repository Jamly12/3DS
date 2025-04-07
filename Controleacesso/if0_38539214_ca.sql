-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.infinityfree.com
-- Tempo de geração: 07/04/2025 às 10:46
-- Versão do servidor: 10.6.19-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_38539214_ca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `morador`
--

CREATE TABLE `morador` (
  `id_morador` int(11) NOT NULL,
  `cpf` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tel` int(30) DEFAULT NULL,
  `bloco` varchar(30) DEFAULT NULL,
  `ap` int(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `morador`
--

INSERT INTO `morador` (`id_morador`, `cpf`, `nome`, `tel`, `bloco`, `ap`) VALUES
(1, 987654321, 'Talia Santana', 43125678, '1', 12),
(2, 123456789, 'Aurelio Duarte', 87655432, '1', 37),
(3, 999888777, 'Márcia Santos', 22334455, '2', 110),
(4, 333444555, 'Lucia Almeida', 78693415, '1', 71),
(5, 244477766, 'Carlos Andrade', 51512323, '2', 98),
(6, 888222111, 'Lilian Farias', 65435698, '2', 26);

-- --------------------------------------------------------

--
-- Estrutura para tabela `visita`
--

CREATE TABLE `visita` (
  `id_visita` int(11) NOT NULL,
  `id_visitante` int(11) DEFAULT NULL,
  `id_morador` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `obs` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `visitante`
--

CREATE TABLE `visitante` (
  `id_visitante` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `id_morador` int(11) DEFAULT NULL,
  `foto` blob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`id_morador`);

--
-- Índices de tabela `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`id_visita`);

--
-- Índices de tabela `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`id_visitante`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `morador`
--
ALTER TABLE `morador`
  MODIFY `id_morador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `visita`
--
ALTER TABLE `visita`
  MODIFY `id_visita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `visitante`
--
ALTER TABLE `visitante`
  MODIFY `id_visitante` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
