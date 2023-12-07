-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2023 às 21:43
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdmrpetshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbadm`
--

CREATE TABLE `tbadm` (
  `codAdm` int(11) NOT NULL,
  `nomeAdm` varchar(100) NOT NULL,
  `cpfAdm` char(14) NOT NULL,
  `emailAdm` varchar(100) NOT NULL,
  `dataNascAdm` date NOT NULL,
  `passwordAdm` varchar(20) NOT NULL,
  `imgAdm` varchar(50) NOT NULL,
  `tokenAdm` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbadm`
--

INSERT INTO `tbadm` (`codAdm`, `nomeAdm`, `cpfAdm`, `emailAdm`, `dataNascAdm`, `passwordAdm`, `imgAdm`, `tokenAdm`) VALUES
(3, 'Joana', '555.555.555-55', 'joanadafene123@gmail.com', '2003-03-23', '123', 'd4f7d340f3150d0a1a3a48011d202328.jpg', '5da30db6aac360ed8df2c28cdef08e'),
(4, 'Raphael', '666.666.666-66', 'raphaelpereira.rps1@gmail.com', '2003-03-23', '123', '82557fbb4257fc68a79c3f3bb4936961.jpg', '305e1d6f8705d3e3994161613bd9e1'),
(5, 'Joel Gois de Souza', '999.999.999-99', 'joel@gmail.com', '1978-08-02', '123', '3b0a4fb5f73f4a86d1772f020454876b.jpg', '5cea9ccbf0d3c042df832eb897a4a1'),
(8, 'Josefa Pereira de Souza', '128.282.882-18', 'josefa@gmail.com', '1975-12-16', '123', 'fa282e56605c59b21aea4eb7991f5066.jpg', '32c21a6a3d64e63e0d0966c36c1506'),
(10, 'Bruno', '646.464.646-46', 'bruno@gmail.com', '2004-09-20', '123', '', 'a04d547ee4dd2dd2cc1f782233e2e0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbagendamento`
--

CREATE TABLE `tbagendamento` (
  `codAgendamento` int(11) NOT NULL,
  `dataAgendamento` date NOT NULL,
  `horaAgendamento` time NOT NULL,
  `codPet` int(11) NOT NULL,
  `obsAgendamento` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbagendamento`
--

INSERT INTO `tbagendamento` (`codAgendamento`, `dataAgendamento`, `horaAgendamento`, `codPet`, `obsAgendamento`) VALUES
(8, '2023-12-15', '13:30:00', 4, 'Não gosta de água gelada'),
(9, '2023-12-14', '09:00:00', 5, 'Precisa de Focinheira'),
(10, '2024-01-01', '11:20:00', 4, 'Precisa de Focinheira e não gosta que toquem na orelha'),
(11, '2023-11-26', '12:30:00', 4, 'Alergia a Glicerina e Perfume');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `codCliente` int(11) NOT NULL,
  `nomeCliente` varchar(100) NOT NULL,
  `cpfCliente` char(14) NOT NULL,
  `dataNascCliente` date NOT NULL,
  `logradCliente` varchar(50) NOT NULL,
  `numLogradCliente` int(11) NOT NULL,
  `cepCliente` varchar(11) NOT NULL,
  `bairroCliente` varchar(100) NOT NULL,
  `cidadeCliente` varchar(100) NOT NULL,
  `complementoCliente` varchar(100) NOT NULL,
  `emailCliente` varchar(100) NOT NULL,
  `passwordCliente` varchar(20) NOT NULL,
  `imgCliente` varchar(50) NOT NULL,
  `tokenCliente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbcliente`
--

INSERT INTO `tbcliente` (`codCliente`, `nomeCliente`, `cpfCliente`, `dataNascCliente`, `logradCliente`, `numLogradCliente`, `cepCliente`, `bairroCliente`, `cidadeCliente`, `complementoCliente`, `emailCliente`, `passwordCliente`, `imgCliente`, `tokenCliente`) VALUES
(2, 'Joana Dafne Magalhaes', '888.888.888-88', '2003-06-22', 'Rua Itaju[ibe', 1086, '41111', 'Jardim Camargo Novo', 'Sao Paulo', 'B', 'joana@gmail.com', '77777777', '9f264483da1b4279b7983e1cbbc05f2d.jpg', 'cc2d77f3a09ffe0101146919e4f050'),
(4, 'Raphael Pereira de Souza', '515.456.455-45', '2003-03-23', 'Rua Orvalheira', 34, '08141-720', 'Jardim Camargo Novo', 'São Paulo', 'B', 'raphael@gmail.com', '123', '7b41e50eb33d959a7f1f4e81019674d4.jpg', 'a75d527b42d951b898248580990dca'),
(5, 'Josefa Pereira de Souza', '111.111.111-11', '1975-12-16', 'Rua Orvalheira', 34, '08141-720', 'Jardim Camargo Novo', 'São Paulo', 'B', 'josefa@gmail.com', '1234', '0ba3216ef00a6731fcf0d46fc53d11e7.jpg', '320aef3c84b7f5f9c7ae3d47516a98'),
(6, 'João Moreira', '777.777.777-77', '1970-06-15', 'lslfsofso', 523, '45499-211', 'Jardim Camargo Novo', 'São Paulo', '', 'joao@gmail.com', '555', 'df94afcea59941b17986dd53b265bbaa.jpg', '34e78562aa9252b52b29764ec3dbd3'),
(10, 'Gabriel', '999.999.999-99', '1998-11-07', 'Sla Man', 110, '55555-555', 'Não sei', 'Santana de Parnaíba', 'A', 'gabriel@gmail.com', '12345', '8abce250c03780a33c4c802f5b27d101.jpg', '6538142da4bf20d3dcd8a4fa38a440'),
(11, 'Joel Gois de Souza', '11111111', '1978-08-02', 'Rua Orvalheira', 34, '08141720', 'Jardim Camargo Novo', 'São Paulo', 'B', 'joel@gmail.com', '123456789', '', '038c82eb51fb04bbb33b4e75e8a382');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbespecie`
--

CREATE TABLE `tbespecie` (
  `codEspecie` int(11) NOT NULL,
  `descEspecie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbespecie`
--

INSERT INTO `tbespecie` (`codEspecie`, `descEspecie`) VALUES
(1, 'Gato'),
(2, 'Cachorro'),
(3, 'Pássaro'),
(4, 'Cavalo'),
(5, 'Tartaruga'),
(7, 'Peixe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbformapgto`
--

CREATE TABLE `tbformapgto` (
  `codFormaPgto` int(11) NOT NULL,
  `descFormaPgto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbformapgto`
--

INSERT INTO `tbformapgto` (`codFormaPgto`, `descFormaPgto`) VALUES
(1, 'Crédito'),
(2, 'Débito'),
(4, 'Pix');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpet`
--

CREATE TABLE `tbpet` (
  `codPet` int(11) NOT NULL,
  `descPet` varchar(100) NOT NULL,
  `codCliente` int(11) NOT NULL,
  `pesoPet` float NOT NULL,
  `codRaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbpet`
--

INSERT INTO `tbpet` (`codPet`, `descPet`, `codCliente`, `pesoPet`, `codRaca`) VALUES
(3, 'Judy', 6, 8, 14),
(4, 'Feliz', 4, 10, 3),
(5, 'Kiara', 2, 12, 3),
(6, 'Cachorro', 10, 13, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbproduto`
--

CREATE TABLE `tbproduto` (
  `codProduto` int(11) NOT NULL,
  `descProduto` varchar(50) NOT NULL,
  `valorProduto` float NOT NULL,
  `agendamentoProduto` char(3) DEFAULT NULL,
  `imgProduto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbproduto`
--

INSERT INTO `tbproduto` (`codProduto`, `descProduto`, `valorProduto`, `agendamentoProduto`, `imgProduto`) VALUES
(5, 'Tosa', 65.99, 'Sim', 'd5185d19e6309ead2ff85110df87f00e.jpg'),
(6, 'Banho', 100, 'Sim', 'bf78c7e3a90db5f4d01605a1bc47b6a9.jpg'),
(7, 'Shampoo Cachorro', 20, 'Não', 'f9aef0b0235af32047ef9a7f8a088134.jpg'),
(8, 'Arranhador para Gato', 120, 'Não', '6f7965f8cd3852c3998d48efecee939b.jpg'),
(10, 'Condicionador Canino Filhote', 150, 'Não', '752d8b188faae8463f77d334897a755f.jpg'),
(11, 'Whiskas Sachê Para Gato', 30, 'Não', '30d5a77ef5d861e313d267fc8e530198.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbraca`
--

CREATE TABLE `tbraca` (
  `codRaca` int(11) NOT NULL,
  `descRaca` varchar(100) NOT NULL,
  `codEspecie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbraca`
--

INSERT INTO `tbraca` (`codRaca`, `descRaca`, `codEspecie`) VALUES
(3, 'SRD (Sem Raça Definida)', 2),
(4, 'Beta ', 7),
(5, 'Pastor Alemão', 2),
(6, 'Pitbull', 2),
(7, 'Siamês', 1),
(8, 'Persa', 1),
(9, 'Dourado', 7),
(10, 'Tartaruga Pintada', 5),
(11, 'Mustangue', 4),
(12, 'Calopsita', 3),
(13, 'Papagaio', 3),
(14, 'Puddle', 2),
(15, 'Labrador', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbvenda`
--

CREATE TABLE `tbvenda` (
  `codVenda` int(11) NOT NULL,
  `precoVenda` float NOT NULL,
  `dataVenda` date NOT NULL,
  `codCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbvenda`
--

INSERT INTO `tbvenda` (`codVenda`, `precoVenda`, `dataVenda`, `codCliente`) VALUES
(3, 120, '2023-11-10', 2),
(4, 500, '2023-11-01', 4),
(5, 150, '2023-05-12', 5),
(6, 20, '2023-11-11', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbvendaproduto`
--

CREATE TABLE `tbvendaproduto` (
  `codVendaProduto` int(11) NOT NULL,
  `codVenda` int(11) NOT NULL,
  `codProduto` int(11) NOT NULL,
  `codFormaPgto` int(11) NOT NULL,
  `codAgendamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbvendaproduto`
--

INSERT INTO `tbvendaproduto` (`codVendaProduto`, `codVenda`, `codProduto`, `codFormaPgto`, `codAgendamento`) VALUES
(1, 3, 5, 1, 8),
(3, 5, 9, 4, 10),
(4, 6, 7, 2, 0),
(5, 5, 6, 4, 11);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbadm`
--
ALTER TABLE `tbadm`
  ADD PRIMARY KEY (`codAdm`),
  ADD UNIQUE KEY `emailAdm` (`emailAdm`),
  ADD UNIQUE KEY `cpfAdm` (`cpfAdm`);

--
-- Índices para tabela `tbagendamento`
--
ALTER TABLE `tbagendamento`
  ADD PRIMARY KEY (`codAgendamento`);

--
-- Índices para tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`codCliente`),
  ADD UNIQUE KEY `cpfCliente` (`cpfCliente`),
  ADD UNIQUE KEY `emailCliente` (`emailCliente`);

--
-- Índices para tabela `tbespecie`
--
ALTER TABLE `tbespecie`
  ADD PRIMARY KEY (`codEspecie`);

--
-- Índices para tabela `tbformapgto`
--
ALTER TABLE `tbformapgto`
  ADD PRIMARY KEY (`codFormaPgto`);

--
-- Índices para tabela `tbpet`
--
ALTER TABLE `tbpet`
  ADD PRIMARY KEY (`codPet`);

--
-- Índices para tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  ADD PRIMARY KEY (`codProduto`);

--
-- Índices para tabela `tbraca`
--
ALTER TABLE `tbraca`
  ADD PRIMARY KEY (`codRaca`);

--
-- Índices para tabela `tbvenda`
--
ALTER TABLE `tbvenda`
  ADD PRIMARY KEY (`codVenda`);

--
-- Índices para tabela `tbvendaproduto`
--
ALTER TABLE `tbvendaproduto`
  ADD PRIMARY KEY (`codVendaProduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbadm`
--
ALTER TABLE `tbadm`
  MODIFY `codAdm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tbagendamento`
--
ALTER TABLE `tbagendamento`
  MODIFY `codAgendamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `codCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tbespecie`
--
ALTER TABLE `tbespecie`
  MODIFY `codEspecie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tbformapgto`
--
ALTER TABLE `tbformapgto`
  MODIFY `codFormaPgto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbpet`
--
ALTER TABLE `tbpet`
  MODIFY `codPet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  MODIFY `codProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tbraca`
--
ALTER TABLE `tbraca`
  MODIFY `codRaca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `tbvenda`
--
ALTER TABLE `tbvenda`
  MODIFY `codVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tbvendaproduto`
--
ALTER TABLE `tbvendaproduto`
  MODIFY `codVendaProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
