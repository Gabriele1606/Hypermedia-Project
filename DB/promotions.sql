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
-- Struttura della tabella `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `descrizione` text NOT NULL,
  `left_image` text NOT NULL,
  `right_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `descrizione`, `left_image`, `right_image`) VALUES
(1, '<h2>Promotions</h2>', '<p class="lead">This page groups all categories of our items that include special discounts and offers.<br>Choose the category you wish to navigate through and discover all our promotions</p>', '<img src="images/promotions/promo1.png" class="img-responsive">', '<img src="images/promotions/promo2.png" class="img-responsive">');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
