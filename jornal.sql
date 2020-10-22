-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 04:32
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Política'),
(3, 'Entretenimento'),
(4, 'Educação'),
(5, 'Novidades'),
(6, 'Moda'),
(7, 'Saúde'),
(8, 'Internacional'),
(9, 'Economia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `titulo` varchar(400) DEFAULT NULL,
  `codNoticia` int(11) NOT NULL,
  `noticia` text DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`titulo`, `codNoticia`, `noticia`, `codCategoria`, `codRedator`, `dia`, `mes`, `ano`) VALUES
('Aluna conquista bolsa de estudos no Reino Unido', 1, 'A aluna Diana Barry, do 3F, irá estudar em Oxford gratuitamente. Esta semana ela irá divulgar os seus segredos para um bom estudo.', 5, 4, 21, 10, 2020),
('Juiz afastado por desvio milionário já recebeu R$ 522 mil de salário ', 2, 'Flávio Prado Kretli foi afastado em 2018 por suspeitas de desvios de R$ 50 milhões; Lei permite que juiz afastado continue recebendo salário.', 2, 3, 18, 10, 2020),
('Prefeitura de SP faz operação contra mosquitos nas zonas oeste e sul', 3, 'Previsão é aplicar 50 quilos de larvicida e 20 litros de inseticida, o dobro do aplicado normalmente, para conter multiplicação de mosquitos no verão.\r\nA SMS (Secretaria Municipal de Saúde) de São Paulo realiza entre esta quarta-feira, (21), e sexta-feira (23), uma megaoperação de combate a mosquitos em localidades das zonas sul e oeste da capital paulista. Equipes da Covisa (Coordenadoria de Vigilância em Saúde) vão aplicar larvicida nas margens do Rio Pinheiros e inseticida em quarteirões de Santo Amaro, Capela do Socorro, Butantã e M\'Boi Mirim. As regiões são alvo da maior parte de reclamações à Prefeitura sobre insetos.', 5, 1, 21, 10, 2020),
('Disney lança trailer de animação \'Raya e O Último Dragão\'; assista', 4, 'A Disney divulgou nesta quarta-feira (21) o primeiro trailer da próxima animação, Raya e O Último Dragão. Com lançamento no Brasil previsto para março de 2021, o filme conta a história de uma jovem guerreira, dublada pela atriz Kelly Marie Tran, que participou da última trilogia Star Wars.\r\n\r\nNo trailer a protagonista da história, Raya, parte em busca do último dragão vivo, chamado Sisu (dublado pela atriz Awkwafina) para salvar a terra onde vive e o povo que a habita de um grande mal que ressurgiu após 500 anos.', 3, 6, 20, 10, 2020),
('Jornal espanhol faz comentário racista sobre promessa do Barça', 5, 'Publicação disse que Ansu Fati \'parece um jovem negro em fuga da polícia\' quando corre dos adversários. Griezmann responde e pede \'não ao racismo\' ', 1, 5, 18, 8, 2020),
('Rede social de consumo local conecta pessoas de mesmo bairro', 6, 'Lançado em maio, MeuVizinho.me tem o objetivo de aproximar pessoas e fomentar o comércio local.\r\nO MeuVizinho.me conecta pessoas, fomentando o comércio local e ajudando quem trabalha de forma autônoma de sua residência, ao pequeno empreendedor.\r\nCom isso, permite que qualquer pessoa cadastre seus produtos e serviços, os quais ficam visíveis para quem está localizado nas proximidades.\r\n\r\nEm pouco mais de cinco meses, a primeira rede social de consumo local do Brasil, alcançou mais de 25 mil vizinhos cadastrados.', 5, 2, 12, 10, 2020),
('EUA: entidades procuram pais de 545 crianças separadas na fronteira ', 7, 'Um documento apresentado ao tribunal nesta semana mostrou que alguns pais deportados sem seus filhos ainda não puderam ser localizados.\r\nUm documento sobre o caso apresentado ao tribunal nesta semana mostrou que alguns pais deportados sem seus filhos ainda não puderam ser localizados.\r\n\r\n\"Pesquisas árduas no local\" de pais deportados para seus países de origem - muitos na América Central - foram complicadas pela pandemia covid-19, diz o documento.\r\n\r\nTrump implementou uma polêmica política de \"tolerância zero\" em maio de 2018 para processar famílias flagradas cruzando a fronteira ilegalmente e separar seus filhos. Mas em meio a um clamor internacional, Trump encerrou a medida poucos meses após seu anúncio.\r\n\r\nNo total, o governo identificou mais de 4.200 crianças que poderiam ser protegidas pela ordem de reunificação da juíza Dana Sabraw.', 8, 4, 21, 10, 2020),
('França tem 26,6 mil novos casos de covid e lotação de hospitais cresce', 8, 'Atualmente, a França tem identificados 1.852 casos ativos de contágio, 139 a mais do que ontem. Destes, 404 são em lares de acolhimento de idosos. No país, a taxa de positivos por teste realizado é de 13,7%.\r\n\r\nAmanhã, o primeiro-ministro, Jean Castex, e o ministro da Saúde, Olivier Véran, concederão entrevista coletiva, m que anunciarão novas medidas para conter a propagação do novo coronavírus.\r\n\r\nHoje, já foi anunciado que o governo solicitará ao Parlamento a prorrogação do estado de emergência sanitária no país até 16 de fevereiro.', 8, 3, 21, 10, 2020),
('Briga entre irmãos: até que ponto a competitividade dos filhos é normal?', 9, 'Se você está ligada nas redes sociais, com certeza já deve ter se deparado com o vídeo recente da briga entre duas irmãs de Pato Branco (PR), na hora de cantar os parabéns. O registro virou meme nos últimos dias, tornando-se um dos assuntos mais comentados da internet. Ele mostra uma cena muito comum nas festas infantis: a filha mais velha apagando as velinhas do bolo da caçula.\r\n\r\nNo entanto, o ocorrido gerou tantos compartilhamentos porque Maria Eduarda ficou brava e puxou a irmã, Maria Antônia, pelos cabelos – que, ainda assim, fingiu não se importar. A confusão arrancou risadas dos internautas e dividiu o universo online entre usuários que defendem uma ou outra. Mas, muito além das brincadeiras, também causou um questionamento: será que essa competitividade entre as duas é algo saudável?\r\n\r\nPara a psiquiatra infantil Jaqueline Bifano, aparentemente é uma briga comum entre irmãs, e até mesmo os tapas e puxões de cabelo são naturais. Porém, é necessário tomar cuidado com a frequência dessa situação. “Nós não sabemos como funciona a relação no dia a dia. O que os pais têm que ficar alerta é se esses confrontos e agressões são constantes… E se estão sendo maiores e mais recorrentes do que as brincadeiras e os sentimentos como o amor, a cumplicidade, o cuidado e o zelo entre eles”, diz.\r\n\r\nA médica explica, ainda, que os problemas de relacionamento entre os filhos, muitas vezes, são ocasionados por ciúmes: “É natural e normal. Uma criança, como qualquer ser humano, sente todo tipo de emoção. Um bom exemplo são os mais velhos que, antes da chegada do irmãozinho, eram os únicos e reinavam dentro de casa. De repente, o espaço e as atenções começam a ser divididas com a chegada do mais novo. Muitos passam por uma fase ciumenta, de profunda tristeza ou de querer chamar atenção, fazendo coisas erradas para tentar ganhar o cuidado e carinho dos pais. Isso acontece até que a criança perceba que não está mais sozinha, que agora tem alguém para dividir não só a atenção, mas a vida”.\r\n\r\nComo os pais devem lidar com a briga entre irmãos\r\nApesar de a briga entre irmãos fazer parte do cotidiano de muitas famílias com mais de uma criança, muitas vezes os pais não sabem lidar com a situação da maneira correta, pois acabam tentando neutralizar os sentimentos dos filhos. “Ao invés disso, é importante perguntar a ele o que está sentindo ou por qual motivo fez determinada coisa, dando espaço para que expresse o que está acontecendo. Alguns pais tendem apenas a brigar, xingar ou gritar com aquele que iniciou a discussão em vez de tentar entender melhor”, orienta Jaqueline.\r\n\r\nAlém disso, é importante não incentivar a rivalidade entre os pequenos: “Outro ponto indispensável é evitar comparações como ‘por que você fez isso? Seu irmão jamais faria isso com você’. Cada ser humano é um universo particular. As comparações só pioram a autoestima e a relação entre irmãos”.\r\n\r\nOs pais devem estar sempre atentos ao comportamento dos filhos e analisar se apresentam outras condutas diferentes das habituais. “Se a criança está manifestando algum comportamento estranho como apatia, agressividade e irritabilidade, inclusive em sala de aula; se está com algum sintoma característico da ansiedade, como roer unhas, fazer xixi na cama, insônia, sonolência excessiva, afastamento de outros pequenos e perda ou aumento do apetite, é sinal de que algo não anda muito bem com ela e de que um profissional precisa ser consultado”, finaliza.', 7, 1, 19, 10, 2020),
('Entregador é cercado por bando de \'galinhas de guarda\' durante serviço.', 10, 'Câmera de segurança flagrou o momento em que funcionário da Amazon foi intimidado pelas aves no Canadá. \"Melhor que cão de guarda\"', 3, 4, 15, 11, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Karla', 'Bonadio', 'karlabonadio@gmail.com', 11, '4827-4329', 'Ribeirão Pires', 1, 9, 7, 2004),
(2, 'Jubileu', 'Clovis', 'jubileuclovis@gmail.com', 11, '4889-4319', 'Mauá', 6, 17, 4, 1969),
(3, 'Janete', 'Godec', 'janetegodec@gmail.com', 11, '4449-7356', 'Rio Grande da Serra', 5, 19, 11, 1978),
(4, 'Anne', 'Shirley', 'anneshirley@gamil.com', 11, '6234-9263', 'Ribeirão Pires', 2, 12, 7, 2004),
(5, 'Gilbert', 'Blythe', 'gilbinhoblythe@gmail.com', 11, '6142-8913', 'Ribeirão Pires', 2, 29, 12, 2004),
(6, 'Lucia', 'Damacena', 'luciadamacena@gmail.com', 11, '4672-9774', 'Ribeirão Pires', 3, 16, 11, 1970);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `turma` varchar(10) DEFAULT NULL,
  `codTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`turma`, `codTurma`) VALUES
('1C', 1),
('2C', 2),
('3C', 3),
('1F', 4),
('2F', 5),
('3F', 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`),
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`),
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
