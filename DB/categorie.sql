-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 13, 2016 alle 18:30
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
-- Struttura della tabella `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `descrizione` text NOT NULL,
  `immagine` text NOT NULL,
  `categoria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table is used to fetch the Smart Life Categories';

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`id`, `nome`, `descrizione`, `immagine`, `categoria`) VALUES
(1, '<h2>Plans</h2>', '<p class="lead">The best offers for you, for home and your mobile</p>', '<img src="images/smartlife_cat/plans.jpg" class="img-responsive">', 'smartlife'),
(2, '<h2>TV & Entertainment</h2>', '<p class="lead">TV, Games, Music, Films, Series, Football. Discover your favourite entertainment. Have fun just right now, the way you prefer, when you prefer.</p>', '<img src="images/smartlife_cat/entertainment.jpg" class="img-responsive">', 'smartlife'),
(3, '<h2>Home & Family</h2>', '<p class="lead">Smart Life means a simple and safer life too. For both your home and your loved ones.</p>', '<img src="images/smartlife_cat/home.jpg" class="img-responsive">', 'smartlife'),
(4, '<h2>Health & Wellness</h2>', '<p class="lead">Try our new wearables. Discover how health and wellness may make your life better. Free your desire of movement.  Share with your friends your results. Future is smart.</p>', '<img src="images/smartlife_cat/health.jpg" class="img-responsive">', 'smartlife'),
(5, '<h2>Personal Services</h2>', '<p clas="lead">A new approach to the world of e-payment and digital identity. You will be able to simply organize and manage with all the security you need your digital payments, your personal archive, safely store your passwords, your invoices, your receipts and your medical reports.</p>', '<img src="images/smartlife_cat/services.jpg" class="img-responsive">', 'smartlife');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
