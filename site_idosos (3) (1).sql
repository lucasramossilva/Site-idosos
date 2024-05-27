-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Dez-2023 às 15:54
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `site_idosos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curriculo`
--

CREATE TABLE `curriculo` (
  `id_curriculo` int(11) NOT NULL,
  `arquivo_pdf` longblob DEFAULT NULL,
  `curriculocol` varchar(45) DEFAULT NULL,
  `usuarios_id_usuarios` int(11) NOT NULL,
  `vagas_id_vagas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id_empresas` int(11) NOT NULL,
  `nome_fantasia` varchar(45) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `razao_social` varchar(255) NOT NULL,
  `ramo_de_atuacao` varchar(255) NOT NULL,
  `data_de_inicio_da_atividade` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `inscricao_estadual` varchar(45) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id_empresas`, `nome_fantasia`, `cnpj`, `razao_social`, `ramo_de_atuacao`, `data_de_inicio_da_atividade`, `senha`, `email`, `inscricao_estadual`, `data_cadastro`) VALUES
(20, 'Mercol', '1323333', '', '', '', '$2y$10$AWoS9.f/c/FvFth90r5XR.XEkkvt3gUdUGqI7dkInywShWF8NwncS', 'maria20@gmail.com', NULL, NULL),
(22, 'Di lc', '1323333', '3', '3', '2023-11-21', '$2y$10$UGhGsKFwM3pvPXRq/qxZveo7mQtBwLahkV11A9iUZIb.Q2yFlmesu', 'maria32@gmail.com', '3', NULL),
(23, 'Mercol', '1323333', '', '', '', '$2y$10$lGWPMwiqrvesJiFt4A8Xzu5/t3yoJbJ96aJsmvisuJANH84M/gcY2', 'lucasrogeriodasilva20@gmail.com', NULL, NULL),
(24, 'choco', '1323333', '', '', '', '$2y$10$Q6GoGzSv2baOv4K91Ze4L.r5DIWX6pTWNoQ8BTbgU1pZ50ct3yn8u', 'lucasrogeriodasilva90@gmail.com', NULL, NULL),
(25, 'sadg', '1323333', '', '', '', '$2y$10$HJ6PdT2Nvh6nKQmxOAzC6e.Mj2BD9mPTym1VMvp6OUcCm8Sqqtn5q', 'lucasrogeriodasilva60@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas_tem_endereco`
--

CREATE TABLE `empresas_tem_endereco` (
  `empresas_id_empresas` int(11) NOT NULL,
  `endereco_id_endereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas_tem_telefone`
--

CREATE TABLE `empresas_tem_telefone` (
  `empresas_id_empresas` int(11) NOT NULL,
  `telefone_id_telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `numero`, `cidade`, `estado`, `pais`, `cep`, `rua`, `bairro`) VALUES
(1, 12, 'cornélio ', 'parana', 'brasil', 234234234, 'padre max', '1233'),
(2, 1, '1', '1', '1', 1, '1', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `id_telefone` int(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`id_telefone`, `telefone`) VALUES
(49, '2213123'),
(50, '988241779'),
(51, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `data_nascimento` datetime DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nome`, `email`, `senha`, `cpf`, `data_nascimento`, `data_cadastro`) VALUES
(10, 'lucasramossilva', 'lucasrogeriodasilva20@gmail.com', '$2y$10$AKh8o6ZekvBvxbHCqAPYmOt0B1V.1Jv1CiDhzWZL22fbRKQ5mMjae', NULL, NULL, '2023-12-01 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_tem_telefone`
--

CREATE TABLE `usuarios_tem_telefone` (
  `usuarios_id_usuarios` int(11) NOT NULL,
  `telefone_id_telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `id_vagas` int(11) NOT NULL,
  `tipo_vaga` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `data_publicacao` datetime DEFAULT NULL,
  `salario` varchar(255) DEFAULT NULL,
  `carga_horaria` varchar(45) DEFAULT NULL,
  `local_trabalho` varchar(45) DEFAULT NULL,
  `regime` varchar(45) DEFAULT NULL,
  `requisitos` varchar(45) DEFAULT NULL,
  `empresas_id_empresas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Extraindo dados da tabela `vagas`
--

INSERT INTO `vagas` (`id_vagas`, `tipo_vaga`, `descricao`, `data_publicacao`, `salario`, `carga_horaria`, `local_trabalho`, `regime`, `requisitos`, `empresas_id_empresas`) VALUES
(33, '1', '1', '2023-11-22 08:27:04', '1', '1', '1', '1', '1', 20),
(34, '1', '1', '2023-11-22 08:27:37', '1', '1', '1', '1', '1', 20),
(35, 'Repositor', 'Organizar e Repor produtos das partilhe-iras ', '2023-11-23 09:10:10', '700', '3h', 'Merce', 'Mg', 'N/a', 22);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `curriculo`
--
ALTER TABLE `curriculo`
  ADD PRIMARY KEY (`id_curriculo`),
  ADD KEY `fk_curriculo_usuarios1_idx` (`usuarios_id_usuarios`),
  ADD KEY `fk_curriculo_vagas1_idx` (`vagas_id_vagas`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresas`);

--
-- Índices para tabela `empresas_tem_endereco`
--
ALTER TABLE `empresas_tem_endereco`
  ADD PRIMARY KEY (`empresas_id_empresas`,`endereco_id_endereco`),
  ADD KEY `fk_empresas_has_endereco_endereco1_idx` (`endereco_id_endereco`),
  ADD KEY `fk_empresas_has_endereco_empresas1_idx` (`empresas_id_empresas`);

--
-- Índices para tabela `empresas_tem_telefone`
--
ALTER TABLE `empresas_tem_telefone`
  ADD PRIMARY KEY (`empresas_id_empresas`,`telefone_id_telefone`),
  ADD KEY `fk_empresas_has_telefone_telefone1_idx` (`telefone_id_telefone`),
  ADD KEY `fk_empresas_has_telefone_empresas1_idx` (`empresas_id_empresas`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`id_telefone`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- Índices para tabela `usuarios_tem_telefone`
--
ALTER TABLE `usuarios_tem_telefone`
  ADD PRIMARY KEY (`usuarios_id_usuarios`,`telefone_id_telefone`),
  ADD KEY `fk_usuarios_has_telefone_telefone1_idx` (`telefone_id_telefone`),
  ADD KEY `fk_usuarios_has_telefone_usuarios1_idx` (`usuarios_id_usuarios`);

--
-- Índices para tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id_vagas`),
  ADD KEY `empresas_id_empresas` (`empresas_id_empresas`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curriculo`
--
ALTER TABLE `curriculo`
  MODIFY `id_curriculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `id_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id_vagas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `curriculo`
--
ALTER TABLE `curriculo`
  ADD CONSTRAINT `fk_curriculo_usuarios1` FOREIGN KEY (`usuarios_id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_curriculo_vagas1` FOREIGN KEY (`vagas_id_vagas`) REFERENCES `vagas` (`id_vagas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `empresas_tem_endereco`
--
ALTER TABLE `empresas_tem_endereco`
  ADD CONSTRAINT `fk_empresas_has_endereco_empresas1` FOREIGN KEY (`empresas_id_empresas`) REFERENCES `empresas` (`id_empresas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empresas_has_endereco_endereco1` FOREIGN KEY (`endereco_id_endereco`) REFERENCES `endereco` (`id_endereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `empresas_tem_telefone`
--
ALTER TABLE `empresas_tem_telefone`
  ADD CONSTRAINT `fk_empresas_has_telefone_empresas1` FOREIGN KEY (`empresas_id_empresas`) REFERENCES `empresas` (`id_empresas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empresas_has_telefone_telefone1` FOREIGN KEY (`telefone_id_telefone`) REFERENCES `telefone` (`id_telefone`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios_tem_telefone`
--
ALTER TABLE `usuarios_tem_telefone`
  ADD CONSTRAINT `fk_usuarios_has_telefone_telefone1` FOREIGN KEY (`telefone_id_telefone`) REFERENCES `telefone` (`id_telefone`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_has_telefone_usuarios1` FOREIGN KEY (`usuarios_id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vagas`
--
ALTER TABLE `vagas`
  ADD CONSTRAINT `fk_Vagas_empresas1` FOREIGN KEY (`empresas_id_empresas`) REFERENCES `empresas` (`id_empresas`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
