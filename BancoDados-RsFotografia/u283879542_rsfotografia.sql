-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jul-2022 às 00:45
-- Versão do servidor: 10.5.13-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u283879542_rsfotografia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailCliente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senhaCliente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusCliente` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataCadCliente` date NOT NULL,
  `fotoCliente` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidadeCliente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `emailCliente`, `senhaCliente`, `statusCliente`, `dataCadCliente`, `fotoCliente`, `cidadeCliente`) VALUES
(1, 'Neide Souza', 'neidesouza@gmail.com', '1234', 'ATIVO', '2022-04-28', 'cliente/neide.png', ''),
(2, 'Maria do Socorro', 'mariasocorro@gmail.com', '1234', 'ATIVO', '2022-11-28', 'cliente/maria.png', ''),
(3, 'Bruno Cardoso', 'brunocardoso@gmail.com', '1234', 'ATIVO', '2022-05-07', 'cliente/bruno.png', ''),
(4, 'Heitor Lolo', 'heitorlolo@gmail.com', '1234', 'ATIVO', '2022-05-07', 'cliente/heitor.png', ''),
(5, 'Theo Sroulevich', 'theosroulevich@gmail.com', '1234', 'ATIVO', '2022-05-07', 'cliente/theo.png', ''),
(6, 'Pedro Sanfona', 'pedrosanfona@gmail.com', '1234', 'ATIVO', '2022-05-07', 'cliente/pedro.png', ''),
(7, 'Eduarda Martins', 'eduardamartins@gmail.com', '1234', 'ATIVO', '2022-05-07', 'cliente/eduarda.png', ''),
(8, 'Rayane Santos', 'rayanesantos@gmail.com', '1234', 'ATIVO', '2022-05-07', 'cliente/rayane.png', ''),
(9, 'Ryan Gustavo', 'ryangustavo@gmail.com', '1234', 'INATIVO', '2022-05-07', 'cliente/ryan.png', ''),
(10, 'Jacinto Pinto', 'jacintopinto@gmail.com', '1234', 'INATIVO', '2022-05-07', 'cliente/jacinto.png', ''),
(11, 'Wesley Vieira', 'wesleyvieira@gmail.com', '1234', 'ATIVO', '2022-03-29', 'cliente/user.png', 'São Paulo'),
(12, 'Rhayane Souza', 'rhayanesouza@gmail.com', '1234', 'ATIVO', '2022-03-29', 'cliente/user.png', 'São Paulo'),
(13, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(14, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(15, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(17, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(18, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(19, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(20, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(21, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(22, 'Wesley Vieira', 'wesleyvieira@gmail.com', '', 'ATIVO', '2022-03-29', 'cliente/user.png', ''),
(23, 'Tadeus Silva', 'tadeu@gmail.com', '1234', 'ATIVO', '2022-04-05', 'cliente/user.png', 'Rio de Janeiro'),
(24, 'Roberto José', 'roberto@gmail.com', '1234', 'ATIVO', '2022-04-05', 'cliente/user.png', 'São Paulo'),
(25, 'Roberto Santos', 'robertos@gmail.com', '1234', 'ATIVO', '2022-04-05', 'cliente/RobertoSantos.png', 'São Paulo'),
(34, 'Luan Cardoso', 'luan@gmail.com', '123', 'ATIVO', '2022-04-08', 'cliente/LuanCardoso.png', 'Sao Paulo'),
(35, 'nickolas', 'nickolas@gmail.com', '123', 'ATIVO', '2022-06-13', 'cliente/nickolas.png', 'São Paulo'),
(36, 'nickolas', 'nickolas@gmail.com', '123', 'ATIVO', '2022-06-13', 'cliente/nickolas.png', 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clientesAtivos`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clientesAtivos` (
`Nome do Cliente` varchar(100)
,`E-Mail do Cliente` varchar(100)
,`Senha do Cliente` varchar(100)
,`Status do Cliente` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clientesinformacoes`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clientesinformacoes` (
`Nome do Cliente` varchar(100)
,`Telefone do Cliente` varchar(100)
,`E-Mail do Cliente` varchar(100)
,`Senha do Cliente` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL,
  `nomeContato` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailContato` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoneContato` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagemContato` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enderecoContato` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conheceuContato` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataContato` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`idContato`, `nomeContato`, `emailContato`, `telefoneContato`, `mensagemContato`, `enderecoContato`, `conheceuContato`, `dataContato`) VALUES
(1, '', '', '', '', '', '', ''),
(2, '', '', '', '', '', '', ''),
(3, 'Wesley Vieira', 'wesleyvieira@gmail.com', '999999999', '', '', 'Amigo', ''),
(4, 'Wesley Vieira', 'wesleyvieira@gmail.com', '999999999', '', '', 'Amigo', ''),
(5, 'Wesley Vieira', 'wesleyvieira@gmail.com', '999999999', '', '', 'Amigo', ''),
(6, 'Wesley', 'wesley@gmail.com', '9999999', '', '', 'amigo', ''),
(7, '', '', '', '', '', '', ''),
(8, 'Car', 'car@gmail.com', '(56) 55555-5555', '', '', '', ''),
(9, 'Rodorfo', 'rodorfo@gmail.com', '', '', 'São miguel', 'Amigo', ''),
(10, 'João', 'joao@gmail.com', '(11) 02929-2929', '', 'São Miguel', 'Amigo', ''),
(11, 'Davi', 'davi@gmail.com', '(11) 96822-1472', '', 'São miguel', 'Amigo', '15/03/2022'),
(12, 'Gabriel Medina', 'gabriel@gmail.com', '(11) 94745-7545', 'Ensaio fotografico', 'Armenia', 'Site', '20/08/2022'),
(13, 'Neide Souza', 'neide@gmail.com', '(11) 92929-2929', 'Ensaio Fotografico', 'Barra Funda', 'Amigos', '04/05/2022'),
(14, '', '', '', '', '', '', ''),
(15, '', '', '', '', '', '', ''),
(16, '', '', '', '', '', '', ''),
(17, '', '', '', '', '', '', ''),
(18, '', '', '', '', '', '', ''),
(19, '', '', '', '', '', '', ''),
(20, '', '', '', '', '', '', ''),
(21, '', '', '', '', '', '', ''),
(22, '', '', '', '', '', '', ''),
(23, '', '', '', '', '', '', ''),
(24, '', '', '', '', '', '', ''),
(25, 'Nickolas Mateus', 'nick@gmail.com', '(11) 9707-0700', 'Olá boa tarde', 'rua sei la', 'Site', '12062022'),
(26, 'Wesley', 'kibeleza111@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-25'),
(27, 'Wesley', 'kibeleza111@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-25'),
(28, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-08-19'),
(29, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-08-19'),
(30, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-08-19'),
(31, 'Wesley', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-23'),
(32, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-21'),
(33, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-21'),
(34, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-21'),
(35, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-21'),
(36, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-21'),
(37, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-21'),
(38, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-21'),
(39, 'Rhayane', 'rhayane@gmail.com', '968221472', 'salve', 'rua', 'app', '2022-06-21'),
(40, '', '', '', '', '', '', ''),
(41, 'Rhayane', 'rhayane@gmail.com', '968221472', '', 'Tatuapé', 'Site', '2022-07-17'),
(42, 'Rhayane', 'rhayane@gmail.com', '968221472', '-', 'Tatuapé', 'Site', '2022-07-17'),
(43, 'Alessandro', 'ale@senac.br', '11988626603', 'Teste de apresentação', 'Senac', 'Senac', '2022-07-06'),
(44, 'Alle', 'ale@senac.br', '11988626603', 'Teste de apresentação', 'Senac', 'Senac', '2022-07-06'),
(45, 'ale', 'ale@senac.br', '(11) 98862-6603', 'Senac', 'Senac', 'Senac', '13/07/2022'),
(46, 'ale', 'ale@senac.br', '(11) 98862-6603', 'Senac', 'Senac', 'Senac', '13/07/2022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `idEvento` int(11) NOT NULL,
  `enderecoEvento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horaEvento` time NOT NULL,
  `dataEvento` date NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idOrcamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`idEvento`, `enderecoEvento`, `horaEvento`, `dataEvento`, `idCliente`, `idOrcamento`) VALUES
(1, 'Marechal Tito', '10:00:00', '2022-03-19', 1, 1),
(2, 'Parque Helena', '13:00:00', '2022-03-25', 2, 2),
(3, 'Rua Presidente', '15:00:00', '2022-06-01', 3, 3),
(4, 'Vila Jacui', '10:00:00', '2022-04-01', 4, 4),
(5, 'Ermelino Matarazzo', '16:00:00', '2022-05-25', 5, 5),
(6, 'Rua Henrique', '14:00:00', '2022-05-20', 6, 6),
(7, 'Jardim Pedro Nunes', '18:00:00', '2022-04-18', 7, 7),
(8, 'Rua Emilio', '10:30:00', '2022-04-15', 8, 8),
(9, 'Tatuapé', '21:00:00', '2022-04-05', 9, 9),
(10, 'Rua Brigadeiro', '17:25:00', '2022-04-01', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fonecliente`
--

CREATE TABLE `fonecliente` (
  `idfoneCliente` int(11) NOT NULL,
  `numeroCliente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operFoneCliente` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusFoneCliente` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descFoneCliente` date NOT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fonecliente`
--

INSERT INTO `fonecliente` (`idfoneCliente`, `numeroCliente`, `operFoneCliente`, `statusFoneCliente`, `descFoneCliente`, `idCliente`) VALUES
(1, '(11)99717-3619', 'VIVO', 'ATIVO', '0000-00-00', 1),
(2, '(11)97176-1208', 'VIVO', 'ATIVO', '0000-00-00', 2),
(3, '(11)97115-7162', 'TIM', 'ATIVO', '0000-00-00', 3),
(4, '(11)99732-5828', 'TIM', 'ATIVO', '0000-00-00', 4),
(5, '(11)99952-7441', 'CLARO', 'ATIVO', '0000-00-00', 5),
(6, '(11)97232-4448', 'CLARO', 'ATIVO', '0000-00-00', 6),
(7, '(11)97211-7453', 'OI', 'ATIVO', '0000-00-00', 7),
(8, '(11)99825-1429', 'OI', 'INATIVO', '0000-00-00', 8),
(9, '(11)97235-5475', 'OI', 'INATIVO', '0000-00-00', 9),
(10, '(11)96762-1213', 'NEXTEL', 'INATIVO', '0000-00-00', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `idFoto` int(11) NOT NULL,
  `fotos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`idFoto`, `fotos`) VALUES
(1, 'app-Rsfotografia/Img1.png'),
(2, 'app-Rsfotografia/Img2.png'),
(3, 'app-Rsfotografia/Img3.png'),
(4, 'app-Rsfotografia/Img4.png'),
(5, 'app-Rsfotografia/Img5.png'),
(6, 'app-Rsfotografia/Img6.png'),
(7, 'app-Rsfotografia/Img7.png'),
(8, 'app-Rsfotografia/Img8.png'),
(9, 'app-Rsfotografia/Img9.png'),
(10, 'app-Rsfotografia/Img10.png'),
(11, 'app-Rsfotografia/Img11.png'),
(12, 'app-Rsfotografia/Img12.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamento`
--

CREATE TABLE `orcamento` (
  `idOrcamento` int(11) NOT NULL,
  `localCadsOrcamento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataOrcamento` date NOT NULL,
  `statusOrcamento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orcamento`
--

INSERT INTO `orcamento` (`idOrcamento`, `localCadsOrcamento`, `dataOrcamento`, `statusOrcamento`) VALUES
(1, 'APP', '2022-03-19', 'AGENDADO'),
(2, 'APP', '2022-03-25', 'AGUARDANDO'),
(3, 'APP', '2022-04-01', 'AGUARDANDO'),
(4, 'APP', '2022-04-05', 'AGUARDANDO'),
(5, 'APP', '2022-04-10', 'AGUARDANDO'),
(6, 'SITE', '2022-04-15', 'AGUARDANDO'),
(7, 'SITE', '2022-04-18', 'AGUARDANDO'),
(8, 'SITE', '2022-05-20', 'AGUARDANDO'),
(9, 'SITE', '2022-05-25', 'AGUARDANDO'),
(10, 'SITE', '2022-06-01', 'AGUARDANDO');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `tudojunto`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `tudojunto` (
`Nome do Cliente` varchar(100)
,`Endereço do Evento` varchar(100)
,`Horário do Evento` time
,`Data do Evento` date
,`Status do Orçamento` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `clientesAtivos`
--
DROP TABLE IF EXISTS `clientesAtivos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_rsfotografia`@`127.0.0.1` SQL SECURITY DEFINER VIEW `clientesAtivos`  AS SELECT `cliente`.`nomeCliente` AS `Nome do Cliente`, `cliente`.`emailCliente` AS `E-Mail do Cliente`, `cliente`.`senhaCliente` AS `Senha do Cliente`, `cliente`.`statusCliente` AS `Status do Cliente` FROM `cliente` WHERE `cliente`.`statusCliente` = 'ATIVO' ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `clientesinformacoes`
--
DROP TABLE IF EXISTS `clientesinformacoes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_rsfotografia`@`127.0.0.1` SQL SECURITY DEFINER VIEW `clientesinformacoes`  AS SELECT `cliente`.`nomeCliente` AS `Nome do Cliente`, `fonecliente`.`numeroCliente` AS `Telefone do Cliente`, `cliente`.`emailCliente` AS `E-Mail do Cliente`, `cliente`.`senhaCliente` AS `Senha do Cliente` FROM (`cliente` join `fonecliente` on(`cliente`.`idCliente` = `fonecliente`.`idCliente`)) WHERE `cliente`.`statusCliente` = 'ATIVO' ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `tudojunto`
--
DROP TABLE IF EXISTS `tudojunto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u283879542_rsfotografia`@`127.0.0.1` SQL SECURITY DEFINER VIEW `tudojunto`  AS SELECT `cliente`.`nomeCliente` AS `Nome do Cliente`, `evento`.`enderecoEvento` AS `Endereço do Evento`, `evento`.`horaEvento` AS `Horário do Evento`, `evento`.`dataEvento` AS `Data do Evento`, `orcamento`.`statusOrcamento` AS `Status do Orçamento` FROM ((`evento` join `orcamento` on(`evento`.`idOrcamento` = `orcamento`.`idOrcamento`)) join `cliente` on(`evento`.`idCliente` = `cliente`.`idCliente`)) ORDER BY `evento`.`dataEvento` ASC ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices para tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idEvento`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idOrcamento` (`idOrcamento`);

--
-- Índices para tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  ADD PRIMARY KEY (`idfoneCliente`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`idFoto`);

--
-- Índices para tabela `orcamento`
--
ALTER TABLE `orcamento`
  ADD PRIMARY KEY (`idOrcamento`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  MODIFY `idfoneCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `orcamento`
--
ALTER TABLE `orcamento`
  MODIFY `idOrcamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`idOrcamento`) REFERENCES `orcamento` (`idOrcamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  ADD CONSTRAINT `fonecliente_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
