-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 26, 2016 alle 12:29
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
  `descrizione` text,
  `contenuto` text,
  `fordevices` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `assistanceservices`
--

INSERT INTO `assistanceservices` (`id`, `categoria`, `tipo`, `nome`, `intro`, `immagine`, `descrizione`, `contenuto`, `fordevices`) VALUES
(0, 'assistenzaTecnica', 'alls', 'Garanzia', ' <div class="product-card wow fadeInUp animated"><center><div class="product-image"><a href="#assistanceServicesInfo&assistenzaTecnica&0"><i class="fa fa-cogs" aria-hidden="true"></i></a>\r\n</div></center><div class="product-info"><h5>Garanzia TIM</h5><h6>Sfrutta la garanzia TIM per riparare un prodotto</h6></div></div>', '<img src="images/assistanceservices/bannertop.png" class="img-responsive">', '<h2>TIM ti offre due metodi di assistenza in garanzia:</h2>\r\n<p><b>SOSsmartphone</b> &egrave; il servizio di TIM per tutti i clienti, Ricaricabili o con Abbonamento, che permette di ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del proprio smartphone o tablet.\r\nGrazie al servizio SOSsmartphone potrai parlare con un esperto che ti fornir&agrave; tutta la consulenza e l&rsquo;assistenza &ldquo;premium&rdquo; di cui necessiti e che soprattutto sar&agrave; in grado di connettersi in remoto ed operare direttamente sul tuo dispositivo.</p>\r\n<p>I servizi che potrai ricevere con SOSsmartphone sono:\r\n<ul>\r\n    <li>supporto per trasferimento dati in caso di cambio telefono: esempio trasferimento rubrica, foto, sms;</li>\r\n    <li>consulenza nell&rsquo;utilizzo delle funzioni avanzate dello smartphone;</li>\r\n    <li>assistenza specialistica sulle configurazioni avanzate dello smartphone e integrazione nella tua rete domestica;</li>\r\n    <li>gestione e sincronizzazione dei tuoi contenuti multimediali;</li>\r\n    <li>supporto per garantire il massimo della sicurezza;</li>\r\n    <li>conservazione e protezione dei tuoi dati;</li>\r\n    <li>trasferimento di contenuti;</li>\r\n    <li>aggiornamento del tuo smartphone;</li>\r\n    <li>effettuazione check up</li>\r\n</ul></p>\r\n', '<script>\r\n						$(document).ready(function(){\r\n							$("#verifica-garanzia").submit(function(event){\r\n								var email = document.forms["verifica-garanzia"]["email-address"].value;\r\n								if (email==null || email=='''') {\r\n									alert("Errore: devi inserire un indirizzo email valido.");\r\n                                    event.preventDefault();\r\n								} else {\r\n									alert("Presto sarai ricontattato da un nostro operatore. Controlla la tua email "+email+"!");\r\n									event.preventDefault();\r\n								}\r\n							});\r\n						});\r\n					</script><center>\r\n                    <h2>Verifica garanzia</h2></center>\r\n                    <p style="text-align:justify">Altrimenti verifica la data del tuo scontrino fiscale e se quest''ultima rientra nell''arco temporale di due anni, lascia la tua email nel form qui sotto, sarai ricontattato il prima possibile e ti sar&agrave; spiegato passo dopo passo di come usufruire del servizio di Garanzia sui prodotti TIM.</p>\r\n					<form  name="verifica-garanzia" id="verifica-garanzia">\r\n						<div class="form-group">\r\n							<input type="text"  class="form-control" placeholder="Inserisci il tuo nome e cognome" value="">\r\n                            <input type="email" name="email-address" class="form-control" placeholder="Inserisci il tuo indirizzo email" value="">\r\n                            <input type="date" class="form-control" placeholder="Inserisci la data di acquisto" value="">\r\n							<input type="submit" class="btn btn-primary" value="Verifica">\r\n						</div>\r\n					</form>', '<h2>Vuoi usufruire del servizio di <b>Garanzia Estesa</b>?</h2>\r\n<h3>Controlla i devices abbinati</h3>\r\n<h3><a href="#deviceInfo&smartphones&1">Apple iPhone 6S</a></h3>\r\n<h3><a href="#deviceInfo&smartphones&2">Samsung Galaxy A5</a></h3>\r\n<h3><a href="#deviceInfo&smartphones&3">Samsung S7 Edge</a></h3>\r\n<h3><a href="#deviceInfo&tablets&13">Apple iPad Air 2</a></h3>\r\n<h3><a href="#deviceInfo&tablets&18">Samsung Galaxy Tab 2</a></h3>\r\n<h3>'),
(1, 'assistenzaTecnica', 'devices', 'Mail', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-envelope" aria-hidden="true"></i></div><div class="product-info"><h5>Mail</h5><h6>Configura la Webmail direttamente dal tuo device</h6></div></div>', NULL, NULL, NULL, NULL),
(2, 'assistenzaTecnica', 'adslefibra', 'ADSL e Fibra', '<div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-laptop" aria-hidden="true"></i></div><div class="product-info"><h5>ADSL &amp; Fibra</h5><h6>Richiedi una verifica sulla tua linea telefonica in caso di guasti</h6></div></div>', NULL, NULL, NULL, NULL),
(3, 'assistenzaTecnica', 'decoder', 'Decoder & Tv', '<div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-television" aria-hidden="true"></i></div><div class="product-info"><h5>Decoder &amp; TV</h5><h6>Risolvi eventuali problemi di visione contenuti</h6></div></div>', NULL, NULL, NULL, NULL),
(4, 'assistenzaTecnica', 'alls', 'Navigazione', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-paper-plane" aria-hidden="true"></i></div><div class="product-info"><h5>Navigazione</h5><h6>Problemi di navigazione? Controlla le impostazioni di rete</h6></div></div>', NULL, NULL, NULL, NULL),
(5, 'assistenzaTecnica', 'navigazione', 'Sicurezza PC', ' <div class="product-card wow fadeInUp animated"><div class="product-image"><i class="fa fa-user-plus" aria-hidden="true"></i></div><div class="product-info"><h5>Sicurezza PC</h5><h6>Software e tricks per una navigazione sicura</h6></div></div>', NULL, NULL, NULL, NULL),
(6, 'lineManagement', 'adslefibra', 'Copertura', ' <div class="product-card wow fadeInUp animated"><center><div class="product-image"><a href="#assistanceServicesInfo&lineManagement&6"><i class="fa fa-wifi" aria-hidden="true"></i></a>\r\n</div></center><div class="product-info"><h5>Copertura</h5><h6>Verifica se la tua zona &egrave; fornita dalla fibra TIM</h6></div></div>', '<img src="images/assistanceservices/bannertop_verifica.png" class="img-responsive">', '<h2>Tim offre ai nuovi clienti la possibilit&agrave; di navigare a 300 mb/s sfruttando tutto il potenziale della nuovissima fibra ottica.</h2>\r\n<p>Se &egrave; disponibile la copertura nella tua zona, procedi all''attivazione del servizio, in uno dei seguenti modi:\r\n<ul>\r\n    <li>richiedila online</li>\r\n    <li>recati presso un Negozio TIM</li>\r\n    <li>chiama il Servizio Clienti linea fissa 187</li>\r\n</ul>\r\n<br>Verifica la modalit&agrave; di attivazione consultando on line le varie offerte disponibili.\r\nI dati necessari sono:\r\n<ul>\r\n    <li>nome e cognome</li>\r\n    <li>codice fiscale</li>\r\n    <li>indirizzo dell''abitazione per cui richiedi l''installazione della linea</li>\r\n    <li>un recapito telefonico di cellulare</li>\r\n    <li>Indirizzo email (facoltativo)</li>\r\n</ul>\r\n<br>Il nostro personale tecnico ti contatter&agrave; quanto prima per concordare l&rsquo;appuntamento per l&rsquo;installazione dell&rsquo;impianto telefonico.</p>', '<script>\r\n        $(document).ready(function(){\r\n            $("#verifica-copertura").submit(function(event){\r\n                var indirizzo = document.forms["verifica-copertura"]["address"].value;\r\n                if (indirizzo==null || indirizzo=='''') {\r\n                    alert("Errore: devi inserire un indirizzo valido.");\r\n                    event.preventDefault();\r\n                } else {\r\n                    alert("La tua zona &egrave; coperta dalla fibra 300 Mega");\r\n                    event.preventDefault();\r\n                }\r\n            });\r\n        });\r\n    </script>\r\n<center><h2>Verifica Copertura</h2></center>\r\n    <p style="text-align:justify">Verifica in pochi passi se la tua zona &egrave; fornita del servizio Fibra, inserisci i tuoi dati nel form qui sotto:</p>\r\n    <form  name="verifica-copertura" id="verifica-copertura">\r\n        <div class="form-group">\r\n            <input type="text"  name="address" class="form-control" placeholder="Inserisci l''indirizzo" value="">\r\n            <input type="text" name="city" class="form-control" placeholder="Inserisci la tua citt&agrave;" value="">\r\n            <input type="number" class="form-control" placeholder="Inserisci il CAP" value="">\r\n            <input type="submit" class="btn btn-primary" value="Verifica">\r\n        </div>\r\n    </form>', NULL),
(7, 'lineManagement', 'alls', 'Intervento', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-cog" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Intervento</h5><h6>Richiedi l''intervento di un tecnico specializzato TIM</h6></div></div>', NULL, NULL, NULL, NULL),
(8, 'lineManagement', 'devices', 'Ricaricabile', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-mobile" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Ricaricabile</h5><h6>Gestisci i dati relativi alla tua sim TIM</h6></div></div>', NULL, NULL, NULL, NULL),
(9, 'lineManagement', 'adslefibra', 'Decoder & TV', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><i class="fa fa-plug" aria-hidden="true"></i>\r\n</div></center><div class="product-info"><h5>Decoder &amp; TV</h5><h6>Scopri come collegare pi&uacute; dispositivi sul tuo router TIM</h6></div></div>', NULL, NULL, NULL, NULL),
(10, 'promotions', 'devices', 'Estensione Garanzia', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><img src="images/assistanceservices/promo1.png" class="img-responsive">\r\n</div></center><div class="product-info"><h5>Estensione della Garanzia</h5><h6>Sei cliente TIM da pi&uacute; di due anni e hai appena acquistato un nuovo device? TIM ti premia regalandoti 6 mesi di garanzia in pi&uacute;!</h6></div></div>', NULL, NULL, NULL, NULL),
(11, 'promotions', 'adslefibra', 'Passaggio a Fibra', '<div class="product-card wow fadeInUp animated"><center><div class="product-image"><img src="images/assistanceservices/promo2.png" class="img-responsive">\r\n</div></center><div class="product-info"><h5>Passaggio a Fibra</h5><h6>Hai un modem ADSL a 7mb/s ma vorresti navigare pi&uacute; velocemente? Se acquisti un nuovo modem online, TIM ti offre la configurazione gratuita!</h6></div></div>', NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
