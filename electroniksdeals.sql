-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 15 déc. 2019 à 22:35
-- Version du serveur :  5.7.17
-- Version de PHP :  7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `electroniksdeals`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrator`
--

CREATE TABLE `administrator` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(6) NOT NULL,
  `Role` int(1) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `administrator`
--

INSERT INTO `administrator` (`email`, `password`, `id`, `Role`) VALUES
('mathieuxdesy@gmail.com', '$2y$10$hUrLqhanQaj9Gft852SsPO2Wl/mqDHlg1beITn1QA1odd23hJzkSm', 3424, 2),
('1757734@cegepmontpetit.ca', '$2y$10$hUrLqhanQaj9Gft852SsPO2Wl/mqDHlg1beITn1QA1odd23hJzkSm', 3421, 2);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(3) NOT NULL,
  `emailuser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `idcommentaire` int(15) NOT NULL,
  `Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `emailuser`, `message`, `idcommentaire`, `Date`) VALUES
(5, 'cursus.et.eros@Lorem.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 51861, NULL),
(5, 'ac@arcu.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 23476, NULL),
(5, 'consequat@tortorNunc.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 683808, NULL),
(4, 'Donec@enim.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 370494, NULL),
(1, 'velit@eget.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 667387, NULL),
(1, 'amet.risus.Donec@Donecporttitor.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 20985, NULL),
(5, 'lorem@justo.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 188591, NULL),
(4, 'Quisque.varius@laciniamattis.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 774675, NULL),
(1, 'ante.bibendum.ullamcorper@rutrum.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 477004, NULL),
(1, 'luctus.ipsum.leo@nibhPhasellusnulla.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 72216, NULL),
(2, 'accumsan.sed@adipiscingnonluctus.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 764938, NULL),
(3, 'velit.Cras.lorem@felisNullatempor.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 706194, NULL),
(1, 'gravida.Aliquam@lobortistellus.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 307658, NULL),
(4, 'orci@elit.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 150207, NULL),
(5, 'arcu@Sed.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 82085, NULL),
(2, 'elementum.purus.accumsan@malesuadaaugueut.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 552873, NULL),
(1, 'lobortis@dui.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 349476, NULL),
(1, 'sem@ornarelectus.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 51293, NULL),
(2, 'pede.et.risus@aliquamenim.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 139405, NULL),
(1, 'posuere@sedtortorInteger.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 838714, NULL),
(4, 'fringilla@pulvinararcu.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 952347, NULL),
(5, 'a@malesuadafamesac.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 434184, NULL),
(5, 'id.risus@lorem.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 307806, NULL),
(4, 'Donec@risusDonecegestas.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 205972, NULL),
(2, 'arcu.Nunc@gravidasit.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 264845, NULL),
(3, 'Curabitur.vel@molestie.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 710316, NULL),
(1, 'felis.orci.adipiscing@euligula.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 643540, NULL),
(2, 'in@aliquet.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 112314, NULL),
(4, 'Morbi.vehicula.Pellentesque@velitQuisquevarius.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 496569, NULL),
(1, 'eget.laoreet@auguescelerisque.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 983823, NULL),
(1, 'faucibus.ut.nulla@aliquetodioEtiam.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 226762, NULL),
(2, 'lorem.luctus.ut@cubiliaCurae.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 285954, NULL),
(1, 'molestie.tortor@iaculisaliquet.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 267276, NULL),
(4, 'commodo.ipsum@aliquetPhasellusfermentum.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 407345, NULL),
(4, 'eu.accumsan.sed@Etiamligula.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 54419, NULL),
(5, 'sit.amet.faucibus@tinciduntvehicula.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 802007, NULL),
(4, 'Aliquam.erat@Quisque.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 957324, NULL),
(4, 'dignissim.magna.a@nibh.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 143157, NULL),
(1, 'at.egestas@egestas.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 479037, NULL),
(3, 'tempor.augue.ac@id.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 396492, NULL),
(2, 'ornare@adipiscingligulaAenean.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 752517, NULL),
(3, 'tristique@Mauriseu.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 218312, NULL),
(2, 'erat.neque@velturpis.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 171647, NULL),
(1, 'ipsum@ligulaNullamfeugiat.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 757583, NULL),
(5, 'placerat@antebibendumullamcorper.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 849132, NULL),
(1, 'velit@eunequepellentesque.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 114783, NULL),
(1, 'tempor.erat@viverra.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 588771, NULL),
(4, 'eros.Nam.consequat@Pellentesquehabitant.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 414954, NULL),
(5, 'sit@orciluctuset.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 392165, NULL),
(5, 'tortor@magnis.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 426745, NULL),
(2, 'Suspendisse.commodo.tincidunt@pulvinararcuet.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 917256, NULL),
(4, 'Nullam.ut@et.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 663436, NULL),
(1, 'turpis@urnanecluctus.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 161830, NULL),
(2, 'lorem@Vestibulum.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 838888, NULL),
(2, 'velit@fermentummetus.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 521556, NULL),
(1, 'massa@loremluctusut.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 892120, NULL),
(3, 'Quisque.imperdiet@lectusa.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 798935, NULL),
(4, 'Nunc.mauris@magnaseddui.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 39342, NULL),
(2, 'fermentum.risus.at@massalobortis.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 139948, NULL),
(4, 'ac.turpis@sedconsequat.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 590415, NULL),
(3, 'Vivamus.nisi@fermentumvelmauris.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 845643, NULL),
(2, 'orci.tincidunt.adipiscing@Craslorem.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 787883, NULL),
(2, 'orci.Ut.semper@parturientmontes.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 884778, NULL),
(1, 'id@fringilla.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 915459, NULL),
(4, 'Integer@euturpis.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 584060, NULL),
(3, 'vel.vulputate.eu@lobortis.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 988364, NULL),
(4, 'euismod@malesuadafamesac.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 895007, NULL),
(4, 'sed.dui.Fusce@Duiscursusdiam.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 730536, NULL),
(3, 'lacus.varius.et@dignissim.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 501405, NULL),
(5, 'orci.luctus@velnisl.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 325036, NULL),
(3, 'eu.enim@Naminterdum.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 457409, NULL),
(1, 'augue.malesuada@ametluctus.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 342668, NULL),
(3, 'pede.ac@viverraDonec.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 18086, NULL),
(2, 'convallis.ligula@eratsemperrutrum.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 13502, NULL),
(4, 'sit.amet@Etiambibendumfermentum.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 718702, NULL),
(2, 'lectus.sit@at.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 934572, NULL),
(5, 'parturient.montes@sapienCras.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 49182, NULL),
(5, 'quis@Aliquamadipiscinglobortis.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 667786, NULL),
(3, 'pede@tristiquesenectus.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 406750, NULL),
(5, 'bibendum.ullamcorper@iaculislacus.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 328219, NULL),
(4, 'tincidunt.neque@elitCurabitursed.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 765922, NULL),
(2, 'enim@sit.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 258712, NULL),
(5, 'elit.elit@euismodindolor.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 322768, NULL),
(1, 'quam.quis.diam@accumsan.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 247861, NULL),
(5, 'eu.turpis.Nulla@vitaesodales.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 504230, NULL),
(5, 'arcu.Vestibulum@Inat.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 841037, NULL),
(1, 'mi.Aliquam.gravida@aliquet.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 553744, NULL),
(1, 'velit@elitAliquam.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 60602, NULL),
(5, 'Curabitur.massa@suscipitnonummy.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 879894, NULL),
(5, 'Donec.porttitor@etlacinia.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 769801, NULL),
(2, 'semper@Inscelerisque.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 384732, NULL),
(4, 'pharetra.sed@Nullamlobortisquam.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 566610, NULL),
(5, 'id.ante.dictum@lobortisrisusIn.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 903205, NULL),
(4, 'sit@ipsum.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 793574, NULL),
(4, 'luctus.et.ultrices@lacusQuisquepurus.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 846362, NULL),
(5, 'morbi.tristique.senectus@orciconsectetuereuismod.o', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 528944, NULL),
(3, 'sollicitudin@dolor.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 80497, NULL),
(1, 'mauris@est.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 821159, NULL),
(1, 'interdum.feugiat@velit.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 539458, NULL),
(2, 'posuere.cubilia@sodalespurus.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 42394, NULL),
(1, 'augue@vestibulumMaurismagna.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 33788, NULL),
(2, 'id.mollis.nec@risusatfringilla.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 370042, NULL),
(5, 'lorem.auctor@consequatnecmollis.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 282629, NULL),
(5, 'Phasellus.dapibus.quam@porttitortellusnon.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 801312, NULL),
(3, 'sapien@sempereratin.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 12878, NULL),
(4, 'Sed.eu@In.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 768248, NULL),
(5, 'mollis.nec@vulputateposuerevulputate.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 246748, NULL),
(5, 'porttitor@aceleifend.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 852672, NULL),
(3, 'Quisque.fringilla.euismod@loremauctorquis.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 594150, NULL),
(1, 'dignissim@acrisus.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 104573, NULL),
(3, 'justo@urna.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 115287, NULL),
(1, 'lectus.pede@lectusquis.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 291839, NULL),
(2, 'ullamcorper@eget.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 408921, NULL),
(4, 'vulputate@lobortisnisi.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 590728, NULL),
(2, 'eget@In.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 375158, NULL),
(5, 'erat.Etiam@ullamcorpervelitin.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 967357, NULL),
(2, 'auctor.vitae@adipiscingenim.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 142077, NULL),
(1, 'ultricies.adipiscing@mattisvelit.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 33132, NULL),
(4, 'orci.Ut.semper@sem.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 930704, NULL),
(2, 'Aenean.egestas.hendrerit@Etiam.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 670426, NULL),
(3, 'mollis.non.cursus@diamdictumsapien.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 594081, NULL),
(4, 'mus.Proin@laoreetlectusquis.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 897604, NULL),
(2, 'amet.metus.Aliquam@libero.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 581533, NULL),
(3, 'Suspendisse@nunc.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 960957, NULL),
(4, 'dignissim.magna.a@Namtempordiam.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 49387, NULL),
(1, 'mus@vitaerisusDuis.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 935700, NULL),
(5, 'non@adipiscingenim.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 701985, NULL),
(2, 'adipiscing.non.luctus@Phasellusfermentumconvallis.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 186651, NULL),
(3, 'mauris.ut.mi@magnaNam.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 779881, NULL),
(1, 'montes.nascetur@odio.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 536549, NULL),
(1, 'dapibus.rutrum@Craseu.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 977406, NULL),
(3, 'magna.Ut@dictum.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 514546, NULL),
(1, 'Nulla@ullamcorperDuis.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 678413, NULL),
(1, 'sem.eget@Curabiturut.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 412035, NULL),
(3, 'mattis.Integer.eu@penatibusetmagnis.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 477334, NULL),
(3, 'quam.vel.sapien@risusDonecegestas.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 706324, NULL),
(1, 'odio.Phasellus@orciconsectetuer.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 311385, NULL),
(5, 'lacinia.vitae@lectusjustoeu.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 35032, NULL),
(1, 'et.ipsum@Fuscefermentumfermentum.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 116060, NULL),
(2, 'iaculis.odio@Duis.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 262135, NULL),
(3, 'consectetuer@amagna.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 317074, NULL),
(4, 'Integer@diamdictum.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 295304, NULL),
(2, 'sem@blanditat.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 702638, NULL),
(4, 'et.ultrices@ut.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 727657, NULL),
(1, 'at@erosNamconsequat.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 224804, NULL),
(4, 'vitae.posuere.at@lorem.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 545455, NULL),
(4, 'porttitor.eros.nec@tristiquesenectuset.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 575221, NULL),
(3, 'vulputate.risus@acsemut.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 179212, NULL),
(1, 'mollis.vitae@senectus.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 211538, NULL),
(2, 'nec.tempus@id.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 880558, NULL),
(4, 'dignissim.magna@sedpedeCum.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 148042, NULL),
(4, 'amet.consectetuer.adipiscing@utsemNulla.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 489403, NULL),
(1, 'diam.luctus@erat.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 108247, NULL),
(5, 'magna.malesuada@senectus.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 896489, NULL),
(3, 'mi@Vivamus.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 927605, NULL),
(4, 'est.arcu@lectusjustoeu.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 828134, NULL),
(5, 'adipiscing.lobortis@semperrutrum.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 691685, NULL),
(4, 'sodales.at@tincidunt.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 324910, NULL),
(5, 'Curabitur@ridiculus.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 169452, NULL),
(3, 'Aenean.sed@nibh.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 618257, NULL),
(2, 'magna@Donec.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 794691, NULL),
(3, 'Nullam@Nunc.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 393662, NULL),
(1, 'magnis.dis.parturient@indolor.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 816858, NULL),
(3, 'Donec.est@elita.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 49553, NULL),
(4, 'egestas@feugiatnecdiam.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 962633, NULL),
(4, 'sem.vitae.aliquam@ultricessitamet.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 231494, NULL),
(4, 'Nulla@molestiearcu.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 575123, NULL),
(4, 'cubilia.Curae@eu.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 725948, NULL),
(3, 'Proin.eget@infaucibusorci.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 863463, NULL),
(4, 'ornare@rutrum.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 520931, NULL),
(4, 'bibendum.Donec.felis@semsempererat.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 65786, NULL),
(4, 'Nunc@vestibulumlorem.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 542150, NULL),
(3, 'Donec@massalobortis.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 271374, NULL),
(4, 'parturient.montes@gravidaPraesenteu.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 910622, NULL),
(3, 'ante.bibendum.ullamcorper@iaculisquis.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 265254, NULL),
(3, 'neque.sed@necdiam.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 149981, NULL),
(3, 'In@luctus.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 332492, NULL),
(3, 'sem@commodo.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 894772, NULL),
(3, 'molestie.in@NullafacilisiSed.edu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 586645, NULL),
(3, 'Nam.interdum.enim@uteros.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 622179, NULL),
(3, 'ipsum@arcuac.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 181427, NULL),
(8, 'pharetra.nibh.Aliquam@congueaaliquet.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 838078, NULL),
(8, 'sed.turpis.nec@justofaucibuslectus.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 236034, NULL),
(8, 'amet.nulla@posuerecubilia.org', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 663379, NULL),
(8, 'ornare@rutrumFuscedolor.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 652288, NULL),
(8, 'tristique@Donec.net', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 512886, NULL),
(8, 'nisi.magna@Integer.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 896568, NULL),
(8, 'gravida.mauris@Nuncsed.co.uk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 121356, NULL),
(8, 'Pellentesque.habitant@duinec.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 661472, NULL),
(5, 'yeet@yeeeter.com', 'wat', 988392, '2019-12-15 06:25:33'),
(8, 'urna.justo@laciniaat.ca', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 774752, NULL),
(8, 'orci@feugiat.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 575073, NULL),
(0, 'yeet@yeeeter.com', 'dfkjvdkvhd', 988365, '2019-11-30 05:18:48'),
(0, 'yeet@yeeeter.com', 'defksujhfdsieudfhs', 988366, '2019-11-30 05:20:52'),
(0, 'yeet@yeeeter.com', 'fdvfdkljgvdfl', 988367, '2019-11-30 05:22:35'),
(0, 'yeet@yeeeter.com', 'jfkhskjfhs', 988368, '2019-11-30 05:23:40'),
(0, 'yeet@yeeeter.com', 'fdlkjdkjfhsrdf', 988369, '2019-11-30 05:24:30'),
(0, 'yeet@yeeeter.com', 'dfishfius', 988370, '2019-11-30 05:26:39'),
(0, 'yeet@yeeeter.com', 'dsksdnlskjsdo', 988371, '2019-11-30 05:28:04'),
(5, 'yeet@yeeeter.com', 'ello', 988391, '2019-12-15 06:25:15'),
(5, 'yeet@yeeeter.com', '', 988390, '2019-12-15 06:25:00'),
(5, 'yeet@yeeeter.com', '', 988389, '2019-12-15 06:24:23'),
(5, 'yeet@yeeeter.com', 'woof', 988388, '2019-12-06 22:50:52'),
(5, 'yeet@yeeeter.com', 'woof', 988387, '2019-12-06 22:50:39'),
(5, 'yeet@yeeeter.com', 'bfjryhfgeuf', 988386, '2019-12-02 14:48:39'),
(5, 'yeet@yeeeter.com', 'yeet', 988382, '2019-12-02 14:43:54');

-- --------------------------------------------------------

--
-- Structure de la table `itemtable`
--

CREATE TABLE `itemtable` (
  `itemid` int(11) NOT NULL,
  `name` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` double DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `estEnVedette` tinyint(1) NOT NULL DEFAULT '0',
  `image` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `itemtable`
