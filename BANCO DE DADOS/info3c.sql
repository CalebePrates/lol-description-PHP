-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Dez-2018 às 20:41
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info3c`
--
CREATE DATABASE IF NOT EXISTS `info3c` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `info3c`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `campeoes`
--

DROP TABLE IF EXISTS `campeoes`;
CREATE TABLE `campeoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `foto` text NOT NULL,
  `preco` int(4) NOT NULL,
  `posicao` varchar(8) NOT NULL,
  `build` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `campeoes`
--

INSERT INTO `campeoes` (`id`, `nome`, `foto`, `preco`, `posicao`, `build`) VALUES
(1, 'ahri', 'ahri.png', 6300, 'mid', 'padrao'),
(2, 'akali', 'akali.png', 6300, 'mid', 'padrao'),
(3, 'alistar', 'alistar.png', 6300, 'mid', 'padrao'),
(4, 'amumu', 'amumu.png', 6300, 'mid', 'padrao'),
(5, 'anivia', 'anivia.png', 6300, 'mid', 'padrao'),
(6, 'annie', 'annie.png', 6300, 'mid', 'padrao'),
(7, 'ashe', 'ashe.png', 6300, 'mid', 'padrao'),
(8, 'aurelion', 'aurelion.png', 6300, 'mid', 'padrao'),
(9, 'azir', 'azir.png', 6300, 'mid', 'padrao'),
(10, 'bardo', 'bardo.png', 6300, 'mid', 'padrao'),
(11, 'blitzcrank', 'blitzcrank.png', 6300, 'mid', 'padrao'),
(12, 'brand', 'brand.png', 6300, 'mid', 'padrao'),
(13, 'braum', 'braum.png', 6300, 'mid', 'padrao'),
(14, 'caitlyn', 'caitlyn.png', 6300, 'mid', 'padrao'),
(15, 'camille', 'camille.png', 6300, 'mid', 'padrao'),
(16, 'cassiopeia', 'cassiopeia.png', 6300, 'mid', 'padrao'),
(17, 'chogath', 'chogath.png', 6300, 'mid', 'padrao'),
(18, 'corki', 'corki.png', 6300, 'mid', 'padrao'),
(19, 'darius', 'darius.png', 6300, 'mid', 'padrao'),
(20, 'diana', 'diana.png', 6300, 'mid', 'padrao'),
(21, 'draven', 'draven.png', 6300, 'mid', 'padrao'),
(22, 'drmundo', 'drmundo.png', 6300, 'mid', 'padrao'),
(23, 'ekko', 'ekko.png', 6300, 'mid', 'padrao'),
(24, 'elise', 'elise.png', 6300, 'mid', 'padrao'),
(25, 'evelynn', 'evelynn.png', 6300, 'mid', 'padrao'),
(26, 'ezreal', 'ezreal.png', 6300, 'mid', 'padrao'),
(27, 'fiddlesticks', 'fiddlesticks.png', 6300, 'mid', 'padrao'),
(28, 'fiora', 'fiora.png', 6300, 'mid', 'padrao'),
(29, 'fizz', 'fizz.png', 6300, 'mid', 'padrao'),
(30, 'galio', 'galio.png', 6300, 'mid', 'padrao'),
(31, 'gangplank', 'gangplank.png', 6300, 'mid', 'padrao'),
(32, 'garen', 'garen.png', 6300, 'mid', 'padrao'),
(33, 'gnar', 'gnar.png', 6300, 'mid', 'padrao'),
(34, 'gragas', 'gragas.png', 6300, 'mid', 'padrao'),
(35, 'graves', 'graves.png', 6300, 'mid', 'padrao'),
(36, 'hecarim', 'hecarim.png', 6300, 'mid', 'padrao'),
(37, 'heimendinger', 'heimendinger.png', 6300, 'mid', 'padrao'),
(38, 'illaoi', 'illaoi.png', 6300, 'mid', 'padrao'),
(39, 'irelia', 'irelia.png', 6300, 'mid', 'padrao'),
(40, 'ivern', 'ivern.png', 6300, 'mid', 'padrao'),
(41, 'janna', 'janna.png', 6300, 'mid', 'padrao'),
(42, 'jarvaniv', 'jarvaniv.png', 6300, 'mid', 'padrao'),
(43, 'jax', 'jax.png', 6300, 'mid', 'padrao'),
(44, 'jayce', 'jayce.png', 6300, 'mid', 'padrao'),
(45, 'jhin', 'jhin.png', 6300, 'mid', 'padrao'),
(46, 'jinx', 'jinx.png', 6300, 'mid', 'padrao'),
(47, 'kahzix', 'kahzix.png', 6300, 'mid', 'padrao'),
(48, 'kalista', 'kalista.png', 6300, 'mid', 'padrao'),
(49, 'karma', 'karma.png', 6300, 'mid', 'padrao'),
(50, 'karthus', 'karthus.png', 6300, 'mid', 'padrao'),
(51, 'kassadin', 'kassadin.png', 6300, 'mid', 'padrao'),
(52, 'katarina', 'katarina.png', 6300, 'mid', 'padrao'),
(53, 'kayle', 'kayle.png', 6300, 'mid', 'padrao'),
(54, 'kennen', 'kennen.png', 6300, 'mid', 'padrao'),
(55, 'kindred', 'kindred.png', 6300, 'mid', 'padrao'),
(56, 'kled', 'kled.png', 6300, 'mid', 'padrao'),
(57, 'kogmaw', 'kogmaw.png', 6300, 'mid', 'padrao'),
(58, 'leblanc', 'leblanc.png', 6300, 'mid', 'padrao'),
(59, 'leesin', 'leesin.png', 6300, 'mid', 'padrao'),
(60, 'leona', 'leona.png', 6300, 'mid', 'padrao'),
(61, 'lissandra', 'lissandra.png', 6300, 'mid', 'padrao'),
(62, 'lucian', 'lucian.png', 6300, 'mid', 'padrao'),
(63, 'lulu', 'lulu.png', 6300, 'mid', 'padrao'),
(64, 'lux', 'lux.png', 6300, 'mid', 'padrao'),
(65, 'malphite', 'malphite.png', 6300, 'mid', 'padrao'),
(66, 'malzahar', 'malzahar.png', 6300, 'mid', 'padrao'),
(67, 'maokai', 'maokai.png', 6300, 'mid', 'padrao'),
(68, 'masteryi', 'masteryi.png', 6300, 'mid', 'padrao'),
(69, 'missfortune', 'missfortune.png', 6300, 'mid', 'padrao'),
(70, 'mordekaiser', 'mordekaiser.png', 6300, 'mid', 'padrao'),
(71, 'morgana', 'morgana.png', 6300, 'mid', 'padrao'),
(72, 'nami', 'nami.png', 6300, 'mid', 'padrao'),
(73, 'nasus', 'nasus.png', 6300, 'mid', 'padrao'),
(74, 'nautilus', 'nautilus.png', 6300, 'mid', 'padrao'),
(75, 'nidalee', 'nidalee.png', 6300, 'mid', 'padrao'),
(76, 'nocturne', 'nocturne.png', 6300, 'mid', 'padrao'),
(77, 'nunu', 'nunu.png', 6300, 'mid', 'padrao'),
(78, 'olaf', 'olaf.png', 6300, 'mid', 'padrao'),
(79, 'orianna', 'orianna.png', 6300, 'mid', 'padrao'),
(80, 'pantheon', 'pantheon.png', 6300, 'mid', 'padrao'),
(81, 'poppy', 'poppy.png', 6300, 'mid', 'padrao'),
(82, 'quinn', 'quinn.png', 6300, 'mid', 'padrao'),
(83, 'rammus', 'rammus.png', 6300, 'mid', 'padrao'),
(84, 'reksai', 'reksai.png', 6300, 'mid', 'padrao'),
(85, 'renekton', 'renekton.png', 6300, 'mid', 'padrao'),
(86, 'rengar', 'rengar.png', 6300, 'mid', 'padrao'),
(87, 'riven', 'riven.png', 6300, 'mid', 'padrao'),
(88, 'rumble', 'rumble.png', 6300, 'mid', 'padrao'),
(89, 'ryze', 'ryze.png', 6300, 'mid', 'padrao'),
(90, 'sejuani', 'sejuani.png', 6300, 'mid', 'padrao'),
(91, 'shaco', 'shaco.png', 6300, 'mid', 'padrao'),
(92, 'shen', 'shen.png', 6300, 'mid', 'padrao'),
(93, 'shyvana', 'shyvana.png', 6300, 'mid', 'padrao'),
(94, 'singed', 'singed.png', 6300, 'mid', 'padrao'),
(95, 'sion', 'sion.png', 6300, 'mid', 'padrao'),
(96, 'sivir', 'sivir.png', 6300, 'mid', 'padrao'),
(97, 'skarner', 'skarner.png', 6300, 'mid', 'padrao'),
(98, 'sona', 'sona.png', 6300, 'mid', 'padrao'),
(99, 'soraka', 'soraka.png', 6300, 'mid', 'padrao'),
(100, 'swain', 'swain.png', 6300, 'mid', 'padrao'),
(101, 'syndra', 'syndra.png', 6300, 'mid', 'padrao'),
(102, 'tahmkench', 'tahmkench.png', 6300, 'mid', 'padrao'),
(103, 'taliyah', 'taliyah.png', 6300, 'mid', 'padrao'),
(104, 'talon', 'talon.png', 6300, 'mid', 'padrao'),
(105, 'taric', 'taric.png', 6300, 'mid', 'padrao'),
(106, 'teemo', 'teemo.png', 6300, 'mid', 'padrao'),
(107, 'thresh', 'thresh.png', 6300, 'mid', 'padrao'),
(108, 'tristana', 'tristana.png', 6300, 'mid', 'padrao'),
(109, 'trundle', 'trundle.png', 6300, 'mid', 'padrao'),
(110, 'tryndamere', 'tryndamere.png', 6300, 'mid', 'padrao'),
(111, 'twistedfate', 'twistedfate.png', 6300, 'mid', 'padrao'),
(112, 'twitch', 'twitch.png', 6300, 'mid', 'padrao'),
(113, 'udyr', 'udyr.png', 6300, 'mid', 'padrao'),
(114, 'urgot', 'urgot.png', 6300, 'mid', 'padrao'),
(115, 'varus', 'varus.png', 6300, 'mid', 'padrao'),
(116, 'vayne', 'vayne.png', 6300, 'mid', 'padrao'),
(117, 'veigar', 'veigar.png', 6300, 'mid', 'padrao'),
(118, 'velkoz', 'velkoz.png', 6300, 'mid', 'padrao'),
(119, 'vi', 'vi.png', 6300, 'mid', 'padrao'),
(120, 'viktor', 'viktor.png', 6300, 'mid', 'padrao'),
(121, 'vladimir', 'vladimir.png', 6300, 'mid', 'padrao'),
(122, 'volibear', 'volibear.png', 6300, 'mid', 'padrao'),
(123, 'warwick', 'warwick.png', 6300, 'mid', 'padrao'),
(124, 'wukong', 'wukong.png', 6300, 'mid', 'padrao'),
(125, 'xerath', 'xerath.png', 6300, 'mid', 'padrao'),
(126, 'xinzhao', 'xinzhao.png', 6300, 'mid', 'padrao'),
(127, 'yasuo', 'yasuo.png', 6300, 'mid', 'padrao'),
(128, 'yorick', 'yorick.png', 6300, 'mid', 'padrao'),
(129, 'zac', 'zac.png', 6300, 'mid', 'padrao'),
(130, 'zed', 'zed.png', 6300, 'mid', 'padrao'),
(131, 'ziggs', 'ziggs.png', 6300, 'mid', 'padrao'),
(132, 'zilean', 'zilean.png', 6300, 'mid', 'padrao'),
(133, 'zyra', 'zyra.png', 6300, 'mid', 'padrao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

DROP TABLE IF EXISTS `itens`;
CREATE TABLE `itens` (
  `id` int(4) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `preco` int(4) NOT NULL,
  `imagem` text NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `skins`
--

DROP TABLE IF EXISTS `skins`;
CREATE TABLE `skins` (
  `id` int(4) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `preco` int(4) NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `skins`
--

INSERT INTO `skins` (`id`, `nome`, `preco`, `imagem`) VALUES
(1, 'JUSTICEIRO', 750, 'aatrox_justiceiro.jpg'),
(2, 'MECH', 390, 'aatrox_mech.jpg'),
(3, 'ALIQUEADO', 390, 'alistar_aliqueado.jpg'),
(4, 'CHIFRUDO', 390, 'alistar_chifrudo.jpg'),
(5, 'DOURADO', 750, 'alistar_dourado.jpg'),
(6, 'INFERNAL', 1350, 'alistar_infernal.jpg'),
(7, 'MATADOR', 3250, 'alistar_matador.jpg'),
(8, 'SAQUEADOR', 1350, 'alistar_saqueador.jpg'),
(9, 'SKTT1', 750, 'alistar_sktt1.jpg'),
(10, 'ZAGUEIRO', 520, 'alistar_zagueiro.jpg'),
(11, 'EMUMU', 520, 'amumu_emumu.jpg'),
(12, 'FARÃ¡O', 1350, 'amumu_farÃ¡o.jpg'),
(13, 'FESTA SURPRESA', 3250, 'amumu_festa surpresa.jpg'),
(14, 'PEQUENO GUERREIRO', 3250, 'amumu_pequeno guerreiro.jpg'),
(15, 'PRESENTE DE NATAL', 3250, 'amumu_presente de natal.jpg'),
(16, 'PRINCEPE TRISTE', 1820, 'amumu_princepe triste.jpg'),
(17, 'ROBÃ´TIO', 390, 'amumu_robÃ´tio.jpg'),
(18, 'AO CONTRARIO', 750, 'annie_ao contrario.jpg'),
(19, 'CHAPEUZINHO VERMELHO', 1820, 'annie_chapeuzinho vermelho.jpg'),
(20, 'FRANK', 520, 'annie_frank.jpg'),
(21, 'GOTICA', 3250, 'annie_gotica.jpg'),
(22, 'HEXTEC', 390, 'annie_hextec.jpg'),
(23, 'PAIS DAS MARAVILHAS', 520, 'annie_pais das maravilhas.jpg'),
(24, 'PANDA', 3250, 'annie_panda.jpg'),
(25, 'QUERIDINHA', 1820, 'annie_queridinha.jpg'),
(26, 'RAINHA', 1350, 'annie_rainha.jpg'),
(27, 'RAIO CONGELADO', 1350, 'annie_raio congelado.jpg'),
(28, 'AMETISTA', 390, 'ashe_ametista.jpg'),
(29, 'BRETA', 1350, 'ashe_breta.jpg'),
(30, 'CUPIDO MORTAL', 1350, 'ashe_cupido mortal.jpg'),
(31, 'FREIJORD', 1820, 'ashe_freijord.jpg'),
(32, 'PROJETO', 520, 'ashe_projeto.jpg'),
(33, 'RAINHA', 520, 'ashe_rainha.jpg'),
(34, 'SAQUEADORA', 390, 'ashe_saqueadora.jpg'),
(35, 'SHERWOOD', 1820, 'ashe_sherwood.jpg'),
(36, 'SENHOR DAS CINZAS', 390, 'aurelion_senhor das cinzas.jpg'),
(37, 'GALATICO', 1820, 'azir_galatico.jpg'),
(38, 'LORDE', 1820, 'azir_lorde.jpg'),
(39, 'REINOS COMBATENTES', 520, 'azir_reinos combatentes.jpg'),
(40, 'SKTT1', 390, 'azir_sktt1.jpg'),
(41, 'BARDO', 390, 'bardo_bardo.jpg'),
(42, 'CAVALHEIRO', 750, 'chogath_cavalheiro.jpg'),
(43, 'JURASSICO', 1350, 'chogath_jurassico.jpg'),
(44, 'MONSTRO DO LAGO NESS', 750, 'chogath_monstro do lago ness.jpg'),
(45, 'MÃ¡QUINA DE COMBATE', 1350, 'chogath_mÃ¡quina de combate.jpg'),
(46, 'TERROR DAS PROFUNDEZAS', 750, 'chogath_terror das profundezas.jpg'),
(47, 'COLEGIAL', 3250, 'ekko_colegial.jpg'),
(48, 'PROJETO', 750, 'ekko_projeto.jpg'),
(49, 'TEMPESTADE DE AREIA', 520, 'ekko_tempestade de areia.jpg'),
(50, 'DANÃ§ARINA DE TANGO', 1820, 'evellyn_danÃ§arina de tango.jpg'),
(51, 'ASCENDENTE', 1350, 'fiddle_ascendente.jpg'),
(52, 'CABECA DE ABOBORA', 3250, 'fiddle_cabeca de abobora.jpg'),
(53, 'DOCES TREVOSOS', 390, 'fiddle_doces trevosos.jpg'),
(54, 'FESTA SURPRESA', 390, 'fiddle_festa surpresa.jpg'),
(55, 'PERNA DE PAU', 390, 'fiddle_perna de pau.jpg'),
(56, 'SPECTRAL', 390, 'fiddle_spectral.jpg'),
(57, 'UNIONJACK', 750, 'fiddle_unionjack.jpg'),
(58, 'VELHO OESTE', 390, 'fiddle_velho oeste.jpg'),
(59, 'COMANDANTE', 1820, 'galio_comandante.jpg'),
(60, 'ELEGANTE', 1820, 'galio_elegante.jpg'),
(61, 'ENCANTADO', 390, 'galio_encantado.jpg'),
(62, 'HEXTEC', 750, 'galio_hextec.jpg'),
(63, 'PORTEIRO', 3250, 'galio_porteiro.jpg'),
(64, 'REI DOS DOCES', 520, 'ivern_rei dos doces.jpg'),
(65, 'JAX VÃ¢NDALO', 390, 'jax_jax vÃ¢ndalo.jpg'),
(66, 'MÃ­STICO', 390, 'jax_mÃ­stico.jpg'),
(67, 'NEMESIS', 1350, 'jax_nemesis.jpg'),
(68, 'PAX', 390, 'jax_pax.jpg'),
(69, 'SKTT1', 1820, 'jax_sktt1.jpg'),
(70, 'ESTÃ¡TUA DO KARTHUS', 3250, 'karthus_EstÃ¡tua do Karthus.jpg'),
(71, 'BANIDO DA LUZ', 390, 'karthus_banido da luz.jpg'),
(72, 'CEIFADOR', 520, 'karthus_ceifador.jpg'),
(73, 'FANTASMA', 520, 'karthus_fantasma.jpg'),
(74, 'FNATIC', 1350, 'karthus_fnatic.jpg'),
(75, 'LACAIO DA MORTE', 1820, 'karthus_lacaio da morte.jpg'),
(76, 'ALADA', 750, 'kayle_alada.jpg'),
(77, 'BATALHADORA', 1350, 'kayle_batalhadora.jpg'),
(78, 'DESMASCARADA', 1350, 'kayle_desmascarada.jpg'),
(79, 'INQUISIDOR DE FERRO', 390, 'kayle_inquisidor de ferro.jpg'),
(80, 'JULGAMENTO', 390, 'kayle_julgamento.jpg'),
(81, 'PRATEADA', 1820, 'kayle_prateada.jpg'),
(82, 'RIOT', 1350, 'kayle_riot.jpg'),
(83, 'VIRIDIANA', 390, 'kayle_viridiana.jpg'),
(84, 'SOMBRA DE FOGO', 390, 'kindred_sombra de fogo.jpg'),
(85, 'SUPER GALATICO', 750, 'kindred_super galatico.jpg'),
(86, 'SIR', 1820, 'kled_sir.jpg'),
(87, 'CORVINATA', 750, 'lb_corvinata.jpg'),
(88, 'CRUEL', 390, 'lb_cruel.jpg'),
(89, 'NATALINA', 1350, 'lb_natalina.jpg'),
(90, 'PRESTIGIOSA', 520, 'lb_prestigiosa.jpg'),
(91, 'SABUGUEIRO', 1350, 'lb_sabugueiro.jpg'),
(92, 'AGENTE SECRETO', 520, 'miss fortune_agente secreto.jpg'),
(93, 'CURTINDO O VERÃ£O', 1350, 'miss fortune_curtindo o verÃ£o.jpg'),
(94, 'FLIPERAMA', 750, 'miss fortune_fliperama.jpg'),
(95, 'NATALINA', 3250, 'miss fortune_natalina.jpg'),
(96, 'XERIFE', 1820, 'miss fortune_xerife.jpg'),
(97, 'Ã¡GUAS DE SENTINA', 1350, 'miss fortune_Ã¡guas de sentina.jpg'),
(98, 'INFERNAL', 3250, 'mordekaiser_infernal.jpg'),
(99, 'PENTAKILL', 520, 'mordekaiser_pentakill.jpg'),
(100, 'REI DE PAUS', 390, 'mordekaiser_rei de paus.jpg'),
(101, 'SENHOR DRAGAO', 520, 'mordekaiser_senhor dragao.jpg'),
(102, 'SENHOR', 750, 'mordekaiser_senhor.jpg'),
(103, 'AMANTE DAS LAMINAS', 750, 'morgana_amante das laminas.jpg'),
(104, 'COZINHEIRA', 1820, 'morgana_cozinheira.jpg'),
(105, 'ESPINHO NEGRO', 3250, 'morgana_espinho negro.jpg'),
(106, 'EXILIDA', 390, 'morgana_exilida.jpg'),
(107, 'FANTASMA LUNAR', 1820, 'morgana_fantasma lunar.jpg'),
(108, 'FEITICEIRA', 390, 'morgana_feiticeira.jpg'),
(109, 'VESTIDA DE NOIVA', 750, 'morgana_vestida de noiva.jpg'),
(110, 'VITORIOSA', 390, 'morgana_vitoriosa.jpg'),
(111, 'DEMOLIDOR', 1350, 'nunu_demolidor.jpg'),
(112, 'HEXTEC', 1820, 'nunu_hextec.jpg'),
(113, 'HORRIPILANTE', 1820, 'nunu_horripilante.jpg'),
(114, 'ROBÃ³TICO', 520, 'nunu_robÃ³tico.jpg'),
(115, 'TPA', 1820, 'nunu_tpa.jpg'),
(116, 'ZUMBI', 3250, 'nunu_zumbi.jpg'),
(117, 'ACOUGUEIRO', 3250, 'olaf_acougueiro.jpg'),
(118, 'BROLAF', 390, 'olaf_brolaf.jpg'),
(119, 'ESQUECIDO', 1820, 'olaf_esquecido.jpg'),
(120, 'GLACIAL', 390, 'olaf_glacial.jpg'),
(121, 'PENTAKILL', 1350, 'olaf_pentakill.jpg'),
(122, 'SAQUEADOR', 3250, 'olaf_saqueador.jpg'),
(123, 'BARBABRANCA', 1350, 'ryze_barbabranca.jpg'),
(124, 'CRISTALNEGRO', 3250, 'ryze_cristalnegro.jpg'),
(125, 'HUMANO', 750, 'ryze_humano.jpg'),
(126, 'PIRATA', 750, 'ryze_pirata.jpg'),
(127, 'PROFESSOR', 3250, 'ryze_professor.jpg'),
(128, 'SKTT1', 1820, 'ryze_sktt1.jpg'),
(129, 'TIO', 1350, 'ryze_tio.jpg'),
(130, 'TRIBAL', 3250, 'ryze_tribal.jpg'),
(131, 'TRIUNFANTE', 390, 'ryze_triunfante.jpg'),
(132, 'ZUMBI', 750, 'ryze_zumbi.jpg'),
(133, 'APRIMORADO', 1820, 'singed_aprimorado.jpg'),
(134, 'CIENTISTA DO MAL', 3250, 'singed_cientista do mal.jpg'),
(135, 'CURTINDO O VERÃ£O', 390, 'singed_curtindo o verÃ£o.jpg'),
(136, 'ESQUIADOR', 750, 'singed_esquiador.jpg'),
(137, 'SSW', 1350, 'singed_ssw.jpg'),
(138, ' MECH SION', 3250, 'sion_ mech sion.jpg'),
(139, 'BARBARO', 390, 'sion_barbaro.jpg'),
(140, 'HEXTEC', 3250, 'sion_hextec.jpg'),
(141, 'LENHADOR', 1350, 'sion_lenhador.jpg'),
(142, 'MAQUINA DE COMBATE', 390, 'sion_maquina de combate.jpg'),
(143, 'GLACIAL', 520, 'sivir_glacial.jpg'),
(144, 'PAX', 750, 'sivir_pax.jpg'),
(145, 'RAINHA', 520, 'sivir_rainha.jpg'),
(146, 'VIGIA', 1350, 'sivir_vigia.jpg'),
(147, 'RUNETERRA', 1350, 'skarner_runeterra.jpg'),
(148, 'CEIFADORA', 520, 'soraka_ceifadora.jpg'),
(149, 'CELESTIAL', 1820, 'soraka_celestial.jpg'),
(150, 'CIBERNÃ©TICA', 3250, 'soraka_cibernÃ©tica.jpg'),
(151, 'DIVINA', 520, 'soraka_divina.jpg'),
(152, 'DRÃ­ADE', 1820, 'soraka_drÃ­ade.jpg'),
(153, 'ORDEM DAS BANANAS', 520, 'soraka_ordem das bananas.jpg'),
(154, 'FREIJORD', 750, 'taliyah_freijord.jpg'),
(155, ' URF', 1820, 'tam kench_ urf.jpg'),
(156, 'CAPETEEMO', 390, 'teemo_capeteemo.jpg'),
(157, 'COELINHO DA PASCOA', 3250, 'teemo_coelinho da pascoa.jpg'),
(158, 'ELFO FELIZ', 520, 'teemo_elfo feliz.jpg'),
(159, 'ESPACIAL', 750, 'teemo_espacial.jpg'),
(160, 'ESQUADRÃ£O Ã´MEGA', 1350, 'teemo_esquadrÃ£o Ã´mega.jpg'),
(161, 'PANDA', 520, 'teemo_panda.jpg'),
(162, 'SUPER TEEMO', 1350, 'teemo_super teemo.jpg'),
(163, 'CARTAOVERMELHO', 1350, 'tf_cartaovermelho.jpg'),
(164, 'DOSUBMUNDO', 390, 'tf_dosubmundo.jpg'),
(165, 'JACKDOSCORACOES', 750, 'tf_jackdoscoracoes.jpg'),
(166, 'LADRAO', 520, 'tf_ladrao.jpg'),
(167, 'LUASANGRENTA', 3250, 'tf_luasangrenta.jpg'),
(168, 'MAGNIFICO', 390, 'tf_magnifico.jpg'),
(169, 'MEIODIA', 520, 'tf_meiodia.jpg'),
(170, 'MOSQUETEIRO', 750, 'tf_mosqueteiro.jpg'),
(171, 'PAX', 520, 'tf_pax.jpg'),
(172, 'TANGO', 1820, 'tf_tango.jpg'),
(173, 'CAMPEONATO', 1350, 'thresh_campeonato.jpg'),
(174, 'ESTRELANEGRA', 1820, 'thresh_estrelanegra.jpg'),
(175, 'LUASANGRENTA', 1350, 'thresh_luasangrenta.jpg'),
(176, 'SSG', 750, 'thresh_ssg.jpg'),
(177, 'TERRORDOPROFUNDO', 3250, 'thresh_terrordoprofundo.jpg'),
(178, 'MESTRECUCA', 3250, 'tk_mestrecuca.jpg'),
(179, 'BOMBEIRA', 1350, 'tristana_bombeira.jpg'),
(180, 'ELFA NATALINA', 1350, 'tristana_elfa natalina.jpg'),
(181, 'FEITICEIRA', 390, 'tristana_feiticeira.jpg'),
(182, 'GAROTA RIOT', 1820, 'tristana_garota riot.jpg'),
(183, 'GUERRILHEIRA', 390, 'tristana_guerrilheira.jpg'),
(184, 'TREINADORA DE DRAGÃµES', 3250, 'tristana_treinadora de dragÃµes.jpg'),
(185, 'REI', 390, 'tryndamere_rei.jpg'),
(186, 'REINOS COMBATENTES', 520, 'tryndamere_reinos combatentes.jpg'),
(187, 'SULTÃ£O', 520, 'tryndamere_sultÃ£o.jpg'),
(188, 'CHEFÃ£O', 750, 'twitch_chefÃ£o.jpg'),
(189, 'ESQUIADOR', 3250, 'twitch_esquiador.jpg'),
(190, 'GANGSTER', 390, 'twitch_gangster.jpg'),
(191, 'MEDIEVAL', 1820, 'twitch_medieval.jpg'),
(192, 'SSW', 390, 'twitch_ssw.jpg'),
(193, 'TROMBADINHA', 1350, 'twitch_trombadinha.jpg'),
(194, 'VÃ¢NDALO', 750, 'twitch_vÃ¢ndalo.jpg'),
(195, 'ACOUGUEIRO', 520, 'urgot_acougueiro.jpg'),
(196, 'BATALHADOR', 390, 'urgot_batalhador.jpg'),
(197, 'INIMIGO GIGANTE', 520, 'urgot_inimigo gigante.jpg'),
(198, 'COLEGIAL', 390, 'vladimir_colegial.jpg'),
(199, 'CONDE', 390, 'vladimir_conde.jpg'),
(200, 'LADRAO DE ALMAS', 520, 'vladimir_ladrao de almas.jpg'),
(201, 'MARQUES', 1820, 'vladimir_marques.jpg'),
(202, 'NOSFERATU', 3250, 'vladimir_nosferatu.jpg'),
(203, 'SENHOR DO SANGUE', 3250, 'vladimir_senhor do sangue.jpg'),
(204, 'VANDALO', 750, 'vladimir_vandalo.jpg'),
(205, 'CAÃ§ADOR', 750, 'warwick_caÃ§ador.jpg'),
(206, 'CINZENTO', 1820, 'warwick_cinzento.jpg'),
(207, 'FOGO ESPIRITUAL', 750, 'warwick_fogo espiritual.jpg'),
(208, 'HIENA', 750, 'warwick_hiena.jpg'),
(209, 'SAQUEADOR', 390, 'warwick_saqueador.jpg'),
(210, 'URF', 750, 'warwick_urf.jpg'),
(211, 'VOVÃ³ZINHA', 1820, 'warwick_vovÃ³zinha.jpg'),
(212, 'REINOS  COMBATENTES', 1350, 'xin zhao _reinos  combatentes.jpg'),
(213, 'AGENTE', 750, 'xin_agente_especial.jpg'),
(214, 'ALADOVOADOR', 390, 'xin_aladovoador.jpg'),
(215, 'COMANDANTE', 390, 'xin_comandante.jpg'),
(216, 'GLADIADOR', 390, 'xin_gladiador.jpg'),
(217, 'IMPERIAL', 750, 'xin_imperial.jpg'),
(218, 'ASSASINO', 1820, 'yi_assasino.jpg'),
(219, 'CACADORDECABECA', 750, 'yi_cacadordecabeca.jpg'),
(220, 'ESCOLHIDO', 390, 'yi_escolhido.jpg'),
(221, 'IONIA', 1820, 'yi_ionia.jpg'),
(222, 'PROJETO', 750, 'yi_projeto.jpg'),
(223, 'SAMURAI', 390, 'yi_samurai.jpg'),
(224, 'TERROR NOTURNO', 1820, 'yorick_terror noturno.jpg'),
(225, 'CAMPEONATO', 750, 'zed_campeonato.jpg'),
(226, 'LAMINA DO TROVAO', 750, 'zed_lamina do trovao.jpg'),
(227, 'PROJETO', 1350, 'zed_projeto.jpg'),
(228, 'SKTT1', 3250, 'zed_sktt1.jpg'),
(229, 'INVENTOR MALUCO', 1820, 'zilan_inventor maluco.jpg'),
(230, 'LUA SANGRENTA', 1350, 'zilean_lua sangrenta.jpg'),
(231, 'PAPAI NOEL', 1350, 'zilean_papai noel.jpg'),
(232, 'TEMPLO DE SHURIMA', 3250, 'zilean_templo de shurima.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campeoes`
--
ALTER TABLE `campeoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skins`
--
ALTER TABLE `skins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campeoes`
--
ALTER TABLE `campeoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `itens`
--
ALTER TABLE `itens`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skins`
--
ALTER TABLE `skins`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
