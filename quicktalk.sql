-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Jun-2023 às 14:18
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quicktalk`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `Id` int(11) NOT NULL,
  `Sender` int(11) NOT NULL,
  `Reciver` int(11) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conversations`
--

CREATE TABLE `conversations` (
  `Id` int(11) NOT NULL,
  `MainUser` int(11) NOT NULL,
  `OtherUser` int(11) NOT NULL,
  `Unread` varchar(1) NOT NULL DEFAULT 'n',
  `Modification` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(70) NOT NULL,
  `Picture` varchar(1000) NOT NULL,
  `Online` datetime NOT NULL,
  `Token` varchar(100) NOT NULL,
  `Secure` bigint(20) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conversations`
--
ALTER TABLE `conversations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