--

INSERT INTO `itemtable` (`itemid`, `name`, `quantite`, `prix`, `description`, `estEnVedette`, `image`, `date`) VALUES
(1, 'graphic', 10, 499.98, 'Les cartes graphiques GeForce® GTX 1660 Ti et 1660 mettent à votre disposition les performances graphiques révolutionnaires de l’architecture NVIDIA Turing™. Grâce à leurs performances foudroyantes rivalisant avec celles de la GeForce GTX 1070*, elles vous offriront un rendu graphique ultra-rapide dans les meilleurs jeux du moment, y compris les plus récents.\r\n', 1, 'https://www.primeabgb.com/wp-content/uploads/2019/04/INNO3D-GeForce-GTX-1660-Twin-X2-Gaming-Graphics-Card-3.jpg', '2019-11-06'),
(2, 'display', 15, 499.99, 'Dimensions physiques avec support (L x H x P) : 52,0 x 36,8 x 22,1 cm. Dimensions physiques sans support (L x H x P) : 56 x 31 x 3 cm.\r\n\r\n', 1, 'https://images-na.ssl-images-amazon.com/images/I/81PQfy%2B307L._SL1500_.jpg', '2019-11-03'),
(3, 'PC', 30, 2399.98, 'Cooler Master Cosmos II Ultra Tower Boîtier d\'ordinateur avec corps en aluminium et acier RC-12-KKN1 (Discontinué par le fabricant) Pro RGB Mid Tower\r\n\r\n', 1, 'http://avadirect-freedomusainc1.netdna-ssl.com/pictures/750/Intel_Z390_Custom_Gaming_3.png', '2019-11-02'),
(4, 'saucisse', 798, 2.99, 'Viandes séparées mécaniquement (poulet et/ou porc et/ou dinde), porc et/ou boeuf; eau, farine de blé, amidon de maïs modifié,sel, lactate de potassium, protéines végétales hydrolysées (soya), épices, moutarde moulue, diacétate de sodium, érythorbate de sodium, nitrite de sodium, saveur de fumée, substances laitières, extraits secs de glucose, phosphate de sodium, fumée. Contient: Blé, soya, moutarde, lait.\r\n\r\n', 1, 'https://www.mayrand.ca/globalassets/mayrand/catalog-mayrand/charcuterie/24825_saucisse-fumee_1kg_lafleur.jpg', '2019-11-07'),
(378456, 'razer keyboard', 33, 169.98, 'Le nouveau Razer opto-mechanical commutateur d\'actionnement – à la vitesse de la lumière\r\nOptique d\'actionnement – maximiser APM avec une entrée rapide\r\nClé de barre stabilisatrice – pour cohérente et équilibrée uniques\r\nCadran numérique multifonction – avec commandes multimédia dédiées\r\nhybrides bord de mémoire et stockage dans le Cloud – Paramètres personnalisés d\'accès n\'importe où', 0, 'https://images-na.ssl-images-amazon.com/images/I/61AErgJgMOL._SX679_.jpg', '2019-11-22'),
(23328, 'razer mouse', 70, 58.99, 'Vrai, 16 000 DPI capteur optique – pour rapide et précise les gestes\r\nExtended Chroma zones d\'éclairage – pour une personnalisation avec un maximum de visibilité\r\nmulti-primé Razer souris mécanique commutateurs – Durable jusqu\'à 50 millions de clics\r\nErgonomie avec amélioré les poignées latérales\r\n9 boutons programmables', 0, 'https://images-na.ssl-images-amazon.com/images/I/61pz6N01NJL._SY879_.jpg', '2019-11-18'),
(11881, 'benq 144hz', 99, 339.99, 'Contraste : 1000 : 1 statique\r\nContraste dynamique ratio12,000,000 : 1\r\nÉcran size24 \"(609.6 mm)\r\nAspect ratio16 : 9\r\nDe 1920 x 1080\r\nactualiser rate144 Hz\r\nSurface d\'affichage (H – V) 53,1 x 29,9 cm (531.36 x 298.89 mm)\r\nPixel pitch (H x V) 0.276 x 0.276 mm\r\nbrightness350 CD/mâ²', 0, 'https://images-na.ssl-images-amazon.com/images/I/61xwM6h9vBL._SL1000_.jpg', '2019-11-06'),
(8723983, 'corsair ram', 89, 127.99, 'Kit de mémoire de bureau DDR4 DRAM 3000 MHz C15 Corsair Vengeance LPX 16 Go (2x8 Go) - noir (CMK16GX4M2B3000C15)', 0, 'https://images-na.ssl-images-amazon.com/images/I/81mSADb0qhL._SL1500_.jpg', '2019-11-14'),
(99119, 'intel i9', 5, 789.99, '8 Cœurs/16 filetages (jusqu \"à 5 GHz) 16 Mo de mémoire cache\r\nCapable d\'overclocking\r\nLa technologie Intel Hyper-Threading pour 16 voies multitâche', 0, 'https://images-na.ssl-images-amazon.com/images/I/71RsweT83eL._SL1500_.jpg', '2019-11-10');

