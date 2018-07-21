-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Jul-2018 às 04:15
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caixa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agencia`
--

CREATE TABLE `agencia` (
  `HANDLE` int(10) NOT NULL,
  `AGENCIA` int(10) DEFAULT NULL,
  `DATAHORA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agencia`
--

INSERT INTO `agencia` (`HANDLE`, `AGENCIA`, `DATAHORA`) VALUES
(1, 100, '2018-07-16 10:59:19'),
(2, 101, '2018-07-16 10:59:19'),
(3, 102, '2018-07-16 10:59:19'),
(4, 103, '2018-07-16 10:59:19'),
(5, 104, '2018-07-16 10:59:19'),
(6, 105, '2018-07-16 10:59:19'),
(7, 106, '2018-07-16 10:59:19'),
(8, 107, '2018-07-16 10:59:19'),
(9, 108, '2018-07-16 10:59:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cedula`
--

CREATE TABLE `cedula` (
  `HANDLE` int(10) NOT NULL,
  `VALOR` int(10) DEFAULT NULL,
  `QUANTIDADE` int(10) DEFAULT NULL,
  `DATAHORA` datetime DEFAULT NULL,
  `QUANTIDADEMINIMA` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cedula`
--

INSERT INTO `cedula` (`HANDLE`, `VALOR`, `QUANTIDADE`, `DATAHORA`, `QUANTIDADEMINIMA`) VALUES
(1, 5, 200, '2018-07-20 20:25:48', 21),
(2, 10, 150, '2018-07-18 09:20:55', 10),
(3, 20, 300, '2018-07-20 00:04:48', 5),
(4, 50, 110, '2018-07-18 09:20:55', 1),
(5, 100, 105, '2018-07-18 09:20:55', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `HANDLE` int(10) NOT NULL,
  `AGENCIA` int(10) DEFAULT NULL,
  `CONTA` int(10) DEFAULT NULL,
  `DATAHORA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`HANDLE`, `AGENCIA`, `CONTA`, `DATAHORA`) VALUES
(1, 1, 10, '2018-07-16 11:00:45'),
(2, 2, 20, '2018-07-16 11:00:45'),
(3, 1, 30, '2018-07-16 11:00:45'),
(4, 1, 40, '2018-07-16 11:00:45'),
(5, 2, 50, '2018-07-16 11:00:45'),
(6, 3, 50, '2018-07-16 11:00:45'),
(7, 4, 60, '2018-07-16 11:00:45'),
(8, 5, 70, '2018-07-16 11:00:45'),
(9, 6, 80, '2018-07-16 11:00:45'),
(10, 7, 90, '2018-07-16 11:00:45'),
(11, 8, 100, '2018-07-16 11:00:45'),
(12, 9, 110, '2018-07-16 11:00:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `HANDLE` int(10) NOT NULL,
  `NOME` varchar(99) DEFAULT NULL,
  `CPFCNPJ` varchar(30) DEFAULT NULL,
  `DATAHORA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`HANDLE`, `NOME`, `CPFCNPJ`, `DATAHORA`) VALUES
(1, 'Olinoir Junior Zavaschi', '080.514.489-79', '2018-07-16 10:57:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoaconta`
--

CREATE TABLE `pessoaconta` (
  `HANDLE` int(10) NOT NULL,
  `PESSOA` int(10) DEFAULT NULL,
  `CONTA` int(10) DEFAULT NULL,
  `DATAHORA` datetime DEFAULT NULL,
  `SENHA` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoaconta`
--

INSERT INTO `pessoaconta` (`HANDLE`, `PESSOA`, `CONTA`, `DATAHORA`, `SENHA`) VALUES
(1, 1, 1, '2018-07-16 11:01:07', '123456');

-- --------------------------------------------------------

--
-- Estrutura da tabela `saque`
--

CREATE TABLE `saque` (
  `HANDLE` int(10) NOT NULL,
  `VALOR` int(10) DEFAULT NULL,
  `CONTA` int(10) DEFAULT NULL,
  `DATAHORA` datetime DEFAULT NULL,
  `AUTORIZADO` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `saquecedula`
--

CREATE TABLE `saquecedula` (
  `HANDLE` int(10) NOT NULL,
  `SAQUE` int(10) DEFAULT NULL,
  `CEDULA` int(10) DEFAULT NULL,
  `QUANTIDADE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `HANDLE` int(10) NOT NULL,
  `PESSOA` int(10) DEFAULT NULL,
  `LOGIN` varchar(99) DEFAULT NULL,
  `SENHA` varchar(99) DEFAULT NULL,
  `DATAHORA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`HANDLE`, `PESSOA`, `LOGIN`, `SENHA`, `DATAHORA`) VALUES
(2, 1, 'admin', 'admin', '2018-07-20 22:41:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencia`
--
ALTER TABLE `agencia`
  ADD PRIMARY KEY (`HANDLE`);

--
-- Indexes for table `cedula`
--
ALTER TABLE `cedula`
  ADD PRIMARY KEY (`HANDLE`);

--
-- Indexes for table `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`HANDLE`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`HANDLE`);

--
-- Indexes for table `pessoaconta`
--
ALTER TABLE `pessoaconta`
  ADD PRIMARY KEY (`HANDLE`);

--
-- Indexes for table `saque`
--
ALTER TABLE `saque`
  ADD PRIMARY KEY (`HANDLE`);

--
-- Indexes for table `saquecedula`
--
ALTER TABLE `saquecedula`
  ADD PRIMARY KEY (`HANDLE`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`HANDLE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencia`
--
ALTER TABLE `agencia`
  MODIFY `HANDLE` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cedula`
--
ALTER TABLE `cedula`
  MODIFY `HANDLE` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `conta`
--
ALTER TABLE `conta`
  MODIFY `HANDLE` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `HANDLE` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pessoaconta`
--
ALTER TABLE `pessoaconta`
  MODIFY `HANDLE` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `saque`
--
ALTER TABLE `saque`
  MODIFY `HANDLE` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `saquecedula`
--
ALTER TABLE `saquecedula`
  MODIFY `HANDLE` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `HANDLE` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
