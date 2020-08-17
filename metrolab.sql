-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 17 août 2020 à 00:20
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `metrolab`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateurs`
--

DROP TABLE IF EXISTS `administrateurs`;
CREATE TABLE IF NOT EXISTS `administrateurs` (
  `ID_ADMIN` smallint(5) NOT NULL AUTO_INCREMENT,
  `ID_GROUPE` smallint(6) NOT NULL,
  `LOGIN` varchar(128) DEFAULT NULL,
  `MAIL` char(32) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `ADMINISTRATEUR` varchar(100) DEFAULT NULL,
  `AGENCE` varchar(150) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_ADMIN`),
  KEY `I_FK_ADMINISTRATEURS_GROUPES` (`ID_GROUPE`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateurs`
--

INSERT INTO `administrateurs` (`ID_ADMIN`, `ID_GROUPE`, `LOGIN`, `MAIL`, `TYPE`, `ADMINISTRATEUR`, `AGENCE`, `active`) VALUES
(2, 1, 'mariame', 'cherif.mariame@orange.com', 'validateur drh', 'Cherif Mariame', NULL, NULL),
(3, 1, 'laurent', 'laurent@orange.com', 'validateur drh', 'Laurent', NULL, NULL),
(11, 1, 'yapo', 'stephane@orange.com', 'cc', 'YAPO Stephane', NULL, NULL),
(20, 2, 'forrest', 'forrest@orange.com', 'cc', 'Kouakou Forrest', NULL, NULL),
(36, 1, 'kevin', 'kevin@orange.com', 'validateur drh', 'Diomandé Kevin', NULL, NULL),
(44, 2, 'jdjdj', 'jdjj', '', 'christine', NULL, NULL),
(49, 2, 'samya', 'samya@gmail.com', 'validateur drh', 'COCO Samya', NULL, NULL),
(56, 2, 'qjsjjjsz', 'jsjjs', 'cc', 'Kouakou Forrest', NULL, NULL),
(62, 1, 'WJLC5736', 'fernandaize.galogbe@orange.com', '', 'GALOGBE Djessa Fernandaize', NULL, NULL),
(63, 1, 'hyacinth', 'kouakou@gmail.com', NULL, 'kouakou', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(5) NOT NULL AUTO_INCREMENT,
  `nom` varchar(225) DEFAULT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `mail` varchar(225) DEFAULT NULL,
  `pays` varchar(225) DEFAULT NULL,
  `ville` varchar(225) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `telephone`, `mail`, `pays`, `ville`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(6, 'Bnetd', '', '', 'Côte d\'Ivoire', '', '2020-06-06 21:06:43', NULL, 'mariame', NULL),
(7, 'ggg', '', '', 'Côte d\'Ivoire', '', '2020-06-06 22:48:24', NULL, 'mariame', NULL),
(8, 'Bnetd', '', 'bnetd', 'Côte d\'Ivoire', 'ABIDJAN', '2020-06-06 22:49:38', NULL, 'mariame', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id_equipement` int(5) NOT NULL AUTO_INCREMENT,
  `id_type` int(5) DEFAULT NULL,
  `libelle_equipement` varchar(225) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_equipement`),
  KEY `id_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`id_equipement`, `id_type`, `libelle_equipement`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, NULL, '', '2004-06-20 12:01:27', NULL, 'Cherif Mariame', NULL),
(2, 1, 'nazar', '2006-06-20 20:15:02', NULL, 'Cherif Mariame', NULL),
(3, 5, 'ggf', '2006-06-20 22:47:38', NULL, NULL, NULL),
(4, 5, 'ggf', '2006-06-20 22:47:48', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

DROP TABLE IF EXISTS `groupes`;
CREATE TABLE IF NOT EXISTS `groupes` (
  `ID_GROUPE` smallint(6) NOT NULL AUTO_INCREMENT,
  `GROUPE` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_GROUPE`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`ID_GROUPE`, `GROUPE`) VALUES
(1, 'admin'),
(2, 'utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `type_equipement`
--

DROP TABLE IF EXISTS `type_equipement`;
CREATE TABLE IF NOT EXISTS `type_equipement` (
  `id_type` int(5) NOT NULL AUTO_INCREMENT,
  `libelle_type` varchar(225) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_equipement`
--

INSERT INTO `type_equipement` (`id_type`, `libelle_type`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'cchf  chff', '2004-06-20 11:42:58', NULL, NULL, NULL),
(2, 'dhd', '2020-06-04 11:55:52', NULL, NULL, 'Cherif Mariame'),
(3, 'ecran', '2020-06-04 11:59:08', NULL, NULL, 'mariame'),
(4, 'leton', '2020-06-06 19:11:39', NULL, NULL, NULL),
(5, 'leton', '2020-06-06 19:17:31', NULL, NULL, 'mariame'),
(6, 'diamant', '2020-06-06 19:28:27', NULL, NULL, 'mariame');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD CONSTRAINT `equipement_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_equipement` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