-- --------------------------------------------------------

--
-- Structure de la table `questionpost`
--

CREATE TABLE `questionpost` (
  `id` int(6) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nbCommentaire` int(11) NOT NULL DEFAULT '0',
  `emailuser` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `questionpost`
--

INSERT INTO `questionpost` (`id`, `name`, `nbCommentaire`, `emailuser`) VALUES
(5, 'Quelle est la couleur du ciel?', 9, 'mathieuxdesy@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(6) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `groupeAge` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Role` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `usertable`
--

INSERT INTO `usertable` (`id`, `email`, `password`, `nom`, `prenom`, `genre`, `groupeAge`, `Role`) VALUES
(4970, 'dapibus@egestas.org', 'PBS75EES7QD', 'Paula', 'Leach', '1', '26', 1),
(7227, 'elit.elit@felis.org', 'VRI60XOH2ZR', 'Melvin', 'Oneil', '0', '58', 1),
(3249, 'Suspendisse@Loremipsum.co.uk', 'JML74ATA7LR', 'Oren', 'Farmer', '0', '58', 1),
(1177, 'eu.accumsan@habitantmorbi.ca', 'FMT51WOM7NV', 'Xaviera', 'Kaufman', '0', '43', 1),
(1901, 'libero.Morbi.accumsan@Donecfelisorci.com', 'CNR75SQN1GB', 'Yen', 'Bright', '0', '25', 1),
(1043, 'ornare@Vestibulum.com', 'DKT41TZB5NF', 'Bertha', 'Ellis', '1', '63', 1),
(9512, 'ac.feugiat@sitamet.edu', 'WUH95AHN5KW', 'Alfreda', 'Ratliff', '0', '30', 1),
(5327, 'Donec.dignissim.magna@velit.net', 'KLE62QQI6FK', 'Gail', 'Forbes', '0', '95', 1),
(1609, 'dis.parturient.montes@Pellentesqueutipsum.edu', 'TYN10GLR5AK', 'Gisela', 'Justice', '0', '52', 1),
(4439, 'non@inmolestietortor.com', 'VTE04SSL5TV', 'Rashad', 'Head', '1', '75', 1),
(3300, 'erat.in.consectetuer@Donec.net', 'GFX59JAI7XZ', 'Xena', 'Reeves', '1', '34', 1),
(414, 'augue@necmauris.co.uk', 'QXW54ACY1CC', 'Kane', 'Noel', '1', '97', 1),
(418, 'a@Fusce.ca', 'STE16DGT1TJ', 'Baxter', 'Cotton', '1', '19', 1),
(4487, 'velit@mi.edu', 'TRP16SNH5SN', 'Tallulah', 'Schroeder', '1', '52', 1),
(4660, 'dignissim.pharetra@In.net', 'EFS18YRX2BL', 'Illiana', 'May', '0', '95', 1),
(7891, 'semper.auctor.Mauris@luctusutpellentesque.org', 'ULC26XNG8TB', 'Wang', 'Thornton', '1', '83', 1),
(8201, 'tincidunt.nibh.Phasellus@Quisqueac.edu', 'TKI08XMJ4BC', 'Jennifer', 'Wilkinson', '0', '56', 1),
(5358, 'urna@Proinvelarcu.co.uk', 'NZQ58HPT5BU', 'Talon', 'Oneill', '1', '90', 1),
(2807, 'aliquam@orcitinciduntadipiscing.net', 'WVW35CUZ8MM', 'Reuben', 'Ray', '0', '54', 1),
(4632, 'In.tincidunt.congue@blandit.com', 'OQX61GJT0SD', 'Thomas', 'Peck', '0', '25', 1),
(4682, 'pede.Nunc.sed@luctus.org', 'SLQ19CZJ7GS', 'Dustin', 'Jackson', '1', '73', 1),
(6384, 'enim.mi.tempor@risusDuisa.co.uk', 'VUP91GUV0DO', 'Suki', 'Schneider', '1', '53', 1),
(9226, 'sit.amet@Sedcongueelit.co.uk', 'SKT81WCI1AT', 'Hadley', 'Cain', '1', '94', 1),
(369, 'tortor.dictum@mieleifend.edu', 'ZWO32AQY0LJ', 'Shad', 'Leblanc', '1', '82', 1),
(1977, 'non@laoreetposuereenim.edu', 'PST40GPY5HW', 'Daria', 'Moreno', '0', '65', 1),
(3618, 'justo@aliquetmolestietellus.co.uk', 'KFI85LJX4ZI', 'Lucian', 'Stone', '1', '61', 1),
(5408, 'convallis.ante.lectus@aliquetnecimperdiet.com', 'PCI37XIY3UQ', 'Sophia', 'Hayes', '1', '94', 1),
(1656, 'eget.massa.Suspendisse@quis.net', 'DAY43EYV3JI', 'Ava', 'Rasmussen', '1', '32', 1),
(8119, 'Morbi.neque@in.net', 'PDN02YTT5YJ', 'Jamal', 'Lopez', '0', '84', 1),
(5041, 'libero@Donecsollicitudinadipiscing.co.uk', 'JWO51TFT8IP', 'Neve', 'Moreno', '0', '67', 1),
(8294, 'rhoncus.id.mollis@aptenttaciti.net', 'RBG76YVL7NL', 'Fuller', 'Hood', '0', '34', 1),
(3077, 'magna.Suspendisse@estvitaesodales.co.uk', 'RSM48AWQ8QX', 'Robert', 'Curtis', '0', '27', 1),
(5923, 'nisi.a@sedorci.edu', 'JIP95IDX9IQ', 'Aaron', 'Jenkins', '1', '21', 1),
(6919, 'Donec@nonummyut.ca', 'WFT78XFB8LJ', 'Preston', 'Blanchard', '1', '33', 1),
(8985, 'magnis.dis.parturient@orciin.org', 'DWQ83APQ6OM', 'Ayanna', 'Daugherty', '1', '87', 1),
(2469, 'nunc.ullamcorper@egetvolutpatornare.co.uk', 'ALR91DHP5PV', 'Hop', 'Lynn', '0', '63', 1),
(4477, 'pede@Mauriseuturpis.net', 'MTJ94FYL6KH', 'Vance', 'Olson', '1', '89', 1),
(2046, 'et.tristique@ametrisus.com', 'UVA66OUP4NE', 'Leo', 'Walsh', '1', '20', 1),
(9066, 'sed.sem.egestas@ullamcorpervelitin.edu', 'BWJ24EEW0RI', 'Michael', 'Riggs', '1', '71', 1),
(7442, 'consectetuer@cursuspurus.edu', 'ZDH00ZYZ7ZF', 'Imogene', 'Zimmerman', '1', '38', 1),
(1418, 'eleifend.nunc@Donecelementum.net', 'CCW28HYP4SS', 'Ishmael', 'Evans', '0', '23', 1),
(2684, 'massa.rutrum.magna@a.ca', 'BYB85TAH6GH', 'Murphy', 'Rose', '0', '85', 1),
(2572, 'est@gravida.edu', 'SIV37UKU7CO', 'Regan', 'Manning', '0', '55', 1),
(752, 'Fusce.mi@Nulla.org', 'CBJ80DRV2VY', 'Fritz', 'Roth', '0', '35', 1),
(841, 'libero.Integer.in@mollis.com', 'CIU99PXR2LX', 'Leigh', 'Stewart', '1', '70', 1),
(9035, 'Mauris@malesuada.ca', 'WGH78GSC6BQ', 'Carlos', 'Preston', '1', '36', 1),
(4244, 'mauris@Mauris.co.uk', 'AHU07EAS8KF', 'Kyle', 'Leonard', '1', '44', 1),
(75, 'mattis.Cras.eget@velturpis.net', 'DSI29DHB7DW', 'Driscoll', 'Kent', '1', '75', 1),
(757, 'neque.vitae@non.com', 'IKL84EAE7OJ', 'Paula', 'Mcdaniel', '1', '18', 1),
(2940, 'Sed.molestie.Sed@auctor.co.uk', 'AFB90FQN0JG', 'Yael', 'Mann', '0', '91', 1),
(5366, 'id.ante@a.com', 'ZXX28SGH0IO', 'Martha', 'White', '0', '73', 1),
(3052, 'nec@accumsanconvallis.org', 'CYQ34YJA7AQ', 'Beck', 'Snyder', '0', '44', 1),
(4563, 'nunc.sit.amet@tellus.net', 'GEJ14BKE4XC', 'Hedley', 'Burch', '1', '39', 1),
(5436, 'facilisis.non@a.org', 'MOR19CBR5US', 'Marsden', 'Boyle', '0', '43', 1),
(3250, 'eget@massa.net', 'LBX84UER0WT', 'Serina', 'Erickson', '1', '25', 1),
(3336, 'Cras.lorem@egestas.net', 'RXZ83XIM6UK', 'Kylee', 'Potter', '1', '91', 1),
(7791, 'fringilla.purus@diam.ca', 'GBF68WEC4SJ', 'Vanna', 'Michael', '0', '70', 1),
(357, 'quis.lectus.Nullam@nonluctus.edu', 'ZDL57UIO2MR', 'Julian', 'Bowers', '0', '17', 1),
(447, 'pellentesque@acipsum.co.uk', 'GPZ41CNI4VN', 'Zachary', 'Bray', '1', '93', 1),
(8699, 'magna.malesuada@nullaDonec.net', 'YYF16GZW5ER', 'Karyn', 'Stuart', '1', '84', 1),
(7271, 'tristique@placeratorci.com', 'NAY41CYP5MR', 'Madison', 'Good', '0', '31', 1),
(6594, 'Suspendisse.sagittis.Nullam@sagittisfelis.ca', 'WPX41STB6GJ', 'Hunter', 'Shepard', '1', '74', 1),
(2522, 'lacus.Quisque.imperdiet@senectusetnetus.net', 'FAF89BLX5ZJ', 'Maya', 'Rollins', '1', '39', 1),
(7120, 'libero.Proin@magnaSuspendissetristique.ca', 'JMZ20GHE4YZ', 'Fulton', 'Reynolds', '0', '68', 1),
(6263, 'Phasellus.elit.pede@velpedeblandit.edu', 'KEQ39IKC1XP', 'Ginger', 'Hatfield', '1', '56', 1),
(8600, 'condimentum@Cum.edu', 'JAI79CSM0LM', 'Sawyer', 'Bowman', '0', '60', 1),
(452, 'lorem.ut@feugiattelluslorem.org', 'SQC43JTY5RT', 'Naida', 'Brooks', '1', '82', 1),
(7492, 'lacinia.mattis.Integer@sitamet.com', 'MMC14DGL3MD', 'Demetrius', 'Hines', '0', '28', 1),
(9018, 'dictum@purus.org', 'UJI76OFE9TQ', 'Carson', 'Bartlett', '1', '46', 1),
(2191, 'ipsum.leo.elementum@sollicitudinorci.com', 'TKF79DDN1NH', 'Jenette', 'Jennings', '1', '49', 1),
(2651, 'facilisis.vitae@laciniaSed.org', 'URG14RMP7CY', 'Kermit', 'Mccarty', '1', '78', 1),
(2175, 'ultricies.adipiscing.enim@eteuismod.co.uk', 'DTJ40VDM1EZ', 'Mufutau', 'Clemons', '1', '47', 1),
(3664, 'eu@volutpatNullafacilisis.org', 'BNU78GXX0EH', 'Kerry', 'Hardin', '0', '97', 1),
(5426, 'fringilla@ultricesiaculisodio.co.uk', 'QFI21TPD8PU', 'Breanna', 'Dean', '0', '45', 1),
(7031, 'nulla@Vestibulumanteipsum.edu', 'PRO84BHY9HQ', 'Oleg', 'Reynolds', '1', '25', 1),
(339, 'semper.egestas.urna@turpisAliquamadipiscing.ca', 'VFH71OJU6YA', 'Pearl', 'Deleon', '1', '90', 1),
(2062, 'ipsum.ac.mi@antebibendum.ca', 'TIM46KJN1KL', 'Britanney', 'Charles', '0', '85', 1),
(215, 'elit.pede@liberoestcongue.net', 'AIT08VTG1JE', 'Rashad', 'Glenn', '0', '19', 1),
(9217, 'ultrices.a.auctor@penatibus.co.uk', 'UGN59SYN6QM', 'Ria', 'Dale', '0', '23', 1),
(6939, 'scelerisque.mollis@apurus.net', 'MAZ03FBN7TG', 'Marsden', 'Padilla', '0', '73', 1),
(5175, 'vitae@aliquam.org', 'LUX59SST7EU', 'Brody', 'Cochran', '1', '18', 1),
(8388, 'sem.ut@scelerisque.ca', 'LOS13EGJ5LX', 'Gray', 'Holloway', '0', '49', 1),
(440, 'urna.Ut.tincidunt@scelerisquesed.com', 'SQO02SJZ2VH', 'Glenna', 'Colon', '1', '85', 1),
(8947, 'cursus.luctus.ipsum@mauris.org', 'AJY33ZNN3IY', 'Latifah', 'Schmidt', '0', '77', 1),
(4175, 'Cras.pellentesque@velit.co.uk', 'NMZ26KTH4DS', 'Igor', 'Mcmillan', '1', '58', 1),
(6838, 'inceptos.hymenaeos.Mauris@non.com', 'VDZ80UPO3DW', 'Sara', 'Griffith', '0', '56', 1),
(9616, 'auctor@Crasdictum.edu', 'LZU60LSA6FS', 'Mufutau', 'Lamb', '0', '65', 1),
(2513, 'Vestibulum@in.com', 'SLZ91UEP9XV', 'Hiram', 'Meyer', '0', '39', 1),
(2914, 'mi.tempor.lorem@Duiscursus.com', 'IAT12QXU3VX', 'Kyle', 'Dotson', '1', '68', 1),
(8485, 'mauris@eu.edu', 'QRA71KBC8SZ', 'Timon', 'Mcclure', '1', '88', 1),
(6993, 'est.ac.mattis@mus.co.uk', 'UKD56BZB8OL', 'Renee', 'Mckinney', '0', '49', 1),
(8196, 'Integer.vitae.nibh@egetipsum.com', 'BUJ40YOH1XG', 'Eden', 'Maxwell', '1', '18', 1),
(2276, 'ipsum.cursus@acmattis.edu', 'TIV62ZAJ4LP', 'Armand', 'Hebert', '1', '44', 1),
(5398, 'placerat@morbitristiquesenectus.org', 'DNO73CSN1LW', 'Rigel', 'Nguyen', '1', '56', 1),
(8467, 'sed.libero@aliquet.org', 'DJZ44CPP7EJ', 'Tatyana', 'Gray', '1', '54', 1),
(4997, 'mi.eleifend.egestas@tinciduntnuncac.net', 'KUE81HLX1XL', 'Alyssa', 'Short', '0', '22', 1),
(9662, 'sem.vitae@nonante.co.uk', 'ZVV52BTW1LA', 'Graham', 'Conrad', '0', '51', 1),
(1138, 'elit.pellentesque@Aliquamvulputate.co.uk', 'EJM17YIX3MZ', 'Sonya', 'Caldwell', '0', '89', 1),
(6639, 'ipsum@Suspendisse.org', 'PUW65TQV3OI', 'Theodore', 'Collier', '1', '32', 1),
(5089, 'leo.in.lobortis@duilectusrutrum.ca', 'BWQ37UND8LI', 'Charlotte', 'Foster', '1', '66', 1),
(9663, 'aaaaaaaaa@feiwhfisuf.com', '$2y$10$pqQ530pm5n0J7lYPkP2P7OGjzSM4HG.OnAht2aCSaW/E6Ys4IgpIm', 'Desy', 'mathieu', 'autre', '26-35', 1),
(9664, 'test11@test.com', '$2y$10$9CFuxOAlqRZ4vpRF0i7/fuj.zOM8L6nFCwFjRbZLA8BqQCQtctxSC', 'test', 'test', 'autre', '15-25', 1),
(9665, 'test2@test.com', '$2y$10$4uLpqzEZ4g62wZ9pK3XjT.P6TmQNaqeAOZM35UKWLq6Yy5PPHv0Ni', 'test', 'test', 'autre', '26-35', 1),
(9666, 'test3@test.com', '$2y$10$hTw3Teir7RV/XalPXXSBiOj.mOh1P9ldtv5vWdQ40RQ/kJN9pR5au', 'test', 'test', 'homme', '56 et plus', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`idcommentaire`),
  ADD UNIQUE KEY `idcommentaire_2` (`idcommentaire`),
  ADD KEY `idcommentaire` (`idcommentaire`);

--
-- Index pour la table `itemtable`
--
ALTER TABLE `itemtable`
  ADD PRIMARY KEY (`itemid`),
  ADD UNIQUE KEY `itemid` (`itemid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `questionpost`
--
ALTER TABLE `questionpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3425;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `idcommentaire` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988393;
--
-- AUTO_INCREMENT pour la table `itemtable`
--
ALTER TABLE `itemtable`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8723984;
--
-- AUTO_INCREMENT pour la table `questionpost`
--
ALTER TABLE `questionpost`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98543455;
--
-- AUTO_INCREMENT pour la table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9667;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
