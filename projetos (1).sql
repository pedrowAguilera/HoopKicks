-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/04/2024 às 22:00
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `senha` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endereco` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `logo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instagram` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `twitter` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `linkedin` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `facebook` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `youtube` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_servicos` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_servicos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_trabalhos` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_trabalhos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_equipe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_equipe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_contato` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_contato` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `texto_rodape` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `senha`, `telefone`, `endereco`, `logo`, `icone`, `instagram`, `twitter`, `linkedin`, `facebook`, `youtube`, `cor`, `titulo_servicos`, `subtitulo_servicos`, `titulo_trabalhos`, `subtitulo_trabalhos`, `titulo_equipe`, `subtitulo_equipe`, `titulo_contato`, `subtitulo_contato`, `texto_rodape`) VALUES
(1, 'HoopKicks', 'pedroebibi14@gmail.com', '123', '(11) 97106-8609', 'Rua Sabiauna, 06', 'logo.png', 'icone.png', '@pdrow._', 'pdrow.', '', 'Pedro Henrique', 'ppz', '#F24E36', '', '', '', '', '', '', 'Contate-nos', 'Preencha os Campos abaixo para entrar em contato conosco!', 'BLuBLu');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cargo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descricao` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exibir` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subtitulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descricao` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exibir` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Sobre', 'Subtitulo caso Exista', 'Descrição da página Sobre', 'sem-foto.jpg', NULL, 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descricao` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exibir` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
