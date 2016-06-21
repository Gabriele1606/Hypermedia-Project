-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 21, 2016 alle 12:30
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
(0, 'assistenzaTecnica', 'alls', 'Garanzia', ' <div class="product-card wow fadeInUp animated"><center><div class="product-image"><a href="#assistanceServicesInfo&assistenzaTecnica&0"><i class="fa fa-cogs" aria-hidden="true"></i></a>\r\n</div></center><div class="product-info"><h5>Garanzia TIM</h5><h6>Sfrutta la garanzia TIM per riparare un prodotto</h6></div></div>', '<img src="images/assistanceservices/bannertop.png" class="img-responsive">', '<h3><b><center>TIM ti offre due metodi di assistenza in garanzia:</center></b></h3>\r\n<p><b>SOSsmartphone</b> &egrave; il servizio di TIM per tutti i clienti, Ricaricabili o con Abbonamento, che permette di ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del proprio smartphone o tablet.\r\nGrazie al servizio SOSsmartphone potrai parlare con un esperto che ti fornir&agrave; tutta la consulenza e l&rsquo;assistenza &ldquo;premium&rdquo; di cui necessiti e che soprattutto sar&agrave; in grado di connettersi in remoto ed operare direttamente sul tuo dispositivo.</p>\r\n<p>I servizi che potrai ricevere con SOSsmartphone sono:\r\n<ul>\r\n    <li>supporto per trasferimento dati in caso di cambio telefono: esempio trasferimento rubrica, foto, sms;</li>\r\n    <li>consulenza nell&rsquo;utilizzo delle funzioni avanzate dello smartphone;</li>\r\n    <li>assistenza specialistica sulle configurazioni avanzate dello smartphone e integrazione nella tua rete domestica;</li>\r\n    <li>gestione e sincronizzazione dei tuoi contenuti multimediali;</li>\r\n    <li>supporto per garantire il massimo della sicurezza;</li>\r\n    <li>conservazione e protezione dei tuoi dati;</li>\r\n    <li>trasferimento di contenuti;</li>\r\n    <li>aggiornamento del tuo smartphone;</li>\r\n    <li>effettuazione check up</li>\r\n</ul></p>\r\n'),
(1, 'assistenzaTecnica', 'devices', 'Mail', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-envelope" aria-hidden="true"></i></div><div class="product-info"><h5>Mail</h5><h6>Configura la Webmail direttamente dal tuo device</h6></div></div>', NULL, NULL),
(2, 'assistenzaTecnica', 'adslefibra', 'ADSL e Fibra', '<div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-laptop" aria-hidden="true"></i></div><div class="product-info"><h5>ADSL &amp; Fibra</h5><h6>Richiedi una verifica sulla tua linea telefonica in caso di guasti</h6></div></div>', NULL, NULL),
(3, 'assistenzaTecnica', 'decoder', 'Decoder & Tv', '<div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-television" aria-hidden="true"></i></div><div class="product-info"><h5>Decoder &amp; TV</h5><h6>Risolvi eventuali problemi di visione contenuti</h6></div></div>', NULL, NULL),
(4, 'assistenzaTecnica', 'alls', 'Navigazione', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-paper-plane" aria-hidden="true"></i></div><div class="product-info"><h5>Navigazione</h5><h6>Problemi di navigazione? Controlla le impostazioni di rete</h6></div></div>', NULL, NULL),
(5, 'assistenzaTecnica', 'navigazione', 'Sicurezza PC', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-user-plus" aria-hidden="true"></i></div><div class="product-info"><h5>Sicurezza PC</h5><h6>Software e tricks per una navigazione sicura</h6></div></div>', NULL, NULL),
(6, 'lineManagement', 'adslefibra', 'Copertura', ' <div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-wifi" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Copertura</h5><h6>Verifica se la tua zona &egrave; fornita dalla fibra TIM</h6></div></div>', NULL, NULL),
(7, 'lineManagement', 'alls', 'Intervento', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-cog" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Intervento</h5><h6>Richiedi l''intervento di un tecnico specializzato TIM</h6></div></div>', NULL, NULL),
(8, 'lineManagement', 'devices', 'Ricaricabile', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-mobile" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Ricaricabile</h5><h6>Gestisci i dati relativi alla tua sim TIM</h6></div></div>', NULL, NULL),
(9, 'lineManagement', 'adslefibra', 'Decoder & TV', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-plug" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Decoder &amp; TV</h5><h6>Scopri come collegare pi&uacute; dispositivi sul tuo router TIM</h6></div></div>', NULL, NULL);

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
