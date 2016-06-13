-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 13, 2016 alle 18:29
-- Versione del server: 5.7.9-log
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
-- Struttura della tabella `smartlifeservices`
--

CREATE TABLE `smartlifeservices` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `contenuti` text,
  `descrizione` text,
  `prezzo` varchar(10) DEFAULT NULL,
  `promo` text,
  `attivazione` text,
  `faqs` text,
  `immagine` text,
  `intro` text NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `sottotipo` varchar(20) DEFAULT NULL,
  `categoria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `smartlifeservices`
--

INSERT INTO `smartlifeservices` (`id`, `nome`, `contenuti`, `descrizione`, `prezzo`, `promo`, `attivazione`, `faqs`, `immagine`, `intro`, `tipo`, `sottotipo`, `categoria`) VALUES
(1, 'Tim Smart Fibra', NULL, NULL, NULL, NULL, NULL, NULL, '', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/1.jpg"></div>\r\n<div class="product-info"><h5>Tim Smart Fibra</h5><h6>Ultra fast internet with TIM Vision included. <span class="product-price">MODEM INCLUDED! 29 &#0128 /mese for 1 year.</span></h6></div></div>', 'fixedline', 'timvision', 'plans'),
(2, 'Internet Start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/2.jpg"></div><div class="product-info"><h5>Internet Start</h5><h6>2GB Internet 4G. <span class="product-price">MODEM INCLUDED! 29&#0128/mese for 1 year. 10&#0128 / 4 weeks.</span></h6></div></div>\r\n	', 'mobile', 'internet', 'plans'),
(3, 'Tim Smart Home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated">\r\n			<div class="product-image">\r\n				<img src="images/plans/3.jpg">\r\n			</div>\r\n			<div class="product-info">\r\n				<h5>Tim Smart Home</h5>\r\n				<h6>ADSL, unlimited phone calls and TIM Vision included. <span class="product-price">29&#0128/month for 1 year.</span></h6>\r\n			</div></div>\r\n	', 'fixedline', 'timvision', 'plans'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/4.jpg"></div><div class="product-info"><h5>TIM Smart Mobile</h5><h6>Fixed Line, Mobile, Internet & TIM Vision.<span class="product-price">29&#0128/mese for 1 year.</span></h6></div></div>', 'fixedline', 'timvision', 'plans'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/6.jpg"></div><div class="product-info"><h5>Unlimited Internet</h5><h6>Unlimited ADSL & Home Phone Calls. <span class="product-price">ONLINE ONLY 22&#0128/month for 1 year.</span></h6></div></div>', 'fixedline', 'voiceinternet', 'plans'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/8.jpg"></div><div class="product-info"><h5>TIM Young & Music Digital</h5><h6>TIM Music without wasting GB. <span class="product-price">ONLINE ONLY 4 weeks for FREE! 9&#0128/4 weeks.</span></h6></div></div>\r\n	', 'mobile', 'voiceinternet', 'plans'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/7.jpg"></div><div class="product-info"><h5>TIM Special Start</h5><h6>1000 mins up to 4GB. <span class="product-price">ONLINE ONLY 20&#0128/4 weeks</span></h6></div></div>\r\n	', 'mobile', 'voiceinternet', 'plans'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/5.jpg"></div><div class="product-info"><h5>Voice</h5><h6>Home line for unlimited calls. <span class="product-price">29&#0128/month</span></h6></div></div>\r\n	', 'fixedline', 'voiceonly', 'plans'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/9.jpg"></div><div class="product-info"><h5>TIM International Voice</h5><h6>Calls to your home country from 1 cent. <span class="product-price">9&#0128/4 weeks.</span></h6></div></div>', 'mobile', 'overseas', 'plans'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/10.jpg"></div><div class="product-info"><h5>Choose your smartphone</h5><h6>It suits for you. <span class="product-price">Starting from 0&#0128/month.</span></h6></div></div>', 'mobile', 'smartphone', 'plans');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `smartlifeservices`
--
ALTER TABLE `smartlifeservices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `smartlifeservices`
--
ALTER TABLE `smartlifeservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
