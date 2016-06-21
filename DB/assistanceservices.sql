-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 21, 2016 alle 09:38
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tim`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `assistanceservices`
--

CREATE TABLE `assistanceservices` (
  `id` int(11) NOT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `intro` text,
  `immagine` text,
  `descrizione` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `assistanceservices`
--

INSERT INTO `assistanceservices` (`id`, `categoria`, `tipo`, `nome`, `intro`, `immagine`, `descrizione`) VALUES
(1, 'assistenzaTecnica', 'alls', 'Garanzia', ' <div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-cogs" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Garanzia TIM</h5><h6>Sfrutta la garanzia TIM per riparare un prodotto</h6></div></div>', NULL, NULL),
(2, 'assistenzaTecnica', 'devices', 'Mail', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-envelope" aria-hidden="true"></i></div><div class="product-info"><h5>Mail</h5><h6>Configura la Webmail direttamente dal tuo device</h6></div></div>', NULL, NULL),
(3, 'assistenzaTecnica', 'adslefibra', 'ADSL e Fibra', '<div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-laptop" aria-hidden="true"></i></div><div class="product-info"><h5>ADSL &amp; Fibra</h5><h6>Richiedi una verifica sulla tua linea telefonica in caso di guasti</h6></div></div>', NULL, NULL),
(4, 'assistenzaTecnica', 'decoder', 'Decoder & Tv', '<div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-television" aria-hidden="true"></i></div><div class="product-info"><h5>Decoder &amp; TV</h5><h6>Risolvi eventuali problemi di visione contenuti</h6></div></div>', NULL, NULL),
(5, 'assistenzaTecnica', 'alls', 'Navigazione', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-paper-plane" aria-hidden="true"></i></div><div class="product-info"><h5>Navigazione</h5><h6>Problemi di navigazione? Controlla le impostazioni di rete</h6></div></div>', NULL, NULL),
(6, 'assistenzaTecnica', 'navigazione', 'Sicurezza PC', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-user-plus" aria-hidden="true"></i></div><div class="product-info"><h5>Sicurezza PC</h5><h6>Software e tricks per una navigazione sicura</h6></div></div>', NULL, NULL),
(7, 'lineManagement', 'adslefibra', 'Copertura', ' <div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-wifi" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Copertura</h5><h6>Verifica se la tua zona &egrave; fornita dalla fibra TIM</h6></div></div>', NULL, NULL),
(8, 'lineManagement', 'alls', 'Intervento', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-cog" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Intervento</h5><h6>Richiedi l''intervento di un tecnico specializzato TIM</h6></div></div>', NULL, NULL),
(9, 'lineManagement', 'devices', 'Ricaricabile', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-mobile" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Ricaricabile</h5><h6>Gestisci i dati relativi alla tua sim TIM</h6></div></div>', NULL, NULL),
(10, 'lineManagement', 'adslefibra', 'Decoder & TV', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-plug" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Decoder &amp; TV</h5><h6>Scopri come collegare pi&uacute; dispositivi sul tuo router TIM</h6></div></div>', NULL, NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `assistanceservices`
--
ALTER TABLE `assistanceservices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `assistanceservices`
--
ALTER TABLE `assistanceservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
