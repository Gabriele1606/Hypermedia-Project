-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 16, 2016 alle 00:44
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
  `prezzo` text,
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
(6, 'Tim Young & Music', '<div class="plan-content-ico"><img src="images/planInfo/internet.png"><div class="product-info"><h5>3GB 4G</h5></div></div>\r\n<div class="plan-content-ico"><img src="images/planInfo/sms.png"><div class="product-info"><h5>1000 SMS</h5></div></div>\r\n<div class="plan-content-ico"><img src="images/planInfo/2.png"><div class="product-info"><h5>TIM Music</h5></div></div>', '<p><strong>Hai meno di 30 anni e ti senti Digital?</strong></p><p>Con <strong>TIM Young&amp;Music Summer Edition chiami, fai il pieno di Giga, navighi</strong> alla velocità della luce e <strong>ascolti musica in streaming illimitato</strong> sul tuo smartphone con TIMmusic, senza consumare i tuoi GB!</p><p>In più, se attivi l’offerta <strong>da Negozio TIM</strong> con <strong>addebito</strong> dei pagamenti <strong>su conto corrente</strong> o <strong>carta di credito</strong>, per te <strong>5GB di Internet 4G ogni 28gg.</strong></p><p>Puoi avere <strong>TIM Young&amp;Music Summer Edition a 14&#0128 ogni 4 settimane</strong>, anziché 17&#0128, <strong>se utilizzi la modalità DIGITAL:</strong></p><ul><li>ricarichi da timyoung.it, tim.it, MyTIM Mobile (anche tramite App MyTIM Mobile),tramite la tua banca</li><li>se addebiti la tua offerta su conto corrente o carta di credito.</li></ul><p>A te che attivi l’offerta TIM Young&amp;Music Full&nbsp; verrà<strong> attivata gratuitamente</strong>, l’opzione 3 Giga Estate che ti dà diritto a<strong> 3GB extra da utilizzare fino al 30/09/2016.</strong></p><p>Una volta esauriti i 3GB extra prima della scadenza naturale della promozione &nbsp;(30/09/2016), continuerai a navigare consumando i GB del pacchetto dati TIM Young&amp;Music a tua disposizione.</p><p></p>', '<p>9&#0128 / 4 settimane</p>', '<p>Estendi la promozione con 3GB EXTRA + 500 minuti a soli 14&#0128 / 4 settimane!</p>', 'Costi\r\n\r\nSe passi a TIM mantenendo il tuo numero o attivi una nuova linea e scegli di addebitare l’offerta su credito residuo, il costo di attivazione è di 3€.\r\nSe l’offerta viene attivata online il costo di attivazione e le prime 4 settimane sono gratis. \r\nPer i già clienti TIM è previsto un costo di attivazione di 19€.\r\n\r\nPer chi passa a TIM fino al 28/08/2016 mantenendo il proprio numero o attivando una nuova linea, il costo di attivazione di 19€ è gratuito se si sceglie di domiciliare i pagamenti dell’offerta su carta di credito o conto corrente, a condizione che l’offerta TIM Young&Music Digital venga mantenuta attiva per almeno 12 rinnovi (ciascun rinnovo, relativo alla disponibilità dei servizi inclusi nell’offerta, avviene ogni 4 settimane). In caso di recesso dall’offerta, prima della scadenza del suddetto periodo, è previsto l’addebito del contributo di attivazione dell’offerta, pari a 19€, posto in promozione gratuita all’attivazione dell’offerta stessa.\r\n\r\nCome si attiva\r\n\r\nPuoi attivare l''offerta su credito residuo:\r\n\r\ndirettamente online, cliccando sul tasto ATTIVA, se sei cliente TIM. Per scoprire i vantaggi e le modalità dell’Attivazione online, consulta la Guida\r\nPresso i Negozi TIM\r\nPuoi attivare l''offerta su carta di credito, solo se sei già cliente TIM:\r\n\r\ndirettamente online cliccando sul tasto ATTIVA. Per scoprire i vantaggi e le modalità dell’attivazione online, consulta la Guida\r\nPresso i Negozi TIM\r\nPuoi attivare l’offerta con addebito su conto corrente bancario o postale (modalità disponibile a partire dall’11/01/2016):\r\n\r\nPresso i Negozi TIM', 'Quali sono i canali Digital che devo utilizzare per usufruire dell’offerta a condizioni agevolate?\r\nI canali di ricarica Digital da utilizzare per la fruizione dell’offerta scontata di 3€, ogni 4 settimane, sono:\r\nper le ricariche;\r\n\r\n- Ricarica allo sportello ATM\r\n- Ricariche telefoniche Home banking (utilizzando il conto corrente on line)\r\n- web carte di credito (ricarica direttamente dal sito della tua carta di credito)\r\n- call center carte di credito (ricarica direttamente al telefono con la tua carta di credito)\r\n- Ricaricare direttamente dal sito tim.it, young.it o MyTIM Mobile\r\n- SOS Ricarica\r\n- MAXXI SOS Ricarica\r\n- TI Ricarico di TIM\r\n- Paghetta', '<img src="images/planInfo/tim-young-music-digital.jpg" class="img-responsive">', '<div class="product-card wow fadeInUp animated"><div class="product-image"><a href="#smartlifeInfo&plans&6"><img src="images/plans/8.jpg"></a></div><div class="product-info"><h5>TIM Young & Music Digital</h5><h6>TIM Music without wasting GB. <span class="product-price">ONLINE ONLY 4 weeks for FREE! 9&#0128/4 weeks.</span></h6></div></div>\r\n	', 'mobile', 'voiceinternet', 'plans'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><a href="#smartlifeInfo&plans&1"><img src="images/plans/7.jpg"></a></div><div class="product-info"><h5>TIM Special Start</h5><h6>1000 mins up to 4GB. <span class="product-price">ONLINE ONLY 20&#0128/4 weeks</span></h6></div></div>\r\n	', 'mobile', 'voiceinternet', 'plans'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/5.jpg"></div><div class="product-info"><h5>Voice</h5><h6>Home line for unlimited calls. <span class="product-price">29&#0128/month</span></h6></div></div>\r\n	', 'fixedline', 'voiceonly', 'plans'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/9.jpg"></div><div class="product-info"><h5>TIM International Voice</h5><h6>Calls to your home country from 1 cent. <span class="product-price">9&#0128/4 weeks.</span></h6></div></div>', 'mobile', 'overseas', 'plans'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' <div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/plans/10.jpg"></div><div class="product-info"><h5>Choose your smartphone</h5><h6>It suits for you. <span class="product-price">Starting from 0&#0128/month.</span></h6></div></div>', 'mobile', 'smartphone', 'plans'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/entertainment/1.png"></div>\r\n<div class="product-info"><h5>TIM Vision</h5><h6>Cartoons, cinema, documentaries, film, TV Series and concerts on Demand</h6></div></div>', 'tv', 'NULL', 'entertainment'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/entertainment/2.png"></div>\r\n<div class="product-info"><h5>TIM Sky</h5><h6>Only our optic fibre and our fast ADSL bring you Sky. TIM Sky, the first offer with calls, no limits internet and gives your home all the Sky Entertainment</h6></div></div>', 'tv', 'NULL', 'entertainment'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/entertainment/3.png"></div>\r\n<div class="product-info"><h5>Netflix</h5><h6>TV Series and films from <span class="product-price">7.99&#0128/month</span>, including Tim Vision Decoder</h6></div></div>', 'tv', 'NULL', 'entertainment'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/entertainment/5.png"></div>\r\n<div class="product-info"><h5>Chromecast</h5><h6>Chromecast connects smartphones and tablets to your TV. Tim Vision included for 3 months!</h6></div></div>', 'tv', 'NULL', 'entertainment'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"> animated"><img src="images/entertainment/4.png"></div>\r\n<div class="product-info"><h5>TIM Premium Online</h5><h6>Football, Cinema, TV Series and Infinity for Tim customers, from 19&#0128/month for all 2016, where and when you prefer</h6></div></div>', 'seriea', 'NULL', 'entertainment'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/entertainment/6.jpg"></div>\r\n<div class="product-info"><h5>Beats Earphones "Solo2"</h5><h6>More powerful audio with increased Beats sound quality</h6></div></div>', 'music', 'NULL', 'entertainment'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/entertainment/8.jpg"></div>\r\n<div class="product-info"><h5>Nokia Speakers MD12</h5><h6>Listening to your favourite music is now easier than ever. Its ultra-compact design allows you to keep it inside of a pocket</h6></div></div>', 'music', 'NULL', 'entertainment'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/entertainment/9.jpg"></div>\r\n<div class="product-info"><h5>Electronic Newspapers</h5><h6>Read your favourite newspaper on your smartphone, tablet or PC</h6></div></div>', 'reading', 'NULL', 'entertainment'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class="product-card wow fadeInUp animated"><div class="product-image"><img src="images/entertainment/7.jpg"></div>\r\n<div class="product-info"><h5>Electronic Magazines</h5><h6>Trend, gossip, science, news. Which magazine would you like to read? Just click and watch on your smartphone, tablet or PC</h6></div></div>', 'reading', 'NULL', 'entertainment');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
