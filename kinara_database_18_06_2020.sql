-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 18 juin 2020 à 17:22
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
-- Base de données :  `kinara_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateurs`
--

DROP TABLE IF EXISTS `administrateurs`;
CREATE TABLE IF NOT EXISTS `administrateurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_groupe` int(11) DEFAULT NULL,
  `administrateur` varchar(100) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `tmp` varchar(50) DEFAULT NULL,
  `mode` char(1) DEFAULT 'W',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateurs`
--

INSERT INTO `administrateurs` (`id`, `id_groupe`, `administrateur`, `login`, `mail`, `telephone`, `tmp`, `mode`) VALUES
(1, 1, 'DIOMANDE KEVIN SIBAN', 'kdiomande', 'kevin.diomande@orange.com', '08887766', NULL, 'W'),
(2, 2, 'NCHO ROLAND', 'rncho', NULL, '09887766', NULL, 'W'),
(3, 2, 'YODE ARNAUD', 'ayode', NULL, '06554433', NULL, 'W');

-- --------------------------------------------------------

--
-- Structure de la table `batiments`
--

DROP TABLE IF EXISTS `batiments`;
CREATE TABLE IF NOT EXISTS `batiments` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_site` int(11) DEFAULT NULL,
  `id_type_batiment` int(11) DEFAULT NULL,
  `reference` varchar(30) DEFAULT NULL,
  `batiment` varchar(50) DEFAULT NULL,
  `niveau` tinyint(4) DEFAULT NULL,
  `description` text,
  `date_creation` datetime DEFAULT NULL,
  `tmp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batiments`
--

INSERT INTO `batiments` (`id`, `id_site`, `id_type_batiment`, `reference`, `batiment`, `niveau`, `description`, `date_creation`, `tmp`) VALUES
(1, 2, 1, 'BAT-9A95-1-1', 'BÂTIMENT 9A95-A', 1, '', '2020-03-28 07:19:19', NULL),
(2, 2, 2, 'BAT-9A95-2-1', 'BÂTIMENT 9A95-B', 2, '', '2020-03-28 07:19:19', NULL),
(3, 2, 2, 'BAT-9A95-2-2', 'BÂTIMENT 9A95-C', 2, '', '2020-03-28 07:19:19', NULL),
(4, 2, 3, 'BAT-9A95-3-1', 'BÂTIMENT 9A95-A1', 1, '', '2020-03-28 07:19:19', NULL),
(5, 2, 3, 'BAT-9A95-3-2', 'BÂTIMENT 9A95-A2', 1, '', '2020-03-28 07:19:19', NULL),
(6, 2, 3, 'BAT-9A95-3-3', 'BÂTIMENT 9A95-A3', 1, '', '2020-03-28 07:19:19', NULL),
(7, 2, 3, 'BAT-9A95-3-4', 'BÂTIMENT 9A95-A4', 1, NULL, '2020-03-28 07:19:19', NULL),
(8, 2, 2, 'BAT-280D-1-1', 'BÂTIMENT 280D-A', 3, '', '2020-03-28 10:58:45', NULL),
(9, 2, 2, 'BAT-280D-1-2', 'BÂTIMENT 280D-B', 3, '', '2020-03-28 10:58:45', NULL),
(10, 2, 2, 'BAT-280D-1-3', 'BÂTIMENT 280D-C', 3, '', '2020-03-28 10:58:45', NULL),
(11, 1, 1, 'BAT-6B59-1-1', 'BÂTIMENT 6B59-A', 1, '', '2020-03-28 11:10:47', NULL),
(12, 1, 2, 'BAT-88F9-1-1', 'BÂTIMENT 88F9-A', 3, '', '2020-03-29 09:18:25', NULL),
(13, 1, 2, 'BAT-88F9-1-2', 'BÂTIMENT 88F9-B', 3, '', '2020-03-29 09:18:25', NULL),
(14, 1, 2, 'BAT-88F9-1-3', 'BÂTIMENT 88F9-C', 3, '', '2020-03-29 09:18:25', NULL),
(15, 3, 1, 'BAT-73BE-1-1', 'BÂTIMENT BAT-73BE-1-1', 1, '', '2020-04-02 10:46:50', NULL),
(16, 3, 2, 'BAT-73BE-2-1', 'BÂTIMENT BAT-73BE-2-1', 2, '', '2020-04-02 10:46:50', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `campements`
--

DROP TABLE IF EXISTS `campements`;
CREATE TABLE IF NOT EXISTS `campements` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_village` int(11) DEFAULT NULL,
  `campement` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` smallint(6) NOT NULL AUTO_INCREMENT,
  `designation` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `type` char(32) CHARACTER SET latin1 DEFAULT NULL,
  `contact` char(32) CHARACTER SET latin1 DEFAULT NULL,
  `email` char(32) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `designation`, `type`, `contact`, `email`) VALUES
(1, 'B2B', 'Entreprise', 'inconnu', 'inconnu'),
(2, 'B2C', 'Grand publique', 'inconnu', 'inconnu'),
(3, 'mobile', 'Grand publique', 'inconnu', ''),
(4, 'Marketing', 'interne', 'inconnu', 'inconnu'),
(5, 'personnels oci', 'interne', 'inconnu', ''),
(9, 'Fixe', 'Grand publique et entreprises', '', ''),
(7, 'FTTH', 'Publique et entrprise', '4522', 'fjn@gmail.com'),
(8, 'ADSL', 'Publique et entrprises', '', ''),
(10, 'RTI', 'Entreprise', 'AD', 'AD'),
(11, 'CAMPUS', 'Ecole', 'AD', 'AD'),
(12, 'COCODY', 'Quartier', 'AD', 'AD'),
(13, 'II plateaux', 'Quartier', 'AD', 'AD'),
(14, 'OCI', 'interne', 'AD', 'AD');

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

DROP TABLE IF EXISTS `communes`;
CREATE TABLE IF NOT EXISTS `communes` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_ville` int(11) DEFAULT NULL,
  `commune` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`id`, `id_ville`, `commune`) VALUES
(1, 1, 'PLATEAU'),
(2, 1, 'ADJAME');

-- --------------------------------------------------------

--
-- Structure de la table `elements`
--

DROP TABLE IF EXISTS `elements`;
CREATE TABLE IF NOT EXISTS `elements` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference` varchar(20) DEFAULT NULL,
  `element` varchar(50) DEFAULT NULL,
  `delai` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `elements`
--

INSERT INTO `elements` (`id`, `reference`, `element`, `delai`) VALUES
(1, 'LAP', 'LAPTOP', 24),
(2, 'DESK', 'DESKTOP', 36),
(3, 'PRN', 'IMPRIMANTE', 24),
(5, 'AUT', 'AUTEL', -1),
(6, 'CHN', 'CHANDELIER', -1),
(7, 'SCRM', 'SAINT SACREMENT', -1),
(8, 'TV', 'TELEVISION', 36),
(9, 'CLM', 'SPLIT', 48),
(10, 'ACLM', 'ARMOIRE CLIMATISATION', 36),
(11, 'SRV', 'SERVEUR ORDINATEUR', 48),
(12, 'VNT', 'VENTILATEUR', 24);

-- --------------------------------------------------------

--
-- Structure de la table `elements_champs`
--

DROP TABLE IF EXISTS `elements_champs`;
CREATE TABLE IF NOT EXISTS `elements_champs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_element` int(11) DEFAULT NULL,
  `champ` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `elements_elements`
--

DROP TABLE IF EXISTS `elements_elements`;
CREATE TABLE IF NOT EXISTS `elements_elements` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_element` int(11) DEFAULT NULL,
  `__element` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `elements_elements_champs`
--

DROP TABLE IF EXISTS `elements_elements_champs`;
CREATE TABLE IF NOT EXISTS `elements_elements_champs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_element_element` int(11) DEFAULT NULL,
  `__champ` varchar(50) DEFAULT NULL,
  `__type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id_equipement` smallint(6) NOT NULL AUTO_INCREMENT,
  `id_rack` smallint(6) NOT NULL,
  `id_exploitant` smallint(6) NOT NULL,
  `id_operateur` smallint(6) DEFAULT NULL,
  `code_oci` char(32) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `marque` varchar(255) DEFAULT NULL,
  `code_exploitant` varchar(255) DEFAULT NULL,
  `equipement_alimentation` varchar(255) DEFAULT NULL,
  `projet` varchar(255) DEFAULT NULL,
  `backup` varchar(255) DEFAULT NULL,
  `alimentation` varchar(255) DEFAULT NULL,
  `datearrivee` varchar(255) DEFAULT NULL,
  `fonction` varchar(255) DEFAULT NULL,
  `image` char(32) DEFAULT NULL,
  `id_fournisseur` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_equipement`),
  KEY `I_FK_SOUS_EQUIPEMENT_EXPLOITANT` (`id_exploitant`),
  KEY `I_FK_SOUS_EQUIPEMENT_EQUIPEMENT` (`id_rack`),
  KEY `I_FK_SOUS_EQUIPEMENT_OPERATEUR` (`id_operateur`),
  KEY `id_fournisseur` (`id_fournisseur`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`id_equipement`, `id_rack`, `id_exploitant`, `id_operateur`, `code_oci`, `nom`, `marque`, `code_exploitant`, `equipement_alimentation`, `projet`, `backup`, `alimentation`, `datearrivee`, `fonction`, `image`, `id_fournisseur`) VALUES
(1, 1, 1, NULL, 'EQ1', 'DSLAM', 'ALCATEL 7302 ISAM', '', '', '', '', '', '', '', NULL, NULL),
(2, 2, 2, NULL, 'EQ1', 'RNC NOKIA', 'NOKIA', 'RNC', 'Il alimente les bts', 'MOSAÏC', 'pas de backup', 'Onduleur technique', NULL, '', NULL, NULL),
(3, 3, 3, NULL, 'EQ1', 'serveur', 'DELL', 'invonnu', 'inconnu', 'Otarie', 'inconnu', 'Onduleur technique', NULL, 'analyse du comportement  des clients mobile pour les marketeurs.', NULL, NULL),
(4, 3, 3, NULL, 'EQ2', 'switch IOIOI OCI cocody', 'DELL', 'inconnu', 'inconnu', 'Otarie', 'inconnu', 'Onduleur technique', NULL, 'analyse du comportement  des clients mobile pour les marketeurs.', NULL, NULL),
(5, 3, 3, NULL, 'EQ3', 'serveur HP', 'HP proliant DL380 Gen9 XN OCI 11', 'inconnu', 'inconnu', 'Otarie', 'inconnu', 'Onduleur technique', NULL, 'analyse du comportement  des clients mobile pour les marketeurs.', NULL, NULL),
(6, 3, 4, NULL, 'EQ8', 'serveur sisco', 'Cisco', 'inconnu', 'inconnu', 'securité', 'inconnu', 'inconnu', NULL, 'il gère la sécurité du personnel.', NULL, NULL),
(7, 3, 4, NULL, 'EQ9', 'serveur cisco', 'Cisco', 'inconnu', 'inconnu', 'securité', 'inconnu', 'inconnu', NULL, 'il gère la sécurité du personnel.', NULL, NULL),
(9, 8, 6, NULL, 'EQ1', 'EMC2 VNX SERIE', 'EMC2', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(10, 8, 6, NULL, 'EQ2', 'SUN ORACLE sun server x4.2', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(11, 8, 6, NULL, 'EQ3', 'SUN ORACLE sun server x4.2      VMS 11', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(12, 8, 6, NULL, 'EQ4', 'SUN ORACLE sun server x4.2      VMS 12', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(13, 8, 6, NULL, 'EQ5', 'SUN ORACLE sun server x4.2      VMS 13', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(14, 8, 6, NULL, 'EQ6', 'SUN ORACLE sun server x5-2      VMS 14', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(15, 8, 6, NULL, 'EQ07', 'SUN ORACLE sun server x5-2      VMS 15', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(16, 8, 6, NULL, 'EQ08', 'SUN ORACLE sun server x5-2      VMS 16', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(17, 8, 6, NULL, 'EQ09', 'OVM MNG', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(18, 8, 6, NULL, 'EQ10', 'SUN ORACLE sun server x5-2      TBS 1', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(19, 8, 6, NULL, 'EQ11', 'switch  EX 4200 SERIES   24 ports  SW11', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(20, 8, 6, NULL, 'EQ12', 'switch  EX 4200 SERIES   24 ports SW11', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(21, 8, 6, NULL, 'EQ13', 'switch  EX 4200 SERIES   48 ports  SW11', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(22, 8, 6, NULL, 'EQ14', 'switch  EX 4200 SERIES  48ports SW11', 'Sun oracle', 'MEVO', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(23, 9, 5, NULL, 'EQ01', 'UGW9811', 'huawei', 'core PS paquet switching', 'AD', 'huawei PSP serie', 'AD', 'AD', NULL, 'huawei PSP serie', NULL, NULL),
(24, 10, 5, NULL, 'EQ1', 'HUAWEI OSTA 2.0 8290', 'huawei', 'core PS paquet switching', 'AD', '', 'AD', 'AD', NULL, 'trafique data', NULL, NULL),
(25, 10, 5, NULL, 'EQ02', 'HUAWEI OSTA 2.0  8290', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'trafique data', NULL, NULL),
(26, 11, 5, NULL, 'EQ1', 'HUAWEI  Eudemon 8000E Series', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'trafique data', NULL, NULL),
(27, 11, 5, NULL, 'EQ2', 'HUAWEI  Eudemon 8000E  Series', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'trafique data', NULL, NULL),
(28, 12, 5, NULL, 'EQ1', 'equipement HUAWEI NetEngine 40E', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(29, 12, 5, NULL, 'EQ2', 'HUAWEI Quidway  S 9303', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(30, 12, 5, NULL, 'EQ3', 'HUAWEI Quidway  S9303', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(31, 13, 5, NULL, 'EQ1', 'SERVEUR  huawei OceanStor S3900_M200', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(32, 13, 5, NULL, 'EQ2', 'SERVEUR HP poliant DL380Gens', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(33, 14, 5, NULL, 'EQ1', 'HUAWEI OST 2.08290', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(34, 14, 5, NULL, 'EQ2', 'HUAWEI PSGP serie,', 'huawei', 'core PS paquet switching', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(35, 15, 5, NULL, 'AQ1', 'HP Chassis servseur  IOMS WOMS-2/WOMS-1', 'NOKIA', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(36, 15, 5, NULL, 'AQ2', 'EMC2 VNX SERIES   STORAGE 1', 'NOKIA', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(37, 15, 5, NULL, 'AQ2', 'EMC2 VNX SERIES', 'NOKIA', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'C\'est un équipement qui sert de backup dont on doit définir l\'équipement en question.', NULL, NULL),
(38, 15, 5, NULL, 'AQ4', 'HP KVM  PC', 'HP', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(39, 15, 5, NULL, 'AQ5', 'serveur  DAE 1   STORAGE EXT', 'HP', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(40, 15, 5, NULL, 'AQ6', 'HP proliant DL380p Gens8', 'HP', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(41, 15, 5, NULL, 'AQ7', 'server  DAE2', 'HP', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(42, 15, 5, NULL, 'AQ8', 'server  DAE3', 'HP', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(43, 15, 5, NULL, 'AQ9', 'server  DAE3 ,', 'HP', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(44, 15, 5, NULL, 'AQ10', 'server backup_DAE 1', 'HP', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'C\'est un équipement de backup du server DAE1', NULL, NULL),
(45, 15, 5, NULL, 'AQ10', 'DELL  RAS SERVER', 'DELL', 'serveur NOKIA NETACT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(46, 16, 1, NULL, 'EQ1', 'JUNIPER   MX 960', 'AD', 'AICA 6', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(47, 16, 1, NULL, 'AD', 'BIG -IP   4000 SERIES', 'AD', '', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(48, 16, 1, NULL, 'EQ3', 'ROUTEUR CISCO ASR  903', 'AD', 'BCOC 742', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(49, 16, 1, NULL, 'EQ4', 'CISCO catalyst 3850   48 ports  C3858  NM BLANK', 'AD', 'SCOC742', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(52, 17, 1, NULL, 'EQ1', 'routeur NOKIA  7750 SR-12', 'AD', 'BCOC 722', '', 'AD', '', '', NULL, 'AD', NULL, NULL),
(51, 16, 1, NULL, 'EQ5', 'CISCO catalyst 3850  48 ports  C3858  NM BLANK', 'AD', 'SCOC743', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(53, 17, 1, NULL, 'EQ2', 'PROFI tap', 'AD', 'BCOC 722', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(54, 17, 1, NULL, 'EQ3', 'routeur NOKIA 7750 SR-12', 'AD', 'BCOC 723', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(55, 18, 5, NULL, 'EQ1', 'HUAWEI  LSW17', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(56, 18, 5, NULL, 'EQ2', 'HUAWEI  LSW18', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(57, 18, 5, NULL, 'EQ3', 'HUAWEI  LSW01', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(58, 18, 5, NULL, 'EQ4', 'HUAWEI  LSW02', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(59, 18, 5, NULL, 'EQ5', 'HUAWEI OSTA 2.0', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(60, 18, 5, NULL, 'EQ6', 'HUAWEI OSTA  2.0', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(61, 19, 5, NULL, 'EQ1', 'HUAWEI   SessionEngine2600', 'huawei', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(62, 20, 5, NULL, 'EQ1', 'HUAWEI OSTA   2.0', 'huawei', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(63, 20, 5, NULL, 'EQ2', 'HUAWEI OSTA    2.0', 'huawei', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(64, 21, 5, NULL, 'EQ1', 'HUAWEI UMG8900', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(65, 21, 5, NULL, 'EQ2', 'HUAWEI  UMG8900', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(66, 21, 5, NULL, 'EQ3', 'HUAWEI   UMG8900', 'AD', 'IMS', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(67, 22, 2, NULL, 'EQ1', 'huawei ocean stor N3900 -M200-Storage', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(68, 22, 2, NULL, 'EQ1', 'huawei ocean stor N8500 FS-NAS-Storage', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(69, 23, 2, NULL, 'EQ1', 'huawei ocean stor N3900 M200-Storage', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(70, 23, 2, NULL, 'EQ2', 'Huawei ATAE3', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(71, 23, 2, NULL, 'EQ3', 'big ip 2000 serie', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(72, 23, 2, NULL, 'EQ4', 'big ip 2000 serie  F5', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(73, 23, 2, NULL, 'EQ5', 'huawei ATEA2', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(80, 25, 5, NULL, 'EQ7', 'huawei speed  RBT  S5352C -2', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(75, 25, 5, NULL, 'EQ3', 'kvm  ( PC)', 'AD', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'AD', NULL, NULL),
(76, 25, 5, NULL, 'EQ2', 'huawei ATAE 1', 'AD', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(77, 25, 5, NULL, 'EQ4', 'huawei  quidway S3300serie', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(78, 25, 5, NULL, 'EQ5', 'eudemon 200  series   (  firewall 2)', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(79, 25, 5, NULL, 'EQ6', 'eudemon 200  series        ( firewall 1 )', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(81, 25, 5, NULL, 'EQ8', 'huawei speed  RBT  S5352C -1', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(82, 25, 5, NULL, 'EQ9', 'Huawei URP6600', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(83, 25, 5, NULL, 'EQ10', 'Huawei  URP6600', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(84, 25, 5, NULL, 'EQ11', 'huawei speed  48 ports', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(85, 25, 5, NULL, 'EQ12', 'huawei  speed  48 ports', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(86, 25, 5, NULL, 'EQ13', 'huawei speed  48 ports  (URP S5352C_2 )', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(87, 25, 5, NULL, 'EQ14', 'huawei   speed  48 ports', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(88, 25, 5, NULL, 'EQ15', 'huawei   speed   48 ports', 'huawei', 'CRBT', 'AD', 'AD', 'AD', 'AD', NULL, 'équipement fournissant des services aux autres pour délivrer les même service aux clients.', NULL, NULL),
(89, 27, 7, NULL, 'EQ1', 'CSN', 'AD', 'AD', 'AD', 'AD', 'AD', 'AD', NULL, 'Satellite (équipement d\'accès).', NULL, NULL),
(90, 28, 8, NULL, 'EQ1', 'robot', 'AD', 'UC SNM  HP', 'AD', 'AD', '', 'AD', NULL, 'c\'est un équipement qui teste la voix', NULL, NULL),
(91, 28, 8, NULL, 'EQ2', 'robot 2', 'AD', 'VOSET-ICOAST INTER MASTER', 'AD', 'AD', '', 'AD', NULL, 'c\'est un équipement qui teste la voix', NULL, NULL),
(92, 28, 8, NULL, 'EQ3', 'robot 3', 'AD', 'VOSET-ICOAST 10', 'AD', 'AD', '', 'AD', NULL, 'c\'est un équipement qui teste la voix', NULL, NULL),
(93, 28, 8, NULL, 'EQ4', 'robot 4', 'AD', 'E2E-IVORY COAST 11', 'AD', 'AD', '', 'AD', NULL, 'c\'est un équipement qui teste la voix', NULL, NULL),
(94, 29, 8, NULL, 'EQ1', 'ROUTEUR CISCO 7606  -S', 'sisco', 'BCOC741', 'AD', 'AD', 'AD', 'AD', NULL, 'c\'est un équipement d\'administration reseaux', NULL, NULL),
(95, 29, 8, NULL, 'EQ2', 'ROUTEUR CISCO 7606 -S', 'sisco', 'BCOC740', 'AD', 'AD', 'AD', 'AD', NULL, 'c\'est un équipement d\'administration reseaux', NULL, NULL),
(96, 29, 8, NULL, 'EQ3', 'LAN-IVORYCOAST7', 'sisco', 'BCOC740', 'AD', 'AD', 'AD', 'AD', NULL, 'c\'est un équipement de teste de data LTETDD', NULL, NULL),
(97, 30, 8, NULL, 'EQ1', 'Serveur proliant', 'AD', 'DASET', 'AD', 'robot de test', 'AD', 'AD', NULL, 'c\'est un équipement qui permet de faire des testes data', NULL, NULL),
(98, 30, 8, NULL, 'EQ1', 'Robot 1', 'AD', 'DASET', 'AD', 'robot de test', 'AD', 'AD', NULL, 'équipement de teste de voix national et de de teste data', NULL, NULL),
(99, 30, 8, NULL, 'EQ3', 'Robot  2', 'AD', 'DASET', 'AD', 'robot de test', 'AD', 'AD', NULL, 'équipement de teste de voix national et de de teste data', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `exploitant`
--

DROP TABLE IF EXISTS `exploitant`;
CREATE TABLE IF NOT EXISTS `exploitant` (
  `id_exploitant` smallint(6) NOT NULL AUTO_INCREMENT,
  `designation` char(32) CHARACTER SET latin1 DEFAULT NULL,
  `nom_manager` char(32) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_exploitant`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fournisseur` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`id`, `fournisseur`, `nom`, `telephone`, `mail`, `web`) VALUES
(1, 'VIRUS INFORMATIQUE', 'HABIB ALI', '08999999', '', ''),
(2, 'CFAO', 'YAO JEAN', '09887766', '', ''),
(3, 'INTELAFRIQUE', 'DIBI JEAN', '09223311', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

DROP TABLE IF EXISTS `groupes`;
CREATE TABLE IF NOT EXISTS `groupes` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id`, `groupe`) VALUES
(1, 'ADMINISTRATEUR');

-- --------------------------------------------------------

--
-- Structure de la table `groupes_modules`
--

DROP TABLE IF EXISTS `groupes_modules`;
CREATE TABLE IF NOT EXISTS `groupes_modules` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_groupe` int(11) DEFAULT NULL,
  `id_module` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `groupes_modules`
--

INSERT INTO `groupes_modules` (`id`, `id_groupe`, `id_module`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 3),
(5, 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `history_salles_elements_series_fournisseurs`
--

DROP TABLE IF EXISTS `history_salles_elements_series_fournisseurs`;
CREATE TABLE IF NOT EXISTS `history_salles_elements_series_fournisseurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_salle_element` int(11) DEFAULT NULL,
  `id_serie` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `history_salles_elements_series_fournisseurs`
--

INSERT INTO `history_salles_elements_series_fournisseurs` (`id`, `id_salle_element`, `id_serie`, `id_fournisseur`, `date_creation`) VALUES
(1, 11, 2, 3, '2020-03-31 19:50:42'),
(2, 12, 2, 2, '2020-03-31 19:51:04'),
(3, 14, 9, 2, '2020-04-01 15:37:37'),
(4, 15, 9, 3, '2020-04-01 15:37:44'),
(5, 16, 9, 3, '2020-04-01 15:37:47'),
(6, 6, 8, 2, '2020-04-01 15:38:08'),
(7, 7, 8, 2, '2020-04-01 15:38:10'),
(8, 8, 8, 2, '2020-04-01 15:38:12'),
(9, 9, 8, 2, '2020-04-01 15:38:14'),
(10, 10, 8, 2, '2020-04-01 15:38:17');

-- --------------------------------------------------------

--
-- Structure de la table `history_salles_elements_utilisateurs`
--

DROP TABLE IF EXISTS `history_salles_elements_utilisateurs`;
CREATE TABLE IF NOT EXISTS `history_salles_elements_utilisateurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_salle_element` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `interventions`
--

DROP TABLE IF EXISTS `interventions`;
CREATE TABLE IF NOT EXISTS `interventions` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference` varchar(50) DEFAULT NULL,
  `intervention` varchar(100) DEFAULT NULL,
  `description` text,
  `statut` tinyint(4) DEFAULT '0',
  `date_intervention` date DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `user_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `interventions_fournisseurs_batiments`
--

DROP TABLE IF EXISTS `interventions_fournisseurs_batiments`;
CREATE TABLE IF NOT EXISTS `interventions_fournisseurs_batiments` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_intervention` int(11) DEFAULT NULL,
  `id_type_intervention` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `id_batiment` int(11) DEFAULT NULL,
  `description` text,
  `montant` int(11) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `user_creation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `interventions_fournisseurs_salles`
--

DROP TABLE IF EXISTS `interventions_fournisseurs_salles`;
CREATE TABLE IF NOT EXISTS `interventions_fournisseurs_salles` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_intervention` int(11) DEFAULT NULL,
  `id_type_intervention` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `id_salle` int(11) DEFAULT NULL,
  `description` text,
  `montant` int(11) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `user_creation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `interventions_fournisseurs_salles_elements`
--

DROP TABLE IF EXISTS `interventions_fournisseurs_salles_elements`;
CREATE TABLE IF NOT EXISTS `interventions_fournisseurs_salles_elements` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_intervention` int(11) DEFAULT NULL,
  `id_type_intervention` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `id_salle_element` int(11) DEFAULT NULL,
  `description` text,
  `montant` int(11) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `user_creation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `interventions_paiements`
--

DROP TABLE IF EXISTS `interventions_paiements`;
CREATE TABLE IF NOT EXISTS `interventions_paiements` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_intervention` int(11) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `paiement` varchar(100) DEFAULT NULL,
  `description` text,
  `statut` tinyint(4) DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `user_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `interventions_paiements_fournisseurs`
--

DROP TABLE IF EXISTS `interventions_paiements_fournisseurs`;
CREATE TABLE IF NOT EXISTS `interventions_paiements_fournisseurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_intervention_paiement` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `type_paiement` tinyint(4) DEFAULT NULL,
  `montant` int(11) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `user_creation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `marques`
--

DROP TABLE IF EXISTS `marques`;
CREATE TABLE IF NOT EXISTS `marques` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `marques`
--

INSERT INTO `marques` (`id`, `marque`) VALUES
(1, 'NASCO'),
(2, 'SMART TECHNOLOGY'),
(3, 'HISENSE'),
(4, 'SAMSUNG');

-- --------------------------------------------------------

--
-- Structure de la table `modeles`
--

DROP TABLE IF EXISTS `modeles`;
CREATE TABLE IF NOT EXISTS `modeles` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_marque` int(11) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `modele` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `modeles`
--

INSERT INTO `modeles` (`id`, `id_marque`, `id_element`, `modele`) VALUES
(1, 1, 9, 'NASCO SPLIT INVERTER'),
(2, 2, 9, 'STS-18'),
(3, 3, 9, '12000 BTU'),
(4, 4, 8, 'UA32N5000AUXLY'),
(5, 4, 11, 'SERV'),
(6, 4, 2, 'DESK');

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference` varchar(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `path` varchar(50) DEFAULT NULL,
  `img` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`id`, `reference`, `module`, `description`, `path`, `img`) VALUES
(1, 'M001', 'CONFIGURATION', 'Paramétrage des informations de base', 'setting', 'fa fa-cogs'),
(2, 'M002', 'INVENTAIRE', 'Inventaire du patrimoine', 'site', 'fa fa-archive'),
(3, 'M003', 'MOUVEMENT', 'Mouvement & maintenance du patrimoine', 'maintenance', 'fa fa-cog'),
(4, 'M004', 'REPORTING', 'Tableau de bord du patrimoine', 'reporting', 'fa fa-bell');

-- --------------------------------------------------------

--
-- Structure de la table `offrir_2`
--

DROP TABLE IF EXISTS `offrir_2`;
CREATE TABLE IF NOT EXISTS `offrir_2` (
  `id_client` smallint(6) NOT NULL,
  `id_service` smallint(6) NOT NULL,
  PRIMARY KEY (`id_client`,`id_service`),
  KEY `I_FK_OFFRIR_2_CLIENT` (`id_service`),
  KEY `I_FK_OFFRIR_2_SERVICE_ORANGE` (`id_service`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ot`
--

DROP TABLE IF EXISTS `ot`;
CREATE TABLE IF NOT EXISTS `ot` (
  `id_ot` smallint(6) NOT NULL AUTO_INCREMENT,
  `direction_demandeur` varchar(200) DEFAULT NULL,
  `departement_demandeur` varchar(200) DEFAULT NULL,
  `service_demandeur` varchar(200) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `heure_debut` time DEFAULT NULL,
  `heure_fin` time DEFAULT NULL,
  `fiche_ot` varchar(200) DEFAULT NULL,
  `nom_respo_suivi` varchar(200) DEFAULT NULL,
  `nom_respo_travaux` varchar(200) DEFAULT NULL,
  `raison_sociale` varchar(200) DEFAULT NULL,
  `contact_respo_suivi` varchar(200) DEFAULT NULL,
  `contact_respo_travaux` varchar(200) DEFAULT NULL,
  `ot_libelle` varchar(200) DEFAULT NULL,
  `fiche_image` blob,
  `objet_travaux` text,
  `code` varchar(200) DEFAULT NULL,
  `site` varchar(200) DEFAULT NULL,
  `salle` varchar(200) DEFAULT NULL,
  `risque` text,
  `date_de_demande` varchar(50) DEFAULT NULL,
  `niveau_de_validation` int(5) DEFAULT NULL,
  `date_update` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ot`)
) ENGINE=MyISAM AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ot`
--

INSERT INTO `ot` (`id_ot`, `direction_demandeur`, `departement_demandeur`, `service_demandeur`, `date_debut`, `date_fin`, `heure_debut`, `heure_fin`, `fiche_ot`, `nom_respo_suivi`, `nom_respo_travaux`, `raison_sociale`, `contact_respo_suivi`, `contact_respo_travaux`, `ot_libelle`, `fiche_image`, `objet_travaux`, `code`, `site`, `salle`, `risque`, `date_de_demande`, `niveau_de_validation`, `date_update`) VALUES
(108, 'DTSI/DR', 'Servicede l\'inspection et du controle du controles des installations techniques', ',', '0000-00-00', '0000-00-00', '08:00:00', '17:00:00', NULL, 'KOUASSI Kodia', 'Gervais KOUADIO, Drissa DIARRA', 'Defis et Strategies', '07012125', '07208455 / 07832121', 'oui', NULL, ' Pose de ferme et supports jarretières optiques et câbles de puissance', 'bhjtm', 'DANGA', 'Transmission, IMS,', '   Aucun', NULL, NULL, ''),
(107, 'DRSI/DR', 'DRSS/CORE Fixe Field', ',', '0000-00-00', '0000-00-00', '12:30:00', '15:00:00', NULL, '  VAMET Aimé', 'Aucun', '', ',', '07205120', 'oui', NULL, '  Maintenance curative sur Mevo ( Remplacement d\'un disk HS)', 'untle', 'DANGA', 'IMS,', '   RAS', NULL, NULL, ''),
(106, 'secrétariat général', 'securité', 'securité', '0000-00-00', '0000-00-00', '08:30:00', '16:30:00', NULL, 'DJR Yao', 'Assa julien,SANOGO Ernert,HOUNDOSSOUDE Antonin, LAMA Etienne, NOMEL Jean, Arouna, Hamed', 'CODIVAL', '07074948', '07380337/ 78027532', 'oui', NULL, 'Installation EAG et bouteilles IG-55 dans toutes les salles techniques', 'n4bga', 'DANGA', '', '   Aucun', NULL, NULL, ''),
(126, 'DTSI/DR', 'DAR', 'SDTS', '0000-00-00', '0000-00-00', '08:00:00', '17:00:00', NULL, 'COFFI Guy Brusset', 'YAO FELIX', 'Huawei', '07575619', '89095601', 'oui', NULL, '   Projet TDD_2019/suvey', 'iwaku', 'KM4DANGA', '', '   Aucun', NULL, NULL, ''),
(127, 'Direction des reseaux', 'DETDC', 'SET', '0000-00-00', '0000-00-00', '08:00:00', '18:00:00', NULL, 'COULIBALY Mohamed', 'OYEDELE PHILIPE', 'TIERI', '07201600', '07006406', 'oui', NULL, 'Depannage UPS COMET salle TGBT (contrôle paramètres)', 'nwuah', 'RP', '', '   aucun', NULL, NULL, ''),
(129, 'DTSI/DS', 'BRODBAND FACTORY', 'INGENIEUR BRODBAND FIXE', '0000-00-00', '0000-00-00', '08:00:00', '17:00:00', NULL, 'SORO OUATTIO', 'YASSINE BENNOURI', 'NOKIA', '01204273', '59893045', 'oui', NULL, '- Intergration des nouveaux des sites aviso\n- Upgrade des MSAN et des DSLAM ', 'nnl0i', 'RP', '', '   Aucun', NULL, NULL, ''),
(130, 'Direction des réseaux', 'DET', 'SET', '0000-00-00', '0000-00-00', '08:00:00', '17:00:00', NULL, 'OUSSOU WILFRID', 'SOUMAHORO VASSIDIKI', 'WESTECH', '07591653', '', 'oui', NULL, '   Audit des installations de réseau commun masses (RCM)', 'mjep3', '', '', '   Aucun', NULL, NULL, ''),
(131, 'Direction des réseaux', 'DET', 'SET', '0000-00-00', '0000-00-00', '08:00:00', '17:00:00', NULL, 'OUSSOU WILFRID', 'SOUMAHORO VASSIDIKI', 'WESTECH', '07591653', '02451232', 'oui', NULL, '   Audit des installations de réseau commun masses (RCM)', 'eh7xs', '', '', '   Aucun', NULL, NULL, ''),
(132, 'Direction des réseaux', 'DET', 'SET', '0000-00-00', '0000-00-00', '08:00:00', '17:00:00', NULL, 'OUSSOU WILFRID', 'SOUMAHORO VASSIDIKI', 'WESTECH', '07591653', '02451232', 'oui', NULL, '   Audit des installations de réseau commun masses (RCM)', 'y4z6s', 'VILLA', '', '   Aucun', NULL, NULL, ''),
(186, 'hfhsdggd', 'hfhh', 'hfhg', '0000-00-00', '0000-00-00', '16:37:00', '16:37:00', NULL, 'hhf', 'hgfg', 'jghjhf', 'hgfg', 'hghgfg', 'oui', NULL, 'ggh   ', '186-LUM du 11 Septembre 2019', 'LUMIERE', '', '   jghjh', '13-09-2019 14:35:30', NULL, ''),
(187, 'jhjge', 'JIF', 'HEDGU', '0000-00-00', '0000-00-00', '10:28:00', '10:28:00', NULL, 'JUH', 'HJU', 'GFKK', 'U', 'H', 'oui', NULL, 'HU   ', '187-DAN du 11 Septembre 2019', 'DANGA', 'IMS, ', '   OOIG', '17-09-2019 08:27:00', NULL, ''),
(188, 'CFKJKI', 'JJJIIJ', 'IJIJ', '0000-00-00', '0000-00-00', '13:58:00', '13:58:00', NULL, 'IJIJI', 'IJI', 'IOIOG', 'IJI', 'IKIO', 'oui', NULL, '   OKK', '188-LUM du 12 Septembre 2019', 'LUMIEREDANGA', 'IMS, ', '   GGO', '23-09-2019 11:56:47', NULL, ''),
(189, 'FKJ', 'HHU', 'UH', '0000-00-00', '0000-00-00', '13:59:00', '01:55:00', NULL, 'UHU', 'UHU', 'OFIOG', 'HUHU', 'UHUH', 'oui', NULL, 'UHU   ', '189-DAN du 17 Septembre 2019', 'DANGA', 'Transmission, ', '   JKGJG', '23-09-2019 11:57:54', NULL, ''),
(190, 'DS', 'Region Abidjan', 'Region et Data center', '0000-00-00', '0000-00-00', '08:00:00', '17:00:00', 'Pyv0T.', 'BOU Hervé, FADE Armel', 'Bamori KAMAGATE', 'LUNC AFRICA', '07090007/07044753', '47913347', 'oui', NULL, '   Survey pour déterminer le nombre de salle à sécuriser avec de serrures connectées', '190-DAN du 25 Septembre 2019', 'DANGA', '', '   Aucun', '24-09-2019 16:05:18', 2, ''),
(191, 'DS', 'Region Abidjan', 'Region et Data center', '0000-00-00', '0000-00-00', '08:00:00', '17:00:00', 'jPpBm.pdf', 'BROU Hervé, FADE Armel', 'Bamori KAMAGATE', 'LUNC AFRICA', '07090007/07044753', '47913347', 'oui', NULL, '   Survey pour déterminer le nombre de salle à sécuriser avec de serrures connectées', '191- du 25 Septembre 2019', '', '', '   Aucun', '24-09-2019 16:38:11', 2, ''),
(185, 'lbvki', 'ijigjijui', 'iguih_çujeuih', '0000-00-00', '0000-00-00', '22:02:00', '22:01:00', '9dOfS.pdf', 'ijuuiçg_', 'jigj', 'KIJGFIJ', 'ijuigji', 'jgi', 'oui', NULL, 'JIJI   ', '133-DAN du 03 Septembre 2019', 'DANGA', 'IMS, ', '   JHUFHYU', '12-09-2019 20:00:55', 2, ''),
(192, 'frl, f', 'rf frje', 'kf dje', '0000-00-00', '0000-00-00', '11:48:00', '11:47:00', NULL, 'fjj jjr', 'fjn', 'fkjk', 'fhj fj', 'gjj', 'oui', NULL, 'gug   ', '192-und du 10 Septembre 2019', 'undefined', '', '   fk', '25-09-2019 09:47:11', NULL, NULL),
(193, 'gff', 'fhh', 'hvh', '0000-00-00', '0000-00-00', '15:22:00', '18:21:00', NULL, 'hhv', 'hhvh', 'djj dhh', 'hhv', 'hvh', 'oui', NULL, 'hvh   ', '193-Tou du 11 Septembre 2019', 'Tous les sites', 'Toutes les salles', 'vfjj   ', '25-09-2019 12:21:01', NULL, NULL),
(194, 'ffhhF', 'JFJ', 'jfj', '0000-00-00', '0000-00-00', '19:23:00', '19:23:00', NULL, 'jvj', 'jvj', 'vgghg', 'jfv', 'jvj', 'oui', NULL, 'vjj   ', '194- du 10 Septembre 2019', '', '', '   bvgg', '25-09-2019 17:22:31', 1, NULL),
(195, 'dsds', 'djj', 'df', '0000-00-00', '0000-00-00', '19:25:00', '19:24:00', NULL, 'fh', 'jjf', 'ddhhd', 'jufhh', 'jfj', 'oui', NULL, 'ifi   ', '195-und du 19 Septembre 2019', 'undefined  undefined  ', '', '   ggg', '25-09-2019 17:23:20', 1, NULL),
(436, 'fjfj', 'jfj', 'ju', '0000-00-00', '0000-00-00', '08:09:00', '16:10:00', 'Bz4i3.pdf', 'uuu', 'uv', 'nhj ', 'uuu', 'uu', 'oui', NULL, 'uvu   ', '196-und du 26 Septembre 2019', 'undefined  ', '', '   gg', '26-09-2019 17:09:51', 2, NULL),
(439, 'dhhd', 'fj fjjf', 'jfj  jjf', '0000-00-00', '0000-00-00', '11:00:00', '17:02:00', NULL, 'jfjjf jj', 'jfj', 'gg', 'jfj j', 'jfj', 'oui', NULL, 'jfjj   ', '439-Rep du 30 Septembre 2019', 'Republique  ', '', 'kk   ', '30-09-2019 09:01:10', 1, NULL),
(438, 'fjj', 'jfj', 'jfj', '0000-00-00', '0000-00-00', '20:00:00', '20:02:00', NULL, 'jjf', 'jj', 'aucun', 'jfjj', 'jjgf', 'oui', NULL, 'jfj   ', '438-und du 26 Septembre 2019', 'undefined  undefined  undefined  undefined  undefined  ', '', '   gg', '26-09-2019 19:00:33', 1, NULL),
(437, 'je suis', 'dj fjuji', 'jfj si', '0000-00-00', '0000-00-00', '19:39:00', '18:38:00', 'FbQtj.pdf', 'fio', 'ofo', 'fjj', 'foo', 'ooof', 'oui', NULL, 'oofof   ', '437-und du 26 Septembre 2019', 'undefined  ', '', '   hg', '26-09-2019 17:37:19', 2, NULL),
(440, 'dh fhhf', 'hhgh', 'hhh', '0000-00-00', '0000-00-00', '11:43:00', '11:42:00', NULL, 'hhg', 'dhvh fhhf', 'ggg', 'hghh', 'hcfh', 'oui', NULL, 'hfhh   ', '440-DAN du 17 Octobre 2019', 'DANGA  ', '', '   fff', '29-10-2019 09:41:51', 1, NULL),
(441, 'xhjhdx', 'dxjj', 'dxjdx', '0000-00-00', '0000-00-00', '10:44:00', '10:44:00', NULL, 'dxjj', 'jdxhd', 'dd', 'dxjj', 'jjd', 'oui', NULL, '   cdud', '441-Rep du 13 Decembre 1899', 'Republique  ', '', '   cduud', '19-11-2019 08:43:56', 1, NULL),
(442, 'fkdjkji', 'kgfiiif', 'uiruiru', '0000-00-00', '0000-00-00', '12:52:00', '11:52:00', NULL, 'fjif', 'ififi', 'iiff', '144555', 'ioioif', 'oui', NULL, '   iofififi', '442-DAN du 13 Novembre 2019', 'DANGA  ', '', '   iigfigff', '19-11-2019 09:50:57', 1, NULL),
(443, 'uru_rr', '_u_r', 'rrruuut', '0000-00-00', '0000-00-00', '11:06:00', '11:07:00', NULL, 'ttuutf', 'rjjrr', 'djjje', 'ffht', 'fhhe', 'oui', NULL, '   ruuur', '443-DAN du 13 Decembre 2019', 'DANGA  ', '', '   ur', '10-12-2019 09:05:44', 1, NULL),
(444, 'DTSI/DS', 'Exploitqtion', 'koussi ', '0000-00-00', '0000-00-00', '13:37:00', '12:37:00', NULL, 'd    w', 'he ', 'rury r', 'rrr', 'hhr hr', 'oui', NULL, '   d7 d   d', '444-Rep du 21 Decembre 2019', 'Republique  KM4  ', '', '   u f  f  ', '17-12-2019 10:34:59', 1, NULL),
(445, 'gdgdhshs', 'dtdtdt', 'dttddt', '0000-00-00', '0000-00-00', '17:55:00', '17:55:00', NULL, 'dhhd', 'dhgdyd', 'sjhjdh', 'dfyyfy', 'dttddtd', 'oui', NULL, '   tdtdt', '445-VIL du 12 Fevrier 2020', 'VILLA  ', '', '   dkkdsdshgs', '04-02-2020 14:52:14', 1, NULL),
(446, 'ggdg', 'fggf', 'fgg shsh', '0000-00-00', '0000-00-00', '13:04:00', '13:04:00', NULL, 'fdgg  fjf', 'uurur', 'gzgzg', 'fheb eu', 'euueh eye', 'oui', NULL, '   eyye eyy', '446-VIL du 06 Fevrier 2020', 'VILLA  KM4  DANGA  ', '', '   zggzga', '10-02-2020 11:26:17', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ot_equipement`
--

DROP TABLE IF EXISTS `ot_equipement`;
CREATE TABLE IF NOT EXISTS `ot_equipement` (
  `id_equipement` smallint(6) NOT NULL,
  `id_ot` smallint(6) NOT NULL,
  PRIMARY KEY (`id_ot`,`id_equipement`),
  KEY `I_FK_ot_equipement_ORDRE_TRAVAUX` (`id_ot`),
  KEY `I_FK_ot_equipement_SOUS_EQUIPEMENT` (`id_equipement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ot_equipement`
--

INSERT INTO `ot_equipement` (`id_equipement`, `id_ot`) VALUES
(9, 107),
(2, 185),
(3, 187),
(11, 188),
(12, 188);

-- --------------------------------------------------------

--
-- Structure de la table `ot_rack`
--

DROP TABLE IF EXISTS `ot_rack`;
CREATE TABLE IF NOT EXISTS `ot_rack` (
  `id_rack` smallint(6) NOT NULL,
  `id_ot` smallint(6) NOT NULL,
  PRIMARY KEY (`id_ot`,`id_rack`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pays` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `pays`) VALUES
(1, 'COTE D\'IVOIRE');

-- --------------------------------------------------------

--
-- Structure de la table `pda`
--

DROP TABLE IF EXISTS `pda`;
CREATE TABLE IF NOT EXISTS `pda` (
  `idExcel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `numero` int(255) DEFAULT NULL,
  `site_id_partners` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_id_oci` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_partners` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_oci` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uir_hw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uir_oci` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sendeur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_snag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `severitey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorisation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snag_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_plan_proposed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servey_date` date DEFAULT NULL,
  `survey_of_week` int(25) DEFAULT NULL,
  `report_escalation_date` date DEFAULT NULL,
  `responsability` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution_deadline` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `execution_planned_date` date DEFAULT NULL,
  `resolved_date` date DEFAULT NULL,
  `resolution_of_week` int(25) DEFAULT NULL,
  `observations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periode` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delais` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balises` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batteries` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ae` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idExcel`)
) ENGINE=MyISAM AUTO_INCREMENT=225477 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pda`
--

INSERT INTO `pda` (`idExcel`, `numero`, `site_id_partners`, `site_id_oci`, `area_partners`, `area_oci`, `site_name`, `uir_hw`, `uir_oci`, `site_type`, `sendeur`, `type_of_snag`, `severitey`, `categorisation`, `snag_description`, `action_plan_proposed`, `servey_date`, `survey_of_week`, `report_escalation_date`, `responsability`, `resolution_deadline`, `status`, `execution_planned_date`, `resolved_date`, `resolution_of_week`, `observations`, `classe`, `periode`, `key`, `comment`, `delais`, `balises`, `batteries`, `ae`, `created_at`, `updated_at`) VALUES
(225421, 1, 'IHS_LGN_203O', 'OCI0866', 'ABIDJAN ZONE 3', NULL, 'PAILLET', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'Expire Fire Extinguisher', 'Major', 'standard', 'Extincteur expiré', 'Un extincteur à Réviser ', '2020-03-02', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225422, 2, 'IHS_LGN_203O', 'OCI0866', 'ABIDJAN ZONE 3', NULL, 'PAILLET', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EVIRONMENTAL(Environnement) ', 'Critical', 'standard', 'Planche du shelter endommage', 'Planché du shelter deffectueux à réhabiliter', '2020-03-02', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225423, 3, 'IHS_LGN_203O', 'OCI0866', 'ABIDJAN ZONE 3', NULL, 'PAILLET', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'TOWER(Pylone)', 'Critical', 'standard', 'Presence de guepes, abeilles et de nids de corbeaux sur le pylone', 'Nid de corbeau à détruire', '2020-03-02', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225424, 4, 'IHS_LGN_203O', 'OCI0866', 'ABIDJAN ZONE 3', NULL, 'PAILLET', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EVIRONMENTAL(Environnement) ', 'N/A', 'N/A', 'Materiel et autres elements abandonnes sur site', 'Faisceau Hawai à désinvestir', '2020-03-02', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '60 jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225425, 5, 'ABJ047', 'OCI2036', 'ABIDJAN ZONE 3', NULL, 'PAILLET_EXT', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'FIRE EXTINGUISHER(Extincteur)', 'Major', 'standard', 'Pas d\'Extincteur', 'Absence d\'extincteur à installer', '2020-03-02', 10, NULL, 'CAMUSAT', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225426, 6, 'ABJ047', 'OCI2036', 'ABIDJAN ZONE 3', NULL, 'PAILLET_EXT', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EARTHING(RCM)', 'Critical', 'QoS Impacted', 'Terre vandalisee', 'Rehabiliter le RCM', '2020-03-02', 10, NULL, 'CAMUSAT', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225427, 7, 'ABJ047', 'OCI2036', 'ABIDJAN ZONE 3', NULL, 'PAILLET_EXT', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'TOWER(Pylone)', 'Critical', 'QoS Impacted', 'Haubants detendus', 'Haubants très détendus à refaire car le pylone bouge fortement', '2020-03-02', 10, NULL, 'CAMUSAT', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225428, 8, 'ABJ047', 'OCI2036', 'ABIDJAN ZONE 3', NULL, 'PAILLET_EXT', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'ELECTRICAL', 'Major', 'standard', 'Eclairages et prises', 'Une ampoule HS à remplacer', '2020-03-02', 10, NULL, 'CAMUSAT', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225429, 9, 'IHS_LGN_002O', 'OCI0544', 'ABIDJAN ZONE 3', NULL, 'INDENIE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'ELECTRICAL', 'Major', 'standard', 'Eclairages et prises', 'Une ampoule HS à remplacer', '2020-03-04', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225430, 10, 'IHS_LGN_002O', 'OCI0544', 'ABIDJAN ZONE 3', NULL, 'INDENIE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'Expire Fire Extinguisher', 'Major', 'standard', 'Extincteur expiré', 'Un extincteur à Réviser ', '2020-03-04', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225431, 11, 'IHS_LGN_037O', 'OCI0440', 'ABIDJAN ZONE 3', NULL, 'FRATERNITE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EARTHING(RCM)', 'Critical', 'QoS Impacted', 'Terre vandalisee', 'Rehabiliter le RCM', '2020-03-04', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225432, 12, 'IHS_LGN_037O', 'OCI0440', 'ABIDJAN ZONE 3', NULL, 'FRATERNITE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'TOWER(Pylone)', 'Minor', 'standard', 'Degradation de la peinture du pylone (balisasege diurne)', 'Repeindre le pylone', '2020-03-04', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '45 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225433, 13, 'IHS_LGN_037O', 'OCI0440', 'ABIDJAN ZONE 3', NULL, 'FRATERNITE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'TOWER(Pylone)', 'Critical', 'standard', 'Boulonneries du pylone rouillees', 'Remplacer les boulons rouillés du pylone', '2020-03-04', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225434, 14, 'IHS_LGN_100O', 'OCI0280', 'ABIDJAN ZONE 3', NULL, 'CARINE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EARTHING(RCM)', 'Critical', 'QoS Impacted', 'Terre vandalisee', 'Rehabiliter le RCM', '2020-03-04', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225435, 15, 'IHS_LGN_100O', 'OCI0280', 'ABIDJAN ZONE 3', NULL, 'CARINE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'TOWER(Pylone)', 'Minor', 'standard', 'Degradation de la peinture du pylone (balisasege diurne)', 'Repeindre le pylone', '2020-03-04', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '45 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225436, 16, 'IHS_LGN_109O', 'OCI0656', 'ABIDJAN ZONE 3', NULL, 'LATIN', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'AVIATION W LIGHT(Balisage Nocturne)', 'Critical', 'standard', 'Pas de Balisage Nocturne ', 'Balisage nocturne à installer', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225437, 17, 'IHS_LGN_109O', 'OCI0656', 'ABIDJAN ZONE 3', NULL, 'LATIN', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'Expire Fire Extinguisher', 'Major', 'standard', 'Extincteur expiré', 'Un extincteur à Réviser ', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225438, 18, 'IHS_LGN_859O', 'OCI1818', 'ABIDJAN ZONE 3', NULL, 'GSPM', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'TOWER(Pylone)', 'Critical', 'QoS Impacted', 'Haubants detendus', 'Haubants détendus à refaire ', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225439, 19, 'IHS_LGN_053M', 'OCI1980', 'ABIDJAN ZONE 3', NULL, 'HOTEL DU NORD', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'FIRE EXTINGUISHER(Extincteur)', 'Major', 'standard', 'Pas d\'Extincteur', 'Absence d\'extincteur à installer', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225440, 20, 'IHS_LGN_053M', 'OCI1980', 'ABIDJAN ZONE 3', NULL, 'HOTEL DU NORD', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EARTHING(RCM)', 'Critical', 'QoS Impacted', 'Terre vandalisee', 'Rehabiliter le RCM', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225441, 21, 'IHS_LGN_053M', 'OCI1980', 'ABIDJAN ZONE 3', NULL, 'HOTEL DU NORD', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EVIRONMENTAL(Environnement)', 'Critical', 'standard', 'Probemes de securites sur le site', 'Portail d\'accès non sécurisé', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225442, 22, 'IHS_LGN_033O', 'OCI0165', 'ABIDJAN ZONE 3', NULL, 'BANFORA', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'TOWER(Pylone)', 'Minor', 'standard', 'Degradation de la peinture du pylone (balisasege diurne)', 'Repeindre le pylone', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '45 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225443, 23, 'IHS_LGN_033O', 'OCI0165', 'ABIDJAN ZONE 3', NULL, 'BANFORA', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'ELECTRICAL', 'Major', 'standard', 'Eclairages et prises', 'Installer le système d\'éclairage', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225444, 24, 'IHS_LGN_033O', 'OCI0165', 'ABIDJAN ZONE 3', NULL, 'BANFORA', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'FIRE EXTINGUISHER(Extincteur)', 'Major', 'standard', 'Pas d\'Extincteur', 'Absence d\'extincteur à installer', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225445, 25, 'IHS_LGN_084O', 'OCI0756', 'ABIDJAN ZONE 3', NULL, 'MISTRAL', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'Expire Fire Extinguisher', 'Major', 'standard', 'Extincteur expiré', 'Un extincteur à Réviser ', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '30 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225446, 26, 'IHS_LGN_084O', 'OCI0756', 'ABIDJAN ZONE 3', NULL, 'MISTRAL', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'ELECTRICAL', 'Minor', 'standard', 'Autres Electricite', 'Réenclencheur HS à reparer', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '60 jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225447, 27, 'IHS_LGN_090O', 'OCI0188', 'ABIDJAN ZONE 3', NULL, 'BETHANIE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EARTHING(RCM)', 'Critical', 'QoS Impacted', 'Terre vandalisee', 'Rehabiliter le RCM', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22'),
(225448, 28, 'IHS_LGN_090O', 'OCI0188', 'ABIDJAN ZONE 3', NULL, 'BETHANIE', 'Zone3', 'Zone3', 'Outdoor', 'Region Abj', 'EVIRONMENTAL(Environnement) ', 'Critical', 'standard', 'Planche du shelter endommage', 'Planché du shelter deffectueux à réhabiliter', '2020-03-05', 10, NULL, 'IHS', NULL, 'open', NULL, NULL, NULL, '', 'Snags_Compil', 20, NULL, 'Snags_Compil', '15 Jours', NULL, NULL, NULL, '2020-04-28 14:23:02', '2020-04-30 11:33:22');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `id_projet` int(6) NOT NULL AUTO_INCREMENT,
  `nom_projet` varchar(250) DEFAULT NULL,
  `reference_projet` varchar(250) DEFAULT NULL,
  `direction_chef_projet` varchar(250) DEFAULT NULL,
  `service_chef_projet` varchar(250) DEFAULT NULL,
  `chef_projet` varchar(250) DEFAULT NULL,
  `departement_chef_etude` varchar(250) DEFAULT NULL,
  `responsable_etude` varchar(250) DEFAULT NULL,
  `direction_responsable_etude` varchar(250) DEFAULT NULL,
  `service_responsable_etude` varchar(250) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id_projet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `quartiers`
--

DROP TABLE IF EXISTS `quartiers`;
CREATE TABLE IF NOT EXISTS `quartiers` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_commune` int(11) DEFAULT NULL,
  `quartier` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quartiers`
--

INSERT INTO `quartiers` (`id`, `id_commune`, `quartier`) VALUES
(1, 2, 'SAINT MICHEL');

-- --------------------------------------------------------

--
-- Structure de la table `rack_equipement`
--

DROP TABLE IF EXISTS `rack_equipement`;
CREATE TABLE IF NOT EXISTS `rack_equipement` (
  `id_rack` smallint(6) NOT NULL AUTO_INCREMENT,
  `id_salle` smallint(6) DEFAULT NULL,
  `code` char(32) CHARACTER SET latin1 NOT NULL,
  `nom_rack` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `marque` char(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `image1` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `image2` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `image3` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `image4` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_rack`),
  KEY `fk_salle` (`id_salle`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rack_equipement`
--

INSERT INTO `rack_equipement` (`id_rack`, `id_salle`, `code`, `nom_rack`, `marque`, `description`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 2, 'AI12', 'baie DSLAM', 'ALCATEL 7302 ISAM', 'c\'est une baie qui contient un seul equipement', 'bd9KT.jpg', '', '', ''),
(2, 1, 'af01', 'baie', 'NOKIA', 'c\'est une baie  RNC_cocody   constituÃ©e de 4 equipements', 'mNRaI.jpg', '2bxWd.', '', '0qOVy.jpg'),
(3, 1, 'ad01', 'baie', 'inconnu', 'baie otarie comportant 5 equipements', 'YW9mA.', 'J8vcT.jpg', '', ''),
(8, 1, 'AD10', 'BAIE MEVO', 'SUN RAK', 'c\'est une baie dont tous les equipements se forment en un pour faire de la messagerie vocale', 'Ou5e0.PNG', 'LezcN.PNG', 'seJgu.PNG', NULL),
(9, 1, 'AE01', 'BAIE  HUAWEI   CORE PS   UGW9811', 'HUAWEI', 'c\'est une baie contenant un equipement qui fait du trafique data', '1lsh7.PNG', '', 'CPOJy.PNG', ''),
(10, 1, 'AE02', 'BAIE  HUAWEI  CORE PS  B2USN9810', 'HUAWEI', 'c\'est une baies qui contient des equipement  des equipement qui font du trafique data', 'stVMy.PNG', 'rE2oB.PNG', 'AhduI.PNG', 'anNC1.PNG'),
(11, 1, 'AE03', 'BAIE  HUAWEI   CORE PS', 'huawei', 'c\'est une baie d\'equipement  HUAWEI  Eudemon 8000E Series', 'sPIE5.PNG', 'hsZTE.PNG', 'Lxzbo.PNG', '80h1m.PNG'),
(12, 1, 'AE04', 'BAIE  HUAWEI   CORE PS', 'Huawei', 'C\'est une rack de qui est constitué de 4 equipement delivrant le meme service', NULL, 'bt53Q.PNG', 'MlrgT.PNG', 'RBnY0.PNG'),
(13, 1, 'AE05', 'BAIE  HUAWEI   CORE PS', 'HUAWEI', 'C\'est une baie qui fusionne deux equipements pour delivrer les meme service', 'ZbBlY.PNG', 'xk2gm.PNG', '', ''),
(14, 1, 'AE06', 'NOKIA', 'huawei', 'c\'est une baie qui contient deux equipements delivrant le meme service', 'vJmZg.PNG', '0iRAn.PNG', 'p4YIo.PNG', '985Y2.PNG'),
(15, 1, 'AE07', 'BAIE  HP  server  NOKIA NETACT(naoci)', 'NOKIA', 'c\'est une baie qui contient onze equipements delivrant le meme service', 'dzVvk.PNG', 'avVJw.PNG', 'q75pA.PNG', '7SJ9p.PNG'),
(16, 1, 'AF02', 'Baie Exploitation IP', 'AD', 'AD', '', 'zvXVF.PNG', 'NS5y4.PNG', ''),
(17, 1, 'AD02', 'Baie  Alcatel lucent', 'ALCATEL lucent', 'c\'est un racque doté de trois equipements', '', 'seCmY.PNG', 'lhykQ.PNG', ''),
(18, 1, 'AA08', 'BAIE  HUAWEI  ZENITH IMS', 'Zenith', 'baie constiuée de 6 equipement pour delivrer le meme service à un type de client', 'bO4Kd.PNG', '2rnkF.PNG', 'AyhvW.PNG', ''),
(19, 1, 'AA07', 'BAIE  HUAWEI  ZENITH  SE2600', 'HUAWEI', 'C\'est une baie à un seul equipement', '', 'ZFRS5.PNG', 'ZAm7N.PNG', ''),
(20, 0, 'AA09', 'BAIE  HUAWEI  ZENITH IMS', 'zenith', 'c\'est une baie qui contient deux equipements delivrant le meme service', 'N5Db6.PNG', 'yRciB.PNG', 'gHs2V.PNG', ''),
(21, 1, 'AA10', 'BAIE  HUAWEI  ZENITH UMG8900', 'huawei', 'c\'est une baie contenant trois equipement pour delivrer le meme service', 'eHfZ0.PNG', '', 'RQ7Wl.PNG', 'waiFc.PNG'),
(22, 1, 'AF04', 'BAIE STORAGE', 'AD', 'baie contenant deux équipements', 'hx8Tp.PNG', '', 'YbQgF.PNG', 'FcGVp.PNG'),
(23, 1, 'AF05', 'BAIE PROMOTION', 'huawei', 'AD', 'TrtoZ.PNG', 'pUDuT.PNG', 'rbZp9.PNG', ''),
(26, 1, 'YEZ', 'USMA SERVEUR', 'HUAWEI', 'c\'est une baie qui contient un seul equipement', 'gaoD1.PNG', 'zWswu.PNG', 'GJQEl.PNG', 'WQs7Z.PNG'),
(25, 1, 'AF06', 'BAIE   CRBTCR', 'AD', 'Rack de plusieurs équipements délivrant le meme services en complementarité', '', 'o5uMz.PNG', 'HSkpt.PNG', 'JVntk.PNG'),
(27, 1, 'AH01', 'baie CSN', 'ALCATEL', 'c\'est une baie CSN de plusieurs équipements', '', '', '', ''),
(28, 1, 'AA02', 'BAIE  quidway huawei', 'HUAWEI', 'c\'es une baie quios data et voix', 'QA3IB.PNG', 'SrY6u.PNG', '', ''),
(29, 1, 'AA06', 'baie d\'équipement management et de teste de data', 'AD', 'c\'est une baie qui contient deux routers sisco et un robot', 'S1mhA.PNG', 'muKsh.PNG', '', ''),
(30, 1, 'AF08', 'Baie SN TV', '', 'c\'est une baie de robots', 'Xcrds.PNG', 'bJ3NK.PNG', '', ''),
(32, 2, 'jhgh', 'jhgh', 'j', 'hgyh', '', '', '', ''),
(33, 1, 'jjjf', 'dfkdk', 'dkkd', 'gtjiji', '', '', '', ''),
(34, 3, 'OKO', 'ppgop', 'KIO', 'JK', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_pays` int(11) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`id`, `id_pays`, `region`) VALUES
(1, 1, 'LAGUNES');

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

DROP TABLE IF EXISTS `salles`;
CREATE TABLE IF NOT EXISTS `salles` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_batiment` int(11) DEFAULT NULL,
  `id_type_salle` int(11) DEFAULT NULL,
  `reference` varchar(30) DEFAULT NULL,
  `salle` varchar(50) DEFAULT NULL,
  `description` text,
  `niveau` tinyint(4) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tmp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id`, `id_batiment`, `id_type_salle`, `reference`, `salle`, `description`, `niveau`, `date_creation`, `tmp`) VALUES
(1, 2, 3, 'SAL-759B-1', 'SALLE SAL-759B-1', '', 1, '2020-03-29 07:58:39', NULL),
(2, 2, 3, 'SAL-759B-2', 'SALLE SAL-759B-2', '', 1, '2020-03-29 07:58:39', NULL),
(3, 2, 1, 'SAL-F1E5-1', 'SALLE SAL-F1E5-1', '', 2, '2020-03-29 08:13:16', NULL),
(4, 2, 1, 'SAL-F1E5-2', 'SALLE SAL-F1E5-2', '', 2, '2020-03-29 08:13:16', NULL),
(5, 2, 1, 'SAL-F1E5-3', 'SALLE SAL-F1E5-3', '', 2, '2020-03-29 08:13:16', NULL),
(6, 2, 1, 'SAL-F1E5-4', 'SALLE SAL-F1E5-4', '', 2, '2020-03-29 08:13:16', NULL),
(7, 2, 5, 'SAL-EC47-1', 'SALLE SAL-EC47-1', '', 1, '2020-03-29 08:51:14', NULL),
(8, 11, 7, 'SAL-7724-1', 'SALLE SAL-7724-1', '', 1, '2020-03-29 09:18:56', NULL),
(9, 11, 6, 'SAL-E9A9-1', 'SALLE SAL-E9A9-1', '', 1, '2020-03-29 09:19:22', NULL),
(10, 2, 4, 'SAL-1D9B-1', 'SALLE SAL-1D9B-1', '', 1, '2020-03-30 02:58:57', NULL),
(11, 2, 4, 'SAL-1D9B-2', 'SALLE SAL-1D9B-2', '', 1, '2020-03-30 02:58:57', NULL),
(12, 4, 2, 'SAL-CCEE-1', 'SALLE SAL-CCEE-1', '', 1, '2020-03-30 09:32:42', NULL),
(13, 4, 2, 'SAL-CCEE-2', 'SALLE SAL-CCEE-2', '', 1, '2020-03-30 09:32:42', NULL),
(14, 4, 2, 'SAL-CCEE-3', 'SALLE SAL-CCEE-3', '', 1, '2020-03-30 09:32:42', NULL),
(15, 4, 2, 'SAL-CCEE-4', 'SALLE SAL-CCEE-4', '', 1, '2020-03-30 09:32:42', NULL),
(16, 4, 2, 'SAL-CCEE-5', 'SALLE SAL-CCEE-5', '', 1, '2020-03-30 09:32:42', NULL),
(17, 4, 5, 'SAL-8B79-1', 'SALLE SAL-8B79-1', '', 1, '2020-03-30 09:34:33', NULL),
(18, 4, 5, 'SAL-8B79-2', 'SALLE SAL-8B79-2', '', 1, '2020-03-30 09:34:33', NULL),
(19, 4, 3, 'SAL-4390-1', 'SALLE SAL-4390-1', '', 1, '2020-03-30 09:34:52', NULL),
(20, 4, 4, 'SAL-0E51-1', 'SALLE SAL-0E51-1', '', 1, '2020-03-30 09:35:08', NULL),
(21, 5, 2, 'SAL-A37C-1', 'SALLE SAL-A37C-1', '', 1, '2020-03-30 09:37:22', NULL),
(22, 5, 2, 'SAL-A37C-2', 'SALLE SAL-A37C-2', '', 1, '2020-03-30 09:37:22', NULL),
(23, 5, 2, 'SAL-A37C-3', 'SALLE SAL-A37C-3', '', 1, '2020-03-30 09:37:22', NULL),
(24, 5, 2, 'SAL-A37C-4', 'SALLE SAL-A37C-4', '', 1, '2020-03-30 09:37:22', NULL),
(25, 5, 2, 'SAL-A37C-5', 'SALLE SAL-A37C-5', '', 1, '2020-03-30 09:37:22', NULL),
(26, 5, 2, 'SAL-A37C-6', 'SALLE SAL-A37C-6', '', 1, '2020-03-30 09:37:22', NULL),
(27, 5, 2, 'SAL-A37C-7', 'SALLE SAL-A37C-7', '', 1, '2020-03-30 09:37:22', NULL),
(28, 5, 2, 'SAL-A37C-8', 'SALLE SAL-A37C-8', '', 1, '2020-03-30 09:37:22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `salles_elements`
--

DROP TABLE IF EXISTS `salles_elements`;
CREATE TABLE IF NOT EXISTS `salles_elements` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_salle` int(11) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tmp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salles_elements`
--

INSERT INTO `salles_elements` (`id`, `id_salle`, `id_element`, `reference`, `date_creation`, `tmp`) VALUES
(1, 3, 10, 'ACLM-817D-1', '2020-03-30 08:25:56', NULL),
(2, 3, 10, 'ACLM-817D-2', '2020-03-30 08:25:56', NULL),
(3, 3, 3, 'PRN-06FE-1', '2020-03-30 08:26:25', NULL),
(4, 3, 3, 'PRN-06FE-2', '2020-03-30 08:26:25', NULL),
(5, 3, 3, 'PRN-06FE-3', '2020-03-30 08:26:25', NULL),
(6, 10, 11, 'SRV-FB87-1', '2020-03-30 08:28:38', 'EL-QRCODE-SRV-FB87-1.png'),
(7, 10, 11, 'SRV-FB87-2', '2020-03-30 08:28:38', 'EL-QRCODE-SRV-FB87-2.png'),
(8, 10, 11, 'SRV-FB87-3', '2020-03-30 08:28:38', 'EL-QRCODE-SRV-FB87-3.png'),
(9, 10, 11, 'SRV-FB87-4', '2020-03-30 08:28:38', 'EL-QRCODE-SRV-FB87-4.png'),
(10, 10, 11, 'SRV-FB87-5', '2020-03-30 08:28:38', 'EL-QRCODE-SRV-FB87-5.png'),
(11, 10, 9, 'CLM-86B3-1', '2020-03-30 08:28:51', 'EL-QRCODE-CLM-86B3-1.png'),
(12, 10, 9, 'CLM-86B3-2', '2020-03-30 08:28:51', 'EL-QRCODE-CLM-86B3-2.png'),
(13, 10, 10, 'ACLM-4A60-1', '2020-03-30 08:29:03', NULL),
(14, 10, 2, 'DESK-6809-1', '2020-03-30 08:29:12', 'EL-QRCODE-DESK-6809-1.png'),
(15, 10, 2, 'DESK-6809-2', '2020-03-30 08:29:12', 'EL-QRCODE-DESK-6809-2.png'),
(16, 10, 2, 'DESK-6809-3', '2020-03-30 08:29:12', 'EL-QRCODE-DESK-6809-3.png'),
(17, 3, 3, 'PRN-1900-1', '2020-03-30 10:33:57', NULL),
(18, 3, 3, 'PRN-1900-2', '2020-03-30 10:33:57', NULL),
(19, 4, 10, 'ACLM-3558-1', '2020-04-01 09:40:01', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `salles_elements_champs`
--

DROP TABLE IF EXISTS `salles_elements_champs`;
CREATE TABLE IF NOT EXISTS `salles_elements_champs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_salle_element` int(11) DEFAULT NULL,
  `id_element_champ` int(11) DEFAULT NULL,
  `valeur` text,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salles_elements_series_fournisseurs`
--

DROP TABLE IF EXISTS `salles_elements_series_fournisseurs`;
CREATE TABLE IF NOT EXISTS `salles_elements_series_fournisseurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_salle_element` int(11) DEFAULT NULL,
  `id_serie` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salles_elements_series_fournisseurs`
--

INSERT INTO `salles_elements_series_fournisseurs` (`id`, `id_salle_element`, `id_serie`, `id_fournisseur`, `date_creation`) VALUES
(1, 11, 2, 3, '2020-03-31 19:50:42'),
(2, 12, 2, 2, '2020-03-31 19:51:04'),
(3, 14, 9, 2, '2020-04-01 15:37:37'),
(4, 15, 9, 3, '2020-04-01 15:37:44'),
(5, 16, 9, 3, '2020-04-01 15:37:47'),
(6, 6, 8, 2, '2020-04-01 15:38:08'),
(7, 7, 8, 2, '2020-04-01 15:38:10'),
(8, 8, 8, 2, '2020-04-01 15:38:12'),
(9, 9, 8, 2, '2020-04-01 15:38:14'),
(10, 10, 8, 2, '2020-04-01 15:38:17');

-- --------------------------------------------------------

--
-- Structure de la table `salles_elements_utilisateurs`
--

DROP TABLE IF EXISTS `salles_elements_utilisateurs`;
CREATE TABLE IF NOT EXISTS `salles_elements_utilisateurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_salle_element` int(11) DEFAULT NULL,
  `id_salle` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `date_utilisateur` date DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salles_elements_utilisateurs`
--

INSERT INTO `salles_elements_utilisateurs` (`id`, `id_salle_element`, `id_salle`, `id_utilisateur`, `date_utilisateur`, `date_creation`) VALUES
(1, 11, 9, 3, NULL, '2020-04-01 07:29:10'),
(2, 11, 8, 1, NULL, '2020-04-01 07:32:00'),
(3, 11, 9, 2, NULL, '2020-04-01 07:33:49'),
(4, 12, 9, 1, NULL, '2020-04-01 09:42:09');

-- --------------------------------------------------------

--
-- Structure de la table `salles_tmp`
--

DROP TABLE IF EXISTS `salles_tmp`;
CREATE TABLE IF NOT EXISTS `salles_tmp` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_salle` int(11) DEFAULT NULL,
  `tmp` varchar(50) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_modele` int(11) DEFAULT NULL,
  `serie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `series`
--

INSERT INTO `series` (`id`, `id_modele`, `serie`) VALUES
(1, 1, '1.5CV - 12000 BTU - R-410'),
(2, 1, '2CV - 12000 BTU - R-410'),
(3, 2, 'R22'),
(4, 2, 'R23'),
(5, 3, 'R-410'),
(6, 4, 'LED SERIE 5'),
(7, 4, 'LED SERIE 6'),
(8, 5, 'A10'),
(9, 6, 'D1');

-- --------------------------------------------------------

--
-- Structure de la table `service_equipement`
--

DROP TABLE IF EXISTS `service_equipement`;
CREATE TABLE IF NOT EXISTS `service_equipement` (
  `id_service` smallint(6) NOT NULL,
  `id_equipement` smallint(6) NOT NULL,
  PRIMARY KEY (`id_service`,`id_equipement`),
  KEY `I_FK_service_equipement_SERVICE_ORANGE` (`id_service`),
  KEY `I_FK_service_equipement_EQUIPEMENT` (`id_equipement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `service_equipement`
--

INSERT INTO `service_equipement` (`id_service`, `id_equipement`) VALUES
(5, 1),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(5, 34),
(5, 46),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(6, 67),
(6, 68),
(6, 69),
(6, 70),
(6, 71),
(6, 72),
(6, 73),
(6, 74),
(6, 75),
(6, 76),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(7, 2),
(7, 23),
(7, 24),
(7, 25),
(7, 26),
(7, 27),
(7, 28),
(7, 29),
(7, 30),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 35),
(7, 36),
(7, 37),
(7, 38),
(7, 39),
(7, 40),
(7, 41),
(7, 42),
(7, 43),
(7, 44),
(7, 45),
(8, 2),
(8, 8),
(8, 23),
(8, 24),
(8, 25),
(8, 26),
(8, 27),
(8, 28),
(8, 29),
(8, 30),
(8, 31),
(8, 32),
(8, 33),
(8, 34),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(9, 3),
(9, 4),
(9, 5),
(10, 6),
(10, 7),
(10, 8),
(11, 23),
(11, 24),
(11, 25),
(11, 26),
(11, 27),
(11, 28),
(11, 29),
(11, 30),
(11, 31),
(11, 32),
(11, 33),
(11, 34),
(11, 35),
(11, 36),
(11, 37),
(11, 38),
(11, 39),
(11, 40),
(11, 41),
(11, 42),
(11, 43),
(11, 44),
(11, 45),
(12, 23),
(12, 24),
(12, 25),
(12, 26),
(12, 27),
(12, 28),
(12, 29),
(12, 30),
(12, 31),
(12, 32),
(12, 33),
(12, 34),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 17),
(13, 18),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(14, 67),
(14, 68),
(14, 69),
(14, 70),
(14, 71),
(14, 72),
(14, 73),
(14, 74),
(14, 75),
(14, 76),
(14, 77),
(14, 78),
(14, 79),
(14, 80),
(14, 81),
(14, 82),
(14, 83),
(14, 84),
(14, 85),
(14, 86),
(14, 87),
(14, 88),
(15, 55),
(15, 56),
(15, 57),
(15, 58),
(15, 59),
(15, 60),
(15, 61),
(15, 62),
(15, 63),
(15, 64),
(15, 65),
(15, 66),
(16, 35),
(16, 36),
(16, 37),
(16, 38),
(16, 39),
(16, 40),
(16, 41),
(16, 42),
(16, 43),
(16, 44),
(16, 45),
(18, 90),
(18, 91),
(18, 92),
(18, 93),
(18, 96),
(18, 97),
(18, 98),
(18, 99),
(19, 94),
(19, 95),
(20, 94),
(20, 95);

-- --------------------------------------------------------

--
-- Structure de la table `service_orange`
--

DROP TABLE IF EXISTS `service_orange`;
CREATE TABLE IF NOT EXISTS `service_orange` (
  `id_service` smallint(6) NOT NULL,
  `designation` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service_orange`
--

INSERT INTO `service_orange` (`id_service`, `designation`) VALUES
(6, 'call signature'),
(5, 'DATA'),
(7, '2G'),
(8, '3G'),
(9, 'Application pour l\'analyse du comportement des clients mobile'),
(10, 'SecuritÃ© OCI'),
(11, '4G'),
(12, 'DATA ROMING'),
(13, 'Messagerie Vocale'),
(14, 'Funton'),
(15, 'VOIP'),
(16, 'mobile'),
(17, 'Energie'),
(18, 'Teste de voix et data'),
(19, 'platforme de service'),
(20, 'Intranet');

-- --------------------------------------------------------

--
-- Structure de la table `servir_equipement`
--

DROP TABLE IF EXISTS `servir_equipement`;
CREATE TABLE IF NOT EXISTS `servir_equipement` (
  `id_service` smallint(6) NOT NULL,
  `id_equipement` smallint(6) NOT NULL,
  PRIMARY KEY (`id_service`,`id_equipement`),
  KEY `I_FK_service_equipement_SERVICE_ORANGE` (`id_service`),
  KEY `I_FK_service_equipement_EQUIPEMENT` (`id_equipement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_quartier` int(11) DEFAULT NULL,
  `id_type_site` int(11) DEFAULT NULL,
  `reference` varchar(20) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `site_id_partners` varchar(250) DEFAULT NULL,
  `site_id_oci` varchar(250) DEFAULT NULL,
  `gestionnaire` varchar(225) DEFAULT NULL,
  `proprietaire` varchar(300) DEFAULT NULL,
  `technologie` varchar(250) DEFAULT NULL,
  `area_partners` varchar(255) DEFAULT NULL,
  `dimension` tinyint(4) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `type_baie` varchar(200) DEFAULT NULL,
  `type_pilonne` varchar(250) DEFAULT NULL,
  `uir_hw` varchar(250) DEFAULT NULL,
  `uir_oci` varchar(250) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `statut` varchar(200) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `projet` varchar(225) DEFAULT NULL,
  `site_type` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21732 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(1, 1, 2, 'ST-5C92', 'PROCURE D\'ABIDJAN', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-27 07:58:28', '', NULL),
(2, 1, 1, 'ST-9A95', 'PAROISSE SAINT MICHEL', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-28 07:19:19', '', NULL),
(3, 1, 1, 'ST-73BE', 'SITE ST-73BE', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-02 10:46:50', '', NULL),
(19147, NULL, NULL, NULL, 'ABADJIN', 'IHS_LGN_641O', 'OCI0001', 'IHS', 'OCI', NULL, NULL, NULL, '-4.141948', 'Indoor', 'Autostable', NULL, NULL, '5.338581', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19148, NULL, NULL, NULL, 'ABATA', 'IHS_LGN_616O', 'OCI0002', 'IHS', 'OCI', NULL, NULL, NULL, '-3.91711000', 'Outdoor', 'Autostable', NULL, NULL, '5.33722000', 'En service', NULL, 'DENSIF 2010', NULL),
(19149, NULL, NULL, NULL, 'ABATTOIR', 'IHS_LGN_569O', 'OCI0003', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96679000', 'Indoor', 'Autostable', NULL, NULL, '5.26283000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19150, NULL, NULL, NULL, 'ABEBROUKOI', 'IHS_LGN_653O', 'OCI0004', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06791700', 'Outdoor', 'Autostable', NULL, NULL, '5.45516700', 'En service', NULL, 'DENSIF 2010', NULL),
(19151, NULL, NULL, NULL, 'ABENGOUROU', 'IHS_MCE_001O', 'OCI0005', 'IHS', 'OCI', NULL, NULL, NULL, '-3.49582778', 'Indoor', 'Haubané', NULL, NULL, '6.72751111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19152, NULL, NULL, NULL, 'ABENGOUROU_CIT', 'OCIT_Strat_01', 'OCI0006', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-3.48541667', 'Indoor', 'autostable', NULL, NULL, '6.73000000', 'En service', NULL, 'SHARING CIT 2010', NULL),
(19153, NULL, NULL, NULL, 'ABIA_ABETI', 'IHS_LGN_432O', 'OCI0007', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98148034', 'Outdoor', 'Autostable', NULL, NULL, '5.27498955', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19154, NULL, NULL, NULL, 'ABIE_CIT', 'IHS_AGN_034O', 'OCI0008', 'IHS', 'OCI', NULL, NULL, NULL, '-3.92150000', 'Outdoor', 'Haubané', NULL, NULL, '5.86833333', 'En service', NULL, 'RAN 1000', NULL),
(19155, NULL, NULL, NULL, 'ABOBO', 'IHS_LGN_540O', 'OCI0009', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01439625', 'Indoor', 'autostable', NULL, NULL, '5.42216415', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19156, NULL, NULL, NULL, 'ABOBO_ND', 'IHS_LGN_630O', 'OCI0010', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02125000', 'Indoor', 'Haubané', NULL, NULL, '5.44689000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19157, NULL, NULL, NULL, 'ABOBO_PLAQUE', 'IHS_LGN_631O', 'OCI0011', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00633333', 'Indoor', 'Haubané', NULL, NULL, '5.43630556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19158, NULL, NULL, NULL, 'ABOBO_UTB_MICRO_OD', 'IHS_LGN_541O', 'OCI0012', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01860957', 'Outdoor', 'MAT', NULL, NULL, '5.42122543', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19159, NULL, NULL, NULL, 'ABOBO_MAITE', 'IHS_LGN_538O', 'OCI0013', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99612868', 'Indoor', 'Autostable', NULL, NULL, '5.41667697', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19160, NULL, NULL, NULL, 'ABOBOTE', 'IHS_LGN_475O', 'OCI0014', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99729677', 'Indoor', 'Haubané', NULL, NULL, '5.40798265', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19161, NULL, NULL, NULL, 'ABOISSO', 'IHS_SCE_036O', 'OCI0015', 'IHS', 'OCI', NULL, NULL, NULL, '-3.21316667', 'Indoor', 'Haubané', NULL, NULL, '5.46633334', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19162, NULL, NULL, NULL, 'ABONGOUA', 'IHS_AGN_045O', 'OCI0016', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09583786', 'Indoor', 'Haubané', NULL, NULL, '6.64833564', 'En service', NULL, 'RAP', NULL),
(19163, NULL, NULL, NULL, 'ABONGOUA_ATTOBROU', 'IHS_AGN_044M', 'OCI0017', 'IHS', 'IHS', NULL, NULL, NULL, '-3.54872222', 'Outdoor', 'Haubané', NULL, NULL, '6.24708333', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19164, NULL, NULL, NULL, 'ABOUDE', 'IHS_AGN_076O', 'OCI0018', 'IHS', 'OCI', NULL, NULL, NULL, '-4.54622223', 'Indoor', 'Haubané', NULL, NULL, '5.89683334', 'En service', NULL, 'RAP', NULL),
(19165, NULL, NULL, NULL, 'ABY_NEW', 'ABJ119', 'OCI0019', 'Esco', 'Moov', NULL, NULL, NULL, '-3.16919', 'Outdoor', 'Autostable Mobile', NULL, NULL, '5.29725', 'En service', NULL, 'BOUCLIER', NULL),
(19166, NULL, NULL, NULL, 'ACADEMIE', 'IHS_LGN_558O', 'OCI0020', 'IHS', 'OCI', NULL, NULL, NULL, '-4.11100001', 'Indoor', 'Haubané', NULL, NULL, '5.31805000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19167, NULL, NULL, NULL, 'ADAHIDOUGOU', 'IHS_SBD_065O', 'OCI0021', 'IHS', 'OCI', NULL, NULL, NULL, '-5.23819445', 'Outdoor', 'Haubané', NULL, NULL, '5.31247223', 'En service', NULL, 'RAN 1000', NULL),
(19168, NULL, NULL, NULL, 'ADAOU', 'IHS_SCE_004M', 'OCI0022', 'IHS', 'IHS', NULL, NULL, NULL, '-3.26491944', 'Indoor', 'Haubané', NULL, NULL, '5.42549722', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19169, NULL, NULL, NULL, 'ADDAH', 'IHS_LGN_748O', 'OCI0023', 'IHS', 'OCI', NULL, NULL, NULL, '-4.64980556', 'Indoor', 'Autostable', NULL, NULL, '5.17655556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19170, NULL, NULL, NULL, 'ADEBEM', 'IHS_BSD_151O', 'OCI0024', 'IHS', 'OCI', NULL, NULL, NULL, '-5.83355833', 'Outdoor', 'Haubané', NULL, NULL, '5.47105278', 'En service', NULL, 'RAN 1000', NULL),
(19171, NULL, NULL, NULL, 'ADIAKE', 'IHS_SCE_017O', 'OCI0025', 'IHS', 'OCI', NULL, NULL, NULL, '-3.30444445', 'Indoor', 'Autostable', NULL, NULL, '5.28708334', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19172, NULL, NULL, NULL, 'ADIAPOTO', 'IHS_LGN_686O', 'OCI0026', 'IHS', 'OCI', NULL, NULL, NULL, '-4.19446250', 'Indoor', 'Autostable', NULL, NULL, '5.31777761', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19173, NULL, NULL, NULL, 'ADJAME', 'IHS_LGN_043O', 'OCI0027', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02608056', 'Indoor', 'Haubané', NULL, NULL, '5.34908056', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19174, NULL, NULL, NULL, 'ADJAMENE', 'IHS_BSD_029O', 'OCI0028', 'IHS', 'OCI', NULL, NULL, NULL, '-6.84988889', 'Outdoor', 'Haubané', NULL, NULL, '4.76541667', 'En service', NULL, 'RAN 1000', NULL),
(19175, NULL, NULL, NULL, 'ADJOUFFOU', 'IHS_LGN_683O', 'OCI0029', 'IHS', 'OCI', NULL, NULL, NULL, '-3.88820000', 'Outdoor', 'Autostable', NULL, NULL, '5.24231944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19176, NULL, NULL, NULL, 'ADZOPE_CIT', 'IHS_AGN_002O', 'OCI0030', 'IHS', 'OCI', NULL, NULL, NULL, '-3.85986111', 'Indoor', 'Autostable', NULL, NULL, '6.09869444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19177, NULL, NULL, NULL, 'AERIA', 'IHS_LGN_649M', 'OCI0031', 'IHS', 'IHS', NULL, NULL, NULL, '-3.93208333', 'Indoor', 'Haubané', NULL, NULL, '5.25525000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19178, NULL, NULL, NULL, 'AEROMICRO', 'OCI_Indoor_001', 'OCI0032', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.93294892', 'Outdoor', 'MAT', NULL, NULL, '5.25466699', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19179, NULL, NULL, NULL, 'AEROPORT', 'IHS_LGN_647O', 'OCI0033', 'IHS', 'OCI', NULL, NULL, NULL, '-3.93611111', 'Indoor', 'Haubané', NULL, NULL, '5.25525000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19180, NULL, NULL, NULL, 'AEROPORT_MICRO', 'OCI_Indoor_002', 'OCI0034', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.93217365', 'Outdoor', 'MAT', NULL, NULL, '5.25515659', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19181, NULL, NULL, NULL, 'AFFALIKRO', 'IHS_MCE_016O', 'OCI0035', 'IHS', 'OCI', NULL, NULL, NULL, '-3.37819167', 'Indoor', 'Haubané', NULL, NULL, '6.64450000', 'En service', NULL, 'VICTOIRE', NULL),
(19182, NULL, NULL, NULL, 'AFFERY', 'IHS_AGN_037O', 'OCI0036', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94950000', 'Indoor', 'Haubané', NULL, NULL, '6.32458333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19183, NULL, NULL, NULL, 'AFFIENOU', 'IHS_SCE_028O', 'OCI0037', 'IHS', 'OCI', NULL, NULL, NULL, '-2.92793889', 'Indoor', 'Autostable', NULL, NULL, '5.40619167', 'En service', NULL, 'VICTOIRE', NULL),
(19184, NULL, NULL, NULL, 'AGBAN', 'IHS_LGN_126O', 'OCI0038', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03071257', 'Indoor', 'MAT', NULL, NULL, '5.36231252', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19185, NULL, NULL, NULL, 'AGBOVILLE', 'IHS_AGN_050O', 'OCI0039', 'IHS', 'OCI', NULL, NULL, NULL, '-4.21266667', 'Indoor', 'Autostable', NULL, NULL, '5.93025000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19186, NULL, NULL, NULL, 'AGITEL', 'IHS_LGN_453O', 'OCI0041', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95355278', 'Outdoor', 'Autostable', NULL, NULL, '5.36252778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19187, NULL, NULL, NULL, 'AGNEBY', 'IHS_AGN_054O', 'OCI0042', 'IHS', 'OCI', NULL, NULL, NULL, '-4.21802778', 'Indoor', 'Autostable', NULL, NULL, '5.92838334', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19188, NULL, NULL, NULL, 'AGNIAN', 'IHS_NCE_014O', 'OCI0043', 'IHS', 'OCI', NULL, NULL, NULL, '-4.48822223', 'Indoor', 'Autostable', NULL, NULL, '6.50122223', 'En service', NULL, 'RAP', NULL),
(19189, NULL, NULL, NULL, 'AGNIBILEKRO', 'IHS_MCE_048O', 'OCI0044', 'IHS', 'OCI', NULL, NULL, NULL, '-3.20113889', 'Indoor', 'Haubané', NULL, NULL, '7.12644445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19190, NULL, NULL, NULL, 'AGOU', 'IHS_AGN_019O', 'OCI0045', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94969444', 'Indoor', 'Haubané', NULL, NULL, '5.98675000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19191, NULL, NULL, NULL, 'AHEOUA', 'IHS_AGN_039O', 'OCI0046', 'IHS', 'OCI', NULL, NULL, NULL, '-3.86202778', 'Outdoor', 'Haubané', NULL, NULL, '6.35783333', 'En service', NULL, 'DENSIF 2010', NULL),
(19192, NULL, NULL, NULL, 'AHEREMOU', 'IHS_LAC_086O', 'OCI0047', 'IHS', 'OCI', NULL, NULL, NULL, '-4.92894167', 'Indoor', 'Haubané', NULL, NULL, '6.25155556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19193, NULL, NULL, NULL, 'AHIZABRE', 'IHS_FMG_026O', 'OCI0048', 'IHS', 'OCI', NULL, NULL, NULL, '-6.09402778', 'Outdoor', 'Haubané', NULL, NULL, '6.04888889', 'En service', NULL, 'RAN 1000', NULL),
(19194, NULL, NULL, NULL, 'AHOUANOU', 'IHS_LGN_756M', 'OCI0049', 'IHS', 'IHS', NULL, NULL, NULL, '-4.86180556', 'Outdoor', 'Haubané', NULL, NULL, '5.51166667', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19195, NULL, NULL, NULL, 'AHOUGNAFOUTOU', 'IHS_VDB_043M', 'OCI0050', 'IHS', 'IHS', NULL, NULL, NULL, '-5.31897222', 'Outdoor', 'Haubané', NULL, NULL, '7.68705556', 'En service', NULL, 'DENSIF 2010', NULL),
(19196, NULL, NULL, NULL, 'AHOUGNANSSOU', 'IHS_VDB_013O', 'OCI0051', 'IHS', 'OCI', NULL, NULL, NULL, '-5.05680889', 'Indoor', 'Autostable', NULL, NULL, '7.68038854', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19197, NULL, NULL, NULL, 'AHOUTOUE_NEW', 'Moov', 'OCI0052', 'Moov', 'Moov', NULL, NULL, NULL, '-3.803226', 'Outdoor', NULL, NULL, NULL, '5.47385833', 'En service', NULL, NULL, NULL),
(19198, NULL, NULL, NULL, 'AIRFRANCE', 'IHS_VDB_011O', 'OCI0053', 'IHS', 'OCI', NULL, NULL, NULL, '-5.02016935', 'Indoor', 'Autostable', NULL, NULL, '7.66269890', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19199, NULL, NULL, NULL, 'AJAVON', 'IHS_LGN_490O', 'OCI0054', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95859167', 'Indoor', 'MAT', NULL, NULL, '5.29007500', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19200, NULL, NULL, NULL, 'AKATI', 'IHS_MCE_040O', 'OCI0055', 'IHS', 'OCI', NULL, NULL, NULL, '-3.20605556', 'Outdoor', 'Haubané', NULL, NULL, '6.40358333', 'En service', NULL, 'DENSIF 2010', NULL),
(19201, NULL, NULL, NULL, 'AKEIKOI', 'IHS_LGN_642O', 'OCI0056', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01159000', 'Indoor', 'Haubané', NULL, NULL, '5.45212000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19202, NULL, NULL, NULL, 'AKELIE', 'IHS_LGN_050O', 'OCI0057', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03828056', 'Indoor', 'Autostable', NULL, NULL, '5.32836112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19203, NULL, NULL, NULL, 'AKOBOISSUE', 'IHS_MCE_030O', 'OCI0058', 'IHS', 'OCI', NULL, NULL, NULL, '-3.23536240', 'Outdoor', 'Autostable', NULL, NULL, '6.96541416', 'En service', NULL, 'RAN 1000', NULL),
(19204, NULL, NULL, NULL, 'AKOI_NDENOU', 'IHS_LAC_076O', 'OCI0059', 'IHS', 'OCI', NULL, NULL, NULL, '-5.07497222', 'Outdoor', 'Haubané', NULL, NULL, '7.23858333', 'En service', NULL, 'CAMUSAT', NULL),
(19205, NULL, NULL, NULL, 'AKOUEBONZI', 'IHS_LAC_031O', 'OCI0060', 'IHS', 'OCI', NULL, NULL, NULL, '-5.33513525', 'Indoor', 'Autostable', NULL, NULL, '6.83596806', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19206, NULL, NULL, NULL, 'AKOUEDO', 'IHS_LGN_533O', 'OCI0061', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94038000', 'Indoor', 'Autostable', NULL, NULL, '5.35122000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19207, NULL, NULL, NULL, 'AKOUFLA', 'IHS_FMG_072O', 'OCI0062', 'IHS', 'OCI', NULL, NULL, NULL, '-5.49204167', 'Outdoor', 'Haubané', NULL, NULL, '6.34442778', 'En service', NULL, 'RAN 1000', NULL),
(19208, NULL, NULL, NULL, 'AKOUPE', 'IHS_AGN_040O', 'OCI0063', 'IHS', 'OCI', NULL, NULL, NULL, '-3.88622778', 'Indoor', 'Haubané', NULL, NULL, '6.38080278', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19209, NULL, NULL, NULL, 'AKOVIEBO', 'Moov_002', 'OCI0064', 'IHS', 'Moov', NULL, NULL, NULL, '-5.87352778', 'Outdoor', 'Haubané', NULL, NULL, '6.94610000', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19210, NULL, NULL, NULL, 'AKRADIO', 'IHS_LGN_716O', 'OCI0065', 'IHS', 'OCI', NULL, NULL, NULL, '-4.35945000', 'Outdoor', 'Haubané', NULL, NULL, '5.43278056', 'En service', NULL, 'RAP', NULL),
(19211, NULL, NULL, NULL, 'AKRESSI', 'IHS_SCE_018O', 'OCI0066', 'IHS', 'OCI', NULL, NULL, NULL, '-3.07216667', 'Outdoor', 'Haubané', NULL, NULL, '5.66488889', 'En service', NULL, 'DENSIF 2010', NULL),
(19212, NULL, NULL, NULL, 'AKRIDOULADE', 'IHS_SBD_037O', 'OCI0067', 'IHS', 'OCI', NULL, NULL, NULL, '-5.60599722', 'Outdoor', 'Haubané', NULL, NULL, '5.63577778', 'En service', NULL, 'RAN 1000', NULL),
(19213, NULL, NULL, NULL, 'AKROU', 'IHS_LGN_718O', 'OCI0068', 'IHS', 'OCI', NULL, NULL, NULL, '-4.35584514', 'Indoor', 'Autostable', NULL, NULL, '5.21141156', 'En service', NULL, 'RAP', NULL),
(19214, NULL, NULL, NULL, 'AKWABA', 'IHS_LGN_561O', 'OCI0069', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96142086', 'Indoor', 'Haubané', NULL, NULL, '5.26886105', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19215, NULL, NULL, NULL, 'ALEPE', 'IHS_SCE_066O', 'OCI0070', 'IHS', 'OCI', NULL, NULL, NULL, '-3.66079167', 'Indoor', 'Autostable', NULL, NULL, '5.50168056', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19216, NULL, NULL, NULL, 'ALERIA', 'IHS_LGN_961O', 'OCI0071', 'IHS', 'OCI', NULL, NULL, NULL, '-3.83049315', 'Outdoor', 'Autostable', NULL, NULL, '5.22391193', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19217, NULL, NULL, NULL, 'ALLABRA', 'IHS_LGN_346O', 'OCI0072', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96261667', 'Indoor', 'Autostable', NULL, NULL, '5.35002779', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19218, NULL, NULL, NULL, 'ALLAKRO', 'IHS_SCE_087O', 'OCI0073', 'IHS', 'OCI', NULL, NULL, NULL, '-2.90219444', 'Outdoor', 'Haubané', NULL, NULL, '5.28422222', 'En service', NULL, 'RAN 1000', NULL),
(19219, NULL, NULL, NULL, 'ALLAKRO_BOUAKE', 'IHS_VDB_041M', 'OCI0074', 'IHS', 'IHS', NULL, NULL, NULL, '-5.05644444', 'Outdoor', 'Haubané', NULL, NULL, '7.93708333', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19220, NULL, NULL, NULL, 'ALLEY', 'IHS_LGN_221O', 'OCI0075', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06872600', 'Outdoor', 'Autostable', NULL, NULL, '5.32699900', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19221, NULL, NULL, NULL, 'ALLIODAN', 'IHS_LGN_408O', 'OCI0076', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95810833', 'Indoor', 'Autostable', NULL, NULL, '5.31083333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19222, NULL, NULL, NULL, 'ALLOCODROME', 'IHS_LGN_364O', 'OCI0077', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08877778', 'Indoor', 'Haubané', NULL, NULL, '5.31972223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19223, NULL, NULL, NULL, 'ALLOKODIEKRO', 'IHS_VDB_048O', 'OCI0078', 'IHS', 'OCI', NULL, NULL, NULL, '-5.25772222', 'Outdoor', 'Haubané', NULL, NULL, '7.34530556', 'En service', NULL, 'DENSIF 2010', NULL),
(19224, NULL, NULL, NULL, 'AMELEKIA', 'IHS_MCE_013O', 'OCI0080', 'IHS', 'OCI', NULL, NULL, NULL, '-3.56825000', 'Outdoor', 'Haubané', NULL, NULL, '6.82352778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19225, NULL, NULL, NULL, 'AMICA', 'Moov_003', 'OCI0081', 'IHS', 'Moov', NULL, NULL, NULL, '-4.06050000', 'Outdoor', 'Haubané', NULL, NULL, '5.32266667', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19226, NULL, NULL, NULL, 'AMITIE', 'IHS_LGN_302O', 'OCI0082', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97595727', 'Outdoor', 'MAT', NULL, NULL, '5.30330985', 'En service', NULL, 'DENSIF 2009', NULL),
(19227, NULL, NULL, NULL, 'AMORIAKRO', 'IHS_MCE_069O', 'OCI0083', 'IHS', 'OCI', NULL, NULL, NULL, '-3.52425000', 'Outdoor', 'Haubané', NULL, NULL, '7.09255556', 'En service', NULL, 'RAN 1000', NULL),
(19228, NULL, NULL, NULL, 'ANADA_KOUADIOKRO', 'IHS_NCE_048O', 'OCI0084', 'IHS', 'OCI', NULL, NULL, NULL, '-4.25197222', 'Indoor', 'Haubané', NULL, NULL, '7.28475000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19229, NULL, NULL, NULL, 'ANADER', 'IHS_FMG_011O', 'OCI0085', 'IHS', 'OCI', NULL, NULL, NULL, '-5.96928056', 'Indoor', 'Autostable', NULL, NULL, '6.12016667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19230, NULL, NULL, NULL, 'ANADOR', 'IHS_LGN_334O', 'OCI0086', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02013889', 'Indoor', 'Autostable', NULL, NULL, '5.39627778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19231, NULL, NULL, NULL, 'ANANERAIE', 'IHS_LGN_457O', 'OCI0087', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09954094', 'Indoor', 'Haubané', NULL, NULL, '5.34657216', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19232, NULL, NULL, NULL, 'ANANGUIE', 'IHS_AGN_021O', 'OCI0088', 'IHS', 'OCI', NULL, NULL, NULL, '-4.47647223', 'Outdoor', 'Haubané', NULL, NULL, '6.06092500', 'En service', NULL, 'RAN 1000', NULL),
(19233, NULL, NULL, NULL, 'ANANGUIE_ADZOPE', 'IHS_AGN_020O', 'OCI0089', 'IHS', 'OCI', NULL, NULL, NULL, '-3.76436111', 'Outdoor', 'Haubané', NULL, NULL, '6.22519444', 'En service', NULL, 'ELEPHANT', NULL),
(19234, NULL, NULL, NULL, 'ANAULICE', 'IHS_LGN_073O', 'OCI0090', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00699132', 'Outdoor', 'Haubané', NULL, NULL, '5.34290498', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19235, NULL, NULL, NULL, 'ANCIEN_PROZI', 'IHS_HSD_113O', 'OCI0091', 'IHS', 'OCI', NULL, NULL, NULL, '-6.96430556', 'Outdoor', 'Haubané', NULL, NULL, '7.66330556', 'En service', NULL, 'RAN 1000', NULL),
(19236, NULL, NULL, NULL, 'ANDE', 'IHS_NCE_040O', 'OCI0092', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08296667', 'Outdoor', 'Haubané', NULL, NULL, '6.78007778', 'En service', NULL, 'RAP', NULL),
(19237, NULL, NULL, NULL, 'ANDOKEKRENOU', 'IHS_VDB_066M', 'OCI0093', 'IHS', 'IHS', NULL, NULL, NULL, '-5.57716667', 'Outdoor', 'Haubané', NULL, NULL, '7.50708333', 'En service', NULL, 'DENSIF 2010', NULL),
(19238, NULL, NULL, NULL, 'ANDOKOI', 'IHS_LGN_277O', 'OCI0094', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06750900', 'Indoor', 'Haubané', NULL, NULL, '5.36456500', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19239, NULL, NULL, NULL, 'ANG_TERM', 'IHS_LGN_491O', 'OCI0095', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98513341', 'Indoor', 'Haubané', NULL, NULL, '5.40411310', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19240, NULL, NULL, NULL, 'ANGAMAN', 'IHS_LGN_573O', 'OCI0096', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00973000', 'Indoor', 'Autostable', NULL, NULL, '5.42611000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19241, NULL, NULL, NULL, 'ANGODA', 'IHS_LAC_056O', 'OCI0097', 'IHS', 'OCI', NULL, NULL, NULL, '-5.01452779', 'Indoor', 'Haubané', NULL, NULL, '6.66427778', 'En service', NULL, 'RAP', NULL),
(19242, NULL, NULL, NULL, 'ANGOVIA', 'IHS_MRH_014O', 'OCI0098', 'IHS', 'OCI', NULL, NULL, NULL, '-5.52797223', 'Outdoor', 'Haubané', NULL, NULL, '7.03594445', 'En service', NULL, 'DENSIF 2010', NULL),
(19243, NULL, NULL, NULL, 'ANGRE', 'IHS_LGN_352O', 'OCI0099', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98755556', 'Indoor', 'Autostable', NULL, NULL, '5.38752778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19244, NULL, NULL, NULL, 'ANIASSUE', 'IHS_MCE_020O', 'OCI0100', 'IHS', 'OCI', NULL, NULL, NULL, '-3.68325000', 'Indoor', 'Haubané', NULL, NULL, '6.65858333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19245, NULL, NULL, NULL, 'ANOMA', 'IHS_LGN_285O', 'OCI0101', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97066667', 'Indoor', 'Autostable', NULL, NULL, '5.34830556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19246, NULL, NULL, NULL, 'ANONO', 'IHS_LGN_272O', 'OCI0102', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97205556', 'Indoor', 'MAT', NULL, NULL, '5.34030556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19247, NULL, NULL, NULL, 'ANOUMANBA', 'IHS_NCE_022O', 'OCI0104', 'IHS', 'OCI', NULL, NULL, NULL, '-4.52341667', 'Indoor', 'Haubané', NULL, NULL, '6.32297223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19248, NULL, NULL, NULL, 'ANYAMA', 'IHS_LGN_682O', 'OCI0105', 'IHS', 'OCI', NULL, NULL, NULL, '-4.04997222', 'Indoor', 'Haubané', NULL, NULL, '5.49450000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19249, NULL, NULL, NULL, 'APOISSO', 'IHS_MCE_018O', 'OCI0106', 'IHS', 'OCI', NULL, NULL, NULL, '-3.42291667', 'Indoor', 'Haubané', NULL, NULL, '6.54897223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19250, NULL, NULL, NULL, 'APPIMADOUM', 'IHS_ZNZ_011O', 'OCI0107', 'IHS', 'OCI', NULL, NULL, NULL, '-2.86830556', 'Outdoor', 'Haubané', NULL, NULL, '7.89619444', 'En service', NULL, 'CAMUSAT', NULL),
(19251, NULL, NULL, NULL, 'APPOUASSO_AYAME', 'IHS_SCE_068O', 'OCI0108', 'IHS', 'OCI', NULL, NULL, NULL, '-3.17483333', 'Outdoor', 'Haubané', NULL, NULL, '5.96955556', 'En service', NULL, 'ELEPHANT', NULL),
(19252, NULL, NULL, NULL, 'APPROMPROM', 'IHS_MCE_042O', 'OCI0109', 'IHS', 'OCI', NULL, NULL, NULL, '-3.31191667', 'Indoor', 'Haubané', NULL, NULL, '6.29572223', 'En service', NULL, 'RAP', NULL),
(19253, NULL, NULL, NULL, 'APPROPRONOU', 'IHS_MCE_027O', 'OCI0110', 'IHS', 'OCI', NULL, NULL, NULL, '-3.36330556', 'Outdoor', 'Haubané', NULL, NULL, '6.99516667', 'En service', NULL, 'DENSIF 2010', NULL),
(19254, NULL, NULL, NULL, 'ARCHEVECHE', 'IHS_LGN_058O', 'OCI0111', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00758334', 'Indoor', 'Autostable', NULL, NULL, '5.33019445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19255, NULL, NULL, NULL, 'ARIKOKRO', 'IHS_NCE_049O', 'OCI0112', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06730556', 'Outdoor', 'Haubané', NULL, NULL, '7.12663889', 'En service', NULL, 'DENSIF 2010', NULL),
(19256, NULL, NULL, NULL, 'ARRAH', 'IHS_NCE_046O', 'OCI0113', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97025000', 'Indoor', 'Autostable', NULL, NULL, '6.68172222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19257, NULL, NULL, NULL, 'ARRAS', 'IHS_LGN_190O', 'OCI0114', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00292778', 'Indoor', 'Haubané', NULL, NULL, '5.29982223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19258, NULL, NULL, NULL, 'ARTISANAL_NEW', 'MOOV', 'OCI0115', 'Moov', 'Moov', NULL, NULL, NULL, '-3.76025000', 'Indoor', 'Autostable', NULL, NULL, '5.20986112', 'En service', NULL, NULL, NULL),
(19259, NULL, NULL, NULL, 'ASRIKRO', 'IHS_VDB_034O', 'OCI0116', 'IHS', 'OCI', NULL, NULL, NULL, '-5.16827701', 'Outdoor', 'Haubané', NULL, NULL, '7.58908457', 'En service', NULL, 'ELEPHANT', NULL),
(19260, NULL, NULL, NULL, 'ASSALE-KOUASSIKRO', 'IHS_NCE_054O', 'OCI0117', 'IHS', 'OCI', NULL, NULL, NULL, '-3.89913889', 'Outdoor', 'Haubané', NULL, NULL, '6.96244444', 'En service', NULL, NULL, NULL),
(19261, NULL, NULL, NULL, 'ASSANDRE', 'IHS_VDB_055O', 'OCI0118', 'IHS', 'OCI', NULL, NULL, NULL, '-5.39547223', 'Outdoor', 'Haubané', NULL, NULL, '7.36905556', 'En service', NULL, 'RAN 1000', NULL),
(19262, NULL, NULL, NULL, 'ASSIE_KOUMASSI', 'IHS_NCE_028O', 'OCI0119', 'IHS', 'OCI', NULL, NULL, NULL, '-4.28872223', 'Outdoor', 'Haubané', NULL, NULL, '6.76977778', 'En service', NULL, 'RAP', NULL),
(19263, NULL, NULL, NULL, 'ASSIKOI', 'IHS_AGN_016O', 'OCI0120', 'IHS', 'OCI', NULL, NULL, NULL, '-3.80838856', 'Outdoor', 'Haubané', NULL, NULL, '5.99280396', 'En service', NULL, 'RAP', NULL),
(19264, NULL, NULL, NULL, 'ASSINIE', 'IHS_SCE_060O', 'OCI0121', 'IHS', 'OCI', NULL, NULL, NULL, '-3.48991667', 'Indoor', 'Autostable', NULL, NULL, '5.16261112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19265, NULL, NULL, NULL, 'ASSOUVOUE', 'IHS_LAC_072O', 'OCI0122', 'IHS', 'OCI', NULL, NULL, NULL, '-4.98163056', 'Indoor', 'Haubané', NULL, NULL, '6.48150833', 'En service', NULL, NULL, NULL),
(19266, NULL, NULL, NULL, 'ASUEFFRY', 'IHS_ZNZ_022O', 'OCI0123', 'IHS', 'OCI', NULL, NULL, NULL, '-2.97766667', 'Indoor', 'Haubané', NULL, NULL, '7.70347223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19267, NULL, NULL, NULL, 'ATLANTIC', 'IHS_LGN_032O', 'OCI0124', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01944722', 'Indoor', 'MAT', NULL, NULL, '5.32277778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19268, NULL, NULL, NULL, 'ATTIA', 'IHS_SCE_051O', 'OCI0125', 'IHS', 'OCI', NULL, NULL, NULL, '-3.38463400', 'Indoor', 'Autostable', NULL, NULL, '5.14730700', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19269, NULL, NULL, NULL, 'ATTIE', 'IHS_LGN_314O', 'OCI0126', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08336112', 'Outdoor', 'Autostable', NULL, NULL, '5.33286112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19270, NULL, NULL, NULL, 'ATTIEGOUAKRO', 'IHS_LAC_044O', 'OCI0127', 'IHS', 'OCI', NULL, NULL, NULL, '-5.11508334', 'Indoor', 'Haubané', NULL, NULL, '6.77222223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19271, NULL, NULL, NULL, 'ATTIEKOI', 'IHS_LGN_694O', 'OCI0128', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96872222', 'Outdoor', 'Haubané', NULL, NULL, '5.54113889', 'En service', NULL, 'DENSIF 2010', NULL),
(19272, NULL, NULL, NULL, 'ATTINGUIE', 'IHS_LGN_690O', 'OCI0129', 'IHS', 'OCI', NULL, NULL, NULL, '-4.18406667', 'Indoor', 'Haubané', NULL, NULL, '5.45904167', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19273, NULL, NULL, NULL, 'ATTOBAN', 'IHS_LGN_281O', 'OCI0130', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97975000', 'Indoor', 'Haubané', NULL, NULL, '5.36708333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19274, NULL, NULL, NULL, 'ATTOUNGBLAN', 'IHS_LAC_019O', 'OCI0132', 'IHS', 'OCI', NULL, NULL, NULL, '-5.24758410', 'Indoor', 'Haubané', NULL, NULL, '6.80489218', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19275, NULL, NULL, NULL, 'AYAME', 'IHS_SCE_009O', 'OCI0134', 'IHS', 'OCI', NULL, NULL, NULL, '-3.15900001', 'Indoor', 'Autostable', NULL, NULL, '5.60766667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19276, NULL, NULL, NULL, 'AZAGUIE', 'IHS_LGN_693O', 'OCI0135', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07616667', 'Indoor', 'Haubané', NULL, NULL, '5.64477778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19277, NULL, NULL, NULL, 'AZAGUIE_BLIDA', 'IHS_LGN_692O', 'OCI0136', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09149722', 'Outdoor', 'Autostable', NULL, NULL, '5.52744167', 'En service', NULL, 'RAN 1000', NULL),
(19278, NULL, NULL, NULL, 'AZITO', 'IHS_LGN_379O', 'OCI0137', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08871667', 'Indoor', 'MAT', NULL, NULL, '5.31437778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19279, NULL, NULL, NULL, 'BABIA', 'IHS_LGN_269O', 'OCI0138', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98567778', 'Indoor', 'Haubané', NULL, NULL, '5.30085834', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19280, NULL, NULL, NULL, 'BABO', 'IHS_HSD_061O', 'OCI0139', 'IHS', 'OCI', NULL, NULL, NULL, '-6.76933056', 'Outdoor', 'Haubané', NULL, NULL, '7.11935556', 'En service', NULL, 'RAN 1000', NULL),
(19281, NULL, NULL, NULL, 'BABRE', 'IHS_FMG_008O', 'OCI0141', 'IHS', 'OCI', NULL, NULL, NULL, '-5.94856237', 'Indoor', 'Autostable', NULL, NULL, '6.14697156', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19282, NULL, NULL, NULL, 'BACANDA', 'IHS_LGN_759O', 'OCI0142', 'IHS', 'OCI', NULL, NULL, NULL, '-4.87333307', 'Indoor', 'Haubané', NULL, NULL, '5.62916727', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19283, NULL, NULL, NULL, 'BAD', 'IHS_LGN_059O', 'OCI0143', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01833094', 'Indoor', 'MAT', NULL, NULL, '5.31860919', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19284, NULL, NULL, NULL, 'BADA', 'IHS_SBD_007O', 'OCI0144', 'IHS', 'OCI', NULL, NULL, NULL, '-5.35546900', 'Indoor', 'Autostable', NULL, NULL, '5.84121944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19285, NULL, NULL, NULL, 'BADIKAHA', 'IHS_VDB_094M', 'OCI0145', 'IHS', 'IHS', NULL, NULL, NULL, '-5.16116667', 'Outdoor', 'Haubané', NULL, NULL, '9.19096944', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19286, NULL, NULL, NULL, 'BAE', 'IHS_LGN_149O', 'OCI0146', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05706112', 'Indoor', 'Haubané', NULL, NULL, '5.33310556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19287, NULL, NULL, NULL, 'BAFOND', 'IHS_LGN_584O', 'OCI0147', 'IHS', 'OCI', NULL, NULL, NULL, '-4.11328252', 'Outdoor', 'Autostable', NULL, NULL, '5.37032624', 'En service', NULL, 'DENSIF 2009', NULL),
(19288, NULL, NULL, NULL, 'BAGBA', 'IHS_LGN_657O', 'OCI0148', 'IHS', 'OCI', NULL, NULL, NULL, '-3.88805556', 'Outdoor', 'Haubané', NULL, NULL, '5.34819444', 'En service', NULL, 'RAP', NULL),
(19289, NULL, NULL, NULL, 'BAGOHOUO', 'IHS_MCY_043O', 'OCI0149', 'IHS', 'OCI', NULL, NULL, NULL, '-7.19575000', 'Outdoor', 'Haubané', NULL, NULL, '6.87436112', 'En service', NULL, 'RAN 1000', NULL),
(19290, NULL, NULL, NULL, 'BAGOLIEOUA', 'IHS_BSD_179O', 'OCI0150', 'IHS', 'OCI', NULL, NULL, NULL, '-6.52250001', 'Outdoor', 'Haubané', NULL, NULL, '6.16883334', 'En service', NULL, 'RAN 1000', NULL),
(19291, NULL, NULL, NULL, 'BAHOMPA', 'IHS_FMG_062M', 'OCI0151', 'IHS', 'IHS', NULL, NULL, NULL, '-5.81011111', 'Outdoor', 'Haubané', NULL, NULL, '6.47450000', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19292, NULL, NULL, NULL, 'BAHOULIFLA', 'IHS_HSD_052O', 'OCI0152', 'IHS', 'OCI', NULL, NULL, NULL, '-6.47486112', 'Outdoor', 'Haubané', NULL, NULL, '7.24105556', 'En service', NULL, 'RAN 1000', NULL),
(19293, NULL, NULL, NULL, 'BAKAYO', 'IHS_BSD_125O', 'OCI0153', 'IHS', 'OCI', NULL, NULL, NULL, '-6.04052778', 'Outdoor', 'Haubané', NULL, NULL, '5.54327778', 'En service', NULL, 'RAN 1000', NULL),
(19294, NULL, NULL, NULL, 'BAKO', 'IHS_DNG_014O', 'OCI0154', 'IHS', 'OCI', NULL, NULL, NULL, '-7.60519445', 'Outdoor', 'Haubané', NULL, NULL, '9.14080556', 'En service', NULL, 'RAN 1000', NULL),
(19295, NULL, NULL, NULL, 'BAKOUBLI', 'IHS_MCY_055O', 'OCI0155', 'IHS', 'OCI', NULL, NULL, NULL, '-8.40566667', 'Outdoor', 'Haubané', NULL, NULL, '6.46919445', 'En service', NULL, 'RAN 1000', NULL),
(19296, NULL, NULL, NULL, 'BALAHIO', 'IHS_HSD_095O', 'OCI0156', 'IHS', 'OCI', NULL, NULL, NULL, '-6.42100000', 'Outdoor', 'Haubané', NULL, NULL, '6.31625000', 'En service', NULL, 'RAN 1000', NULL),
(19297, NULL, NULL, NULL, 'BALEKAHA', 'IHS_SVN_016O', 'OCI0157', 'IHS', 'OCI', NULL, NULL, NULL, '-5.47908333', 'Outdoor', 'Haubané', NULL, NULL, '9.50955278', 'En service', NULL, 'RAN 1000', NULL),
(19298, NULL, NULL, NULL, 'BALEKO', 'IHS_BSD_114O', 'OCI0158', 'IHS', 'OCI', NULL, NULL, NULL, '-6.03030556', 'Outdoor', 'Haubané', NULL, NULL, '5.43563889', 'En service', NULL, 'RAN 1000', NULL),
(19299, NULL, NULL, NULL, 'BALOKUYA', 'IHS_BSD_064O', 'OCI0159', 'IHS', 'OCI', NULL, NULL, NULL, '-6.35247223', 'Outdoor', 'Haubané', NULL, NULL, '5.20327778', 'En service', NULL, 'RAN 1000', NULL),
(19300, NULL, NULL, NULL, 'BANABO', 'IHS_NCE_025O', 'OCI0160', 'IHS', 'OCI', NULL, NULL, NULL, '-4.29325065', 'Outdoor', 'Haubané', NULL, NULL, '6.70010534', 'En service', NULL, 'RAN 1000', NULL),
(19301, NULL, NULL, NULL, 'BANAFORO', 'IHS_SVN_145O', 'OCI0161', 'IHS', 'OCI', NULL, NULL, NULL, '-5.62319444', 'Outdoor', 'Autostable', NULL, NULL, '9.47066667', 'En service', NULL, 'RAP', NULL),
(19302, NULL, NULL, NULL, 'BANANDJE', 'IHS_WRD_030O', 'OCI0162', 'IHS', 'OCI', NULL, NULL, NULL, '-6.74611111', 'Outdoor', 'Haubané', NULL, NULL, '8.82135556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19303, NULL, NULL, NULL, 'BANCO', 'OCIT_Strat_02', 'OCI0163', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-4.07391667', 'Indoor', 'Autostable', NULL, NULL, '5.33384723', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19304, NULL, NULL, NULL, 'BANDIAHI', 'IHS_HSD_064M', 'OCI0164', 'IHS', 'IHS', NULL, NULL, NULL, '-6.18308333', 'Outdoor', 'Haubané', NULL, NULL, '7.19308333', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19305, NULL, NULL, NULL, 'BANFORA', 'IHS_LGN_033O', 'OCI0165', 'IHS', 'Moov', NULL, NULL, NULL, '-4.02241285', 'Outdoor', 'Haubané', NULL, NULL, '5.34774576', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19306, NULL, NULL, NULL, 'BANGOLO', 'IHS_DHM_030O', 'OCI0166', 'IHS', 'OCI', NULL, NULL, NULL, '-7.48411112', 'Indoor', 'Autostable', NULL, NULL, '7.00852778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19307, NULL, NULL, NULL, 'BANGUIE', 'IHS_AGN_062O', 'OCI0167', 'IHS', 'OCI', NULL, NULL, NULL, '-4.36002778', 'Indoor', 'Haubané', NULL, NULL, '6.16886111', 'En service', NULL, 'SHARING CIT 2010', NULL),
(19308, NULL, NULL, NULL, 'BARADJI', 'IHS_LGN_431O', 'OCI0168', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96076000', 'Indoor', 'MAT', NULL, NULL, '5.29775000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19309, NULL, NULL, NULL, 'BARDO', 'IHS_BSD_015O', 'OCI0169', 'IHS', 'OCI', NULL, NULL, NULL, '-6.66974927', 'Indoor', 'Autostable', NULL, NULL, '4.77311375', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19310, NULL, NULL, NULL, 'BASILIQUE', 'Moov_004', 'OCI0172', 'IHS', 'Moov', NULL, NULL, NULL, '-5.29480556', 'Outdoor', 'Autostable', NULL, NULL, '6.82080557', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19311, NULL, NULL, NULL, 'BASSAM', 'IHS_SCE_080O', 'OCI0173', 'IHS', 'OCI', NULL, NULL, NULL, '-3.73736112', 'Indoor', 'Haubané', NULL, NULL, '5.20680556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19312, NULL, NULL, NULL, 'BASSAWA', 'IHS_VDB_082O', 'OCI0174', 'IHS', 'OCI', NULL, NULL, NULL, '-4.10261111', 'Outdoor', 'Haubané', NULL, NULL, '8.05211111', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19313, NULL, NULL, NULL, 'BASSEHOA', 'IHS_FMG_050O', 'OCI0175', 'IHS', 'OCI', NULL, NULL, NULL, '-6.24500000', 'Outdoor', 'Haubané', NULL, NULL, '6.13444445', 'En service', NULL, 'ELEPHANT', NULL),
(19314, NULL, NULL, NULL, 'BAYOTA', 'IHS_FMG_058O', 'OCI0176', 'IHS', 'OCI', NULL, NULL, NULL, '-5.96155556', 'Indoor', 'Haubané', NULL, NULL, '6.47008333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19315, NULL, NULL, NULL, 'BECEDI_BRIGNAN', 'IHS_AGN_036M', 'OCI0177', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00830556', 'Outdoor', 'Autostable', NULL, NULL, '5.91233334', 'En service', NULL, NULL, NULL),
(19316, NULL, NULL, NULL, 'BECOUEFIN', 'IHS_AGN_047O', 'OCI0178', 'IHS', 'RTI', NULL, NULL, NULL, '-3.84314167', 'Outdoor', 'Haubané', NULL, NULL, '6.47705278', 'En service', NULL, 'RAN 1000', NULL),
(19317, NULL, NULL, NULL, 'BEDIALA', 'IHS_HSD_044O', 'OCI0179', 'IHS', 'OCI', NULL, NULL, NULL, '-6.30613889', 'Indoor', 'Haubané', NULL, NULL, '7.15830556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19318, NULL, NULL, NULL, 'BEGNERI', 'Moov_032', 'OCI0180', 'IHS', 'Moov', NULL, NULL, NULL, '-3.59966667', 'Outdoor', 'Autostable', NULL, NULL, '5.27519445', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19319, NULL, NULL, NULL, 'BEJOSSO', 'IHS_HSD_058O', 'OCI0181', 'IHS', 'OCI', NULL, NULL, NULL, '-6.84638889', 'Outdoor', 'Autostable', NULL, NULL, '6.87227778', 'En service', NULL, 'RAP', NULL),
(19320, NULL, NULL, NULL, 'BELLE', 'IHS_LGN_204O', 'OCI0182', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00616667', 'Indoor', 'MAT', NULL, NULL, '5.40766667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19321, NULL, NULL, NULL, 'BELLE_VILLE', 'IHS_LGN_205O', 'OCI0183', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99638889', 'Indoor', 'Autostable', NULL, NULL, '5.30305556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19322, NULL, NULL, NULL, 'BELLE-EPINE', 'IHS_LGN_223O', 'OCI0184', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98077778', 'Outdoor', 'Autostable', NULL, NULL, '5.34880556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19323, NULL, NULL, NULL, 'BENGASSOU', 'IHS_NCE_015M', 'OCI0185', 'IHS', 'IHS', NULL, NULL, NULL, '-4.47350000', 'Outdoor', 'Haubané', NULL, NULL, '6.79819444', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19324, NULL, NULL, NULL, 'BEOUMI', 'IHS_VDB_061O', 'OCI0186', 'IHS', 'OCI', NULL, NULL, NULL, '-5.57152778', 'Indoor', 'Haubané', NULL, NULL, '7.67838889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19325, NULL, NULL, NULL, 'BERVERLY', 'IHS_LGN_347O', 'OCI0187', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96047222', 'Indoor', 'Autostable', NULL, NULL, '5.33669444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19326, NULL, NULL, NULL, 'BETANI', 'IHS_LGN_090O', 'OCI0188', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02388964', 'Indoor', 'Haubané', NULL, NULL, '5.35667080', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19327, NULL, NULL, NULL, 'BETTIE', 'IHS_MCE_056O', 'OCI0189', 'IHS', 'OCI', NULL, NULL, NULL, '-3.40230278', 'Outdoor', 'Haubané', NULL, NULL, '6.07697223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19328, NULL, NULL, NULL, 'BIA_ND', 'IHS_LGN_023O', 'OCI0190', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01610468', 'Indoor', 'MAT', NULL, NULL, '5.34218445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19329, NULL, NULL, NULL, 'BIABOU', 'IHS_LGN_640O', 'OCI0191', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98051945', 'Indoor', 'Autostable', NULL, NULL, '5.44381945', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19330, NULL, NULL, NULL, 'BIAFRA', 'IHS_LGN_130O', 'OCI0192', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00623889', 'Indoor', 'Haubané', NULL, NULL, '5.31296111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19331, NULL, NULL, NULL, 'BIANKOUMA', 'IHS_DHM_025O', 'OCI0193', 'IHS', 'OCI', NULL, NULL, NULL, '-7.61044445', 'Indoor', 'Haubané', NULL, NULL, '7.74566667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19332, NULL, NULL, NULL, 'BIANOUAN', 'IHS_SCE_069O', 'OCI0194', 'IHS', 'OCI', NULL, NULL, NULL, '-3.18197029', 'Indoor', 'Haubané', NULL, NULL, '6.01585893', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19333, NULL, NULL, NULL, 'BIASSO', 'IHS_AGN_007O', 'OCI0195', 'IHS', 'OCI', NULL, NULL, NULL, '-3.79286111', 'Outdoor', 'Haubané', NULL, NULL, '6.11527778', 'En service', NULL, 'RAN 1000', NULL),
(19334, NULL, NULL, NULL, 'BIBLIOTHEQUE', 'IHS_LGN_001M', 'OCI0196', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02402778', 'Indoor', 'Autostable', NULL, NULL, '5.33480556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19335, NULL, NULL, NULL, 'BIDIAHOUAN', 'IHS_HSD_048O', 'OCI0197', 'IHS', 'OCI', NULL, NULL, NULL, '-6.23213333', 'Outdoor', 'Haubané', NULL, NULL, '6.61388889', 'En service', NULL, 'RAN 1000', NULL),
(19336, NULL, NULL, NULL, 'BIDJANTE', 'IHS_LGN_044O', 'OCI0198', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03246667', 'Indoor', 'Haubané', NULL, NULL, '5.34694167', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19337, NULL, NULL, NULL, 'BIEBI', 'IHS_AGN_030O', 'OCI0199', 'IHS', 'OCI', NULL, NULL, NULL, '-3.63836111', 'Outdoor', 'Haubané', NULL, NULL, '6.07641667', 'En service', NULL, 'SHARING CIT 2010', NULL),
(19338, NULL, NULL, NULL, 'BIETRY', 'IHS_LGN_508M', 'OCI0200', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97183100', 'Outdoor', 'Autostable', NULL, NULL, '5.27258100', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19339, NULL, NULL, NULL, 'BILAHIO', 'IHS_FMG_035O', 'OCI0201', 'IHS', 'OCI', NULL, NULL, NULL, '-6.13933334', 'Outdoor', 'Haubané', NULL, NULL, '6.21019445', 'En service', NULL, 'RAN 1000', NULL),
(19340, NULL, NULL, NULL, 'BILEKRO', 'IHS_AGN_067O', 'OCI0202', 'IHS', 'OCI', NULL, NULL, NULL, '-4.36377388', 'Outdoor', 'Haubané', NULL, NULL, '5.93466421', 'En service', NULL, 'ELEPHANT', NULL),
(19341, NULL, NULL, NULL, 'BIN_HOUNIEN', 'IHS_DHM_059O', 'OCI0203', 'IHS', 'OCI', NULL, NULL, NULL, '-8.31575001', 'Indoor', 'Autostable', NULL, NULL, '6.78463889', 'En service', NULL, 'RAP', NULL),
(19342, NULL, NULL, NULL, 'BINAO', 'RTI_017', 'OCI0204', 'IHS', 'RTI', NULL, NULL, NULL, '-4.68002500', 'Indoor', 'Haubané', NULL, NULL, '5.81669445', 'En service', NULL, 'RAP', NULL),
(19343, NULL, NULL, NULL, 'BINATE', 'IHS_LGN_422O', 'OCI0205', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99603131', 'Indoor', 'Autostable', NULL, NULL, '5.40128227', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19344, NULL, NULL, NULL, 'BINAVA', 'IHS_LAC_063O', 'OCI0206', 'IHS', 'OCI', NULL, NULL, NULL, '-5.01724167', 'Indoor', 'Autostable', NULL, NULL, '6.56445000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19345, NULL, NULL, NULL, 'BINGERVIL', 'IHS_LGN_656O', 'OCI0207', 'IHS', 'OCI', NULL, NULL, NULL, '-3.89044415', 'Indoor', 'Autostable', NULL, NULL, '5.35810960', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19346, NULL, NULL, NULL, 'BINZRA', 'IHS_MRH_038O', 'OCI0208', 'IHS', 'OCI', NULL, NULL, NULL, '-6.00805556', 'Outdoor', 'Haubané', NULL, NULL, '7.32416667', 'En service', NULL, 'RAN 1000', NULL),
(19347, NULL, NULL, NULL, 'BLACK', 'IHS_LGN_082O', 'OCI0209', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02683056', 'Indoor', 'Autostable', NULL, NULL, '5.35473889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19348, NULL, NULL, NULL, 'BLAHOU', 'IHS_BSD_026M', 'OCI0210', 'IHS', 'IHS', NULL, NULL, NULL, '-6.55447222', 'Outdoor', 'Haubané', NULL, NULL, '4.92780556', 'En service', NULL, 'RAN 1000', NULL),
(19349, NULL, NULL, NULL, 'BLANCHON', 'IHS_LGN_672M', 'OCI0211', 'IHS', 'IHS', NULL, NULL, NULL, '-3.87291667', 'Indoor', 'Autostable', NULL, NULL, '5.34802778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19350, NULL, NULL, NULL, 'BLEANIANDA', 'IHS_FMG_052O', 'OCI0212', 'IHS', 'OCI', NULL, NULL, NULL, '-5.70742112', 'Outdoor', 'Haubané', NULL, NULL, '6.30249831', 'En service', NULL, 'RAN 1000', NULL),
(19351, NULL, NULL, NULL, 'BLENIMEOUIN', 'IHS_DHM_035O', 'OCI0213', 'IHS', 'OCI', NULL, NULL, NULL, '-7.18536112', 'Outdoor', 'Haubané', NULL, NULL, '7.14336112', 'En service', NULL, 'RAN 1000', NULL),
(19352, NULL, NULL, NULL, 'BLESSEGUE', 'IHS_SVN_081O', 'OCI0214', 'IHS', 'OCI', NULL, NULL, NULL, '-6.41344444', 'Outdoor', 'Haubané', NULL, NULL, '10.19950000', 'En service', NULL, 'DENSIF 2010', NULL),
(19353, NULL, NULL, NULL, 'BLOKOSSO', 'IHS_LGN_121O', 'OCI0216', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99821700', 'Indoor', 'Haubané', NULL, NULL, '5.32463900', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19354, NULL, NULL, NULL, 'BOCANDA', 'IHS_NCE_029O', 'OCI0219', 'IHS', 'OCI', NULL, NULL, NULL, '-4.49955556', 'Indoor', 'Haubané', NULL, NULL, '7.06730556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19355, NULL, NULL, NULL, 'BODO', 'IHS_LGN_757M', 'OCI0220', 'IHS', 'IHS', NULL, NULL, NULL, '-4.68583419', 'Indoor', 'Haubané', NULL, NULL, '5.90469609', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19356, NULL, NULL, NULL, 'BODOKRO', 'IHS_VDB_053O', 'OCI0221', 'IHS', 'OCI', NULL, NULL, NULL, '-5.47727778', 'Indoor', 'Haubané', NULL, NULL, '7.86861112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19357, NULL, NULL, NULL, 'BOGBAM', 'IHS_HSD_094O', 'OCI0222', 'IHS', 'OCI', NULL, NULL, NULL, '-6.19032978', 'Outdoor', 'Haubané', NULL, NULL, '6.38428291', 'En service', NULL, 'RAN 1000', NULL),
(19358, NULL, NULL, NULL, 'BOGODOUGOU', 'IHS_DNG_019O', 'OCI0223', 'IHS', 'OCI', NULL, NULL, NULL, '-7.32683410', 'Outdoor', 'Haubané', NULL, NULL, '9.88158342', 'En service', NULL, 'RAN 1000', NULL),
(19359, NULL, NULL, NULL, 'BOGUEDIA', 'IHS_HSD_038O', 'OCI0224', 'IHS', 'OCI', NULL, NULL, NULL, '-6.52250000', 'Indoor', 'Haubané', NULL, NULL, '6.63769444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19360, NULL, NULL, NULL, 'BOISSY', 'IHS_LGN_141O', 'OCI0225', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05350000', 'Indoor', 'Haubané', NULL, NULL, '5.32544444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19361, NULL, NULL, NULL, 'BOKOSSA', 'IHS_LGN_459O', 'OCI0226', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98120742', 'Outdoor', 'Haubané', NULL, NULL, '5.39851144', 'En service', NULL, 'RAN 1000', NULL),
(19362, NULL, NULL, NULL, 'BOLIKOUADIOKRO', 'IHS_LAC_083O', 'OCI0227', 'IHS', 'OCI', NULL, NULL, NULL, '-4.80444444', 'Outdoor', 'Haubané', NULL, NULL, '7.22308611', 'En service', NULL, 'VICTOIRE', NULL),
(19363, NULL, NULL, NULL, 'BONAHOUIN', 'IHS_AGN_060O', 'OCI0228', 'IHS', 'OCI', NULL, NULL, NULL, '-3.75500062', 'Outdoor', 'Haubané', NULL, NULL, '6.55777786', 'En service', NULL, 'RAP', NULL),
(19364, NULL, NULL, NULL, 'BONDO', 'IHS_ZNZ_024O', 'OCI0229', 'IHS', 'OCI', NULL, NULL, NULL, '-3.19388889', 'Outdoor', 'Haubané', NULL, NULL, '8.22783333', 'En service', NULL, 'ELEPHANT', NULL),
(19365, NULL, NULL, NULL, 'BONDOUKOU', 'IHS_ZNZ_001O', 'OCI0230', 'IHS', 'OCI', NULL, NULL, NULL, '-2.79608333', 'Indoor', 'Autostable', NULL, NULL, '8.04222222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19366, NULL, NULL, NULL, 'BONGO', 'IHS_SCE_034O', 'OCI0231', 'IHS', 'OCI', NULL, NULL, NULL, '-3.51741667', 'Indoor', 'Haubané', NULL, NULL, '5.50225000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19367, NULL, NULL, NULL, 'BONGOUANOU', 'IHS_NCE_033O', 'OCI0232', 'IHS', 'OCI', NULL, NULL, NULL, '-4.20486111', 'Indoor', 'Autostable', NULL, NULL, '6.65850000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19368, NULL, NULL, NULL, 'BONGOUANOU_CTRL', 'IHS_NCE_034O', 'OCI0233', 'IHS', 'OCI', NULL, NULL, NULL, '-4.19877778', 'Indoor', 'Autostable', NULL, NULL, '6.65300000', 'En service', NULL, 'DENSIF 2010', NULL),
(19369, NULL, NULL, NULL, 'BONGUERA', 'IHS_NCE_065O', 'OCI0234', 'IHS', 'OCI', NULL, NULL, NULL, '-4.24639047', 'Indoor', 'Haubané', NULL, NULL, '7.66666547', 'En service', NULL, 'RAP', NULL),
(19370, NULL, NULL, NULL, 'BONHEUR', 'IHS_LGN_444O', 'OCI0235', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95713889', 'Indoor', 'Haubané', NULL, NULL, '5.36844167', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19371, NULL, NULL, NULL, 'BONIEREDOUGOU', 'IHS_VDB_074O', 'OCI0236', 'IHS', 'OCI', NULL, NULL, NULL, '-4.71972465', 'Indoor', 'Autostable', NULL, NULL, '8.37388723', 'En service', NULL, 'RAP', NULL),
(19372, NULL, NULL, NULL, 'BONIKRO', 'IHS_LGN_789O', 'OCI0237', 'IHS', 'OCI', NULL, NULL, NULL, '-4.10758889', 'Indoor', 'Haubané', NULL, NULL, '5.34326944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19373, NULL, NULL, NULL, 'BONIKRO_OUME', 'IHS_LAC_070M', 'OCI0238', 'IHS', 'IHS', NULL, NULL, NULL, '-5.22283333', 'Outdoor', 'Haubané', NULL, NULL, '6.39055556', 'En service', NULL, 'DENSIF 2010', NULL),
(19374, NULL, NULL, NULL, 'BONON', 'IHS_MRH_022O', 'OCI0239', 'IHS', 'OCI', NULL, NULL, NULL, '-6.05250000', 'Indoor', 'Autostable', NULL, NULL, '6.92616667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19375, NULL, NULL, NULL, 'BONOUA', 'IHS_SCE_063O', 'OCI0240', 'IHS', 'OCI', NULL, NULL, NULL, '-3.59635833', 'Indoor', 'Haubané', NULL, NULL, '5.26463889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19376, NULL, NULL, NULL, 'BONOUFLA', 'IHS_HSD_039O', 'OCI0241', 'IHS', 'OCI', NULL, NULL, NULL, '-6.48177778', 'Indoor', 'Haubané', NULL, NULL, '7.13694444', 'En service', NULL, 'RAP', NULL),
(19377, NULL, NULL, NULL, 'BONOUMIN', 'IHS_LGN_351O', 'OCI0242', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96625000', 'Indoor', 'Haubané', NULL, NULL, '5.36108333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19378, NULL, NULL, NULL, 'BONZOU', 'IHS_MCE_008O', 'OCI0243', 'IHS', 'OCI', NULL, NULL, NULL, '-3.51166944', 'Outdoor', 'Autostable', NULL, NULL, '6.73252222', 'En service', NULL, 'RAP', NULL),
(19379, NULL, NULL, NULL, 'BOOKO', 'IHS_BAF_019O', 'OCI0244', 'IHS', 'OCI', NULL, NULL, NULL, '-7.78643056', 'Outdoor', 'Haubané', NULL, NULL, '8.86668056', 'En service', NULL, 'RAN 1000', NULL),
(19380, NULL, NULL, NULL, 'BORIJA', 'IHS_LGN_078O', 'OCI0245', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01486415', 'Indoor', 'MAT', NULL, NULL, '5.31763803', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19381, NULL, NULL, NULL, 'BOROTOU-KORO', 'IHS_BAF_015O', 'OCI0246', 'IHS', 'OCI', NULL, NULL, NULL, '-7.49336111', 'Outdoor', 'Haubané', NULL, NULL, '8.73175000', 'En service', NULL, 'RAP', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(19382, NULL, NULL, NULL, 'BOTRO', 'IHS_VDB_045O', 'OCI0247', 'IHS', 'OCI', NULL, NULL, NULL, '-5.30816825', 'Outdoor', 'Autostable', NULL, NULL, '7.85016577', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19383, NULL, NULL, NULL, 'BOUADIKRO', 'IHS_NCE_020O', 'OCI0248', 'IHS', 'OCI', NULL, NULL, NULL, '-4.34308333', 'Outdoor', 'Haubané', NULL, NULL, '6.70494444', 'En service', NULL, 'DENSIF 2010', NULL),
(19384, NULL, NULL, NULL, 'BOUAFLA', 'IHS_MRH_019O', 'OCI0249', 'IHS', 'OCI', NULL, NULL, NULL, '-5.84969444', 'Outdoor', 'Haubané', NULL, NULL, '7.25538889', 'En service', NULL, 'RAN 1000', NULL),
(19385, NULL, NULL, NULL, 'BOUAFLE', 'IHS_MRH_002O', 'OCI0250', 'IHS', 'OCI', NULL, NULL, NULL, '-5.75246944', 'Indoor', 'Autostable', NULL, NULL, '6.98452778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19386, NULL, NULL, NULL, 'BOUAKE', 'OCIT_Strat_04', 'OCI0251', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-5.02847223', 'Indoor', 'Tour', NULL, NULL, '7.68513889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19387, NULL, NULL, NULL, 'BOUANDOUGOU', 'IHS_WRD_045O', 'OCI0252', 'IHS', 'OCI', NULL, NULL, NULL, '-5.67111360', 'Indoor', 'Autostable', NULL, NULL, '8.21666875', 'En service', NULL, 'RAP', NULL),
(19388, NULL, NULL, NULL, 'BOUAPE', 'IHS_AGN_023O', 'OCI0253', 'IHS', 'OCI', NULL, NULL, NULL, '-3.81636111', 'Indoor', 'Haubané', NULL, NULL, '6.26333333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19389, NULL, NULL, NULL, 'BOUBO', 'IHS_SBD_021M', 'OCI0254', 'IHS', 'IHS', NULL, NULL, NULL, '-5.32028611', 'Outdoor', 'Haubané', NULL, NULL, '5.63946389', 'En service', NULL, 'RAP', NULL),
(19390, NULL, NULL, NULL, 'BOUNA', 'IHS_ZNZ_061O', 'OCI0255', 'IHS', 'OCI', NULL, NULL, NULL, '-2.99869445', 'Indoor', 'Autostable', NULL, NULL, '9.26947223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19391, NULL, NULL, NULL, 'BOUNAFLA', 'IHS_MRH_028O', 'OCI0256', 'IHS', 'OCI', NULL, NULL, NULL, '-5.50838333', 'Outdoor', 'Haubané', NULL, NULL, '6.72550556', 'En service', NULL, 'RAN 1000', NULL),
(19392, NULL, NULL, NULL, 'BOUNDIALI', 'IHS_SVN_066O', 'OCI0257', 'IHS', 'OCI', NULL, NULL, NULL, '-6.48141667', 'Indoor', 'Autostable', NULL, NULL, '9.51966667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19393, NULL, NULL, NULL, 'BRACODI', 'IHS_LGN_104O', 'OCI0258', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02390374', 'Indoor', 'Haubané', NULL, NULL, '5.35971897', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19394, NULL, NULL, NULL, 'BREGBO', 'IHS_LGN_688O', 'OCI0259', 'IHS', 'OCI', NULL, NULL, NULL, '-3.82733333', 'Outdoor', 'Haubané', NULL, NULL, '5.30613889', 'En service', NULL, 'DENSIF 2010', NULL),
(19395, NULL, NULL, NULL, 'BRETON', 'IHS_LGN_598O', 'OCI0260', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01612300', 'Outdoor', 'Autostable', NULL, NULL, '5.43447200', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19396, NULL, NULL, NULL, 'BRIMBRESSO', 'IHS_LGN_655O', 'OCI0261', 'IHS', 'OCI', NULL, NULL, NULL, '-4.15754723', 'Outdoor', 'Autostable', NULL, NULL, '5.31318334', 'En service', NULL, 'RAN 1000', NULL),
(19397, NULL, NULL, NULL, 'BROBO', 'IHS_VDB_038O', 'OCI0262', 'IHS', 'OCI', NULL, NULL, NULL, '-4.83161111', 'Indoor', 'Autostable', NULL, NULL, '7.63377778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19398, NULL, NULL, NULL, 'BROMA', 'IHS_HSD_056O', 'OCI0263', 'IHS', 'OCI', NULL, NULL, NULL, '-6.39043889', 'Outdoor', 'Haubané', NULL, NULL, '6.49033056', 'En service', NULL, 'RAN 1000', NULL),
(19399, NULL, NULL, NULL, 'BROU_AKPOUASSOU', 'IHS_NCE_045O', 'OCI0264', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05555556', 'Indoor', 'Haubané', NULL, NULL, '6.91500000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19400, NULL, NULL, NULL, 'BROUAFLA_NATTIS', 'IHS_HSD_106O', 'OCI0265', 'IHS', 'OCI', NULL, NULL, NULL, '-6.51869444', 'Outdoor', 'Haubané', NULL, NULL, '7.59744444', 'En service', NULL, 'RAN 1000', NULL),
(19401, NULL, NULL, NULL, 'BROUDOUKOU_PENDA', 'IHS_HSD_105O', 'OCI0266', 'IHS', 'OCI', NULL, NULL, NULL, '-5.51000000', 'Outdoor', 'Haubané', NULL, NULL, '5.52183333', 'En service', NULL, 'ELEPHANT', NULL),
(19402, NULL, NULL, NULL, 'BROUKRO', 'IHS_NCE_032O', 'OCI0267', 'IHS', 'OCI', NULL, NULL, NULL, '-4.22058234', 'Indoor', 'Haubané', NULL, NULL, '6.65557742', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19403, NULL, NULL, NULL, 'BUYO', 'IHS_BSD_189O', 'OCI0268', 'IHS', 'OCI', NULL, NULL, NULL, '-7.00469445', 'Indoor', 'Autostable', NULL, NULL, '6.25519445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19404, NULL, NULL, NULL, 'BUYOCITE', 'IHS_BSD_188O', 'OCI0269', 'IHS', 'OCI', NULL, NULL, NULL, '-7.01491667', 'Indoor', 'Autostable', NULL, NULL, '6.24822222', 'En service', NULL, 'RAP', NULL),
(19405, NULL, NULL, NULL, 'CACTUS', 'IHS_LAC_004O', 'OCI0270', 'IHS', 'OCI', NULL, NULL, NULL, '-5.26244451', 'Outdoor', 'Autostable', NULL, NULL, '6.82083118', 'En service', NULL, 'DENSIF 2009', NULL),
(19406, NULL, NULL, NULL, 'CAFEIER', 'OCIT_Strat_05', 'OCI0271', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-3.98883333', 'Indoor', 'Autostable', NULL, NULL, '5.41552778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19407, NULL, NULL, NULL, 'CAFETOU', 'IHS_MCE_005O', 'OCI0272', 'IHS', 'OCI', NULL, NULL, NULL, '-3.49724722', 'Outdoor', 'Autostable', NULL, NULL, '6.71436389', 'En service', NULL, 'RAN 1000', NULL),
(19408, NULL, NULL, NULL, 'CAFOP', 'IHS_LAC_029O', 'OCI0273', 'IHS', 'OCI', NULL, NULL, NULL, '-5.28057413', 'Indoor', 'Autostable', NULL, NULL, '6.86223490', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19409, NULL, NULL, NULL, 'CAMPEMENT', 'IHS_LGN_566O', 'OCI0274', 'IHS', 'OCI', NULL, NULL, NULL, '-3.93717000', 'Indoor', 'Autostable', NULL, NULL, '5.30744000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19410, NULL, NULL, NULL, 'NV_CAMPUS', 'IHS_LGN_166O', 'OCI0275', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98819445', 'Indoor', 'Autostable', NULL, NULL, '5.34277778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19411, NULL, NULL, NULL, 'CANAAN', 'Moov_005', 'OCI0276', 'IHS', 'Moov', NULL, NULL, NULL, '-5.02532200', 'Outdoor', 'Autostable', NULL, NULL, '7.65036200', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19412, NULL, NULL, NULL, 'CAPITAINERIE', 'IHS_BSD_023O', 'OCI0277', 'IHS', 'OCI', NULL, NULL, NULL, '-6.61547122', 'Indoor', 'Autostable', NULL, NULL, '4.73678135', 'En service', NULL, 'RAP', NULL),
(19413, NULL, NULL, NULL, 'CAPSUD_MICRO', 'OCI_Indoor_003', 'OCI0278', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.98575715', 'Outdoor', 'MAT', NULL, NULL, '5.29763201', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19414, NULL, NULL, NULL, 'CARENA', 'IHS_LGN_006O', 'OCI0279', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02798807', 'Indoor', 'Haubané', NULL, NULL, '5.33039700', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19415, NULL, NULL, NULL, 'CARINE', 'IHS_LGN_100O', 'OCI0280', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01531000', 'Indoor', 'Autostable', NULL, NULL, '5.35686000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19416, NULL, NULL, NULL, 'CARROSSIER', 'IHS_LGN_217O', 'OCI0281', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00033333', 'Outdoor', 'MAT', NULL, NULL, '5.29666667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19417, NULL, NULL, NULL, 'CASCADE', 'IHS_LGN_328O', 'OCI0282', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98258333', 'Indoor', 'Autostable', NULL, NULL, '5.38308333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19418, NULL, NULL, NULL, 'CCT', 'IHS_LGN_158O', 'OCI0283', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00158889', 'Indoor', 'Haubané', NULL, NULL, '5.30888889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19419, NULL, NULL, NULL, 'CECHI', 'IHS_AGN_071O', 'OCI0284', 'IHS', 'OCI', NULL, NULL, NULL, '-4.41708333', 'Indoor', 'Haubané', NULL, NULL, '6.24855556', 'En service', NULL, 'RAP', NULL),
(19420, NULL, NULL, NULL, 'CELESTE', 'IHS_LGN_978O', 'OCI0285', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02297223', 'Indoor', 'Haubané', NULL, NULL, '5.41947223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19421, NULL, NULL, NULL, 'CEMA', 'IHS_LGN_410O', 'OCI0286', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09139102', 'Indoor', 'MAT', NULL, NULL, '5.35611100', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19422, NULL, NULL, NULL, 'CENTRAL_AZ', 'Moov_006', 'OCI0287', 'IHS', 'Moov', NULL, NULL, NULL, '-4.08655556', 'Outdoor', 'autostable', NULL, NULL, '5.30650000', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19423, NULL, NULL, NULL, 'CENTRE_URBAIN', 'IHS_WRD_055O', 'OCI0288', 'IHS', 'OCI', NULL, NULL, NULL, '-6.67930442', 'Outdoor', 'Autostable', NULL, NULL, '7.95680556', 'En service', NULL, 'RAN 1000', NULL),
(19424, NULL, NULL, NULL, 'CHANTIER_ARSENE', 'IHS_ZNZ_051O', 'OCI0291', 'IHS', 'OCI', NULL, NULL, NULL, '-3.09194444', 'Outdoor', 'Haubané', NULL, NULL, '7.28027778', 'En service', NULL, 'DENSIF 2010', NULL),
(19425, NULL, NULL, NULL, 'CHARDY', 'IHS_LGN_038O', 'OCI0292', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01521726', 'Indoor', 'MAT', NULL, NULL, '5.32386049', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19426, NULL, NULL, NULL, 'CHC_ZAGNE', 'IHS_MCY_038O', 'OCI0293', 'IHS', 'OCI', NULL, NULL, NULL, '-7.68202778', 'Outdoor', 'Haubané', NULL, NULL, '6.18597223', 'En service', NULL, 'VICTOIRE', NULL),
(19427, NULL, NULL, NULL, 'CHIEPO', 'IHS_SBD_045O', 'OCI0294', 'IHS', 'OCI', NULL, NULL, NULL, '-5.05894167', 'Outdoor', 'Haubané', NULL, NULL, '5.70097223', 'En service', NULL, 'RAN 1000', NULL),
(19428, NULL, NULL, NULL, 'CHOUMAN', 'IHS_MCE_050O', 'OCI0295', 'IHS', 'OCI', NULL, NULL, NULL, '-3.20325000', 'Outdoor', 'Autostable', NULL, NULL, '7.14755556', 'En service', NULL, 'DENSIF 2009', NULL),
(19429, NULL, NULL, NULL, 'CINEMA_EGALITE', 'IHS_LGN_134M', 'OCI0297', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02411000', 'Outdoor', 'Autostable', NULL, NULL, '5.36444000', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19430, NULL, NULL, NULL, 'CISSE', 'IHS_LGN_367O', 'OCI0298', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01111111', 'Indoor', 'Haubané', NULL, NULL, '5.40000000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19431, NULL, NULL, NULL, 'CISSOKO', 'IHS_HSD_002O', 'OCI0299', 'IHS', 'OCI', NULL, NULL, NULL, '-6.44500000', 'Indoor', 'Autostable', NULL, NULL, '6.87413889', 'En service', NULL, 'RAN 1000', NULL),
(19432, NULL, NULL, NULL, 'CITE_ATCI', 'IHS_LGN_578O', 'OCI0300', 'IHS', 'OCI', NULL, NULL, NULL, '-3.93605556', 'Outdoor', 'Haubané', NULL, NULL, '5.36394444', 'En service', NULL, 'DENSIF 2010', NULL),
(19433, NULL, NULL, NULL, 'CITE_FAIRMONT', 'IHS_LGN_103O', 'OCI0301', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03052778', 'Outdoor', 'Haubané', NULL, NULL, '5.35838889', 'En service', NULL, 'DENSIF 2010', NULL),
(19434, NULL, NULL, NULL, 'CITE_SIR', 'IHS_LGN_627O', 'OCI0302', 'IHS', 'OCI', NULL, NULL, NULL, '-3.92619445', 'Outdoor', 'Autostable', NULL, NULL, '5.38866667', 'En service', NULL, 'DENSIF 2010', NULL),
(19435, NULL, NULL, NULL, 'CITE_VERTE', 'IHS_LGN_535O', 'OCI0303', 'IHS', 'OCI', NULL, NULL, NULL, '-4.10944444', 'Indoor', 'Haubané', NULL, NULL, '5.33166667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19436, NULL, NULL, NULL, 'CLIMBIE_KOUMASSI', 'IHS_LGN_425O', 'OCI0304', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96586000', 'Indoor', 'MAT', NULL, NULL, '5.29139000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19437, NULL, NULL, NULL, 'CLOTCHA', 'IHS_LGN_565O', 'OCI0305', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00002841', 'Indoor', 'Haubané', NULL, NULL, '5.42261320', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19438, NULL, NULL, NULL, 'CLUB', 'IHS_LGN_224O', 'OCI0306', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00163889', 'Outdoor', 'Autostable', NULL, NULL, '5.37458333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19439, NULL, NULL, NULL, 'CNTIG', 'IHS_LGN_048O', 'OCI0307', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01714434', 'Indoor', 'Haubané', NULL, NULL, '5.32138800', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19440, NULL, NULL, NULL, 'COCODY', 'OCIT_Strat_06', 'OCI0308', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-4.00427778', 'Indoor', 'Autostable', NULL, NULL, '5.33966667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19441, NULL, NULL, NULL, 'COLATIER', 'IHS_BSD_051O', 'OCI0309', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01369445', 'Indoor', 'Haubané', NULL, NULL, '5.43869445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19442, NULL, NULL, NULL, 'COLOMBE', 'IHS_LGN_389O', 'OCI0311', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96475000', 'Outdoor', 'Haubané', NULL, NULL, '5.30075000', 'En service', NULL, 'DENSIF 2010', NULL),
(19443, NULL, NULL, NULL, 'COMAF', 'IHS_LGN_320O', 'OCI0312', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00818972', 'Indoor', 'Haubané', NULL, NULL, '5.27637222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19444, NULL, NULL, NULL, 'COMPLEXE', 'IHS_LGN_196O', 'OCI0313', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06525000', 'Indoor', 'MAT', NULL, NULL, '5.33813889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19445, NULL, NULL, NULL, 'CONCORDE', 'IHS_BSD_007O', 'OCI0314', 'IHS', 'OCI', NULL, NULL, NULL, '-6.63027443', 'Indoor', 'Haubané', NULL, NULL, '4.74694220', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19446, NULL, NULL, NULL, 'CORRIDOR', 'IHS_LAC_032O', 'OCI0315', 'IHS', 'OCI', NULL, NULL, NULL, '-5.22491667', 'Indoor', 'Autostable', NULL, NULL, '6.76041667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19447, NULL, NULL, NULL, 'COSAV', 'IHS_LGN_522O', 'OCI0316', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08469444', 'Indoor', 'Autostable', NULL, NULL, '5.39147222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19448, NULL, NULL, NULL, 'COSROU', 'IHS_LGN_740O', 'OCI0317', 'IHS', 'OCI', NULL, NULL, NULL, '-4.65675000', 'Outdoor', 'Haubané', NULL, NULL, '5.32736111', 'En service', NULL, 'RAP', NULL),
(19449, NULL, NULL, NULL, 'COTEAUX', 'IHS_LGN_420O', 'OCI0318', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95583333', 'Indoor', 'Autostable', NULL, NULL, '5.35719444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19450, NULL, NULL, NULL, 'COVALMA', 'IHS_HSD_082O', 'OCI0319', 'IHS', 'OCI', NULL, NULL, NULL, '-6.49077778', 'Outdoor', 'Haubané', NULL, NULL, '6.36825000', 'En service', NULL, 'RAP', NULL),
(19451, NULL, NULL, NULL, 'CRO_LAYO', 'IHS_LGN_706O', 'OCI0320', 'IHS', 'OCI', NULL, NULL, NULL, '-4.31561112', 'Indoor', 'Autostable', NULL, NULL, '5.32655556', 'En service', NULL, 'RAP', NULL),
(19452, NULL, NULL, NULL, 'CULTURE', 'IHS_LGN_115O', 'OCI0321', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01221770', 'Indoor', 'Haubané', NULL, NULL, '5.31061430', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19453, NULL, NULL, NULL, 'DABAKALA', 'IHS_VDB_077O', 'OCI0322', 'IHS', 'OCI', NULL, NULL, NULL, '-4.42694445', 'Indoor', 'Autostable', NULL, NULL, '8.36147223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19454, NULL, NULL, NULL, 'DABOU', 'IHS_LGN_717O', 'OCI0323', 'IHS', 'OCI', NULL, NULL, NULL, '-4.37836112', 'Indoor', 'autostable', NULL, NULL, '5.32297223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19455, NULL, NULL, NULL, 'DADIASSE', 'IHS_ZNZ_016O', 'OCI0324', 'IHS', 'OCI', NULL, NULL, NULL, '-2.94772222', 'Outdoor', 'Haubané', NULL, NULL, '7.81905556', 'En service', NULL, 'ELEPHANT', NULL),
(19456, NULL, NULL, NULL, 'DAGADJI', 'IHS_BSD_047O', 'OCI0325', 'IHS', 'OCI', NULL, NULL, NULL, '-6.80650260', 'Outdoor', 'Haubané', NULL, NULL, '5.12521827', 'En service', NULL, 'RAN 1000', NULL),
(19457, NULL, NULL, NULL, 'DAHIRA', 'IHS_HSD_051O', 'OCI0326', 'IHS', 'OCI', NULL, NULL, NULL, '-6.33482663', 'Outdoor', 'Haubané', NULL, NULL, '6.54574641', 'En service', NULL, 'RAN 1000', NULL),
(19458, NULL, NULL, NULL, 'DAHIRI', 'IHS_SBD_067O', 'OCI0327', 'IHS', 'OCI', NULL, NULL, NULL, '-5.53038889', 'Outdoor', 'Haubané', NULL, NULL, '5.27902778', 'En service', NULL, 'RAP', NULL),
(19459, NULL, NULL, NULL, 'DAIRO', 'IHS_SBD_024O', 'OCI0328', 'IHS', 'OCI', NULL, NULL, NULL, '-5.47238889', 'Outdoor', 'Haubané', NULL, NULL, '5.66236111', 'En service', NULL, 'RAN 1000', NULL),
(19460, NULL, NULL, NULL, 'DAKPADOU', 'IHS_BSD_089O', 'OCI0329', 'IHS', 'OCI', NULL, NULL, NULL, '-6.06391822', 'Outdoor', 'Haubané', NULL, NULL, '5.24249603', 'En service', NULL, 'RAN 1000', NULL),
(19461, NULL, NULL, NULL, 'DALLO', 'IHS_LGN_094O', 'OCI0330', 'IHS', 'OCI', NULL, NULL, NULL, '-4.04602778', 'Outdoor', 'Autostable', NULL, NULL, '5.34088889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19462, NULL, NULL, NULL, 'DALOA', 'OCIT_Strat_07', 'OCI0331', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-6.45049759', 'Indoor', 'Autostable', NULL, NULL, '6.88630820', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19463, NULL, NULL, NULL, 'DAME', 'IHS_MCE_045O', 'OCI0332', 'IHS', 'OCI', NULL, NULL, NULL, '-3.14563889', 'Outdoor', 'Haubané', NULL, NULL, '7.06263889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19464, NULL, NULL, NULL, 'DANANE', 'IHS_DHM_044O', 'OCI0333', 'IHS', 'OCI', NULL, NULL, NULL, '-8.15036112', 'Indoor', 'Autostable', NULL, NULL, '7.26063889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19465, NULL, NULL, NULL, 'DANIA', 'IHS_HSD_073O', 'OCI0334', 'IHS', 'OCI', NULL, NULL, NULL, '-6.83747223', 'Outdoor', 'Haubané', NULL, NULL, '7.15941667', 'En service', NULL, 'RAN 1000', NULL),
(19466, NULL, NULL, NULL, 'DAOUKRO_CIT', 'IHS_NCE_050O', 'OCI0335', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96725000', 'Indoor', 'Haubané', NULL, NULL, '7.05541667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19467, NULL, NULL, NULL, 'DARES_SALAM', 'IHS_VDB_015O', 'OCI0336', 'IHS', 'OCI', NULL, NULL, NULL, '-5.02805116', 'Indoor', 'Autostable', NULL, NULL, '7.71763523', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19468, NULL, NULL, NULL, 'DASSIOKO', 'IHS_SBD_077O', 'OCI0337', 'IHS', 'OCI', NULL, NULL, NULL, '-5.83936389', 'Indoor', 'Haubané', NULL, NULL, '5.11522222', 'En service', NULL, 'RAP', NULL),
(19469, NULL, NULL, NULL, 'DATEKOUMAN', 'IHS_MRH_006O', 'OCI0338', 'IHS', 'OCI', NULL, NULL, NULL, '-5.74163889', 'Outdoor', 'Autostable', NULL, NULL, '6.99488889', 'En service', NULL, 'RAP', NULL),
(19470, NULL, NULL, NULL, 'DE_PAUL', 'IHS_LGN_144O', 'OCI0339', 'IHS', 'OCI', NULL, NULL, NULL, '-4.04278091', 'Indoor', 'Autostable', NULL, NULL, '5.31039159', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19471, NULL, NULL, NULL, 'DEDIAFLA', 'IHS_HSD_070O', 'OCI0341', 'IHS', 'OCI', NULL, NULL, NULL, '-6.58186112', 'Outdoor', 'Haubané', NULL, NULL, '7.29400001', 'En service', NULL, 'RAN 1000', NULL),
(19472, NULL, NULL, NULL, 'DEGNY', 'IHS_BSD_024O', 'OCI0342', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64688889', 'Indoor', 'Autostable', NULL, NULL, '4.72366667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19473, NULL, NULL, NULL, 'DEIGNA', 'IHS_FMG_015O', 'OCI0343', 'IHS', 'OCI', NULL, NULL, NULL, '-5.92869800', 'Indoor', 'Autostable', NULL, NULL, '6.10958700', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19474, NULL, NULL, NULL, 'DELAFOSSE', 'IHS_LGN_049O', 'OCI0344', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01930833', 'Indoor', 'MAT', NULL, NULL, '5.32031710', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19475, NULL, NULL, NULL, 'DIABO', 'IHS_VDB_035O', 'OCI0345', 'IHS', 'OCI', NULL, NULL, NULL, '-5.17200000', 'Indoor', 'Haubané', NULL, NULL, '7.77738890', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19476, NULL, NULL, NULL, 'DIALOGUE', 'IHS_SBD_002O', 'OCI0347', 'IHS', 'OCI', NULL, NULL, NULL, '-5.35800000', 'Indoor', 'Autostable', NULL, NULL, '5.82722222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19477, NULL, NULL, NULL, 'DIAMARAKRO', 'IHS_MCE_052O', 'OCI0348', 'IHS', 'OCI', NULL, NULL, NULL, '-3.32343850', 'Indoor', 'Haubané', NULL, NULL, '6.23964011', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19478, NULL, NULL, NULL, 'DIANGOBO_ZOUHOUNOU', 'IHS_MCE_022O', 'OCI0349', 'IHS', 'OCI', NULL, NULL, NULL, '-3.33225000', 'Outdoor', 'Haubané', NULL, NULL, '6.57991667', 'En service', NULL, 'DENSIF 2010', NULL),
(19479, NULL, NULL, NULL, 'DIANGOKRO', 'IHS_NCE_011M', 'OCI0350', 'IHS', 'IHS', NULL, NULL, NULL, '-4.58816667', 'Outdoor', 'Haubané', NULL, NULL, '6.76505556', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19480, NULL, NULL, NULL, 'DIANOUFLA', 'IHS_MRH_024O', 'OCI0351', 'IHS', 'OCI', NULL, NULL, NULL, '-6.01046600', 'Outdoor', 'Haubané', NULL, NULL, '6.80097200', 'En service', NULL, 'RAN 1000', NULL),
(19481, NULL, NULL, NULL, 'DIANRA_SP', 'IHS_WRD_048O', 'OCI0352', 'IHS', 'OCI', NULL, NULL, NULL, '-6.25151944', 'Outdoor', 'Haubané', NULL, NULL, '8.94444444', 'En service', NULL, 'VICTOIRE', NULL),
(19482, NULL, NULL, NULL, 'DIANRRA', 'IHS_WRD_049O', 'OCI0353', 'IHS', 'OCI', NULL, NULL, NULL, '-6.23861093', 'Outdoor', 'Haubané', NULL, NULL, '8.76250357', 'En service', NULL, 'RAP', NULL),
(19483, NULL, NULL, NULL, 'DIARABANA_NEW', 'DAL026', 'OCI0354', 'Esco', 'Moov', NULL, NULL, NULL, '-6.60772223', 'Outdoor', 'Autostable', NULL, NULL, '8.18997223', 'En service', NULL, NULL, NULL),
(19484, NULL, NULL, NULL, 'DIATOKRO', 'IHS_SCE_010O', 'OCI0355', 'IHS', 'OCI', NULL, NULL, NULL, '-3.33722222', 'Outdoor', 'Haubané', NULL, NULL, '5.40686111', 'En service', NULL, 'ELEPHANT', NULL),
(19485, NULL, NULL, NULL, 'DIAWALA', 'IHS_SVN_051O', 'OCI0356', 'IHS', 'OCI', NULL, NULL, NULL, '-5.47138802', 'Indoor', 'Autostable', NULL, NULL, '10.10974381', 'En service', NULL, 'RAP', NULL),
(19486, NULL, NULL, NULL, 'DIBOKE', 'IHS_MCY_048O', 'OCI0357', 'IHS', 'OCI', NULL, NULL, NULL, '-8.11086112', 'Outdoor', 'Haubané', NULL, NULL, '6.44480556', 'En service', NULL, 'RAN 1000', NULL),
(19487, NULL, NULL, NULL, 'DIBY', 'IHS_SCE_030O', 'OCI0358', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02656332', 'Outdoor', 'Haubané', NULL, NULL, '5.34188665', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19488, NULL, NULL, NULL, 'DIBY_MAFERE', 'IHS_SCE_031O', 'OCI0359', 'IHS', 'OCI', NULL, NULL, NULL, '-2.97755556', 'Outdoor', 'Haubané', NULL, NULL, '5.66338889', 'En service', NULL, 'DENSIF 2010', NULL),
(19489, NULL, NULL, NULL, 'DICK', 'IHS_LGN_632O', 'OCI0360', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01733474', 'Indoor', 'Autostable', NULL, NULL, '5.44677995', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19490, NULL, NULL, NULL, 'DIDIEVI', 'IHS_LAC_078O', 'OCI0361', 'IHS', 'OCI', NULL, NULL, NULL, '-4.90608334', 'Indoor', 'Haubané', NULL, NULL, '7.13352778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19491, NULL, NULL, NULL, 'DIDOKO', 'IHS_SBD_022O', 'OCI0362', 'IHS', 'OCI', NULL, NULL, NULL, '-5.31053056', 'Outdoor', 'Haubané', NULL, NULL, '6.01763889', 'En service', NULL, 'RAN 1000', NULL),
(19492, NULL, NULL, NULL, 'DIEGONEFLA', 'IHS_FMG_066O', 'OCI0363', 'IHS', 'OCI', NULL, NULL, NULL, '-5.58208334', 'Indoor', 'Haubané', NULL, NULL, '6.28350000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19493, NULL, NULL, NULL, 'DIEKADIOKRO', 'IHS_NCE_017O', 'OCI0364', 'IHS', 'OCI', NULL, NULL, NULL, '-4.41472222', 'Indoor', 'Haubané', NULL, NULL, '6.49350000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19494, NULL, NULL, NULL, 'DIGNANGO_IHS', 'IHS_FMG_059M', 'OCI0365', 'IHS', 'IHS', NULL, NULL, NULL, '-6.27322223', 'Outdoor', 'Autostable', NULL, NULL, '6.29086112', 'En service', NULL, NULL, NULL),
(19495, NULL, NULL, NULL, 'DIKODOUGOU', 'IHS_SVN_028O', 'OCI0366', 'IHS', 'OCI', NULL, NULL, NULL, '-5.77306029', 'Outdoor', 'Haubané', NULL, NULL, '9.07139280', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19496, NULL, NULL, NULL, 'DIMBOKRO', 'IHS_NCE_001O', 'OCI0367', 'IHS', 'OCI', NULL, NULL, NULL, '-4.70558056', 'Indoor', 'Haubané', NULL, NULL, '6.64899722', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19497, NULL, NULL, NULL, 'DINGUI', 'IHS_SCE_062O', 'OCI0368', 'IHS', 'OCI', NULL, NULL, NULL, '-3.59655556', 'Indoor', 'Autostable', NULL, NULL, '5.28305833', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19498, NULL, NULL, NULL, 'DINGUIRA', 'IHS_LGN_729M', 'OCI0369', 'IHS', 'IHS', NULL, NULL, NULL, '-3.75994444', 'Outdoor', 'Haubané', NULL, NULL, '5.67125000', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19499, NULL, NULL, NULL, 'DIOCESE', 'IHS_MCE_002O', 'OCI0370', 'IHS', 'OCI', NULL, NULL, NULL, '-3.48721944', 'Indoor', 'Autostable', NULL, NULL, '6.73891389', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19500, NULL, NULL, NULL, 'DIOULABOUGOU', 'IHS_LAC_016O', 'OCI0371', 'IHS', 'OCI', NULL, NULL, NULL, '-5.28827410', 'Indoor', 'Autostable', NULL, NULL, '6.80210714', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19501, NULL, NULL, NULL, 'DIOULATIEDOUGOU', 'IHS_DNG_029O', 'OCI0372', 'IHS', 'OCI', NULL, NULL, NULL, '-7.24241303', 'Outdoor', 'Haubané', NULL, NULL, '8.98288791', 'En service', NULL, 'RAN 1000', NULL),
(19502, NULL, NULL, NULL, 'DIVO', 'IHS_SBD_003O', 'OCI0373', 'IHS', 'OCI', NULL, NULL, NULL, '-5.36474167', 'Indoor', 'Haubané', NULL, NULL, '5.83611944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19503, NULL, NULL, NULL, 'DJAHAKRO', 'IHS_MRH_035O', 'OCI0374', 'IHS', 'OCI', NULL, NULL, NULL, '-6.14777778', 'Outdoor', 'Haubané', NULL, NULL, '6.89919444', 'En service', NULL, 'RAN 1000', NULL),
(19504, NULL, NULL, NULL, 'DJANGOBO', 'IHS_AGN_029O', 'OCI0375', 'IHS', 'OCI', NULL, NULL, NULL, '-3.64494444', 'Outdoor', 'Haubané', NULL, NULL, '6.15311111', 'En service', NULL, 'DENSIF 2010', NULL),
(19505, NULL, NULL, NULL, 'DJE', 'IHS_BSD_001O', 'OCI0376', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64366542', 'Indoor', 'Autostable', NULL, NULL, '4.76230130', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19506, NULL, NULL, NULL, 'DJEBONOUA', 'IHS_SCE_066O', 'OCI0377', 'IHS', 'IHS', NULL, NULL, NULL, '-5.06672222', 'Indoor', 'Haubané', NULL, NULL, '7.52541667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19507, NULL, NULL, NULL, 'DJEKANOU', 'IHS_LAC_068O', 'OCI0378', 'IHS', 'OCI', NULL, NULL, NULL, '-5.11158056', 'Indoor', 'Autostable', NULL, NULL, '6.47102222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19508, NULL, NULL, NULL, 'DJEMISSIKRO', 'IHS_SCE_027M', 'OCI0379', 'IHS', 'IHS', NULL, NULL, NULL, '-2.99202778', 'Indoor', 'Haubané', NULL, NULL, '5.29141667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19509, NULL, NULL, NULL, 'DJESSI', 'IHS_BSD_130O', 'OCI0380', 'IHS', 'OCI', NULL, NULL, NULL, '-6.59055278', 'Outdoor', 'Autostable', NULL, NULL, '5.774525', 'En service', NULL, 'RAN 1000', NULL),
(19510, NULL, NULL, NULL, 'DJIBI-CIT', 'IHS_LGN_507O', 'OCI0381', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97859723', 'Indoor', 'Haubané', NULL, NULL, '5.40171667', 'En service', NULL, 'RAN 1000', NULL),
(19511, NULL, NULL, NULL, 'DJIBROSSO', 'IHS_WRD_037O', 'OCI0382', 'IHS', 'OCI', NULL, NULL, NULL, '-6.99746959', 'Outdoor', 'Haubané', NULL, NULL, '8.76797623', 'En service', NULL, 'RAN 1000', NULL),
(19512, NULL, NULL, NULL, 'DJIDJIDOU', 'IHS_SBD_036O', 'OCI0383', 'IHS', 'OCI', NULL, NULL, NULL, '-5.05236111', 'Outdoor', 'Haubané', NULL, NULL, '5.76970833', 'En service', NULL, 'RAN 1000', NULL),
(19513, NULL, NULL, NULL, 'DJIGBAGUI', 'IHS_BSD_110O', 'OCI0384', 'IHS', 'OCI', NULL, NULL, NULL, '-6.87144445', 'Outdoor', 'Haubané', NULL, NULL, '5.61608334', 'En service', NULL, 'RAN 1000', NULL),
(19514, NULL, NULL, NULL, 'DJOMI', 'IHS_LGN_403O', 'OCI0385', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99363889', 'Indoor', 'Haubané', NULL, NULL, '5.39783333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19515, NULL, NULL, NULL, 'DJOUROUTOU', 'IHS_BSD_111O', 'OCI0386', 'IHS', 'OCI', NULL, NULL, NULL, '-7.27591667', 'Outdoor', 'Haubané', NULL, NULL, '5.37000000', 'En service', NULL, 'RAN 1000', NULL),
(19516, NULL, NULL, NULL, 'DOBA', 'IHS_BSD_059O', 'OCI0387', 'IHS', 'OCI', NULL, NULL, NULL, '-6.82633688', 'Outdoor', 'Haubané', NULL, NULL, '5.21527553', 'En service', NULL, 'VICTOIRE', NULL),
(19517, NULL, NULL, NULL, 'DOGBO', 'IHS_BSD_049O', 'OCI0388', 'IHS', 'OCI', NULL, NULL, NULL, '-7.04335812', 'Outdoor', 'Haubané', NULL, NULL, '4.94569546', 'En service', NULL, 'RAN 1000', NULL),
(19518, NULL, NULL, NULL, 'DOKE', 'IHS_MCY_047O', 'OCI0389', 'IHS', 'OCI', NULL, NULL, NULL, '-8.12125171', 'Outdoor', 'Haubané', NULL, NULL, '6.59627626', 'En service', NULL, 'RAN 1000', NULL),
(19519, NULL, NULL, NULL, 'DOMANGBEU', 'IHS_HSD_097O', 'OCI0390', 'IHS', 'OCI', NULL, NULL, NULL, '-7.02436112', 'Outdoor', 'Haubané', NULL, NULL, '6.87636112', 'En service', NULL, 'RAN 1000', NULL),
(19520, NULL, NULL, NULL, 'DOMORAUD', 'IHS_DHM_004O', 'OCI0391', 'IHS', 'OCI', NULL, NULL, NULL, '-7.55928056', 'Indoor', 'Autostable Mobile', NULL, NULL, '7.41113056', 'En service', NULL, 'RAP', NULL),
(19521, NULL, NULL, NULL, 'DOROPO', 'IHS_ZNZ_072O', 'OCI0392', 'IHS', 'OCI', NULL, NULL, NULL, '-3.35447223', 'Outdoor', 'Haubané', NULL, NULL, '9.81155556', 'En service', NULL, 'RAN 1000', NULL),
(19522, NULL, NULL, NULL, 'DOTENZIA', 'RTI_001', 'OCI0393', 'IHS', 'RTI', NULL, NULL, NULL, '-5.60394445', 'Indoor', 'Haubané', NULL, NULL, '6.98508334', 'En service', NULL, 'VICTOIRE', NULL),
(19523, NULL, NULL, NULL, 'DOUANE', 'IHS_LGN_030O', 'OCI0394', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02531252', 'Indoor', 'Autostable', NULL, NULL, '5.32228802', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19524, NULL, NULL, NULL, 'DOUGODOU', 'IHS_SBD_066O', 'OCI0395', 'IHS', 'OCI', NULL, NULL, NULL, '-5.34891667', 'Outdoor', 'Haubané', NULL, NULL, '5.28060833', 'En service', NULL, 'RAN 1000', NULL),
(19525, NULL, NULL, NULL, 'DOUKOUYA', 'IHS_FMG_071O', 'OCI0396', 'IHS', 'OCI', NULL, NULL, NULL, '-5.56105556', 'Indoor', 'Haubané', NULL, NULL, '6.41819167', 'En service', NULL, 'RAP', NULL),
(19526, NULL, NULL, NULL, 'DUALLA', 'IHS_WRD_006O', 'OCI0397', 'IHS', 'OCI', NULL, NULL, NULL, '-6.54239200', 'Outdoor', 'Haubané', NULL, NULL, '8.11690600', 'En service', NULL, 'VICTOIRE', NULL),
(19527, NULL, NULL, NULL, 'DUEKOUE', 'IHS_MCY_017O', 'OCI0398', 'IHS', 'OCI', NULL, NULL, NULL, '-7.34441667', 'Indoor', 'Haubané', NULL, NULL, '6.73538889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19528, NULL, NULL, NULL, 'DUFREBO', 'IHS_MCE_033O', 'OCI0399', 'IHS', 'OCI', NULL, NULL, NULL, '-3.45155556', 'Outdoor', 'Haubané', NULL, NULL, '7.09436111', 'En service', NULL, 'RAP', NULL),
(19529, NULL, NULL, NULL, 'EBIKRO_NDAKRO', 'IHS_SCE_023O', 'OCI0400', 'IHS', 'OCI', NULL, NULL, NULL, '-3.10316667', 'Outdoor', 'Haubané', NULL, NULL, '5.72177778', 'En service', NULL, 'DENSIF 2010', NULL),
(19530, NULL, NULL, NULL, 'EBILASSOKRO', 'IHS_MCE_035O', 'OCI0401', 'IHS', 'OCI', NULL, NULL, NULL, '-3.35286111', 'Indoor', 'Haubané', NULL, NULL, '6.37871944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19531, NULL, NULL, NULL, 'EBOINDA', 'IHS_SCE_042O', 'OCI0402', 'IHS', 'OCI', NULL, NULL, NULL, '-3.10500001', 'Outdoor', 'Haubané', NULL, NULL, '5.15319445', 'En service', NULL, 'RAN 1000', NULL),
(19532, NULL, NULL, NULL, 'EDJAMBO', 'IHS_SCE_048O', 'OCI0403', 'IHS', 'OCI', NULL, NULL, NULL, '-2.96583333', 'Outdoor', 'Haubané', NULL, NULL, '5.20013889', 'En service', NULL, 'ELEPHANT', NULL),
(19533, NULL, NULL, NULL, 'EFYM', 'IHS_LGN_666O', 'OCI0404', 'IHS', 'OCI', NULL, NULL, NULL, '-3.90779392', 'Outdoor', 'Autostable', NULL, NULL, '5.24972910', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19534, NULL, NULL, NULL, 'EHANIA', 'IHS_SCE_019O', 'OCI0405', 'IHS', 'OCI', NULL, NULL, NULL, '-3.05291667', 'Indoor', 'Haubané', NULL, NULL, '5.29019445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19535, NULL, NULL, NULL, 'ELEVI', 'IHS_AGN_069O', 'OCI0406', 'IHS', 'OCI', NULL, NULL, NULL, '-4.18944444', 'Outdoor', 'Haubané', NULL, NULL, '5.65638889', 'En service', NULL, 'DENSIF 2010', NULL),
(19536, NULL, NULL, NULL, 'ELIBOU', 'IHS_LGN_739O', 'OCI0407', 'IHS', 'OCI', NULL, NULL, NULL, '-4.50891667', 'Indoor', 'Autostable', NULL, NULL, '5.68836111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19537, NULL, NULL, NULL, 'EMMANUEL', 'IHS_LGN_610O', 'OCI0408', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02307000', 'Indoor', 'Haubané', NULL, NULL, '5.43947000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19538, NULL, NULL, NULL, 'EMORAUDE', 'IHS_LGN_322O', 'OCI0409', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97828001', 'Indoor', 'Autostable', NULL, NULL, '5.37391319', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19539, NULL, NULL, NULL, 'ENA', 'IHS_LGN_169O', 'OCI0410', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99808333', 'Indoor', 'Haubané', NULL, NULL, '5.36077778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19540, NULL, NULL, NULL, 'ENI', 'Moov_007', 'OCI0411', 'IHS', 'Moov', NULL, NULL, NULL, '-5.00735834', 'Outdoor', 'Autostable', NULL, NULL, '7.70091667', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19541, NULL, NULL, NULL, 'ENSTP', 'Moov_008', 'OCI0412', 'IHS', 'Moov', NULL, NULL, NULL, '-5.23833056', 'Outdoor', 'Autostable', NULL, NULL, '6.86386111', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19542, NULL, NULL, NULL, 'EQUIGOLD', 'IHS_FMG_074M', 'OCI0413', 'IHS', 'IHS', NULL, NULL, NULL, '-5.38000001', 'Outdoor', 'Autostable', NULL, NULL, '6.23588889', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19543, NULL, NULL, NULL, 'ESCADRON', 'IHS_HSD_011O', 'OCI0414', 'IHS', 'OCI', NULL, NULL, NULL, '-6.42894900', 'Indoor', 'Autostable Mobile', NULL, NULL, '6.86568400', 'En service', NULL, 'RAP', NULL),
(19544, NULL, NULL, NULL, 'ETTROKRO', 'IHS_NCE_068O', 'OCI0415', 'IHS', 'OCI', NULL, NULL, NULL, '-3.76266667', 'Outdoor', 'Haubané', NULL, NULL, '7.25925001', 'En service', NULL, 'RAN 1000', NULL),
(19545, NULL, NULL, NULL, 'EYEMON', 'IHS_AGN_048O', 'OCI0416', 'IHS', 'OCI', NULL, NULL, NULL, '-4.20861111', 'Indoor', 'Autostable', NULL, NULL, '5.94266667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19546, NULL, NULL, NULL, 'FACOBLY', 'IHS_DHM_013M', 'OCI0417', 'IHS', 'IHS', NULL, NULL, NULL, '-7.38088889', 'Outdoor', 'Haubané', NULL, NULL, '7.38305556', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19547, NULL, NULL, NULL, 'FAKRY', 'IHS_LGN_172O', 'OCI0418', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01250834', 'Indoor', 'Haubané', NULL, NULL, '5.29977778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19548, NULL, NULL, NULL, 'FALIKOU', 'IHS_LGN_667O', 'OCI0419', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05528000', 'Indoor', 'Autostable', NULL, NULL, '5.47626000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19549, NULL, NULL, NULL, 'FAMA', 'IHS_LGN_628O', 'OCI0420', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02963500', 'Indoor', 'Haubané', NULL, NULL, '5.44572800', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19550, NULL, NULL, NULL, 'FAMIENKRO', 'IHS_NCE_073O', 'OCI0421', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98688889', 'Outdoor', 'Haubané', NULL, NULL, '7.86641667', 'En service', NULL, 'RAN 1000', NULL),
(19551, NULL, NULL, NULL, 'FANY', 'IHS_LGN_503O', 'OCI0422', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94747222', 'Indoor', 'Haubané', NULL, NULL, '5.31038889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19552, NULL, NULL, NULL, 'FATIMA', 'IHS_LGN_589O', 'OCI0423', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02611112', 'Indoor', 'Haubané', NULL, NULL, '5.43222223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19553, NULL, NULL, NULL, 'FAYE', 'IHS_BSD_030O', 'OCI0424', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64861112', 'Outdoor', 'Haubané', NULL, NULL, '4.97163889', 'En service', NULL, 'RAN 1000', NULL),
(19554, NULL, NULL, NULL, 'FELICIA', 'IHS_LGN_017O', 'OCI0425', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01790278', 'Indoor', 'Autostable', NULL, NULL, '5.32711112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19555, NULL, NULL, NULL, 'FENGOLO_DUEKOUE', 'IHS_MCY_024O', 'OCI0426', 'IHS', 'OCI', NULL, NULL, NULL, '-7.39769429', 'Outdoor', 'Haubané', NULL, NULL, '6.78736172', 'En service', NULL, 'RAN 1000', NULL),
(19556, NULL, NULL, NULL, 'FENGOLO_MADINANI', 'IHS_DNG_037O', 'OCI0427', 'IHS', 'OCI', NULL, NULL, NULL, '-6.90693612', 'Outdoor', 'Haubané', NULL, NULL, '9.92175278', 'En service', NULL, 'RAN 1000', NULL),
(19557, NULL, NULL, NULL, 'FERKE', 'IHS_SVN_031O', 'OCI0428', 'IHS', 'OCI', NULL, NULL, NULL, '-5.18739722', 'Indoor', 'Autostable', NULL, NULL, '9.59195278', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19558, NULL, NULL, NULL, 'FETEKRO', 'IHS_VDB_024O', 'OCI0429', 'IHS', 'OCI', NULL, NULL, NULL, '-4.99335654', 'Indoor', 'Autostable', NULL, NULL, '7.71726501', 'En service', NULL, 'RAP', NULL),
(19559, NULL, NULL, NULL, 'FEXIM', 'IHS_BSD_025O', 'OCI0430', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64225000', 'Indoor', 'Autostable', NULL, NULL, '4.81055556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19560, NULL, NULL, NULL, 'FIGAYO', 'IHS_LGN_257O', 'OCI0431', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07308334', 'Outdoor', 'MAT', NULL, NULL, '5.34872223', 'En service', NULL, 'DENSIF 2009', NULL),
(19561, NULL, NULL, NULL, 'FLATCHEDOUGOU', 'IHS_ZNZ_031O', 'OCI0432', 'IHS', 'OCI', NULL, NULL, NULL, '-3.12502778', 'Outdoor', 'Haubané', NULL, NULL, '8.49194445', 'En service', NULL, 'VICTOIRE', NULL),
(19562, NULL, NULL, NULL, 'FLORALIE', 'IHS_LGN_414O', 'OCI0433', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95408333', 'Indoor', 'Haubané', NULL, NULL, '5.34816667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19563, NULL, NULL, NULL, 'FONDATION', 'Moov_011', 'OCI0434', 'IHS', 'Moov', NULL, NULL, NULL, '-5.26127778', 'Outdoor', 'Autostable', NULL, NULL, '6.78858333', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19564, NULL, NULL, NULL, 'FORESTE', 'IHS_LGN_336O', 'OCI0435', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00638888', 'Indoor', 'Autostable', NULL, NULL, '5.39377583', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19565, NULL, NULL, NULL, 'FORUM_MICRO', 'IHS_LGN_029O', 'OCI0436', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02583221', 'Outdoor', 'MAT', NULL, NULL, '5.34722448', 'En service', NULL, NULL, NULL),
(19566, NULL, NULL, NULL, 'FOUGEROLLE', 'IHS_LGN_354O', 'OCI0437', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00111480', 'Indoor', 'Autostable', NULL, NULL, '5.27473211', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19567, NULL, NULL, NULL, 'FOYER', 'IHS_LGN_080O', 'OCI0438', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03827816', 'Indoor', 'Autostable', NULL, NULL, '5.32122612', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19568, NULL, NULL, NULL, 'FRAMBO', 'IHS_SCE_058O', 'OCI0439', 'IHS', 'OCI', NULL, NULL, NULL, '-2.96183333', 'Outdoor', 'Haubané', NULL, NULL, '5.13577778', 'En service', NULL, 'ELEPHANT', NULL),
(19569, NULL, NULL, NULL, 'FRATERNITE', 'IHS_LGN_037O', 'OCI0440', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02016000', 'Indoor', 'Haubané', NULL, NULL, '5.34783000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19570, NULL, NULL, NULL, 'FRESCO', 'IHS_SBD_076O', 'OCI0441', 'IHS', 'OCI', NULL, NULL, NULL, '-5.58500278', 'Indoor', 'Haubané', NULL, NULL, '5.10527500', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19571, NULL, NULL, NULL, 'FRIGELIAS', 'IHS_LGN_152O', 'OCI0442', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99744445', 'Indoor', 'Haubané', NULL, NULL, '5.31663889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19572, NULL, NULL, NULL, 'FROEBEL', 'IHS_LGN_303O', 'OCI0443', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97386112', 'Indoor', 'Haubané', NULL, NULL, '5.31138889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19573, NULL, NULL, NULL, 'FRONAN', 'IHS_VDB_064O', 'OCI0444', 'IHS', 'OCI', NULL, NULL, NULL, '-5.12693603', 'Indoor', 'Haubané', NULL, NULL, '8.23058211', 'En service', NULL, 'RAP', NULL),
(19574, NULL, NULL, NULL, 'GABERON_NEW', 'Moov', 'OCI0445', 'Esco', 'Moov', NULL, NULL, NULL, '-5.06642223', 'Outdoor', 'Autostable', NULL, NULL, '7.67496945', 'En service', NULL, NULL, NULL),
(19575, NULL, NULL, NULL, 'GABIA', 'IHS_HSD_077O', 'OCI0446', 'IHS', 'OCI', NULL, NULL, NULL, '-5.38013612', 'Outdoor', 'Haubané', NULL, NULL, '6.30888889', 'En service', NULL, 'RAP', NULL),
(19576, NULL, NULL, NULL, 'GABIA_ISSIA', 'IHS_HSD_078O', 'OCI0447', 'IHS', 'OCI', NULL, NULL, NULL, '-6.37438889', 'Indoor', 'Haubané', NULL, NULL, '6.40311112', 'En service', NULL, 'VICTOIRE', NULL),
(19577, NULL, NULL, NULL, 'GABIADJI', 'IHS_BSD_033O', 'OCI0448', 'IHS', 'OCI', NULL, NULL, NULL, '-6.55886111', 'Indoor', 'Autostable', NULL, NULL, '5.01944444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19578, NULL, NULL, NULL, 'GABOUA', 'IHS_HSD_027O', 'OCI0449', 'IHS', 'OCI', NULL, NULL, NULL, '-6.47236111', 'Outdoor', 'Autostable', NULL, NULL, '7.04219444', 'En service', NULL, 'ELEPHANT', NULL),
(19579, NULL, NULL, NULL, 'GADOUAN', 'IHS_HSD_050O', 'OCI0450', 'IHS', 'OCI', NULL, NULL, NULL, '-6.16586112', 'Indoor', 'Haubané', NULL, NULL, '6.67780556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19580, NULL, NULL, NULL, 'GAGNOA', 'IHS_FMG_003O', 'OCI0451', 'IHS', 'OCI', NULL, NULL, NULL, '-5.94280556', 'Indoor', 'Haubané', NULL, NULL, '6.12975001', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19581, NULL, NULL, NULL, 'GAGNOA_CHATEAUX', 'IHS_FMG_004O', 'OCI0452', 'IHS', 'OCI', NULL, NULL, NULL, '-5.95872222', 'Indoor', 'Autostable', NULL, NULL, '6.13633333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19582, NULL, NULL, NULL, 'GAGNY', 'IHS_BSD_036O', 'OCI0453', 'IHS', 'OCI', NULL, NULL, NULL, '-6.74888889', 'Outdoor', 'Haubané', NULL, NULL, '5.04594445', 'En service', NULL, 'VICTOIRE', NULL),
(19583, NULL, NULL, NULL, 'GALEBOUO', 'IHS_FMG_060O', 'OCI0454', 'IHS', 'OCI', NULL, NULL, NULL, '-6.28917222', 'Indoor', 'Haubané', NULL, NULL, '6.00305833', 'En service', NULL, 'RAP', NULL),
(19584, NULL, NULL, NULL, 'GANDOUR', 'IHS_LGN_549O', 'OCI0455', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94968828', 'Indoor', 'Haubané', NULL, NULL, '5.29114863', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19585, NULL, NULL, NULL, 'GARANGO', 'IHS_MRH_007O', 'OCI0456', 'IHS', 'OCI', NULL, NULL, NULL, '-5.81994444', 'Outdoor', 'Haubané', NULL, NULL, '6.96202778', 'En service', NULL, 'RAN 1000', NULL),
(19586, NULL, NULL, NULL, 'GARE', 'IHS_LGN_062O', 'OCI0457', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02119400', 'Indoor', 'MAT', NULL, NULL, '5.35227800', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19587, NULL, NULL, NULL, 'GBAGBAM', 'IHS_SBD_060O', 'OCI0458', 'IHS', 'OCI', NULL, NULL, NULL, '-5.58916667', 'Outdoor', 'Haubané', NULL, NULL, '5.47441667', 'En service', NULL, 'ELEPHANT', NULL),
(19588, NULL, NULL, NULL, 'GBAKAYO', 'IHS_BSD_166O', 'OCI0459', 'IHS', 'OCI', NULL, NULL, NULL, '-6.43048954', 'Outdoor', 'Haubané', NULL, NULL, '5.99264606', 'En service', NULL, 'RAN 1000', NULL),
(19589, NULL, NULL, NULL, 'GBALEBOUO', 'IHS_BSD_138O', 'OCI0460', 'IHS', 'OCI', NULL, NULL, NULL, '-6.34755556', 'Outdoor', 'Haubané', NULL, NULL, '5.74230556', 'En service', NULL, 'RAN 1000', NULL),
(19590, NULL, NULL, NULL, 'GBAPET', 'IHS_BSD_113O', 'OCI0461', 'IHS', 'OCI', NULL, NULL, NULL, '-7.51280556', 'Outdoor', 'Haubané', NULL, NULL, '4.97502778', 'En service', NULL, 'VICTOIRE', NULL),
(19591, NULL, NULL, NULL, 'GBAPLEU_VILLAGE', 'IHS_BSD_192O', 'OCI0463', 'IHS', 'OCI', NULL, NULL, NULL, '-7.17000001', 'Outdoor', 'Haubané', NULL, NULL, '6.47708334', 'En service', NULL, 'VICTOIRE', NULL),
(19592, NULL, NULL, NULL, 'GBOABLE', 'IHS_LGN_619O', 'OCI0464', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03931000', 'Outdoor', 'Autostable', NULL, NULL, '5.44198000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19593, NULL, NULL, NULL, 'GBOGUHE', 'IHS_HSD_030O', 'OCI0465', 'IHS', 'OCI', NULL, NULL, NULL, '-6.58528333', 'Indoor', 'Haubané', NULL, NULL, '6.75475000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19594, NULL, NULL, NULL, 'GBON', 'IHS_SVN_073O', 'OCI0466', 'IHS', 'OCI', NULL, NULL, NULL, '-6.45204000', 'Indoor', 'Haubané', NULL, NULL, '9.83714000', 'En service', NULL, 'RAP', NULL),
(19595, NULL, NULL, NULL, 'GD_BEREBY', 'IHS_BSD_038O', 'OCI0467', 'IHS', 'OCI', NULL, NULL, NULL, '-6.92916667', 'Indoor', 'Haubané', NULL, NULL, '4.64505556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19596, NULL, NULL, NULL, 'GD_BOUBOURY', 'IHS_LGN_730O', 'OCI0468', 'IHS', 'OCI', NULL, NULL, NULL, '-4.46293700', 'Outdoor', 'Haubané', NULL, NULL, '5.34334424', 'En service', NULL, 'RAN 1000', NULL),
(19597, NULL, NULL, NULL, 'GD_LAHOU', 'IHS_LGN_768O', 'OCI0469', 'IHS', 'OCI', NULL, NULL, NULL, '-5.00733333', 'Indoor', 'Haubané', NULL, NULL, '5.25661111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19598, NULL, NULL, NULL, 'GENIE_2M', 'IHS_LGN_585O', 'OCI0470', 'IHS', 'OCI', NULL, NULL, NULL, '-3.93586111', 'Indoor', 'Autostable', NULL, NULL, '5.37336111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19599, NULL, NULL, NULL, 'GLANLEU', 'IHS_DHM_057O', 'OCI0472', 'IHS', 'OCI', NULL, NULL, NULL, '-8.25360190', 'Outdoor', 'Haubané', NULL, NULL, '6.85180180', 'En service', NULL, 'RAN 1000', NULL),
(19600, NULL, NULL, NULL, 'GLAZAI', 'IHS_MCY_031O', 'OCI0473', 'IHS', 'OCI', NULL, NULL, NULL, '-7.48194445', 'Outdoor', 'Autostable', NULL, NULL, '6.21513889', 'En service', NULL, 'DENSIF 2010', NULL),
(19601, NULL, NULL, NULL, 'GLIGBEUADJI', 'IHS_BSD_050O', 'OCI0474', 'IHS', 'OCI', NULL, NULL, NULL, '-6.69527778', 'Outdoor', 'Haubané', NULL, NULL, '5.20313889', 'En service', NULL, 'VICTOIRE', NULL),
(19602, NULL, NULL, NULL, 'GNABOYA', 'IHS_BSD_175O', 'OCI0475', 'IHS', 'OCI', NULL, NULL, NULL, '-6.92602778', 'Outdoor', 'Autostable', NULL, NULL, '6.08361112', 'En service', NULL, 'RAN 1000', NULL),
(19603, NULL, NULL, NULL, 'GNAGBODOUGNOA', 'IHS_FMG_033O', 'OCI0476', 'IHS', 'OCI', NULL, NULL, NULL, '-5.83597223', 'Outdoor', 'Haubané', NULL, NULL, '5.96583334', 'En service', NULL, 'RAN 1000', NULL),
(19604, NULL, NULL, NULL, 'GNAGO', 'IHS_BSD_121O', 'OCI0477', 'IHS', 'OCI', NULL, NULL, NULL, '-5.78346667', 'Outdoor', 'Haubané', NULL, NULL, '5.19207500', 'En service', NULL, 'RAN 1000', NULL),
(19605, NULL, NULL, NULL, 'GNATROA', 'IHS_FMG_047O', 'OCI0478', 'IHS', 'OCI', NULL, NULL, NULL, '-6.15338889', 'Outdoor', 'Haubané', NULL, NULL, '5.92138889', 'En service', NULL, 'DENSIF 2010', NULL),
(19606, NULL, NULL, NULL, 'GNIPY', 'IHS_BSD_116O', 'OCI0479', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64680556', 'Outdoor', 'Haubané', NULL, NULL, '5.67533333', 'En service', NULL, 'ELEPHANT', NULL),
(19607, NULL, NULL, NULL, 'GNITY', 'IHS_BSD_044O', 'OCI0480', 'IHS', 'OCI', NULL, NULL, NULL, '-6.57125000', 'Outdoor', 'Haubané', NULL, NULL, '5.13941667', 'En service', NULL, 'RAN 1000', NULL),
(19608, NULL, NULL, NULL, 'GNIZAKO', 'IHS_BSD_141O', 'OCI0481', 'IHS', 'OCI', NULL, NULL, NULL, '-6.58639286', 'Indoor', 'Autostable', NULL, NULL, '5.78752173', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19609, NULL, NULL, NULL, 'GNOGBOYO', 'IHS_BSD_159O', 'OCI0482', 'IHS', 'OCI', NULL, NULL, NULL, '-6.40283334', 'Outdoor', 'Haubané', NULL, NULL, '5.88788889', 'En service', NULL, 'RAN 1000', NULL),
(19610, NULL, NULL, NULL, 'GNOUMA', 'IHS_HSD_032O', 'OCI0483', 'IHS', 'OCI', NULL, NULL, NULL, '-6.24547223', 'Outdoor', 'Autostable', NULL, NULL, '6.89863889', 'En service', NULL, 'DENSIF 2009', NULL),
(19611, NULL, NULL, NULL, 'GNOUSSO', 'IHS_FMG_010O', 'OCI0484', 'IHS', 'OCI', NULL, NULL, NULL, '-5.93353333', 'Outdoor', 'Autostable', NULL, NULL, '6.11751111', 'En service', NULL, 'RAP', NULL),
(19612, NULL, NULL, NULL, 'GOBREKO', 'IHS_BSD_122O', 'OCI0485', 'IHS', 'OCI', NULL, NULL, NULL, '-6.26205556', 'Outdoor', 'Haubané', NULL, NULL, '5.65158333', 'En service', NULL, 'DENSIF 2009', NULL),
(19613, NULL, NULL, NULL, 'GOH', 'IHS_BSD_056O', 'OCI0486', 'IHS', 'OCI', NULL, NULL, NULL, '-6.63716667', 'Outdoor', 'Haubané', NULL, NULL, '5.23343611', 'En service', NULL, 'RAN 1000', NULL),
(19614, NULL, NULL, NULL, 'GOHITAFLA', 'IHS_MRH_047O', 'OCI0487', 'IHS', 'OCI', NULL, NULL, NULL, '-5.87569444', 'Indoor', 'Haubané', NULL, NULL, '7.48488889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19615, NULL, NULL, NULL, 'GOHOUNFLA', 'IHS_MRH_056O', 'OCI0488', 'IHS', 'OCI', NULL, NULL, NULL, '-5.87586111', 'Outdoor', 'Haubané', NULL, NULL, '7.58952778', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19616, NULL, NULL, NULL, 'GOLF', 'IHS_LGN_265O', 'OCI0489', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98222222', 'Indoor', 'Haubané', NULL, NULL, '5.33297222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19617, NULL, NULL, NULL, 'GOLF_HOTEL', 'IHS_LGN_266O', 'OCI0490', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97250000', 'Outdoor', 'MAT', NULL, NULL, '5.33002778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19618, NULL, NULL, NULL, 'GOMON', 'IHS_AGN_075O', 'OCI0491', 'IHS', 'OCI', NULL, NULL, NULL, '-4.43836112', 'Indoor', 'Autostable', NULL, NULL, '5.72502778', 'En service', NULL, 'RAP', NULL),
(19619, NULL, NULL, NULL, 'GONATE', 'IHS_HSD_033O', 'OCI0492', 'IHS', 'OCI', NULL, NULL, NULL, '-6.24158333', 'Indoor', 'Autostable', NULL, NULL, '6.90941667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(19620, NULL, NULL, NULL, 'GONFREVILLE', 'IHS_VDB_027O', 'OCI0493', 'IHS', 'OCI', NULL, NULL, NULL, '-5.05694528', 'Outdoor', 'Autostable', NULL, NULL, '7.72555185', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19621, NULL, NULL, NULL, 'GONZAK', 'IHS_LGN_659O', 'OCI0494', 'IHS', 'OCI', NULL, NULL, NULL, '-3.91771944', 'Indoor', 'Haubané', NULL, NULL, '5.24358056', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19622, NULL, NULL, NULL, 'GOTAM', 'IHS_LGN_199O', 'OCI0495', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06561112', 'Indoor', 'Haubané', NULL, NULL, '5.33241667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19623, NULL, NULL, NULL, 'GOUABO', 'Moov_012', 'OCI0496', 'IHS', 'Moov', NULL, NULL, NULL, '-4.32056000', 'Outdoor', 'Autostable', NULL, NULL, '6.00056000', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19624, NULL, NULL, NULL, 'GOUDI', 'IHS_LGN_781O', 'OCI0497', 'IHS', 'OCI', NULL, NULL, NULL, '-5.58350001', 'Outdoor', 'Haubané', NULL, NULL, '6.22933334', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19625, NULL, NULL, NULL, 'GOUEHIZRA', 'IHS_MRH_051O', 'OCI0498', 'IHS', 'OCI', NULL, NULL, NULL, '-6.25130556', 'Outdoor', 'Haubané', NULL, NULL, '7.26397222', 'En service', NULL, 'ELEPHANT', NULL),
(19626, NULL, NULL, NULL, 'GOULIA', 'IHS_DNG_030O', 'OCI0499', 'IHS', 'OCI', NULL, NULL, NULL, '-7.20466111', 'Outdoor', 'Haubané', NULL, NULL, '10.01549722', 'En service', NULL, 'RAN 1000', NULL),
(19627, NULL, NULL, NULL, 'GOUMERE_NEW', 'ABG023', 'OCI0500', 'Esco', 'Moov', NULL, NULL, NULL, '-2.98236389', 'Indoor', 'Autostable', NULL, NULL, '7.89898889', 'En service', NULL, NULL, NULL),
(19628, NULL, NULL, NULL, 'GOURIELA', 'IHS_HSD_099O', 'OCI0501', 'IHS', 'OCI', NULL, NULL, NULL, '-6.51544444', 'Outdoor', 'Haubané', NULL, NULL, '7.51991667', 'En service', NULL, 'RAN 1000', NULL),
(19629, NULL, NULL, NULL, 'GOUROMINANKRO', 'IHS_LAC_042O', 'OCI0502', 'IHS', 'OCI', NULL, NULL, NULL, '-5.16936111', 'Outdoor', 'Haubané', NULL, NULL, '6.70994444', 'En service', NULL, 'DENSIF 2010', NULL),
(19630, NULL, NULL, NULL, 'GOYA', 'IHS_MCY_008O', 'OCI0503', 'IHS', 'OCI', NULL, NULL, NULL, '-7.42983333', 'Outdoor', 'Haubané', NULL, NULL, '6.56755556', 'En service', NULL, 'ELEPHANT', NULL),
(19631, NULL, NULL, NULL, 'GRABO', 'RTI_002', 'OCI0504', 'IHS', 'RTI', NULL, NULL, NULL, '-7.49431668', 'Indoor', 'Haubané', NULL, NULL, '4.91863889', 'En service', NULL, 'RAP', NULL),
(19632, NULL, NULL, NULL, 'GRAND_AKOUDZIN', 'IHS_AGN_017O', 'OCI0505', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96755556', 'Outdoor', 'Haubané', NULL, NULL, '6.02694444', 'En service', NULL, 'DENSIF 2010', NULL),
(19633, NULL, NULL, NULL, 'GRAND_ALEPE', 'IHS_LGN_704O', 'OCI0506', 'IHS', 'OCI', NULL, NULL, NULL, '-3.77177778', 'Outdoor', 'Haubané', NULL, NULL, '5.46966667', 'En service', NULL, 'RAN 1000', NULL),
(19634, NULL, NULL, NULL, 'GRAND_YAPO', 'IHS_AGN_055O', 'OCI0507', 'IHS', 'OCI', NULL, NULL, NULL, '-4.15110669', 'Indoor', 'Autostable', NULL, NULL, '5.82861161', 'En service', NULL, 'RAP', NULL),
(19635, NULL, NULL, NULL, 'GRAND_ZATTRY', 'IHS_BSD_176O', 'OCI0508', 'IHS', 'OCI', NULL, NULL, NULL, '-6.54027778', 'Indoor', 'Haubané', NULL, NULL, '6.11919445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19636, NULL, NULL, NULL, 'GRATRY', 'IHS_LGN_077O', 'OCI0509', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01174554', 'Indoor', 'MAT', NULL, NULL, '5.31988635', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19637, NULL, NULL, NULL, 'GRIBOUO', 'IHS_BSD_181O', 'OCI0510', 'IHS', 'OCI', NULL, NULL, NULL, '-6.91108334', 'Outdoor', 'Haubané', NULL, NULL, '6.18958334', 'En service', NULL, 'RAN 1000', NULL),
(19638, NULL, NULL, NULL, 'GROBIAKOKO', 'IHS_SBD_019O', 'OCI0511', 'IHS', 'OCI', NULL, NULL, NULL, '-5.51725000', 'Outdoor', 'Haubané', NULL, NULL, '5.86077778', 'En service', NULL, 'RAN 1000', NULL),
(19639, NULL, NULL, NULL, 'GROBONOU_DAN', 'IHS_BSD_046O', 'OCI0512', 'IHS', 'OCI', NULL, NULL, NULL, '-6.40536112', 'Outdoor', 'Haubané', NULL, NULL, '5.06058334', 'En service', NULL, 'VICTOIRE', NULL),
(19640, NULL, NULL, NULL, 'GSP', 'IHS_LGN_499O', 'OCI0513', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95107967', 'Indoor', 'Haubané', NULL, NULL, '5.36852901', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19641, NULL, NULL, NULL, 'GUICHANROLIN', 'IHS_LGN_406O', 'OCI0514', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09227392', 'Indoor', 'Haubané', NULL, NULL, '5.35019406', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19642, NULL, NULL, NULL, 'GUEHIEBLY', 'IHS_MCY_032O', 'OCI0515', 'IHS', 'OCI', NULL, NULL, NULL, '-7.42738889', 'Outdoor', 'Haubané', NULL, NULL, '6.88986112', 'En service', NULL, 'RAN 1000', NULL),
(19643, NULL, NULL, NULL, 'GUESSABO', 'IHS_HSD_084O', 'OCI0516', 'IHS', 'OCI', NULL, NULL, NULL, '-6.95411112', 'Indoor', 'Autostable', NULL, NULL, '6.74011112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19644, NULL, NULL, NULL, 'GUESSIGUIE', 'IHS_AGN_066M', 'OCI0517', 'IHS', 'IHS', NULL, NULL, NULL, '-4.24227778', 'Outdoor', 'Autostable', NULL, NULL, '5.73630556', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19645, NULL, NULL, NULL, 'GUEYO', 'IHS_BSD_152O', 'OCI0518', 'IHS', 'OCI', NULL, NULL, NULL, '-6.07219445', 'Indoor', 'Haubané', NULL, NULL, '5.68820000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19646, NULL, NULL, NULL, 'GUEZEM', 'IHS_FMG_042O', 'OCI0519', 'IHS', 'OCI', NULL, NULL, NULL, '-6.19741667', 'Outdoor', 'Haubané', NULL, NULL, '6.26777778', 'En service', NULL, 'RAN 1000', NULL),
(19647, NULL, NULL, NULL, 'GUEZON_IHS', 'IHS_MCY_041M', 'OCI0520', 'IHS', 'IHS', NULL, NULL, NULL, '-7.10202223', 'Indoor', 'Autostable', NULL, NULL, '6.73962223', 'En service', NULL, NULL, NULL),
(19648, NULL, NULL, NULL, 'GUIAHON', 'IHS_MCY_005O', 'OCI0521', 'IHS', 'OCI', NULL, NULL, NULL, '-7.48894167', 'Outdoor', 'Autostable', NULL, NULL, '6.54619167', 'En service', NULL, 'DENSIF 2009', NULL),
(19649, NULL, NULL, NULL, 'GUIBEROUA', 'IHS_FMG_038O', 'OCI0522', 'IHS', 'OCI', NULL, NULL, NULL, '-6.17316667', 'Indoor', 'Autostable', NULL, NULL, '6.23861111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19650, NULL, NULL, NULL, 'GUIEMBE', 'IHS_SVN_019M', 'OCI0523', 'IHS', 'IHS', NULL, NULL, NULL, '-5.70600000', 'Outdoor', 'Haubané', NULL, NULL, '9.24716667', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19651, NULL, NULL, NULL, 'GUIGLO', 'IHS_MCY_002O', 'OCI0524', 'IHS', 'OCI', NULL, NULL, NULL, '-7.49861111', 'Indoor', 'Haubané', NULL, NULL, '6.54866667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19652, NULL, NULL, NULL, 'GUITRY', 'IHS_SBD_042O', 'OCI0525', 'IHS', 'OCI', NULL, NULL, NULL, '-5.24163889', 'Indoor', 'Haubané', NULL, NULL, '5.52833333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19653, NULL, NULL, NULL, 'HALLAMA', 'IHS_LGN_476O', 'OCI0526', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96834145', 'Outdoor', 'Haubané', NULL, NULL, '5.28029259', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19654, NULL, NULL, NULL, 'HANNIE_CAR', 'IHS_BSD_039O', 'OCI0527', 'IHS', 'OCI', NULL, NULL, NULL, '-6.96150279', 'Outdoor', 'Haubané', NULL, NULL, '4.69799721', 'En service', NULL, 'RAN 1000', NULL),
(19655, NULL, NULL, NULL, 'HEKE_VILLAGE', 'IHS_BSD_057O', 'OCI0528', 'IHS', 'OCI', NULL, NULL, NULL, '-7.11983334', 'Outdoor', 'Haubané', NULL, NULL, '4.75041667', 'En service', NULL, 'RAN 1000', NULL),
(19656, NULL, NULL, NULL, 'HERMANKONO', 'IHS_SBD_027O', 'OCI0529', 'IHS', 'OCI', NULL, NULL, NULL, '-5.00961111', 'Indoor', 'Haubané', NULL, NULL, '5.92694444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19657, NULL, NULL, NULL, 'HERMANKONO_DIES', 'IHS_SBD_028O', 'OCI0530', 'IHS', 'OCI', NULL, NULL, NULL, '-5.36361111', 'Indoor', 'Haubané', NULL, NULL, '5.57416667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19658, NULL, NULL, NULL, 'HIRE', 'IHS_SBD_053O', 'OCI0531', 'IHS', 'OCI', NULL, NULL, NULL, '-5.29624722', 'Indoor', 'Autostable', NULL, NULL, '6.18744444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19659, NULL, NULL, NULL, 'HOMAWOO', 'IHS_LGN_327O', 'OCI0532', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97308889', 'Indoor', 'Haubané', NULL, NULL, '5.30156944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19660, NULL, NULL, NULL, 'HONDE', 'IHS_MCY_022O', 'OCI0533', 'IHS', 'OCI', NULL, NULL, NULL, '-7.34725000', 'Outdoor', 'Autostable', NULL, NULL, '6.74858333', 'En service', NULL, 'RAN 1000', NULL),
(19661, NULL, NULL, NULL, 'HOUIN', 'IHS_MCY_018O', 'OCI0534', 'IHS', 'OCI', NULL, NULL, NULL, '-7.35836111', 'Indoor', 'Autostable', NULL, NULL, '6.74975000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19662, NULL, NULL, NULL, 'HOUPHOUETKAHA', 'IHS_SVN_025O', 'OCI0535', 'IHS', 'OCI', NULL, NULL, NULL, '-5.28032951', 'Outdoor', 'Haubané', NULL, NULL, '9.60446919', 'En service', NULL, 'RAN 1000', NULL),
(19663, NULL, NULL, NULL, 'HUBERSON', 'IHS_HSD_005O', 'OCI0536', 'IHS', 'OCI', NULL, NULL, NULL, '-6.46397459', 'Indoor', 'Autostable', NULL, NULL, '6.87330699', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19664, NULL, NULL, NULL, 'IBIS', 'IHS_LGN_384O', 'OCI0537', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97194970', 'Indoor', 'Haubané', NULL, NULL, '5.29113221', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19665, NULL, NULL, NULL, 'IBOGUHE', 'IHS_HSD_081O', 'OCI0538', 'IHS', 'OCI', NULL, NULL, NULL, '-6.83586112', 'Outdoor', 'Haubané', NULL, NULL, '6.54780556', 'En service', NULL, 'RAN 1000', NULL),
(19666, NULL, NULL, NULL, 'IBOKE', 'IHS_BSD_092O', 'OCI0539', 'IHS', 'OCI', NULL, NULL, NULL, '-7.40555445', 'Indoor', 'Haubané', NULL, NULL, '4.68472105', 'En service', NULL, 'RAP', NULL),
(19667, NULL, NULL, NULL, 'ILESBOULEY', 'IHS_LGN_548O', 'OCI0540', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08124872', 'Outdoor', 'Autostable', NULL, NULL, '5.26869155', 'En service', NULL, NULL, NULL),
(19668, NULL, NULL, NULL, 'IMPERIAL', 'IHS_SCE_079O', 'OCI0541', 'IHS', 'OCI', NULL, NULL, NULL, '-3.74158333', 'Indoor', 'Autostable', NULL, NULL, '5.21725000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19669, NULL, NULL, NULL, 'INDENIE', 'IHS_LGN_002O', 'OCI0544', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02150343', 'Indoor', 'Autostable', NULL, NULL, '5.33807806', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19670, NULL, NULL, NULL, 'INJS', 'IHS_LGN_233O', 'OCI0545', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98369093', 'Indoor', 'Autostable', NULL, NULL, '5.30916795', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19671, NULL, NULL, NULL, 'INSAAC', 'IHS_LGN_129O', 'OCI0546', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99725000', 'Indoor', 'Haubané', NULL, NULL, '5.34488889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19672, NULL, NULL, NULL, 'INSET', 'IHS_LAC_033O', 'OCI0547', 'IHS', 'OCI', NULL, NULL, NULL, '-5.22649722', 'Indoor', 'Autostable', NULL, NULL, '6.88221389', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19673, NULL, NULL, NULL, 'INTERBAT', 'IHS_LGN_539O', 'OCI0548', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97963889', 'Indoor', 'Autostable', NULL, NULL, '5.40908333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19674, NULL, NULL, NULL, 'INTERPOL', 'IHS_LGN_446O', 'OCI0549', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99856255', 'Indoor', 'Haubané', NULL, NULL, '5.26427998', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19675, NULL, NULL, NULL, 'IPNEPT', 'IHS_LGN_079O', 'OCI0550', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00930556', 'Indoor', 'Autostable', NULL, NULL, '5.34819444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19676, NULL, NULL, NULL, 'IREBAFLA', 'IHS_MRH_041O', 'OCI0551', 'IHS', 'OCI', NULL, NULL, NULL, '-6.11802778', 'Outdoor', 'Haubané', NULL, NULL, '6.72791667', 'En service', NULL, 'ELEPHANT', NULL),
(19677, NULL, NULL, NULL, 'IRF_ADZOPE', 'IHS_AGN_009O', 'OCI0552', 'IHS', 'OCI', NULL, NULL, NULL, '-3.91411112', 'Outdoor', 'Autostable', NULL, NULL, '6.18150001', 'En service', NULL, 'RAP', NULL),
(19678, NULL, NULL, NULL, 'IROBO', 'IHS_LGN_752O', 'OCI0553', 'IHS', 'OCI', NULL, NULL, NULL, '-4.79855556', 'Indoor', 'Haubané', NULL, NULL, '5.29408333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19679, NULL, NULL, NULL, 'IROPORIA', 'IHS_SBD_030O', 'OCI0554', 'IHS', 'OCI', NULL, NULL, NULL, '-5.17550833', 'Outdoor', 'Haubané', NULL, NULL, '6.03096667', 'En service', NULL, 'RAN 1000', NULL),
(19680, NULL, NULL, NULL, 'ISSIA', 'IHS_HSD_063O', 'OCI0555', 'IHS', 'OCI', NULL, NULL, NULL, '-6.58952779', 'Indoor', 'Autostable', NULL, NULL, '6.48938890', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19681, NULL, NULL, NULL, 'ISSIAQUATRE', 'IHS_HSD_059O', 'OCI0556', 'IHS', 'OCI', NULL, NULL, NULL, '-6.57894444', 'Outdoor', 'Autostable', NULL, NULL, '6.49691667', 'En service', NULL, NULL, NULL),
(19682, NULL, NULL, NULL, 'IVOIR', 'IHS_LGN_102O', 'OCI0558', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00050000', 'Indoor', 'Haubané', NULL, NULL, '5.32997222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19683, NULL, NULL, NULL, 'JACQUEVILLE', 'IHS_LGN_728O', 'OCI0559', 'IHS', 'OCI', NULL, NULL, NULL, '-4.41725000', 'Indoor', 'Haubané', NULL, NULL, '5.20555556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19684, NULL, NULL, NULL, 'JANE', 'IHS_LGN_423O', 'OCI0560', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09430590', 'Indoor', 'Haubané', NULL, NULL, '5.35105875', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19685, NULL, NULL, NULL, 'JEAN_FOLLY', 'IHS_LGN_676O', 'OCI0561', 'IHS', 'OCI', NULL, NULL, NULL, '-3.89930141', 'Indoor', 'Autostable', NULL, NULL, '5.24227889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19686, NULL, NULL, NULL, 'JEAN_LEFEBVRE', 'IHS_LGN_300O', 'OCI0562', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98947223', 'Indoor', 'MAT', NULL, NULL, '5.28944445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19687, NULL, NULL, NULL, 'JEAN_PAUL', 'IHS_BSD_006O', 'OCI0563', 'IHS', 'OCI', NULL, NULL, NULL, '-6.63680192', 'Indoor', 'Autostable', NULL, NULL, '4.74405475', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19688, NULL, NULL, NULL, 'JULES_FERRY', 'OCIT_Strat_09', 'OCI0564', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-6.65416667', 'Indoor', 'Autostable', NULL, NULL, '4.74888889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19689, NULL, NULL, NULL, 'KABAKOUMA', 'IHS_DHM_029O', 'OCI0565', 'IHS', 'OCI', NULL, NULL, NULL, '-7.69291954', 'Outdoor', 'Haubané', NULL, NULL, '7.73391662', 'En service', NULL, 'ELEPHANT', NULL),
(19690, NULL, NULL, NULL, 'KABIBI', 'IHS_LGN_645O', 'OCI0566', 'IHS', 'OCI', NULL, NULL, NULL, '-3.90874770', 'Indoor', 'Haubané', NULL, NULL, '5.37112616', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19691, NULL, NULL, NULL, 'KADIOHA', 'IHS_SVN_041O', 'OCI0567', 'IHS', 'OCI', NULL, NULL, NULL, '-5.87855815', 'Outdoor', 'Haubané', NULL, NULL, '8.97160757', 'En service', NULL, 'RAN 1000', NULL),
(19692, NULL, NULL, NULL, 'KADJONAN', 'IHS_LGN_786M', 'OCI0568', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04674800', 'Outdoor', 'Autostable', NULL, NULL, '5.35622500', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19693, NULL, NULL, NULL, 'KAGBE', 'IHS_SBD_048O', 'OCI0569', 'IHS', 'OCI', NULL, NULL, NULL, '-5.35441667', 'Outdoor', 'Haubané', NULL, NULL, '6.16213889', 'En service', NULL, 'RAN 1000', NULL),
(19694, NULL, NULL, NULL, 'KAHIRA', 'IHS_LGN_387O', 'OCI0570', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96759968', 'Indoor', 'Haubané', NULL, NULL, '5.29653904', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19695, NULL, NULL, NULL, 'KAKOUKRO', 'IHS_SCE_021O', 'OCI0572', 'IHS', 'OCI', NULL, NULL, NULL, '-3.37958088', 'Indoor', 'Autostable', NULL, NULL, '5.29666313', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19696, NULL, NULL, NULL, 'KAMELE', 'IHS_ZNZ_056M', 'OCI0573', 'IHS', 'IHS', NULL, NULL, NULL, '-3.68316667', 'Outdoor', 'Haubané', NULL, NULL, '8.00016667', 'En service', NULL, 'DENSIF 2010', NULL),
(19697, NULL, NULL, NULL, 'KAMENA', 'IHS_LGN_326O', 'OCI0574', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97075000', 'Indoor', 'Autostable', NULL, NULL, '5.36216667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19698, NULL, NULL, NULL, 'KANAKONO', 'IHS_SVN_083O', 'OCI0575', 'IHS', 'OCI', NULL, NULL, NULL, '-6.24606945', 'Outdoor', 'Haubané', NULL, NULL, '10.35469723', 'En service', NULL, 'RAN 1000', NULL),
(19699, NULL, NULL, NULL, 'KANATE', 'IHS_LGN_600O', 'OCI0576', 'IHS', 'OCI', NULL, NULL, NULL, '-3.92642000', 'Indoor', 'Autostable', NULL, NULL, '5.35697000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19700, NULL, NULL, NULL, 'KANGANDI', 'IHS_NCE_035O', 'OCI0577', 'IHS', 'OCI', NULL, NULL, NULL, '-4.18922222', 'Outdoor', 'Autostable', NULL, NULL, '6.63958333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19701, NULL, NULL, NULL, 'KANI', 'IHS_WRD_019O', 'OCI0578', 'IHS', 'OCI', NULL, NULL, NULL, '-6.60416667', 'Indoor', 'Haubané', NULL, NULL, '8.46950000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19702, NULL, NULL, NULL, 'KANIASSO', 'IHS_DNG_010O', 'OCI0579', 'IHS', 'OCI', NULL, NULL, NULL, '-7.50000000', 'Outdoor', 'Haubané', NULL, NULL, '9.81783334', 'En service', NULL, 'VICTOIRE', NULL),
(19703, NULL, NULL, NULL, 'KANIGUI_MICRO_OD', 'IHS_LGN_599O', 'OCI0580', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96404297', 'Outdoor', 'MAT', NULL, NULL, '5.25474636', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19704, NULL, NULL, NULL, 'KANZRA', 'IHS_MRH_053O', 'OCI0581', 'IHS', 'OCI', NULL, NULL, NULL, '-6.21722222', 'Outdoor', 'Haubané', NULL, NULL, '7.32563889', 'En service', NULL, 'RAN 1000', NULL),
(19705, NULL, NULL, NULL, 'KASSERE', 'IHS_SVN_055O', 'OCI0582', 'IHS', 'OCI', NULL, NULL, NULL, '-6.22583685', 'Indoor', 'Haubané', NULL, NULL, '9.83444351', 'En service', NULL, 'RAP', NULL),
(19706, NULL, NULL, NULL, 'KATIOLA', 'RTI_003', 'OCI0583', 'IHS', 'RTI', NULL, NULL, NULL, '-5.08708333', 'Indoor', 'Haubané', NULL, NULL, '8.13483333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19707, NULL, NULL, NULL, 'KENDIA', 'Moov_014', 'OCI0584', 'IHS', 'Moov', NULL, NULL, NULL, '-4.10835530', 'Outdoor', 'Autostable', NULL, NULL, '5.36539672', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19708, NULL, NULL, NULL, 'KENNEDY', 'OCIT_Strat_10', 'OCI0585', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-5.00324445', 'Indoor', 'Autostable', NULL, NULL, '7.68686112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19709, NULL, NULL, NULL, 'KETESSO', 'IHS_SCE_055O', 'OCI0586', 'IHS', 'OCI', NULL, NULL, NULL, '-3.17733334', 'Indoor', 'Haubané', NULL, NULL, '5.88580556', 'En service', NULL, 'RAP', NULL),
(19710, NULL, NULL, NULL, 'KETRO_BASSAM', 'IHS_HSD_055O', 'OCI0588', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64624836', 'Outdoor', 'Haubané', NULL, NULL, '7.18549755', 'En service', NULL, 'RAN 1000', NULL),
(19711, NULL, NULL, NULL, 'KIBOUO_MOBILE', 'IHS_HSD_021O', 'OCI0589', 'IHS', 'OCI', NULL, NULL, NULL, '-6.513028', 'Outdoor', 'Autostable Mobile', NULL, NULL, '6.826782', 'En service', NULL, NULL, NULL),
(19712, NULL, NULL, NULL, 'KIYALA', 'IHS_LGN_593O', 'OCI0590', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98886300', 'Indoor', 'Haubané', NULL, NULL, '5.42757900', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19713, NULL, NULL, NULL, 'KM4', 'OCIT_Strat_11', 'OCI0591', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-3.99902778', 'Indoor', 'Autostable', NULL, NULL, '5.29205556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19714, NULL, NULL, NULL, 'KOBITI', 'IHS_BSD_075O', 'OCI0592', 'IHS', 'OCI', NULL, NULL, NULL, '-6.55230556', 'Outdoor', 'Autostable', NULL, NULL, '5.39866667', 'En service', NULL, 'RAN 1000', NULL),
(19715, NULL, NULL, NULL, 'KODJINAN', 'IHS_MCE_012O', 'OCI0593', 'IHS', 'OCI', NULL, NULL, NULL, '-3.60696944', 'Outdoor', 'Autostable', NULL, NULL, '6.71627778', 'En service', NULL, 'RAN 1000', NULL),
(19716, NULL, NULL, NULL, 'KOFFI_AHOUSSOUKRO', 'IHS_NCE_009O', 'OCI0594', 'IHS', 'OCI', NULL, NULL, NULL, '-4.62605556', 'Outdoor', 'Haubané', NULL, NULL, '6.73755556', 'En service', NULL, 'DENSIF 2010', NULL),
(19717, NULL, NULL, NULL, 'KOFFI_AMONKRO', 'IHS_NCE_064M', 'OCI0595', 'IHS', 'IHS', NULL, NULL, NULL, '-3.95933333', 'Outdoor', 'Autostable', NULL, NULL, '7.47169444', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19718, NULL, NULL, NULL, 'KOFFIKRO_AFFEMA', 'IHS_SCE_020O', 'OCI0596', 'IHS', 'OCI', NULL, NULL, NULL, '-2.97838889', 'Outdoor', 'Haubané', NULL, NULL, '5.57925000', 'En service', NULL, 'RAN 1000', NULL),
(19719, NULL, NULL, NULL, 'KOHOUROU', 'IHS_SCE_008O', 'OCI0598', 'IHS', 'OCI', NULL, NULL, NULL, '-3.33497222', 'Outdoor', 'Haubané', NULL, NULL, '5.48472222', 'En service', NULL, 'ELEPHANT', NULL),
(19720, NULL, NULL, NULL, 'KOKOUEZO', 'IHS_FMG_019O', 'OCI0599', 'IHS', 'OCI', NULL, NULL, NULL, '-5.94125000', 'Outdoor', 'Haubané', NULL, NULL, '6.23650000', 'En service', NULL, 'RAN 1000', NULL),
(19721, NULL, NULL, NULL, 'KOKRENOU', 'IHS_LAC_025O', 'OCI0601', 'IHS', 'OCI', NULL, NULL, NULL, '-5.27716667', 'Outdoor', 'Autostable', NULL, NULL, '6.78138889', 'En service', NULL, 'RAP', NULL),
(19722, NULL, NULL, NULL, 'KOLIA', 'IHS_SVN_071M', 'OCI0602', 'IHS', 'IHS', NULL, NULL, NULL, '-6.47550000', 'Outdoor', 'Haubané', NULL, NULL, '9.77102778', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19723, NULL, NULL, NULL, 'KOMBORODOUGOU', 'IHS_SVN_021O', 'OCI0603', 'IHS', 'OCI', NULL, NULL, NULL, '-5.42415333', 'Outdoor', 'Haubané', NULL, NULL, '9.33562993', 'En service', NULL, 'RAN 1000', NULL),
(19724, NULL, NULL, NULL, 'KONDOUKRO', 'IHS_VDB_039O', 'OCI0605', 'IHS', 'OCI', NULL, NULL, NULL, '-5.08344167', 'Indoor', 'Haubané', NULL, NULL, '7.46388889', 'En service', NULL, 'VICTOIRE', NULL),
(19725, NULL, NULL, NULL, 'KONEDOUGOU', 'IHS_BSD_170O', 'OCI0606', 'IHS', 'OCI', NULL, NULL, NULL, '-6.65869445', 'Outdoor', 'Haubané', NULL, NULL, '6.03516667', 'En service', NULL, 'RAN 1000', NULL),
(19726, NULL, NULL, NULL, 'KONEFLA', 'IHS_MRH_030O', 'OCI0607', 'IHS', 'OCI', NULL, NULL, NULL, '-5.60110827', 'Indoor', 'Haubané', NULL, NULL, '6.65278113', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19727, NULL, NULL, NULL, 'KONG', 'IHS_SVN_080O', 'OCI0608', 'IHS', 'OCI', NULL, NULL, NULL, '-4.61833382', 'Outdoor', 'Haubané', NULL, NULL, '9.15250212', 'En service', NULL, 'RAP', NULL),
(19728, NULL, NULL, NULL, 'KONGASSO', 'IHS_WRD_022O', 'OCI0609', 'IHS', 'OCI', NULL, NULL, NULL, '-6.08055986', 'Indoor', 'Haubané', NULL, NULL, '7.81280625', 'En service', NULL, 'RAP', NULL),
(19729, NULL, NULL, NULL, 'KOREGUHE', 'IHS_BSD_178O', 'OCI0610', 'IHS', 'OCI', NULL, NULL, NULL, '-6.65969445', 'Outdoor', 'Haubané', NULL, NULL, '6.17241667', 'En service', NULL, 'RAN 1000', NULL),
(19730, NULL, NULL, NULL, 'KORHOGO', 'OCIT_Strat_12', 'OCI0611', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-5.63127778', 'Indoor', 'Autostable', NULL, NULL, '9.45488889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19731, NULL, NULL, NULL, 'KORHOGO_LYCEE', 'IHS_SVN_009O', 'OCI0612', 'IHS', 'OCI', NULL, NULL, NULL, '-5.62511111', 'Indoor', 'Autostable', NULL, NULL, '9.41950556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19732, NULL, NULL, NULL, 'KORO', 'IHS_BAF_010O', 'OCI0613', 'IHS', 'OCI', NULL, NULL, NULL, '-7.45919444', 'Outdoor', 'Haubané', NULL, NULL, '8.55091667', 'En service', NULL, 'RAP', NULL),
(19733, NULL, NULL, NULL, 'KOSSOU', 'IHS_LAC_055O', 'OCI0614', 'IHS', 'OCI', NULL, NULL, NULL, '-5.48132223', 'Indoor', 'Autostable', NULL, NULL, '7.00823889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19734, NULL, NULL, NULL, 'KOTCHERIE', 'IHS_SBD_029O', 'OCI0615', 'IHS', 'OCI', NULL, NULL, NULL, '-5.61102778', 'Outdoor', 'Haubané', NULL, NULL, '5.73016667', 'En service', NULL, 'RAN 1000', NULL),
(19735, NULL, NULL, NULL, 'KOTIAKOFFIKRO', 'Moov_015', 'OCI0616', 'IHS', 'Moov', NULL, NULL, NULL, '-5.03641667', 'Outdoor', 'Autostable', NULL, NULL, '7.74516667', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19736, NULL, NULL, NULL, 'KOTO', 'IHS_BSD_065O', 'OCI0617', 'IHS', 'OCI', NULL, NULL, NULL, '-7.16584868', 'Indoor', 'Autostable', NULL, NULL, '4.63777609', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19737, NULL, NULL, NULL, 'KOTOBI', 'IHS_NCE_037O', 'OCI0618', 'IHS', 'OCI', NULL, NULL, NULL, '-4.13388889', 'Indoor', 'Autostable', NULL, NULL, '6.69655556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19738, NULL, NULL, NULL, 'KOTOKA', 'IHS_SCE_038O', 'OCI0619', 'IHS', 'OCI', NULL, NULL, NULL, '-2.88666667', 'Outdoor', 'Haubané', NULL, NULL, '5.53375000', 'En service', NULL, 'ELEPHANT', NULL),
(19739, NULL, NULL, NULL, 'KOUAKRO', 'IHS_SCE_043O', 'OCI0620', 'IHS', 'OCI', NULL, NULL, NULL, '-3.48916874', 'Indoor', 'Haubané', NULL, NULL, '5.28527849', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19740, NULL, NULL, NULL, 'KOUAMEFLA', 'IHS_FMG_081O', 'OCI0621', 'IHS', 'OCI', NULL, NULL, NULL, '-5.42097401', 'Outdoor', 'Haubané', NULL, NULL, '6.58767227', 'En service', NULL, 'RAN 1000', NULL),
(19741, NULL, NULL, NULL, 'KOUASSI_DATEKRO', 'IHS_ZNZ_041O', 'OCI0622', 'IHS', 'OCI', NULL, NULL, NULL, '-3.53227778', 'Indoor', 'Haubané', NULL, NULL, '7.82011111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19742, NULL, NULL, NULL, 'KOUASSI_KKRO', 'IHS_NCE_042O', 'OCI0623', 'IHS', 'OCI', NULL, NULL, NULL, '-4.67802778', 'Indoor', 'Autostable', NULL, NULL, '7.34280556', 'En service', NULL, 'RAP', NULL),
(19743, NULL, NULL, NULL, 'KOUDOULILIE', 'IHS_SBD_046O', 'OCI0624', 'IHS', 'OCI', NULL, NULL, NULL, '-5.68613889', 'Outdoor', 'Autostable', NULL, NULL, '5.84275001', 'En service', NULL, 'DENSIF 2009', NULL),
(19744, NULL, NULL, NULL, 'KOUDOUSS', 'IHS_LGN_382O', 'OCI0625', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09088746', 'Outdoor', 'Haubané', NULL, NULL, '5.34694037', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19745, NULL, NULL, NULL, 'KOUETINFLA', 'IHS_MRH_044O', 'OCI0626', 'IHS', 'OCI', NULL, NULL, NULL, '-6.04749816', 'Outdoor', 'Haubané', NULL, NULL, '6.62000429', 'En service', NULL, 'VICTOIRE', NULL),
(19746, NULL, NULL, NULL, 'KOUIBLY', 'IHS_DHM_027O', 'OCI0627', 'IHS', 'OCI', NULL, NULL, NULL, '-7.23236112', 'Indoor', 'Haubané', NULL, NULL, '7.25502778', 'En service', NULL, 'RAP', NULL),
(19747, NULL, NULL, NULL, 'KOUMASSI', 'IHS_LGN_486O', 'OCI0628', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95441000', 'Indoor', 'Autostable', NULL, NULL, '5.29740000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19748, NULL, NULL, NULL, 'KOUN_ABROSSO', 'RTI_019', 'OCI0629', 'IHS', 'RTI', NULL, NULL, NULL, '-3.28772500', 'Indoor', 'Haubané', NULL, NULL, '7.53901112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19749, NULL, NULL, NULL, 'KOUNAHIRI', 'IHS_WRD_034O', 'OCI0630', 'IHS', 'OCI', NULL, NULL, NULL, '-5.83686112', 'Indoor', 'Haubané', NULL, NULL, '7.78283334', 'En service', NULL, 'RAP', NULL),
(19750, NULL, NULL, NULL, 'KOUTO', 'IHS_SVN_072O', 'OCI0631', 'IHS', 'OCI', NULL, NULL, NULL, '-6.41900001', 'Indoor', 'Autostable', NULL, NULL, '9.89375000', 'En service', NULL, 'RAP', NULL),
(19751, NULL, NULL, NULL, 'KOWEIT', 'IHS_LGN_187O', 'OCI0632', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05997223', 'Indoor', 'Autostable', NULL, NULL, '5.31794445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19752, NULL, NULL, NULL, 'KOYEKRO', 'IHS_LGN_776O', 'OCI0633', 'IHS', 'OCI', NULL, NULL, NULL, '-4.74380556', 'Outdoor', 'Haubané', NULL, NULL, '6.15141667', 'En service', NULL, 'RAN 1000', NULL),
(19753, NULL, NULL, NULL, 'KPADA', 'IHS_BSD_139O', 'OCI0634', 'IHS', 'OCI', NULL, NULL, NULL, '-6.48500000', 'Outdoor', 'Haubané', NULL, NULL, '5.77677778', 'En service', NULL, 'RAN 1000', NULL),
(19754, NULL, NULL, NULL, 'KPATA', 'IHS_DHM_021O', 'OCI0635', 'IHS', 'OCI', NULL, NULL, NULL, '-7.55194444', 'Outdoor', 'Haubané', NULL, NULL, '7.71066389', 'En service', NULL, 'RAN 1000', NULL),
(19755, NULL, NULL, NULL, 'KPLESSOU', 'IHS_LAC_053O', 'OCI0636', 'IHS', 'OCI', NULL, NULL, NULL, '-5.19791667', 'Outdoor', 'Haubané', NULL, NULL, '6.54384167', 'En service', NULL, 'DENSIF 2009', NULL),
(19756, NULL, NULL, NULL, 'KPOUEBO', 'IHS_LAC_084M', 'OCI0637', 'IHS', 'IHS', NULL, NULL, NULL, '-4.85363889', 'Outdoor', 'Haubané', NULL, NULL, '6.33088889', 'En service', NULL, 'RAN 1000', NULL),
(19757, NULL, NULL, NULL, 'KRAGUI', 'IHS_BSD_082O', 'OCI0639', 'IHS', 'OCI', NULL, NULL, NULL, '-6.62657789', 'Outdoor', 'Haubané', NULL, NULL, '5.43294023', 'En service', NULL, 'RAN 1000', NULL),
(19758, NULL, NULL, NULL, 'LABAKUYA', 'IHS_BSD_058O', 'OCI0641', 'IHS', 'OCI', NULL, NULL, NULL, '-6.35100001', 'Outdoor', 'Haubané', NULL, NULL, '5.13608334', 'En service', NULL, 'RAN 1000', NULL),
(19759, NULL, NULL, NULL, 'LABASSI', 'IHS_LGN_098O', 'OCI0642', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02075100', 'Outdoor', 'Haubané', NULL, NULL, '5.35786100', 'En service', NULL, 'DENSIF 2010', NULL),
(19760, NULL, NULL, NULL, 'LABAYA', 'IHS_ZNZ_004M', 'OCI0643', 'IHS', 'IHS', NULL, NULL, NULL, '-2.79753056', 'Outdoor', 'Autostable', NULL, NULL, '8.03421389', 'En service', NULL, 'RAP', NULL),
(19761, NULL, NULL, NULL, 'LAFOKPOKAHA', 'IHS_SVN_045M', 'OCI0644', 'IHS', 'IHS', NULL, NULL, NULL, '-5.06702778', 'Outdoor', 'Haubané', NULL, NULL, '9.59411111', 'En service', NULL, 'DENSIF 2010', NULL),
(19762, NULL, NULL, NULL, 'LAGOKIE', 'IHS_HSD_015O', 'OCI0645', 'IHS', 'OCI', NULL, NULL, NULL, '-6.47283333', 'Outdoor', 'Autostable', NULL, NULL, '6.87988889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19763, NULL, NULL, NULL, 'LAGOMA', 'IHS_LGN_571O', 'OCI0646', 'IHS', 'OCI', NULL, NULL, NULL, '-4.11541667', 'Outdoor', 'Autostable', NULL, NULL, '5.32400001', 'En service', NULL, 'RAN 1000', NULL),
(19764, NULL, NULL, NULL, 'LAGUNE', 'IHS_LGN_185O', 'OCI0647', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99102481', 'Outdoor', 'MAT', NULL, NULL, '5.31322656', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19765, NULL, NULL, NULL, 'LAHOUDA', 'IHS_FMG_040O', 'OCI0648', 'IHS', 'OCI', NULL, NULL, NULL, '-5.70035833', 'Outdoor', 'Haubané', NULL, NULL, '6.20985833', 'En service', NULL, 'RAN 1000', NULL),
(19766, NULL, NULL, NULL, 'LAKOTA', 'IHS_SBD_044O', 'OCI0649', 'IHS', 'OCI', NULL, NULL, NULL, '-5.68305278', 'Indoor', 'Haubané', NULL, NULL, '5.85416667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19767, NULL, NULL, NULL, 'LANVIARA', 'IHS_SVN_029O', 'OCI0651', 'IHS', 'OCI', NULL, NULL, NULL, '-5.20985556', 'Outdoor', 'Autostable', NULL, NULL, '9.58626944', 'En service', NULL, 'DENSIF 2009', NULL),
(19768, NULL, NULL, NULL, 'LAOGUIE', 'RTI_004', 'OCI0652', 'IHS', 'RTI', NULL, NULL, NULL, '-4.16083334', 'Indoor', 'Haubané', NULL, NULL, '5.96430556', 'En service', NULL, 'RAP', NULL),
(19769, NULL, NULL, NULL, 'LAOUDIBA', 'IHS_ZNZ_019O', 'OCI0653', 'IHS', 'OCI', NULL, NULL, NULL, '-2.95708334', 'Outdoor', 'Haubané', NULL, NULL, '8.30522223', 'En service', NULL, 'RAP', NULL),
(19770, NULL, NULL, NULL, 'LAPAIX', 'Moov_016', 'OCI0654', 'IHS', 'Moov', NULL, NULL, NULL, '-3.98186112', 'Outdoor', 'Autostable', NULL, NULL, '7.06250000', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19771, NULL, NULL, NULL, 'LARABIA', 'IHS_SCE_026O', 'OCI0655', 'IHS', 'OCI', NULL, NULL, NULL, '-3.45194444', 'Outdoor', 'Haubané', NULL, NULL, '5.34044722', 'En service', NULL, 'RAN 1000', NULL),
(19772, NULL, NULL, NULL, 'LATIN', 'IHS_LGN_109O', 'OCI0656', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01947222', 'Indoor', 'Haubané', NULL, NULL, '5.36052778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19773, NULL, NULL, NULL, 'LAURIER', 'IHS_LGN_368O', 'OCI0657', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97005556', 'Indoor', 'Haubané', NULL, NULL, '5.37422222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19774, NULL, NULL, NULL, 'LAUZOUA', 'IHS_SBD_071O', 'OCI0658', 'IHS', 'OCI', NULL, NULL, NULL, '-5.31927778', 'Outdoor', 'Haubané', NULL, NULL, '5.20733334', 'En service', NULL, 'RAN 1000', NULL),
(19775, NULL, NULL, NULL, 'LAVOISIER', 'IHS_LGN_582O', 'OCI0659', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97622000', 'Outdoor', 'Autostable', NULL, NULL, '5.41758000', 'En service', NULL, 'RAN 1000', NULL),
(19776, NULL, NULL, NULL, 'LEBRE', 'IHS_FMG_067O', 'OCI0660', 'IHS', 'OCI', NULL, NULL, NULL, '-6.32311111', 'Outdoor', 'Haubané', NULL, NULL, '6.31358333', 'En service', NULL, 'RAN 1000', NULL),
(19777, NULL, NULL, NULL, 'LEHI', 'IHS_LGN_416O', 'OCI0661', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09563845', 'Outdoor', 'Haubané', NULL, NULL, '5.33411529', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19778, NULL, NULL, NULL, 'LEROUX', 'IHS_DHM_008O', 'OCI0662', 'IHS', 'OCI', NULL, NULL, NULL, '-7.54433492', 'Outdoor', 'Autostable', NULL, NULL, '7.39155955', 'En service', NULL, 'RAN 1000', NULL),
(19779, NULL, NULL, NULL, 'LESSIRI', 'IHS_BSD_160O', 'OCI0663', 'IHS', 'OCI', NULL, NULL, NULL, '-6.48711112', 'Outdoor', 'Haubané', NULL, NULL, '5.91738889', 'En service', NULL, 'RAN 1000', NULL),
(19780, NULL, NULL, NULL, 'LILIYO', 'IHS_BSD_169O', 'OCI0664', 'IHS', 'OCI', NULL, NULL, NULL, '-6.34702778', 'Outdoor', 'Haubané', NULL, NULL, '5.99686112', 'En service', NULL, 'RAN 1000', NULL),
(19781, NULL, NULL, NULL, 'LITTORAL', 'IHS_SCE_077O', 'OCI0665', 'IHS', 'OCI', NULL, NULL, NULL, '-3.73366667', 'Outdoor', 'Autostable', NULL, NULL, '5.20727778', 'En service', NULL, 'RAN 1000', NULL),
(19782, NULL, NULL, NULL, 'LOBOGUIGUIA', 'IHS_HSD_026O', 'OCI0666', 'IHS', 'OCI', NULL, NULL, NULL, '-6.59822500', 'Outdoor', 'Haubané', NULL, NULL, '6.84532778', 'En service', NULL, 'RAN 1000', NULL),
(19783, NULL, NULL, NULL, 'LOGBOVILLE', 'IHS_BSD_177O', 'OCI0667', 'IHS', 'OCI', NULL, NULL, NULL, '-6.82705556', 'Outdoor', 'Haubané', NULL, NULL, '6.13433334', 'En service', NULL, 'RAP', NULL),
(19784, NULL, NULL, NULL, 'LOGOUALE', 'IHS_DHM_019O', 'OCI0668', 'IHS', 'OCI', NULL, NULL, NULL, '-7.54977778', 'Indoor', 'Autostable', NULL, NULL, '7.11519444', 'En service', NULL, 'RAP', NULL),
(19785, NULL, NULL, NULL, 'LOKODJORO', 'IHS_LGN_096O', 'OCI0669', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03558334', 'Indoor', 'Haubané', NULL, NULL, '5.31472223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19786, NULL, NULL, NULL, 'LOKOUA', 'IHS_LGN_461O', 'OCI0670', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09806000', 'Indoor', 'Haubané', NULL, NULL, '5.31447000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19787, NULL, NULL, NULL, 'LOLOBO', 'IHS_LAC_041O', 'OCI0671', 'IHS', 'OCI', NULL, NULL, NULL, '-5.26844444', 'Indoor', 'Haubané', NULL, NULL, '6.95533333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19788, NULL, NULL, NULL, 'LOMO_SUD', 'IHS_LAC_081O', 'OCI0672', 'IHS', 'OCI', NULL, NULL, NULL, '-4.97652778', 'Indoor', 'Haubané', NULL, NULL, '6.38160833', 'En service', NULL, 'RAP', NULL),
(19789, NULL, NULL, NULL, 'LOMOKANKRO', 'IHS_LAC_064O', 'OCI0673', 'IHS', 'OCI', NULL, NULL, NULL, '-5.02999444', 'Outdoor', 'Haubané', NULL, NULL, '7.08533056', 'En service', NULL, 'RAN 1000', NULL),
(19790, NULL, NULL, NULL, 'LOPOU', 'IHS_LGN_731O', 'OCI0674', 'IHS', 'OCI', NULL, NULL, NULL, '-4.46700000', 'Indoor', 'Haubané', NULL, NULL, '5.40652778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19791, NULL, NULL, NULL, 'LOUGBONOU', 'IHS_VDB_050O', 'OCI0675', 'IHS', 'OCI', NULL, NULL, NULL, '-5.25261111', 'Outdoor', 'Haubané', NULL, NULL, '8.06622222', 'En service', NULL, 'RAN 1000', NULL),
(19792, NULL, NULL, NULL, 'LOUKOU_YAOKRO', 'IHS_LAC_074O', 'OCI0676', 'IHS', 'OCI', NULL, NULL, NULL, '-4.87447222', 'Outdoor', 'Haubané', NULL, NULL, '6.57950000', 'En service', NULL, 'RAN 1000', NULL),
(19793, NULL, NULL, NULL, 'LOURIA', 'IHS_HSD_072O', 'OCI0677', 'IHS', 'OCI', NULL, NULL, NULL, '-6.71430556', 'Outdoor', 'Haubané', NULL, NULL, '6.51197223', 'En service', NULL, 'RAN 1000', NULL),
(19794, NULL, NULL, NULL, 'LOVIGUIE', 'IHS_AGN_070O', 'OCI0678', 'IHS', 'OCI', NULL, NULL, NULL, '-4.34034722', 'Outdoor', 'Haubané', NULL, NULL, '5.80970278', 'En service', NULL, 'RAP', NULL),
(19795, NULL, NULL, NULL, 'LUEHOUAN', 'IHS_HSD_101O', 'OCI0679', 'IHS', 'OCI', NULL, NULL, NULL, '-6.79794445', 'Outdoor', 'Haubané', NULL, NULL, '6.28758334', 'En service', NULL, 'RAN 1000', NULL),
(19796, NULL, NULL, NULL, 'LUENOUFLA', 'IHS_HSD_042O', 'OCI0680', 'IHS', 'OCI', NULL, NULL, NULL, '-6.24602778', 'Outdoor', 'Haubané', NULL, NULL, '7.06375001', 'En service', NULL, 'VICTOIRE', NULL),
(19797, NULL, NULL, NULL, 'LUMIERE', 'OCIT_Strat_13', 'OCI0681', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-3.99156112', 'Indoor', 'Autostable', NULL, NULL, '5.29669445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19798, NULL, NULL, NULL, 'LYMAS', 'IHS_LGN_394O', 'OCI0682', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00630278', 'Indoor', 'MAT', NULL, NULL, '5.40094723', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19799, NULL, NULL, NULL, 'MABEHIRI', 'IHS_BSD_120O', 'OCI0683', 'IHS', 'OCI', NULL, NULL, NULL, '-6.41650000', 'Outdoor', 'Haubané', NULL, NULL, '5.68108333', 'En service', NULL, 'VICTOIRE', NULL),
(19800, NULL, NULL, NULL, 'MACA', 'IHS_LGN_386O', 'OCI0684', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07519445', 'Indoor', 'Autostable', NULL, NULL, '5.38044445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19801, NULL, NULL, NULL, 'MACACI', 'IHS_LGN_258O', 'OCI0685', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02066667', 'Indoor', 'Autostable', NULL, NULL, '5.38502778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19802, NULL, NULL, NULL, 'MADINANI', 'IHS_DNG_032O', 'OCI0686', 'IHS', 'OCI', NULL, NULL, NULL, '-6.94138775', 'Outdoor', 'Haubané', NULL, NULL, '9.62027708', 'En service', NULL, 'VICTOIRE', NULL),
(19803, NULL, NULL, NULL, 'MAFERE', 'IHS_SCE_014O', 'OCI0687', 'IHS', 'OCI', NULL, NULL, NULL, '-3.02621944', 'Indoor', 'Haubané', NULL, NULL, '5.41588889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19804, NULL, NULL, NULL, 'MAFIA', 'IHS_SCE_044O', 'OCI0688', 'IHS', 'OCI', NULL, NULL, NULL, '-3.28983334', 'Indoor', 'Autostable', NULL, NULL, '5.13747223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19805, NULL, NULL, NULL, 'MAGATIGUI', 'IHS_LGN_143O', 'OCI0689', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05360662', 'Indoor', 'Haubané', NULL, NULL, '5.34583873', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19806, NULL, NULL, NULL, 'MAGIC', 'IHS_LGN_242O', 'OCI0690', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98796667', 'Indoor', 'MAT', NULL, NULL, '5.30273334', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19807, NULL, NULL, NULL, 'MAGUEHIO', 'IHS_FMG_021O', 'OCI0691', 'IHS', 'OCI', NULL, NULL, NULL, '-6.04047222', 'Outdoor', 'Haubané', NULL, NULL, '6.02127778', 'En service', NULL, 'DENSIF 2010', NULL),
(19808, NULL, NULL, NULL, 'MAGUIAHIO', 'IHS_FMG_028O', 'OCI0692', 'IHS', 'OCI', NULL, NULL, NULL, '-6.12816667', 'Outdoor', 'Haubané', NULL, NULL, '6.10072222', 'En service', NULL, 'DENSIF 2010', NULL),
(19809, NULL, NULL, NULL, 'MAHANDOUGOU', 'IHS_SVN_061O', 'OCI0693', 'IHS', 'OCI', NULL, NULL, NULL, '-5.18535746', 'Outdoor', 'Haubané', NULL, NULL, '10.14264174', 'En service', NULL, 'RAN 1000', NULL),
(19810, NULL, NULL, NULL, 'MAHAPLEU', 'IHS_DHM_034M', 'OCI0694', 'IHS', 'IHS', NULL, NULL, NULL, '-7.93569445', 'Outdoor', NULL, NULL, NULL, '7.22833334', 'En service', NULL, 'RAP', NULL),
(19811, NULL, NULL, NULL, 'MALRAUX', 'IHS_LGN_261O', 'OCI0695', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97733333', 'Indoor', 'Haubané', NULL, NULL, '5.35527778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19812, NULL, NULL, NULL, 'MAN', 'IHS_DHM_002O', 'OCI0697', 'IHS', 'OCI', NULL, NULL, NULL, '-7.54891667', 'Indoor', 'Haubané', NULL, NULL, '7.41094167', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19813, NULL, NULL, NULL, 'MAN_PGI', 'IHS_DHM_009O', 'OCI0698', 'IHS', 'OCI', NULL, NULL, NULL, '-7.57752778', 'Indoor', 'Autostable', NULL, NULL, '7.36552778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19814, NULL, NULL, NULL, 'MANFLA', 'IHS_MRH_042O', 'OCI0699', 'IHS', 'OCI', NULL, NULL, NULL, '-5.91241667', 'Outdoor', 'Haubané', NULL, NULL, '7.40700000', 'En service', NULL, 'RAP', NULL),
(19815, NULL, NULL, NULL, 'MANGOUIN', 'IHS_DHM_016O', 'OCI0700', 'IHS', 'OCI', NULL, NULL, NULL, '-7.60419444', 'Outdoor', 'Haubané', NULL, NULL, '7.64213889', 'En service', NULL, 'ELEPHANT', NULL),
(19816, NULL, NULL, NULL, 'MANHATTAN', 'IHS_LGN_299O', 'OCI0701', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97591800', 'Indoor', 'Autostable', NULL, NULL, '5.36394000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19817, NULL, NULL, NULL, 'MANKONO', 'IHS_WRD_016O', 'OCI0702', 'IHS', 'OCI', NULL, NULL, NULL, '-6.18663889', 'Indoor', 'Haubané', NULL, NULL, '8.05019444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19818, NULL, NULL, NULL, 'MANOUA', 'IHS_LGN_527O', 'OCI0703', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95855564', 'Indoor', 'Haubané', NULL, NULL, '5.28336508', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19819, NULL, NULL, NULL, 'MANZANOUAN', 'IHS_MCE_023M', 'OCI0704', 'IHS', 'IHS', NULL, NULL, NULL, '-3.28200000', 'Outdoor', 'Haubané', NULL, NULL, '6.83483333', 'En service', NULL, 'DENSIF 2010', NULL),
(19820, NULL, NULL, NULL, 'MARABADJASSA', 'IHS_VDB_067O', 'OCI0705', 'IHS', 'OCI', NULL, NULL, NULL, '-5.44305556', 'Outdoor', 'Haubané', NULL, NULL, '8.09541667', 'En service', NULL, 'RAN 1000', NULL),
(19821, NULL, NULL, NULL, 'MARAHUI', 'IHS_ZNZ_036O', 'OCI0706', 'IHS', 'OCI', NULL, NULL, NULL, '-2.75038056', 'Outdoor', 'Haubané', NULL, NULL, '8.61458333', 'En service', NULL, 'RAN 1000', NULL),
(19822, NULL, NULL, NULL, 'MARAIS', 'IHS_LGN_478O', 'OCI0707', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95461389', 'Indoor', 'Haubané', NULL, NULL, '5.30236112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19823, NULL, NULL, NULL, 'MARINE', 'IHS_SCE_052O', 'OCI0708', 'IHS', 'OCI', NULL, NULL, NULL, '-3.40827778', 'Indoor', 'Autostable', NULL, NULL, '5.15480556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19824, NULL, NULL, NULL, 'MARLY', 'IHS_LAC_020O', 'OCI0709', 'IHS', 'OCI', NULL, NULL, NULL, '-5.24278264', 'Outdoor', 'Autostable', NULL, NULL, '6.82057047', 'En service', NULL, 'RAP', NULL),
(19825, NULL, NULL, NULL, 'MASSALA', 'IHS_WRD_008O', 'OCI0711', 'IHS', 'OCI', NULL, NULL, NULL, '-6.44250310', 'Indoor', 'Haubané', NULL, NULL, '7.90028142', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19826, NULL, NULL, NULL, 'MATHIEUKRO', 'IHS_BSD_035O', 'OCI0712', 'IHS', 'OCI', NULL, NULL, NULL, '-6.49916222', 'Indoor', 'Haubané', NULL, NULL, '5.02472159', 'En service', NULL, 'VICTOIRE', NULL),
(19827, NULL, NULL, NULL, 'MAYO', 'IHS_BSD_174O', 'OCI0713', 'IHS', 'OCI', NULL, NULL, NULL, '-6.40138478', 'Outdoor', 'Haubané', NULL, NULL, '6.08694477', 'En service', NULL, 'VICTOIRE', NULL),
(19828, NULL, NULL, NULL, 'MBAHIAKRO', 'IHS_NCE_056O', 'OCI0715', 'IHS', 'OCI', NULL, NULL, NULL, '-4.34366667', 'Indoor', 'Haubané', NULL, NULL, '7.45927778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19829, NULL, NULL, NULL, 'MBATTO', 'IHS_NCE_024O', 'OCI0716', 'IHS', 'OCI', NULL, NULL, NULL, '-4.35047222', 'Indoor', 'Haubané', NULL, NULL, '6.47250278', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19830, NULL, NULL, NULL, 'MBENGUE', 'IHS_SVN_047O', 'OCI0717', 'IHS', 'OCI', NULL, NULL, NULL, '-5.89871112', 'Indoor', 'Autostable', NULL, NULL, '10.00310278', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19831, NULL, NULL, NULL, 'MBONOUA', 'IHS_LGN_708M', 'OCI0718', 'IHS', 'IHS', NULL, NULL, NULL, '-4.23275000', 'Outdoor', 'Haubané', NULL, NULL, '5.55277778', 'En service', NULL, 'DENSIF 2010', NULL),
(19832, NULL, NULL, NULL, 'MEAGUI', 'IHS_BSD_074O', 'OCI0719', 'IHS', 'OCI', NULL, NULL, NULL, '-6.56625000', 'Indoor', 'Haubané', NULL, NULL, '5.40033056', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19833, NULL, NULL, NULL, 'MEECI', 'IHS_LGN_200O', 'OCI0720', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98619444', 'Indoor', 'Autostable', NULL, NULL, '5.35200000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19834, NULL, NULL, NULL, 'MELEKOUKRO', 'IHS_SCE_033O', 'OCI0721', 'IHS', 'OCI', NULL, NULL, NULL, '-3.31586112', 'Outdoor', 'Haubané', NULL, NULL, '5.20050001', 'En service', NULL, 'RAN 1000', NULL),
(19835, NULL, NULL, NULL, 'MEMNI', 'IHS_LGN_711O', 'OCI0722', 'IHS', 'OCI', NULL, NULL, NULL, '-3.74716667', 'Indoor', 'Haubané', NULL, NULL, '5.50197222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19836, NULL, NULL, NULL, 'MENEKE', 'IHS_BSD_084O', 'OCI0723', 'IHS', 'OCI', NULL, NULL, NULL, '-7.28013333', 'Outdoor', 'Haubané', NULL, NULL, '4.50800000', 'En service', NULL, 'RAN 1000', NULL),
(19837, NULL, NULL, NULL, 'MENUISERIE', 'IHS_LGN_365O', 'OCI0724', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09038889', 'Indoor', 'Haubané', NULL, NULL, '5.32866667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19838, NULL, NULL, NULL, 'MERCEDES', 'IHS_LGN_348O', 'OCI0725', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98069784', 'Indoor', 'MAT', NULL, NULL, '5.28807923', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19839, NULL, NULL, NULL, 'MERMOZ', 'IHS_LGN_127O', 'OCI0726', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99616667', 'Indoor', 'Autostable', NULL, NULL, '5.33943889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19840, NULL, NULL, NULL, 'MESANO', 'IHS_LGN_521O', 'OCI0727', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94771000', 'Indoor', 'Haubané', NULL, NULL, '5.30108000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19841, NULL, NULL, NULL, 'METAN', 'IHS_LGN_603O', 'OCI0728', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01021938', 'Indoor', 'Haubané', NULL, NULL, '5.43416496', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19842, NULL, NULL, NULL, 'METHODISTE', 'IHS_LGN_543O', 'OCI0729', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97666667', 'Indoor', 'Autostable', NULL, NULL, '5.26155556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19843, NULL, NULL, NULL, 'MIADZIN', 'IHS_AGN_008O', 'OCI0730', 'IHS', 'OCI', NULL, NULL, NULL, '-3.90575000', 'Outdoor', 'Haubané', NULL, NULL, '6.04155278', 'En service', NULL, 'RAN 1000', NULL),
(19844, NULL, NULL, NULL, 'MICRO_AMBASSADE_DE_FRCE', 'OCI_Indoor_007', 'OCI0731', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.99204413', 'Outdoor', 'MAT', NULL, NULL, '5.32988616', 'En service', NULL, 'MICRO BTS 2010', NULL),
(19845, NULL, NULL, NULL, 'MICRO_IVOIRE', 'OCI_Indoor_023', 'OCI0732', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.00516667', 'Outdoor', 'MAT', NULL, NULL, '5.32725', 'En service', NULL, 'MICRO BTS 2010', NULL),
(19846, NULL, NULL, NULL, 'MICRO_GOURO', 'IHS_LGN_041O', 'OCI0734', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02269492', 'Indoor', 'Autostable', NULL, NULL, '5.34913823', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19847, NULL, NULL, NULL, 'MICRO_ID_CDCI', 'to be defined', 'OCI0736', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.02020833', 'Outdoor', 'MAT', NULL, NULL, '5.30271944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19848, NULL, NULL, NULL, 'MICRO_ID_GARE_SUD', 'OCI_Indoor_017', 'OCI0738', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.01819066', 'Outdoor', 'MAT', NULL, NULL, '5.31561548', 'En service', NULL, 'MICRO BTS 2010', NULL),
(19849, NULL, NULL, NULL, 'MICRO_ID_PULLMAN', NULL, 'OCI0741', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.013608', 'Indoor', NULL, NULL, NULL, '5.321946', 'En service', NULL, NULL, NULL),
(19850, NULL, NULL, NULL, 'MICRO_ID_SEA_INVEST', 'OCI_Indoor_022', 'OCI0742', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.02505556', 'Outdoor', 'MAT', NULL, NULL, '5.31683333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19851, NULL, NULL, NULL, 'MICRO_ID_TIAMA', 'to be defined', 'OCI0744', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-4.01979593', 'Outdoor', 'MAT', NULL, NULL, '5.32597853', 'En service', NULL, 'DENSIF 2009', NULL),
(19852, NULL, NULL, NULL, 'MICRO_OD_PYRAMIDE', 'IHS_LGN_045O', 'OCI0746', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01677537', 'Outdoor', 'MAT', NULL, NULL, '5.32200367', 'En service', NULL, 'DENSIF 2009', NULL),
(19853, NULL, NULL, NULL, 'MILLE_MAQUIS', 'IHS_LGN_313O', 'OCI0750', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97680556', 'Indoor', 'MAT', NULL, NULL, '5.29933334', 'En service', NULL, 'DENSIF 2009', NULL),
(19854, NULL, NULL, NULL, 'MILLIONNAIRE', 'IHS_LGN_170O', 'OCI0751', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05480556', 'Indoor', 'Haubané', NULL, NULL, '5.35525001', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19855, NULL, NULL, NULL, 'MINIGNAN', 'IHS_DNG_027O', 'OCI0752', 'IHS', 'OCI', NULL, NULL, NULL, '-7.84122223', 'Outdoor', 'Haubané', NULL, NULL, '9.99047223', 'En service', NULL, 'VICTOIRE', NULL),
(19856, NULL, NULL, NULL, 'MIRA', 'IHS_HSD_065O', 'OCI0753', 'IHS', 'OCI', NULL, NULL, NULL, '-6.58611111', 'Outdoor', 'Autostable', NULL, NULL, '6.47602778', 'En service', NULL, 'DENSIF 2009', NULL),
(19857, NULL, NULL, NULL, 'MIRADOR', 'IHS_LGN_089O', 'OCI0754', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02524266', 'Indoor', 'MAT', NULL, NULL, '5.35627960', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19858, NULL, NULL, NULL, 'MISA', 'IHS_LGN_150O', 'OCI0755', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01394444', 'Indoor', 'Autostable', NULL, NULL, '5.36605556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(19859, NULL, NULL, NULL, 'MISTRAL', 'IHS_LGN_084O', 'OCI0756', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01485946', 'Indoor', 'MAT', NULL, NULL, '5.35322155', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19860, NULL, NULL, NULL, 'MOAPE', 'IHS_AGN_012O', 'OCI0757', 'IHS', 'OCI', NULL, NULL, NULL, '-3.80802778', 'Outdoor', 'Haubané', NULL, NULL, '6.19261111', 'En service', NULL, 'RAP', NULL),
(19861, NULL, NULL, NULL, 'MOHA', 'IHS_VDB_010O', 'OCI0759', 'IHS', 'OCI', NULL, NULL, NULL, '-5.04722231', 'Indoor', 'Autostable', NULL, NULL, '7.67111400', 'En service', NULL, 'RAP', NULL),
(19862, NULL, NULL, NULL, 'MONDOUKOU', 'IHS_SCE_072O', 'OCI0760', 'IHS', 'OCI', NULL, NULL, NULL, '-3.68233333', 'Outdoor', 'Autostable', NULL, NULL, '5.18666667', 'En service', NULL, 'DENSIF 2010', NULL),
(19863, NULL, NULL, NULL, 'MONOKOZOHI', 'IHS_HSD_071O', 'OCI0761', 'IHS', 'OCI', NULL, NULL, NULL, '-6.84367778', 'Outdoor', 'Haubané', NULL, NULL, '7.07565000', 'En service', NULL, 'RAN 1000', NULL),
(19864, NULL, NULL, NULL, 'MONT', 'IHS_SVN_007O', 'OCI0762', 'IHS', 'OCI', NULL, NULL, NULL, '-5.65175278', 'Indoor', 'Autostable', NULL, NULL, '9.46266111', 'En service', NULL, 'RAP', NULL),
(19865, NULL, NULL, NULL, 'MONT_FOUIMBA', 'RTI_005', 'OCI0763', 'IHS', 'RTI', NULL, NULL, NULL, '-6.79363889', 'Outdoor', 'Haubané', NULL, NULL, '8.07527778', 'En service', NULL, 'SHARING RTI 2010', NULL),
(19866, NULL, NULL, NULL, 'MONT_TONKPI', 'RTI_006', 'OCI0764', 'IHS', 'RTI', NULL, NULL, NULL, '-7.63702779', 'Outdoor', 'Haubané', NULL, NULL, '7.45427779', 'En service', NULL, 'SHARING RTI 2010', NULL),
(19867, NULL, NULL, NULL, 'MOOSSOU_NEW', 'Moov', 'OCI0765', 'Moov', 'Moov', NULL, NULL, NULL, '-3.724378', 'Indoor', 'Autostable', NULL, NULL, '5.22393', 'En service', NULL, NULL, NULL),
(19868, NULL, NULL, NULL, 'MORIBA', 'IHS_DHM_046O', 'OCI0766', 'IHS', 'OCI', NULL, NULL, NULL, '-8.16097167', 'Outdoor', 'Autostable', NULL, NULL, '7.26832905', 'En service', NULL, 'RAN 1000', NULL),
(19869, NULL, NULL, NULL, 'MOROFE', 'IHS_LAC_026O', 'OCI0767', 'IHS', 'OCI', NULL, NULL, NULL, '-5.29438728', 'Indoor', 'Autostable', NULL, NULL, '6.84580855', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19870, NULL, NULL, NULL, 'MOROKRO', 'IHS_LGN_772O', 'OCI0768', 'IHS', 'OCI', NULL, NULL, NULL, '-4.70936112', 'Outdoor', 'Haubané', NULL, NULL, '6.07261112', 'En service', NULL, 'RAN 1000', NULL),
(19871, NULL, NULL, NULL, 'MORONDO', 'IHS_WRD_042O', 'OCI0769', 'IHS', 'OCI', NULL, NULL, NULL, '-6.78416743', 'Outdoor', 'Haubané', NULL, NULL, '8.95255181', 'En service', NULL, 'VICTOIRE', NULL),
(19872, NULL, NULL, NULL, 'MOTOBE', 'IHS_LGN_724O', 'OCI0771', 'IHS', 'OCI', NULL, NULL, NULL, '-3.63975000', 'Outdoor', 'Haubané', NULL, NULL, '5.31219444', 'En service', NULL, 'DENSIF 2010', NULL),
(19873, NULL, NULL, NULL, 'MOTORAGRI', 'IHS_LGN_197O', 'OCI0772', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02880556', 'Indoor', 'MAT', NULL, NULL, '5.37622222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19874, NULL, NULL, NULL, 'MOUSSADOUGOU', 'IHS_BSD_040O', 'OCI0773', 'IHS', 'OCI', NULL, NULL, NULL, '-6.35313889', 'Outdoor', 'Haubané', NULL, NULL, '4.91021945', 'En service', NULL, 'VICTOIRE', NULL),
(19875, NULL, NULL, NULL, 'MOUSSAKRO', 'IHS_MCE_046O', 'OCI0774', 'IHS', 'OCI', NULL, NULL, NULL, '-3.39225000', 'Outdoor', 'Haubané', NULL, NULL, '6.25982222', 'En service', NULL, 'RAN 1000', NULL),
(19876, NULL, NULL, NULL, 'MOUYASSUE', 'IHS_SCE_011O', 'OCI0775', 'IHS', 'OCI', NULL, NULL, NULL, '-3.09563889', 'Outdoor', 'Haubané', NULL, NULL, '5.37055556', 'En service', NULL, 'RAN 1000', NULL),
(19877, NULL, NULL, NULL, 'MSC', 'OCIT_Strat_14', 'OCI0776', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-3.98896667', 'Indoor', 'Autostable', NULL, NULL, '5.36446944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19878, NULL, NULL, NULL, 'MICRO_MSC', 'Indoor', 'OCI0777', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.9888852', 'Outdoor', NULL, NULL, NULL, '5.36333132', 'En service', NULL, NULL, NULL),
(19879, NULL, NULL, NULL, 'MUNICIPAL', 'IHS_BSD_022O', 'OCI0778', 'IHS', 'OCI', NULL, NULL, NULL, '-6.68118390', 'Indoor', 'Autostable', NULL, NULL, '4.76230893', 'En service', NULL, 'RAP', NULL),
(19880, NULL, NULL, NULL, 'NABINGUE', 'Moov_018', 'OCI0779', 'IHS', 'Moov', NULL, NULL, NULL, '-5.32750000', 'Outdoor', 'autostable', NULL, NULL, '10.05072222', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19881, NULL, NULL, NULL, 'NABOUI', 'IHS_BSD_140O', 'OCI0780', 'IHS', 'OCI', NULL, NULL, NULL, '-6.60514444', 'Indoor', 'Autostable', NULL, NULL, '5.78845000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19882, NULL, NULL, NULL, 'NADI', 'IHS_LGN_065O', 'OCI0781', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03661000', 'Indoor', 'Haubané', NULL, NULL, '5.34776000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19883, NULL, NULL, NULL, 'NAFANAN', 'Moov_019', 'OCI0782', 'IHS', 'Moov', NULL, NULL, NULL, '-4.78911112', 'Outdoor', 'Haubané', NULL, NULL, '9.19322223', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19884, NULL, NULL, NULL, 'NAKIAHIO', 'IHS_HSD_088O', 'OCI0783', 'IHS', 'OCI', NULL, NULL, NULL, '-6.27916667', 'Outdoor', 'Haubané', NULL, NULL, '6.37305556', 'En service', NULL, 'DENSIF 2010', NULL),
(19885, NULL, NULL, NULL, 'NAMANE', 'IHS_HSD_092O', 'OCI0784', 'IHS', 'OCI', NULL, NULL, NULL, '-6.70671389', 'Outdoor', 'Haubané', NULL, NULL, '6.38755556', 'En service', NULL, 'RAN 1000', NULL),
(19886, NULL, NULL, NULL, 'NAMINASSO', 'IHS_SVN_040O', 'OCI0785', 'IHS', 'OCI', NULL, NULL, NULL, '-5.17063889', 'Outdoor', 'Haubané', NULL, NULL, '9.71222222', 'En service', NULL, 'RAN 1000', NULL),
(19887, NULL, NULL, NULL, 'NAMORYS', 'IHS_LGN_154O', 'OCI0786', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05665556', 'Indoor', 'Haubané', NULL, NULL, '5.34026945', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19888, NULL, NULL, NULL, 'NANOU', 'IHS_LGN_615O', 'OCI0787', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99122385', 'Indoor', 'Haubané', NULL, NULL, '5.43633111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19889, NULL, NULL, NULL, 'NAPIELEDOUGOU', 'IHS_SVN_017O', 'OCI0788', 'IHS', 'OCI', NULL, NULL, NULL, '-5.58860845', 'Outdoor', 'Haubané', NULL, NULL, '9.29667202', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19890, NULL, NULL, NULL, 'NDJEM', 'IHS_LGN_697O', 'OCI0790', 'IHS', 'OCI', NULL, NULL, NULL, '-4.23796111', 'Outdoor', 'Haubané', NULL, NULL, '5.26621389', 'En service', NULL, 'DENSIF 2010', NULL),
(19891, NULL, NULL, NULL, 'NDOTRE', 'IHS_LGN_646O', 'OCI0791', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06144444', 'Indoor', 'Autostable', NULL, NULL, '5.44991667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19892, NULL, NULL, NULL, 'NDOUCI', 'IHS_LGN_761O', 'OCI0792', 'IHS', 'OCI', NULL, NULL, NULL, '-4.76216667', 'Indoor', 'Haubané', NULL, NULL, '5.86272223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19893, NULL, NULL, NULL, 'NDOUFOUKANHAKRO', 'IHS_MRH_008O', 'OCI0793', 'IHS', 'OCI', NULL, NULL, NULL, '-5.81997222', 'Outdoor', 'Haubané', NULL, NULL, '6.85994444', 'En service', NULL, 'VICTOIRE', NULL),
(19894, NULL, NULL, NULL, 'NDOUKAHAKRO', 'IHS_LAC_040M', 'OCI0794', 'IHS', 'IHS', NULL, NULL, NULL, '-5.15028056', 'Indoor', 'Haubané', NULL, NULL, '6.66897222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19895, NULL, NULL, NULL, 'NDRIKRO', 'IHS_NCE_016O', 'OCI0795', 'IHS', 'OCI', NULL, NULL, NULL, '-4.42730187', 'Outdoor', 'Haubané', NULL, NULL, '6.69524856', 'En service', NULL, 'RAN 1000', NULL),
(19896, NULL, NULL, NULL, 'NEKA', 'IHS_BSD_103O', 'OCI0796', 'IHS', 'OCI', NULL, NULL, NULL, '-7.35219445', 'Outdoor', 'Haubané', NULL, NULL, '5.22886112', 'En service', NULL, 'VICTOIRE', NULL),
(19897, NULL, NULL, NULL, 'NEKO', 'IHS_SBD_056O', 'OCI0797', 'IHS', 'OCI', NULL, NULL, NULL, '-5.73016667', 'Outdoor', 'Haubané', NULL, NULL, '5.80069444', 'En service', NULL, 'DENSIF 2010', NULL),
(19898, NULL, NULL, NULL, 'NGATADOLIKRO', 'IHS_LAC_079O', 'OCI0798', 'IHS', 'OCI', NULL, NULL, NULL, '-5.13699549', 'Indoor', 'Haubané', NULL, NULL, '7.28030876', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19899, NULL, NULL, NULL, 'NGATTAKRO_DAOUKRO', 'IHS_NCE_062M', 'OCI0799', 'IHS', 'IHS', NULL, NULL, NULL, '-3.74922222', 'Outdoor', 'Haubané', NULL, NULL, '7.06397222', 'En service', NULL, 'DENSIF 2010', NULL),
(19900, NULL, NULL, NULL, 'NGOH', 'IHS_LGN_157O', 'OCI0800', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05427500', 'Outdoor', 'Autostable', NULL, NULL, '5.31947100', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19901, NULL, NULL, NULL, 'NGRAMASSABO', 'IHS_NCE_019O', 'OCI0801', 'IHS', 'OCI', NULL, NULL, NULL, '-4.39441867', 'Outdoor', 'Haubané', NULL, NULL, '6.45724580', 'En service', NULL, 'RAN 1000', NULL),
(19902, NULL, NULL, NULL, 'NGUESSANKRO', 'IHS_VDB_058O', 'OCI0802', 'IHS', 'OCI', NULL, NULL, NULL, '-4.30211389', 'Outdoor', 'Haubané', NULL, NULL, '6.63910833', 'En service', NULL, 'RAN 1000', NULL),
(19903, NULL, NULL, NULL, 'NGUESSANKRO_BKE', 'Moov_021', 'OCI0803', 'IHS', 'Moov', NULL, NULL, NULL, '-5.44849500', 'Outdoor', 'Haubané', NULL, NULL, '7.99342215', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19904, NULL, NULL, NULL, 'NIABLE', 'IHS_MCE_024O', 'OCI0804', 'IHS', 'OCI', NULL, NULL, NULL, '-3.26808333', 'Indoor', 'Haubané', NULL, NULL, '6.65383333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19905, NULL, NULL, NULL, 'NIAKARA', 'IHS_VDB_085O', 'OCI0805', 'IHS', 'OCI', NULL, NULL, NULL, '-5.28083333', 'Indoor', 'Haubané', NULL, NULL, '8.65525000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19906, NULL, NULL, NULL, 'NIAMBEZARIA', 'IHS_SBD_083O', 'OCI0806', 'IHS', 'OCI', NULL, NULL, NULL, '-5.76141667', 'Outdoor', 'Haubané', NULL, NULL, '5.66438889', 'En service', NULL, 'RAN 1000', NULL),
(19907, NULL, NULL, NULL, 'NIANDA', 'IHS_MCE_036O', 'OCI0807', 'IHS', 'OCI', NULL, NULL, NULL, '-3.27808334', 'Outdoor', 'Haubané', NULL, NULL, '7.04694445', 'En service', NULL, 'VICTOIRE', NULL),
(19908, NULL, NULL, NULL, 'NIANGON', 'IHS_LGN_467O', 'OCI0808', 'IHS', 'OCI', NULL, NULL, NULL, '-4.10049167', 'Indoor', 'Autostable', NULL, NULL, '5.32191389', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19909, NULL, NULL, NULL, 'NIDROU', 'IHS_DHM_012M', 'OCI0809', 'IHS', 'IHS', NULL, NULL, NULL, '-7.44425000', 'Outdoor', 'Haubané', NULL, NULL, '7.30041667', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19910, NULL, NULL, NULL, 'NIELLE', 'IHS_SVN_060O', 'OCI0810', 'IHS', 'OCI', NULL, NULL, NULL, '-5.62950000', 'Indoor', 'Haubané', NULL, NULL, '10.19386112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19911, NULL, NULL, NULL, 'NIL', 'IHS_LGN_466O', 'OCI0811', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09325000', 'Outdoor', 'Autostable', NULL, NULL, '5.37038889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19912, NULL, NULL, NULL, 'NIOFOIN', 'IHS_SVN_035O', 'OCI0812', 'IHS', 'OCI', NULL, NULL, NULL, '-6.07902001', 'Outdoor', 'Haubané', NULL, NULL, '9.62010335', 'En service', NULL, 'RAN 1000', NULL),
(19913, NULL, NULL, NULL, 'NIOROUHIO', 'IHS_BSD_157O', 'OCI0813', 'IHS', 'OCI', NULL, NULL, NULL, '-6.12602778', 'Outdoor', 'Haubané', NULL, NULL, '5.77000000', 'En service', NULL, 'RAN 1000', NULL),
(19914, NULL, NULL, NULL, 'NKOCHI', 'IHS_LGN_606O', 'OCI0814', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99477000', 'Indoor', 'Autostable', NULL, NULL, '5.43236000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19915, NULL, NULL, NULL, 'NOE', 'IHS_SCE_064O', 'OCI0815', 'IHS', 'OCI', NULL, NULL, NULL, '-2.79786112', 'Indoor', 'Haubané', NULL, NULL, '5.29080556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19916, NULL, NULL, NULL, 'NOGBOLO', 'IHS_BSD_078O', 'OCI0816', 'IHS', 'OCI', NULL, NULL, NULL, '-6.55505556', 'Indoor', 'Autostable', NULL, NULL, '5.40841667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19917, NULL, NULL, NULL, 'NOUAMOU', 'IHS_SCE_059O', 'OCI0818', 'IHS', 'OCI', NULL, NULL, NULL, '-2.90341667', 'Outdoor', 'Haubané', NULL, NULL, '5.18425001', 'En service', NULL, 'RAN 1000', NULL),
(19918, NULL, NULL, NULL, 'NOUFOUIN', 'IHS_LGN_560O', 'OCI0819', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01939060', 'Indoor', 'Haubané', NULL, NULL, '5.42410950', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19919, NULL, NULL, NULL, 'NOUVEL_OUSROU', 'IHS_LGN_732M', 'OCI0820', 'IHS', 'IHS', NULL, NULL, NULL, '-4.51075000', 'Outdoor', 'Haubané', NULL, NULL, '5.40502778', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19920, NULL, NULL, NULL, 'NOVOTEL_MICRO', 'OCI_Indoor_027', 'OCI0821', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.01633334', 'Outdoor', 'MAT', NULL, NULL, '5.31594445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19921, NULL, NULL, NULL, 'NZASSA', 'IHS_MCE_009O', 'OCI0823', 'IHS', 'OCI', NULL, NULL, NULL, '-3.51483333', 'Indoor', 'Autostable', NULL, NULL, '6.72277778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19922, NULL, NULL, NULL, 'NZECREZESSOU', 'IHS_NCE_039M', 'OCI0824', 'IHS', 'IHS', NULL, NULL, NULL, '-4.27266667', 'Outdoor', 'Haubané', NULL, NULL, '7.06944444', 'En service', NULL, 'DENSIF 2010', NULL),
(19923, NULL, NULL, NULL, 'NZIANOUA', 'IHS_LGN_773M', 'OCI0825', 'IHS', 'IHS', NULL, NULL, NULL, '-4.81619756', 'Indoor', 'Haubané', NULL, NULL, '5.99102416', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19924, NULL, NULL, NULL, 'NZIKRO', 'IHS_SCE_016O', 'OCI0826', 'IHS', 'OCI', NULL, NULL, NULL, '-3.39597222', 'Indoor', 'Haubané', NULL, NULL, '5.39436111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19925, NULL, NULL, NULL, 'NZODJI', 'IHS_LGN_709O', 'OCI0827', 'IHS', 'OCI', NULL, NULL, NULL, '-3.85372001', 'Outdoor', 'Autostable', NULL, NULL, '5.59841926', 'En service', NULL, 'RAN 1000', NULL),
(19926, NULL, NULL, NULL, 'NZUESSY', 'IHS_LAC_013O', 'OCI0828', 'IHS', 'OCI', NULL, NULL, NULL, '-5.25300025', 'Indoor', 'Autostable', NULL, NULL, '6.82022456', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19927, NULL, NULL, NULL, 'OASIS', 'IHS_LGN_479O', 'OCI0829', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09930500', 'Indoor', 'Haubané', NULL, NULL, '5.35594308', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19928, NULL, NULL, NULL, 'OBROUAYO', 'IHS_BSD_155O', 'OCI0830', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64924722', 'Outdoor', 'Haubané', NULL, NULL, '5.89008333', 'En service', NULL, 'RAN 1000', NULL),
(19929, NULL, NULL, NULL, 'OCEAN', 'IHS_LGN_602O', 'OCI0831', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96069444', 'Indoor', 'Haubané', NULL, NULL, '5.25686111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19930, NULL, NULL, NULL, 'OCPV', 'IHS_LGN_635O', 'OCI0832', 'IHS', 'OCI', NULL, NULL, NULL, '-4.04863600', 'Indoor', 'Autostable', NULL, NULL, '5.44695200', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19931, NULL, NULL, NULL, 'ODIENNE', 'IHS_DNG_005O', 'OCI0833', 'IHS', 'OCI', NULL, NULL, NULL, '-7.56214445', 'Indoor', 'Haubané', NULL, NULL, '9.50505278', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19932, NULL, NULL, NULL, 'ODIENNEKOURANI', 'IHS_VDB_008M', 'OCI0834', 'IHS', 'IHS', NULL, NULL, NULL, '-5.04066667', 'Outdoor', 'Autostable', NULL, NULL, '7.70075000', 'En service', NULL, 'SHARING MTN 2010', NULL),
(19933, NULL, NULL, NULL, 'OFFOMPO', 'IHS_AGN_072O', 'OCI0835', 'IHS', 'OCI', NULL, NULL, NULL, '-4.45980556', 'Outdoor', 'Haubané', NULL, NULL, '5.96075000', 'En service', NULL, 'ELEPHANT', NULL),
(19934, NULL, NULL, NULL, 'OFFOUMOU_YAPO', 'Moov_022', 'OCI0836', 'IHS', 'Moov', NULL, NULL, NULL, '-4.04944000', 'Outdoor', 'Autostable', NULL, NULL, '5.33214000', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(19935, NULL, NULL, NULL, 'OGOUDOU', 'IHS_SBD_025O', 'OCI0837', 'IHS', 'OCI', NULL, NULL, NULL, '-5.15700699', 'Outdoor', 'Haubané', NULL, NULL, '5.89645072', 'En service', NULL, 'RAN 1000', NULL),
(19936, NULL, NULL, NULL, 'OGWALPO', 'IHS_LGN_705O', 'OCI0838', 'IHS', 'OCI', NULL, NULL, NULL, '-3.74299444', 'Outdoor', 'Autostable', NULL, NULL, '5.39722778', 'En service', NULL, 'RAP', NULL),
(19937, NULL, NULL, NULL, 'OITH', 'IHS_LGN_067O', 'OCI0839', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01166647', 'Indoor', 'MAT', NULL, NULL, '5.32119802', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19938, NULL, NULL, NULL, 'OKROMODOU', 'IHS_SBD_068O', 'OCI0840', 'IHS', 'OCI', NULL, NULL, NULL, '-5.68783334', 'Outdoor', 'Haubané', NULL, NULL, '5.35108334', 'En service', NULL, 'RAN 1000', NULL),
(19939, NULL, NULL, NULL, 'OKROUYO', 'IHS_BSD_142O', 'OCI0841', 'IHS', 'OCI', NULL, NULL, NULL, '-6.40913889', 'Outdoor', 'Haubané', NULL, NULL, '5.76202778', 'En service', NULL, 'VICTOIRE', NULL),
(19940, NULL, NULL, NULL, 'OLYMPE', 'IHS_LGN_180O', 'OCI0842', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99438889', 'Indoor', 'Haubané', NULL, NULL, '5.31108333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19941, NULL, NULL, NULL, 'ONDEFIDOUO_2', 'IHS_ZNZ_059O', 'OCI0843', 'IHS', 'OCI', NULL, NULL, NULL, '-3.07816988', 'Outdoor', 'Haubané', NULL, NULL, '9.04083765', 'En service', NULL, 'RAN 1000', NULL),
(19942, NULL, NULL, NULL, 'ONO', 'IHS_SCE_050O', 'OCI0844', 'IHS', 'OCI', NULL, NULL, NULL, '-3.56627473', 'Outdoor', 'Haubané', NULL, NULL, '5.38460231', 'En service', NULL, 'RAN 1000', NULL),
(19943, NULL, NULL, NULL, 'ORBAFF', 'IHS_LGN_725O', 'OCI0845', 'IHS', 'OCI', NULL, NULL, NULL, '-4.41986111', 'Outdoor', 'Haubané', NULL, NULL, '5.39813889', 'En service', NULL, 'RAN 1000', NULL),
(19944, NULL, NULL, NULL, 'ORCA_MICRO', 'OCI_Indoor_028', 'OCI0846', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.9747471', 'Outdoor', 'MAT', NULL, NULL, '5.29117304', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19945, NULL, NULL, NULL, 'ORESS_KROBOU', 'IHS_AGN_073O', 'OCI0847', 'IHS', 'OCI', NULL, NULL, NULL, '-4.39188611', 'Outdoor', 'Haubané', NULL, NULL, '5.73888611', 'En service', NULL, 'RAN 1000', NULL),
(19946, NULL, NULL, NULL, 'ORLEANS', 'IHS_LGN_544O', 'OCI0848', 'IHS', 'OCI', NULL, NULL, NULL, '-4.11102778', 'Indoor', 'Autostable', NULL, NULL, '5.32555556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19947, NULL, NULL, NULL, 'ORLY', 'IHS_HSD_012O', 'OCI0849', 'IHS', 'OCI', NULL, NULL, NULL, '-6.45905873', 'Outdoor', 'Autostable', NULL, NULL, '6.85446103', 'En service', NULL, 'RAP', NULL),
(19948, NULL, NULL, NULL, 'ORYX', 'IHS_MCE_007O', 'OCI0850', 'IHS', 'OCI', NULL, NULL, NULL, '-3.50627889', 'Indoor', 'Autostable', NULL, NULL, '6.74196306', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19949, NULL, NULL, NULL, 'OSCAR', 'IHS_LGN_343O', 'OCI0851', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96258333', 'Indoor', 'Haubané', NULL, NULL, '5.34513889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19950, NULL, NULL, NULL, 'OTTAWA', 'IHS_BSD_124O', 'OCI0852', 'IHS', 'OCI', NULL, NULL, NULL, '-6.28116667', 'Indoor', 'Haubané', NULL, NULL, '5.67319444', 'En service', NULL, 'RAP', NULL),
(19951, NULL, NULL, NULL, 'OUAMELHORO', 'IHS_SVN_068O', 'OCI0854', 'IHS', 'OCI', NULL, NULL, NULL, '-5.62442501', 'Outdoor', 'Haubané', NULL, NULL, '10.33181945', 'En service', NULL, 'RAN 1000', NULL),
(19952, NULL, NULL, NULL, 'OUANGOLO', 'IHS_SVN_056O', 'OCI0855', 'IHS', 'OCI', NULL, NULL, NULL, '-5.15552778', 'Indoor', 'Haubané', NULL, NULL, '9.97098612', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19953, NULL, NULL, NULL, 'OUANINOU', 'IHS_BAF_005O', 'OCI0856', 'IHS', 'OCI', NULL, NULL, NULL, '-7.87463889', 'Outdoor', 'Haubané', NULL, NULL, '8.23990279', 'En service', NULL, 'RAN 1000', NULL),
(19954, NULL, NULL, NULL, 'OUELLE', 'IHS_NCE_059O', 'OCI0857', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01294444', 'Indoor', 'Autostable', NULL, NULL, '7.29730556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19955, NULL, NULL, NULL, 'OUEZIN', 'IHS_LGN_439O', 'OCI0858', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96628723', 'Indoor', 'Haubané', NULL, NULL, '5.28814708', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19956, NULL, NULL, NULL, 'OUGALILIE', 'IHS_FMG_027O', 'OCI0859', 'IHS', 'OCI', NULL, NULL, NULL, '-5.78587779', 'Outdoor', 'Haubané', NULL, NULL, '6.03461111', 'En service', NULL, 'RAN 1000', NULL),
(19957, NULL, NULL, NULL, 'OUME', 'IHS_FMG_077O', 'OCI0860', 'IHS', 'OCI', NULL, NULL, NULL, '-5.41166111', 'Indoor', 'Autostable', NULL, NULL, '6.37999722', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19958, NULL, NULL, NULL, 'OUME_2', 'IHS_FMG_078O', 'OCI0861', 'IHS', 'OCI', NULL, NULL, NULL, '-5.42183056', 'Outdoor', 'Autostable', NULL, NULL, '6.37925001', 'En service', NULL, 'DENSIF 2009', NULL),
(19959, NULL, NULL, NULL, 'OUNANDIEKAHA', 'IHS_VDB_069O', 'OCI0862', 'IHS', 'OCI', NULL, NULL, NULL, '-5.17594605', 'Outdoor', 'Haubané', NULL, NULL, '8.36650303', 'En service', NULL, 'RAN 1000', NULL),
(19960, NULL, NULL, NULL, 'OUPOYO', 'IHS_BSD_095O', 'OCI0863', 'IHS', 'OCI', NULL, NULL, NULL, '-6.59608333', 'Indoor', 'Haubané', NULL, NULL, '5.57002778', 'En service', NULL, 'RAP', NULL),
(19961, NULL, NULL, NULL, 'OURAGAHIO', 'IHS_FMG_030O', 'OCI0864', 'IHS', 'OCI', NULL, NULL, NULL, '-5.93500000', 'Indoor', 'Haubané', NULL, NULL, '6.30777778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19962, NULL, NULL, NULL, 'OUREYO', 'IHS_BSD_168O', 'OCI0865', 'IHS', 'OCI', NULL, NULL, NULL, '-6.59683056', 'Outdoor', 'Autostable', NULL, NULL, '6.02064167', 'En service', NULL, 'VICTOIRE', NULL),
(19963, NULL, NULL, NULL, 'PAILLET', 'IHS_LGN_203O', 'OCI0866', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01375001', 'Indoor', 'Haubané', NULL, NULL, '5.37577778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19964, NULL, NULL, NULL, 'PAILLOTE', 'IHS_BSD_161O', 'OCI0867', 'IHS', 'OCI', NULL, NULL, NULL, '-6.59826945', 'Outdoor', 'Autostable', NULL, NULL, '5.93928889', 'En service', NULL, 'RAN 1000', NULL),
(19965, NULL, NULL, NULL, 'PAKOUABO', 'IHS_MRH_011O', 'OCI0868', 'IHS', 'OCI', NULL, NULL, NULL, '-5.78944792', 'Indoor', 'Autostable', NULL, NULL, '7.16000222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19966, NULL, NULL, NULL, 'PALM_CB', 'IHS_LGN_125O', 'OCI0869', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00322222', 'Indoor', 'Haubané', NULL, NULL, '5.35380556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19967, NULL, NULL, NULL, 'PALM_TAMABO_SUD', 'IHS_LGN_751O', 'OCI0870', 'IHS', 'OCI', NULL, NULL, NULL, '-4.79075000', 'Outdoor', 'Haubané', NULL, NULL, '5.36308334', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19968, NULL, NULL, NULL, 'PARA', 'IHS_BSD_135O', 'OCI0872', 'IHS', 'OCI', NULL, NULL, NULL, '-7.32469445', 'Outdoor', 'Haubané', NULL, NULL, '5.52100001', 'En service', NULL, 'VICTOIRE', NULL),
(19969, NULL, NULL, NULL, 'PASTORAL', 'IHS_HSD_018O', 'OCI0873', 'IHS', 'OCI', NULL, NULL, NULL, '-6.44153056', 'Indoor', 'Autostable', NULL, NULL, '6.90383056', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19970, NULL, NULL, NULL, 'PAULY_BROUSSE', 'IHS_BSD_061O', 'OCI0874', 'IHS', 'OCI', NULL, NULL, NULL, '-6.18969444', 'Outdoor', 'Haubané', NULL, NULL, '4.96480556', 'En service', NULL, 'VICTOIRE', NULL),
(19971, NULL, NULL, NULL, 'PEHE', 'IHS_MCY_052O', 'OCI0876', 'IHS', 'OCI', NULL, NULL, NULL, '-8.30778333', 'Outdoor', 'Haubané', NULL, NULL, '6.56950000', 'En service', NULL, 'RAN 1000', NULL),
(19972, NULL, NULL, NULL, 'PELEZI', 'IHS_HSD_091O', 'OCI0877', 'IHS', 'OCI', NULL, NULL, NULL, '-6.80333107', 'Outdoor', 'Haubané', NULL, NULL, '7.28555108', 'En service', NULL, 'VICTOIRE', NULL),
(19973, NULL, NULL, NULL, 'PERGOLA', 'IHS_LGN_301O', 'OCI0878', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98426371', 'Indoor', 'MAT', NULL, NULL, '5.28335198', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19974, NULL, NULL, NULL, 'PERLES', 'IHS_LGN_312O', 'OCI0879', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99794444', 'Indoor', 'Haubané', NULL, NULL, '5.38750000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19975, NULL, NULL, NULL, 'PETIT_BONDOUKOU', 'IHS_BSD_102O', 'OCI0880', 'IHS', 'OCI', NULL, NULL, NULL, '-6.65285556', 'Outdoor', 'Haubané', NULL, NULL, '5.59974444', 'En service', NULL, 'RAN 1000', NULL),
(19976, NULL, NULL, NULL, 'PETIT_TIEME', 'IHS_BSD_148O', 'OCI0881', 'IHS', 'OCI', NULL, NULL, NULL, '-6.72586112', 'Outdoor', 'Haubané', NULL, NULL, '5.80927778', 'En service', NULL, 'VICTOIRE', NULL),
(19977, NULL, NULL, NULL, 'PETROCI', 'IHS_LGN_528O', 'OCI0882', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98716667', 'Indoor', 'Haubané', NULL, NULL, '5.26155556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19978, NULL, NULL, NULL, 'PHCIE_BELAIR', 'IHS_LGN_188O', 'OCI0883', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06289258', 'Outdoor', 'Autostable', NULL, NULL, '5.34585889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19979, NULL, NULL, NULL, 'PINHOU', 'IHS_MCY_012O', 'OCI0884', 'IHS', 'OCI', NULL, NULL, NULL, '-7.34346940', 'Outdoor', 'Haubané', NULL, NULL, '6.64420682', 'En service', NULL, 'RAN 1000', NULL),
(19980, NULL, NULL, NULL, 'PISAM', 'IHS_LGN_027O', 'OCI0885', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01183333', 'Indoor', 'Autostable', NULL, NULL, '5.33611111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19981, NULL, NULL, NULL, 'PK_18', 'IHS_LGN_651O', 'OCI0886', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05513063', 'Indoor', 'Haubané', NULL, NULL, '5.45479209', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19982, NULL, NULL, NULL, 'PK_50', 'IHS_LGN_723O', 'OCI0887', 'IHS', 'OCI', NULL, NULL, NULL, '-4.33410921', 'Indoor', 'Autostable', NULL, NULL, '5.55341502', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19983, NULL, NULL, NULL, 'PK_85', 'IHS_LGN_745O', 'OCI0888', 'IHS', 'OCI', NULL, NULL, NULL, '-4.53019444', 'Indoor', 'Autostable', NULL, NULL, '5.73046111', 'En service', NULL, 'VICTOIRE', NULL),
(19984, NULL, NULL, NULL, 'PODIAGOUINE', 'IHS_DHM_023O', 'OCI0889', 'IHS', 'OCI', NULL, NULL, NULL, '-7.74536111', 'Outdoor', 'Autostable', NULL, NULL, '7.15513889', 'En service', NULL, 'DENSIF 2010', NULL),
(19985, NULL, NULL, NULL, 'POGO', 'IHS_SVN_077O', 'OCI0890', 'IHS', 'OCI', NULL, NULL, NULL, '-5.62916292', 'Indoor', 'Haubané', NULL, NULL, '10.43499947', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19986, NULL, NULL, NULL, 'POREAGUI', 'IHS_BSD_085M', 'OCI0891', 'IHS', 'IHS', NULL, NULL, NULL, '-6.67891667', 'Outdoor', 'Haubané', NULL, NULL, '5.44761112', 'En service', NULL, 'RAN 1000', NULL),
(19987, NULL, NULL, NULL, 'POYABLY', 'IHS_MCY_053O', 'OCI0893', 'IHS', 'OCI', NULL, NULL, NULL, '-8.38146723', 'Outdoor', 'Haubané', NULL, NULL, '6.49555978', 'En service', NULL, 'RAN 1000', NULL),
(19988, NULL, NULL, NULL, 'PRESIDENCE', 'OCI_Tiers_002', 'OCI0894', 'IHS', 'Particulier', NULL, NULL, NULL, '-3.99513889', 'Indoor', 'Autostable', NULL, NULL, '5.32741667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19989, NULL, NULL, NULL, 'PRICHOC', 'IHS_LGN_181O', 'OCI0895', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00539040', 'Indoor', 'MAT', NULL, NULL, '5.36830637', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19990, NULL, NULL, NULL, 'PRIKRO', 'IHS_NCE_069O', 'OCI0896', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99891667', 'Indoor', 'Haubané', NULL, NULL, '7.64950000', 'En service', NULL, 'RAP', NULL),
(19991, NULL, NULL, NULL, 'PRINCESSE', 'IHS_LGN_232O', 'OCI0898', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07000000', 'Indoor', 'Haubané', NULL, NULL, '5.34705834', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19992, NULL, NULL, NULL, 'QUARTZ', 'Indoor', 'OCI0899', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.98494445', 'Indoor', 'Autostable', NULL, NULL, '5.29755556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19993, NULL, NULL, NULL, 'QUEENS', 'IHS_LGN_260O', 'OCI0901', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99021847', 'Indoor', 'Haubané', NULL, NULL, '5.37304369', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19994, NULL, NULL, NULL, 'RAGGI', 'IHS_SCE_078O', 'OCI0902', 'IHS', 'OCI', NULL, NULL, NULL, '-3.72900257', 'Indoor', 'Autostable', NULL, NULL, '5.19416865', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19995, NULL, NULL, NULL, 'RAMBLAIS', 'IHS_LGN_341O', 'OCI0903', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97066942', 'Outdoor', 'Haubané', NULL, NULL, '5.30339054', 'En service', NULL, NULL, NULL),
(19996, NULL, NULL, NULL, 'RAPID_GRAH', 'IHS_BSD_042O', 'OCI0905', 'IHS', 'OCI', NULL, NULL, NULL, '-6.63833500', 'Indoor', 'Autostable', NULL, NULL, '5.10360900', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19997, NULL, NULL, NULL, 'RAVIAT', 'IHS_LAC_088O', 'OCI0906', 'IHS', 'OCI', NULL, NULL, NULL, '-4.88432501', 'Indoor', 'Haubané', NULL, NULL, '7.40197223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19998, NULL, NULL, NULL, 'REGIONALE', 'OCIT_Strat_16', 'OCI0907', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-5.27639040', 'Indoor', 'Autostable', NULL, NULL, '6.81911143', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(19999, NULL, NULL, NULL, 'REPUBLIQUE', 'OCIT_Strat_17', 'OCI0908', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-4.01981945', 'Indoor', 'Haubané', NULL, NULL, '5.31803056', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20000, NULL, NULL, NULL, 'RESERVE', 'IHS_LGN_004O', 'OCI0909', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02080570', 'Indoor', 'Haubané', NULL, NULL, '5.33088835', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20001, NULL, NULL, NULL, 'RESIDENCE_227', 'IHS_LAC_027O', 'OCI0910', 'IHS', 'OCI', NULL, NULL, NULL, '-5.24877778', 'Indoor', 'Autostable', NULL, NULL, '6.84880556', 'En service', NULL, 'RAP', NULL),
(20002, NULL, NULL, NULL, 'RH_POUL', 'IHS_LGN_402O', 'OCI0911', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00855556', 'Indoor', 'MAT', NULL, NULL, '5.26672222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20003, NULL, NULL, NULL, 'RITCH', 'IHS_LGN_213O', 'OCI0912', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97986111', 'Outdoor', 'MAT', NULL, NULL, '5.33991667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20004, NULL, NULL, NULL, 'RIVE_GAUCHE', 'RTI_007', 'OCI0913', 'IHS', 'RTI', NULL, NULL, NULL, '-3.20014400', 'Indoor', 'Autostable', NULL, NULL, '5.46638600', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20005, NULL, NULL, NULL, 'RIVIERA', 'IHS_LGN_231O', 'OCI0914', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97755556', 'Indoor', 'Haubané', NULL, NULL, '5.34447222', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20006, NULL, NULL, NULL, 'ROSIERS', 'IHS_LGN_441O', 'OCI0915', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96716620', 'Indoor', 'Autostable', NULL, NULL, '5.38268670', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20007, NULL, NULL, NULL, 'ROXI', 'IHS_LGN_068O', 'OCI0916', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02361944', 'Indoor', 'Haubané', NULL, NULL, '5.35306111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20008, NULL, NULL, NULL, 'ROYAL', 'IHS_MCE_004O', 'OCI0917', 'IHS', 'OCI', NULL, NULL, NULL, '-3.47305400', 'Indoor', 'Autostable', NULL, NULL, '6.72332600', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20009, NULL, NULL, NULL, 'RUE_12', 'IHS_LGN_133O', 'OCI0919', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01250000', 'Indoor', 'Haubané', NULL, NULL, '5.30750000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20010, NULL, NULL, NULL, 'RWOD', 'IHS_LGN_714O', 'OCI0920', 'IHS', 'OCI', NULL, NULL, NULL, '-4.37116667', 'Indoor', 'Autostable', NULL, NULL, '5.33727778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20011, NULL, NULL, NULL, 'SABLE', 'IHS_LGN_273O', 'OCI0921', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07217081', 'Indoor', 'Haubané', NULL, NULL, '5.35700423', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20012, NULL, NULL, NULL, 'SABOB', 'IHS_LGN_494O', 'OCI0922', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00044445', 'Indoor', 'Autostable', NULL, NULL, '5.41088889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20013, NULL, NULL, NULL, 'SACHES', 'IHS_LGN_292O', 'OCI0923', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98609301', 'Indoor', 'MAT', NULL, NULL, '5.29319027', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20014, NULL, NULL, NULL, 'SACRECOEUR', 'IHS_LGN_448O', 'OCI0925', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01240000', 'Indoor', 'MAT', NULL, NULL, '5.40915000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20015, NULL, NULL, NULL, 'SADEM', 'IHS_LGN_097O', 'OCI0926', 'IHS', 'OCI', NULL, NULL, NULL, '-4.04634723', 'Indoor', 'MAT', NULL, NULL, '5.32991667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20016, NULL, NULL, NULL, 'SAGA', 'IHS_LGN_411O', 'OCI0927', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99882227', 'Indoor', 'Haubané', NULL, NULL, '5.26871170', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20017, NULL, NULL, NULL, 'SAGBE', 'IHS_LGN_488O', 'OCI0928', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02788500', 'Indoor', 'Autostable', NULL, NULL, '5.41408200', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20018, NULL, NULL, NULL, 'SAGBOYA', 'IHS_BSD_165O', 'OCI0929', 'IHS', 'OCI', NULL, NULL, NULL, '-6.91775001', 'Outdoor', 'Haubané', NULL, NULL, '5.97405556', 'En service', NULL, 'RAN 1000', NULL),
(20019, NULL, NULL, NULL, 'SAGECIM', 'IHS_LGN_502O', 'OCI0930', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97325000', 'Indoor', 'Haubané', NULL, NULL, '5.39691667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20020, NULL, NULL, NULL, 'SAGO', 'IHS_BSD_112O', 'OCI0931', 'IHS', 'OCI', NULL, NULL, NULL, '-5.92305833', 'Outdoor', 'Haubané', NULL, NULL, '5.27885833', 'En service', NULL, 'RAN 1000', NULL),
(20021, NULL, NULL, NULL, 'SAGUIDIBA', 'IHS_LGN_251O', 'OCI0932', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07408306', 'Indoor', 'MAT', NULL, NULL, '5.33058056', 'En service', NULL, NULL, NULL),
(20022, NULL, NULL, NULL, 'SAHOUA', 'IHS_BSD_060O', 'OCI0935', 'IHS', 'OCI', NULL, NULL, NULL, '-6.25466667', 'Outdoor', 'Haubané', NULL, NULL, '5.05894445', 'En service', NULL, 'RAN 1000', NULL),
(20023, NULL, NULL, NULL, 'SAIOUA', 'IHS_HSD_066O', 'OCI0936', 'IHS', 'OCI', NULL, NULL, NULL, '-6.27091246', 'Indoor', 'Autostable', NULL, NULL, '6.49073043', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20024, NULL, NULL, NULL, 'SAKAOUO', 'IHS_FMG_068O', 'OCI0937', 'IHS', 'OCI', NULL, NULL, NULL, '-5.69300228', 'Outdoor', 'Haubané', NULL, NULL, '6.45883013', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20025, NULL, NULL, NULL, 'SAKASSOU', 'IHS_VDB_047O', 'OCI0938', 'IHS', 'OCI', NULL, NULL, NULL, '-5.29244444', 'Indoor', 'Haubané', NULL, NULL, '7.44683333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20026, NULL, NULL, NULL, 'SAKIARE', 'IHS_LAC_047O', 'OCI0939', 'IHS', 'OCI', NULL, NULL, NULL, '-5.26961111', 'Outdoor', 'Haubané', NULL, NULL, '7.03338889', 'En service', NULL, 'ELEPHANT', NULL),
(20027, NULL, NULL, NULL, 'SAMAKE', 'IHS_LGN_512O', 'OCI0940', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00575000', 'Indoor', 'Haubané', NULL, NULL, '5.41466667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20028, NULL, NULL, NULL, 'SAMARIT', 'IHS_LGN_206O', 'OCI0941', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99222223', 'Outdoor', 'MAT', NULL, NULL, '5.30766667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20029, NULL, NULL, NULL, 'SAMATIGUILA', 'IHS_DNG_011O', 'OCI0942', 'IHS', 'OCI', NULL, NULL, NULL, '-7.56575000', 'Outdoor', 'Autostable', NULL, NULL, '9.82972222', 'En service', NULL, 'RAN 1000', NULL),
(20030, NULL, NULL, NULL, 'SAN_PEDRO', 'IHS_BSD_018O', 'OCI0943', 'IHS', 'OCI', NULL, NULL, NULL, '-6.62347223', 'Indoor', 'MATS SUR TOUR', NULL, NULL, '4.73861112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20031, NULL, NULL, NULL, 'SANEGOURIFLA', 'IHS_MRH_025O', 'OCI0945', 'IHS', 'OCI', NULL, NULL, NULL, '-5.79946667', 'Outdoor', 'Haubané', NULL, NULL, '6.65732500', 'En service', NULL, 'RAN 1000', NULL),
(20032, NULL, NULL, NULL, 'SANGOUINE', 'IHS_DHM_017M', 'OCI0946', 'IHS', 'IHS', NULL, NULL, NULL, '-7.78188889', 'Outdoor', 'Haubané', NULL, NULL, '7.26433334', 'En service', NULL, 'RAN 1000', NULL),
(20033, NULL, NULL, NULL, 'SANHOUMAN', 'IHS_SCE_006O', 'OCI0947', 'IHS', 'OCI', NULL, NULL, NULL, '-3.13663611', 'Outdoor', 'Haubané', NULL, NULL, '5.40302778', 'En service', NULL, 'RAN 1000', NULL),
(20034, NULL, NULL, NULL, 'SANKADIOKRO', 'IHS_MCE_015O', 'OCI0948', 'IHS', 'OCI', NULL, NULL, NULL, '-3.48527778', 'Outdoor', 'Autostable', NULL, NULL, '6.85969445', 'En service', NULL, 'RAP', NULL),
(20035, NULL, NULL, NULL, 'SANTA', 'IHS_BAF_013O', 'OCI0949', 'IHS', 'OCI', NULL, NULL, NULL, '-8.05433334', 'Outdoor', 'Haubané', NULL, NULL, '8.26636112', 'En service', NULL, 'RAN 1000', NULL),
(20036, NULL, NULL, NULL, 'SANTE', 'OCIT_Strat_03', 'OCI0950', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-4.04444444', 'Indoor', 'Autostable', NULL, NULL, '5.32127778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20037, NULL, NULL, NULL, 'SAPH_SAIBE', 'IHS_MCE_055O', 'OCI0951', 'IHS', 'OCI', NULL, NULL, NULL, '-3.33767064', 'Outdoor', 'Haubané', NULL, NULL, '6.13119553', 'En service', NULL, 'VICTOIRE', NULL),
(20038, NULL, NULL, NULL, 'SAPLI', 'IHS_ZNZ_013O', 'OCI0952', 'IHS', 'OCI', NULL, NULL, NULL, '-2.96647223', 'Outdoor', 'Haubané', NULL, NULL, '8.15800001', 'En service', NULL, 'RAN 1000', NULL),
(20039, NULL, NULL, NULL, 'SARAKA', 'IHS_LGN_201O', 'OCI0953', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06396833', 'Outdoor', 'MAT', NULL, NULL, '5.34694243', 'En service', NULL, NULL, NULL),
(20040, NULL, NULL, NULL, 'SARAKAGUI', 'IHS_BSD_150O', 'OCI0954', 'IHS', 'OCI', NULL, NULL, NULL, '-6.79780556', 'Outdoor', 'Haubané', NULL, NULL, '5.81619445', 'En service', NULL, 'RAN 1000', NULL),
(20041, NULL, NULL, NULL, 'SASSANDRA', 'IHS_BSD_072O', 'OCI0956', 'IHS', 'OCI', NULL, NULL, NULL, '-6.09288889', 'Indoor', 'Haubané', NULL, NULL, '4.95388889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20042, NULL, NULL, NULL, 'SATAMA_SOKORO', 'IHS_VDB_059O', 'OCI0957', 'IHS', 'OCI', NULL, NULL, NULL, '-4.53119167', 'Outdoor', 'Haubané', NULL, NULL, '7.89519167', 'En service', NULL, 'RAN 1000', NULL),
(20043, NULL, NULL, NULL, 'SATAMA_SOKOURA', 'IHS_VDB_071O', 'OCI0958', 'IHS', 'OCI', NULL, NULL, NULL, '-4.36194167', 'Outdoor', 'Haubané', NULL, NULL, '7.89435556', 'En service', NULL, 'RAN 1000', NULL),
(20044, NULL, NULL, NULL, 'SDV', 'IHS_LGN_111O', 'OCI0959', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01716667', 'Indoor', 'MAT', NULL, NULL, '5.30958333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20045, NULL, NULL, NULL, 'SEBREKO', 'IHS_LGN_015O', 'OCI0960', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03166603', 'Indoor', 'Haubané', NULL, NULL, '5.33889322', 'En service', NULL, NULL, NULL),
(20046, NULL, NULL, NULL, 'SEFLA', 'IHS_HSD_029O', 'OCI0962', 'IHS', 'OCI', NULL, NULL, NULL, '-6.32633334', 'Outdoor', 'Haubané', NULL, NULL, '7.01558334', 'En service', NULL, 'RAN 1000', NULL),
(20047, NULL, NULL, NULL, 'SEGUELA', 'IHS_WRD_003O', 'OCI0963', 'IHS', 'OCI', NULL, NULL, NULL, '-6.66924722', 'Indoor', 'Haubané', NULL, NULL, '7.96444167', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20048, NULL, NULL, NULL, 'SEGUENON', 'IHS_VDB_023O', 'OCI0964', 'IHS', 'OCI', NULL, NULL, NULL, '-5.02099715', 'Outdoor', 'Autostable', NULL, NULL, '7.72841744', 'En service', NULL, 'RAN 1000', NULL),
(20049, NULL, NULL, NULL, 'SEITIFLA', 'IHS_HSD_098O', 'OCI0965', 'IHS', 'OCI', NULL, NULL, NULL, '-6.71722222', 'Outdoor', 'Haubané', NULL, NULL, '7.43597222', 'En service', NULL, 'RAN 1000', NULL),
(20050, NULL, NULL, NULL, 'SELIEGUHE', 'IHS_HSD_075O', 'OCI0966', 'IHS', 'OCI', NULL, NULL, NULL, '-6.86663611', 'Outdoor', 'Haubané', NULL, NULL, '6.62063611', 'En service', NULL, 'RAN 1000', NULL),
(20051, NULL, NULL, NULL, 'SELIGBANGAN', 'IHS_BSD_090O', 'OCI0967', 'IHS', 'OCI', NULL, NULL, NULL, '-6.70947223', 'Outdoor', 'Haubané', NULL, NULL, '5.53322223', 'En service', NULL, 'RAN 1000', NULL),
(20052, NULL, NULL, NULL, 'SEMAN', 'Moov_023', 'OCI0968', 'IHS', 'Moov', NULL, NULL, NULL, '-5.29797222', 'Outdoor', 'Autostable', NULL, NULL, '6.89213889', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(20053, NULL, NULL, NULL, 'SEMIEN', 'IHS_DHM_037O', 'OCI0969', 'IHS', 'OCI', NULL, NULL, NULL, '-7.13391667', 'Outdoor', 'Haubané', NULL, NULL, '7.60308334', 'En service', NULL, 'RAN 1000', NULL),
(20054, NULL, NULL, NULL, 'SEMINAIRE', 'IHS_LGN_681O', 'OCI0970', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06274881', 'Indoor', 'Autostable', NULL, NULL, '5.49588796', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20055, NULL, NULL, NULL, 'SEPENEDIOKAHA', 'IHS_SVN_048O', 'OCI0971', 'IHS', 'OCI', NULL, NULL, NULL, '-5.16053334', 'Outdoor', 'Haubané', NULL, NULL, '9.84494723', 'En service', NULL, 'RAN 1000', NULL),
(20056, NULL, NULL, NULL, 'SEPI', 'IHS_LGN_238O', 'OCI0972', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06914026', 'Indoor', 'MAT', NULL, NULL, '5.35274935', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20057, NULL, NULL, NULL, 'SEWEKE', 'IHS_BSD_005O', 'OCI0973', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64886264', 'Indoor', 'Haubané', NULL, NULL, '4.77847080', 'En service', NULL, 'RAN 1000', NULL),
(20058, NULL, NULL, NULL, 'SHARALA', 'IHS_WRD_040O', 'OCI0974', 'IHS', 'OCI', NULL, NULL, NULL, '-6.17369723', 'Indoor', 'Haubané', NULL, NULL, '8.42297778', 'En service', NULL, 'RAP', NULL),
(20059, NULL, NULL, NULL, 'SHIGUE', 'IHS_LGN_660O', 'OCI0975', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05380691', 'Outdoor', 'Haubané', NULL, NULL, '5.47205223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20060, NULL, NULL, NULL, 'SIAGO', 'IHS_ZNZ_012O', 'OCI0976', 'IHS', 'OCI', NULL, NULL, NULL, '-2.95352778', 'Indoor', 'Haubané', NULL, NULL, '7.93963889', 'En service', NULL, 'DENSIF 2010', NULL),
(20061, NULL, NULL, NULL, 'SIDECI', 'IHS_LGN_307O', 'OCI0977', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08090278', 'Indoor', 'Haubané', NULL, NULL, '5.32428889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20062, NULL, NULL, NULL, 'SIEMPURGO', 'IHS_SVN_043O', 'OCI0978', 'IHS', 'OCI', NULL, NULL, NULL, '-6.19860964', 'Outdoor', 'Haubané', NULL, NULL, '9.51916460', 'En service', NULL, 'VICTOIRE', NULL),
(20063, NULL, NULL, NULL, 'SIFCA', 'IHS_LGN_131O', 'OCI0979', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02105556', 'Indoor', 'MAT', NULL, NULL, '5.30638889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20064, NULL, NULL, NULL, 'SIFCI_VAVOUA', 'IHS_HSD_069O', 'OCI0980', 'IHS', 'OCI', NULL, NULL, NULL, '-6.50127778', 'Outdoor', 'Autostable', NULL, NULL, '7.30852778', 'En service', NULL, 'VICTOIRE', NULL),
(20065, NULL, NULL, NULL, 'SIFIE', 'IHS_WRD_011O', 'OCI0981', 'IHS', 'OCI', NULL, NULL, NULL, '-6.93301389', 'Outdoor', 'Haubané', NULL, NULL, '7.97775000', 'En service', NULL, 'RAN 1000', NULL),
(20066, NULL, NULL, NULL, 'SIGI', 'IHS_LGN_262O', 'OCI0982', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98024600', 'Indoor', 'Autostable', NULL, NULL, '5.36183500', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20067, NULL, NULL, NULL, 'SIKENSI', 'IHS_LGN_741O', 'OCI0983', 'IHS', 'OCI', NULL, NULL, NULL, '-4.57105556', 'Indoor', 'Haubané', NULL, NULL, '5.65833333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20068, NULL, NULL, NULL, 'SINEMATIALI', 'IHS_SVN_022O', 'OCI0984', 'IHS', 'OCI', NULL, NULL, NULL, '-5.40108333', 'Indoor', 'Autostable', NULL, NULL, '9.57250001', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20069, NULL, NULL, NULL, 'SINFRA', 'IHS_MRH_031O', 'OCI0985', 'IHS', 'OCI', NULL, NULL, NULL, '-5.91199167', 'Indoor', 'Haubané', NULL, NULL, '6.62488889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20070, NULL, NULL, NULL, 'SINGREBO', 'IHS_LGN_777O', 'OCI0986', 'IHS', 'OCI', NULL, NULL, NULL, '-4.90452609', 'Indoor', 'Autostable', NULL, NULL, '6.08025221', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20071, NULL, NULL, NULL, 'SION', 'IHS_LGN_555O', 'OCI0987', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97433700', 'Outdoor', 'Autostable', NULL, NULL, '5.40860800', 'En service', NULL, 'DENSIF 2010', NULL),
(20072, NULL, NULL, NULL, 'SIPEFCI_BOLO', 'IHS_BSD_098O', 'OCI0988', 'IHS', 'OCI', NULL, NULL, NULL, '-6.03722222', 'Indoor', 'Haubané', NULL, NULL, '5.30305556', 'En service', NULL, 'RAP', NULL),
(20073, NULL, NULL, NULL, 'SIPILOU', 'IHS_BAF_007O', 'OCI0989', 'IHS', 'OCI', NULL, NULL, NULL, '-8.10288889', 'Outdoor', 'Haubané', NULL, NULL, '7.86236112', 'En service', NULL, 'VICTOIRE', NULL),
(20074, NULL, NULL, NULL, 'SIPOREX', 'IHS_LGN_311O', 'OCI0990', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07947223', 'Indoor', 'Haubané', NULL, NULL, '5.35236112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20075, NULL, NULL, NULL, 'SIRASSO', 'IHS_SVN_038O', 'OCI0991', 'IHS', 'OCI', NULL, NULL, NULL, '-6.09254168', 'Outdoor', 'Haubané', NULL, NULL, '9.27051667', 'En service', NULL, 'VICTOIRE', NULL),
(20076, NULL, NULL, NULL, 'SIRENE', 'IHS_LGN_639O', 'OCI0992', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94240000', 'Indoor', 'Autostable', NULL, NULL, '5.25198889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20077, NULL, NULL, NULL, 'SIRIHO', 'IHS_WRD_028O', 'OCI0993', 'IHS', 'OCI', NULL, NULL, NULL, '-6.04386112', 'Outdoor', 'Haubané', NULL, NULL, '8.40105556', 'En service', NULL, 'RAN 1000', NULL),
(20078, NULL, NULL, NULL, 'SITARAIL', 'MOOV_AC338', 'OCI0994', 'IHS', 'Moov', NULL, NULL, NULL, '-4.02594445', 'Outdoor', 'Autostable', NULL, NULL, '5.32866667', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(20079, NULL, NULL, NULL, 'SOCOCE', 'IHS_LGN_209O', 'OCI0995', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99886112', 'Indoor', 'MAT', NULL, NULL, '5.37159723', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20080, NULL, NULL, NULL, 'SODEFOR', 'IHS_LGN_124O', 'OCI0996', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99941667', 'Indoor', 'Autostable', NULL, NULL, '5.34877778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20081, NULL, NULL, NULL, 'SODIMA', 'IHS_HSD_006O', 'OCI0997', 'IHS', 'OCI', NULL, NULL, NULL, '-6.44355160', 'Indoor', 'Autostable', NULL, NULL, '6.85905149', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20082, NULL, NULL, NULL, 'SOGB', 'IHS_BSD_055O', 'OCI0999', 'IHS', 'OCI', NULL, NULL, NULL, '-7.09161112', 'Indoor', 'Haubané', NULL, NULL, '4.67938889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20083, NULL, NULL, NULL, 'SOGEFIHA', 'IHS_LGN_008O', 'OCI1000', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02341842', 'Indoor', 'Haubané', NULL, NULL, '5.32830616', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20084, NULL, NULL, NULL, 'SOKO', 'IHS_ZNZ_008O', 'OCI1001', 'IHS', 'OCI', NULL, NULL, NULL, '-2.74499444', 'Outdoor', 'Haubané', NULL, NULL, '7.99055000', 'En service', NULL, 'VICTOIRE', NULL),
(20085, NULL, NULL, NULL, 'SOKORA', 'IHS_NCE_005O', 'OCI1002', 'IHS', 'OCI', NULL, NULL, NULL, '-4.69813889', 'Outdoor', 'Autostable', NULL, NULL, '6.64141667', 'En service', NULL, 'RAP', NULL),
(20086, NULL, NULL, NULL, 'SOKOURALA', 'IHS_DHM_039O', 'OCI1003', 'IHS', 'OCI', NULL, NULL, NULL, '-7.75941667', 'Outdoor', 'Haubané', NULL, NULL, '7.84183333', 'En service', NULL, 'DENSIF 2010', NULL),
(20087, NULL, NULL, NULL, 'SOL_BENI', 'IHS_LGN_356O', 'OCI1004', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96027778', 'Indoor', 'Autostable', NULL, NULL, '5.32833333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20088, NULL, NULL, NULL, 'SOLEIL', 'IHS_LGN_415O', 'OCI1005', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97752778', 'Indoor', 'Haubané', NULL, NULL, '5.38652778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20089, NULL, NULL, NULL, 'SOLIBRA', 'IHS_LGN_225O', 'OCI1006', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99564017', 'Indoor', 'Haubané', NULL, NULL, '5.29891870', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20090, NULL, NULL, NULL, 'SOLOTE', 'IHS_MRH_037O', 'OCI1007', 'IHS', 'OCI', NULL, NULL, NULL, '-5.92197041', 'Indoor', 'Autostable', NULL, NULL, '6.61223923', 'En service', NULL, 'RAP', NULL),
(20091, NULL, NULL, NULL, 'SONACO', 'IHS_LGN_550O', 'OCI1008', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09866667', 'Indoor', 'Autostable', NULL, NULL, '5.38041667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20092, NULL, NULL, NULL, 'SONGAN', 'IHS_SCE_083O', 'OCI1009', 'IHS', 'OCI', NULL, NULL, NULL, '-3.20480278', 'Indoor', 'Haubané', NULL, NULL, '6.10716111', 'En service', NULL, 'RAP', NULL),
(20093, NULL, NULL, NULL, 'SONGON', 'IHS_LGN_679O', 'OCI1010', 'IHS', 'OCI', NULL, NULL, NULL, '-4.23227778', 'Indoor', 'Haubané', NULL, NULL, '5.32502778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20094, NULL, NULL, NULL, 'SONGON_MAIRIE', 'IHS_LGN_678O', 'OCI1011', 'IHS', 'Moov', NULL, NULL, NULL, '-4.18160000', 'Outdoor', 'Autostable', NULL, NULL, '5.33740000', 'En service', NULL, 'DENSIF 2010', NULL),
(20095, NULL, NULL, NULL, 'SOPIM', 'IHS_LAC_018O', 'OCI1012', 'IHS', 'OCI', NULL, NULL, NULL, '-5.27269444', 'Indoor', 'Autostable', NULL, NULL, '6.79263333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20096, NULL, NULL, NULL, 'SORBONNE', 'IHS_LGN_222O', 'OCI1013', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06536112', 'Indoor', 'Haubané', NULL, NULL, '5.35330556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(20097, NULL, NULL, NULL, 'SOROBANGO', 'Moov_025', 'OCI1014', 'IHS', 'Moov', NULL, NULL, NULL, '-2.70958333', 'Outdoor', 'Autostable', NULL, NULL, '8.17450000', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(20098, NULL, NULL, NULL, 'SOUBOUO', 'IHS_BSD_132O', 'OCI1015', 'IHS', 'OCI', NULL, NULL, NULL, '-6.60131667', 'Indoor', 'Autostable', NULL, NULL, '5.77752778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20099, NULL, NULL, NULL, 'SOUBRE', 'IHS_BSD_137O', 'OCI1016', 'IHS', 'OCI', NULL, NULL, NULL, '-6.59550000', 'Indoor', 'Haubané', NULL, NULL, '5.78460833', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20100, NULL, NULL, NULL, 'SOUNKALO', 'IHS_LGN_353O', 'OCI1017', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07621400', 'Outdoor', 'Haubané', NULL, NULL, '5.37252700', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20101, NULL, NULL, NULL, 'SOUSSABA', 'IHS_LGN_623O', 'OCI1018', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01330362', 'Outdoor', 'Autostable', NULL, NULL, '5.44344006', 'En service', NULL, 'RAN 1000', NULL),
(20102, NULL, NULL, NULL, 'ST_AMBROISE', 'IHS_LGN_407O', 'OCI1019', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98833333', 'Indoor', 'Haubané', NULL, NULL, '5.39500000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20103, NULL, NULL, NULL, 'ST_ANDRE', 'IHS_LGN_249O', 'OCI1020', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07350000', 'Indoor', 'Autostable', NULL, NULL, '5.34286111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20104, NULL, NULL, NULL, 'ST_AUGUSTIN', 'IHS_MRH_003O', 'OCI1021', 'IHS', 'OCI', NULL, NULL, NULL, '-5.74805556', 'Indoor', 'Autostable', NULL, NULL, '6.97833333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20105, NULL, NULL, NULL, 'ST_ELYSEE', 'IHS_LGN_278O', 'OCI1022', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97758334', 'Indoor', 'Autostable', NULL, NULL, '5.30652778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20106, NULL, NULL, NULL, 'ST_EXUPERY', 'IHS_LGN_661O', 'OCI1023', 'IHS', 'OCI', NULL, NULL, NULL, '-3.91222222', 'Indoor', 'Autostable', NULL, NULL, '5.24833333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20107, NULL, NULL, NULL, 'ST_HERMAN', 'IHS_LGN_350O', 'OCI1024', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08851112', 'Indoor', 'Autostable', NULL, NULL, '5.33498612', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20108, NULL, NULL, NULL, 'ST_JEAN', 'IHS_LGN_093O', 'OCI1025', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00116944', 'Indoor', 'Autostable', NULL, NULL, '5.33419444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20109, NULL, NULL, NULL, 'ST_JOSEPH', 'IHS_LGN_088O', 'OCI1026', 'IHS', 'OCI', NULL, NULL, NULL, '-4.03333333', 'Indoor', 'Haubané', NULL, NULL, '5.35361111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20110, NULL, NULL, NULL, 'ST_LAURANT', 'IHS_LGN_523O', 'OCI1027', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94433850', 'Indoor', 'Haubané', NULL, NULL, '5.30981731', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20111, NULL, NULL, NULL, 'ST_MATHIEU', 'IHS_LGN_608O', 'OCI1028', 'IHS', 'OCI', NULL, NULL, NULL, '-4.04611111', 'Indoor', 'Autostable', NULL, NULL, '5.43611111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20112, NULL, NULL, NULL, 'ST_VIATEUR', 'IHS_LGN_531O', 'OCI1029', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95556000', 'Indoor', 'Autostable', NULL, NULL, '5.38464000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20113, NULL, NULL, NULL, 'STAR', 'IHS_LGN_465O', 'OCI1031', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99152778', 'Indoor', 'Autostable', NULL, NULL, '5.40494444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20114, NULL, NULL, NULL, 'STBO', 'IHS_HSD_016O', 'OCI1032', 'IHS', 'OCI', NULL, NULL, NULL, '-6.47156095', 'Indoor', 'Autostable', NULL, NULL, '6.88778091', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20115, NULL, NULL, NULL, 'STE_ANNICK', 'IHS_LGN_574O', 'OCI1033', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02944444', 'Indoor', 'Autostable', NULL, NULL, '5.42694444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20116, NULL, NULL, NULL, 'STE_CECILE', 'IHS_LGN_247O', 'OCI1034', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99425833', 'Outdoor', 'Autostable', NULL, NULL, '5.37507500', 'En service', NULL, 'DENSIF 2010', NULL),
(20117, NULL, NULL, NULL, 'STE_FAMILLE', 'IHS_LGN_315O', 'OCI1035', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96833333', 'Indoor', 'Haubané', NULL, NULL, '5.35563889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20118, NULL, NULL, NULL, 'STE_MARIE', 'IHS_LGN_110O', 'OCI1036', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99805556', 'Indoor', 'Haubané', NULL, NULL, '5.33500000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20119, NULL, NULL, NULL, 'STE_MONIQUE', 'IHS_LGN_429O', 'OCI1037', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00113889', 'Outdoor', 'Haubané', NULL, NULL, '5.40441667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20120, NULL, NULL, NULL, 'STE-RITA', 'IHS_LGN_614O', 'OCI1038', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06027000', 'Indoor', 'Autostable', NULL, NULL, '5.43472000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20121, NULL, NULL, NULL, 'STIF', 'IHS_LGN_083O', 'OCI1039', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02072222', 'Indoor', 'MAT', NULL, NULL, '5.35536111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20122, NULL, NULL, NULL, 'STOKI', 'IHS_LGN_468O', 'OCI1040', 'IHS', 'OCI', NULL, NULL, NULL, '-4.10136112', 'Indoor', 'Haubané', NULL, NULL, '5.32894445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20123, NULL, NULL, NULL, 'SUBIAKRO', 'IHS_LAC_034O', 'OCI1041', 'IHS', 'OCI', NULL, NULL, NULL, '-5.26804197', 'Outdoor', 'Haubané', NULL, NULL, '6.70640583', 'En service', NULL, 'RAN 1000', NULL),
(20124, NULL, NULL, NULL, 'SUCAF_BOROTOU', 'IHS_BAF_018O', 'OCI1042', 'IHS', 'OCI', NULL, NULL, NULL, '-7.19052778', 'Outdoor', 'Haubané', NULL, NULL, '8.47247223', 'En service', NULL, 'RAP', NULL),
(20125, NULL, NULL, NULL, 'SUCAF_FERKE', 'IHS_SVN_024O', 'OCI1043', 'IHS', 'OCI', NULL, NULL, NULL, '-5.26862802', 'Outdoor', 'Haubané', NULL, NULL, '9.51667809', 'En service', NULL, 'RAP', NULL),
(20126, NULL, NULL, NULL, 'SUCAF_FERKE_2', 'IHS_SVN_111O', 'OCI1044', 'IHS', 'OCI', NULL, NULL, NULL, '-5.30694233', 'Outdoor', 'Autostable', NULL, NULL, '9.31277591', 'En service', NULL, 'RAP', NULL),
(20127, NULL, NULL, NULL, 'SUCRIVOIRE', 'IHS_MRH_058O', 'OCI1045', 'IHS', 'OCI', NULL, NULL, NULL, '-6.12727778', 'Indoor', 'Haubané', NULL, NULL, '7.60183333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20128, NULL, NULL, NULL, 'SYNINFO', 'IHS_LGN_400O', 'OCI1048', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96505556', 'Indoor', 'Autostable', NULL, NULL, '5.37144444', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20129, NULL, NULL, NULL, 'TAABO', 'IHS_LGN_782O', 'OCI1049', 'IHS', 'OCI', NULL, NULL, NULL, '-5.07158334', 'Indoor', 'Haubané', NULL, NULL, '6.27161112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20130, NULL, NULL, NULL, 'TABAGNE', 'IHS_ZNZ_017O', 'OCI1050', 'IHS', 'OCI', NULL, NULL, NULL, '-3.06530556', 'Indoor', 'Haubané', NULL, NULL, '7.98383334', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20131, NULL, NULL, NULL, 'TABOU', 'IHS_BSD_094O', 'OCI1051', 'IHS', 'OCI', NULL, NULL, NULL, '-7.35591667', 'Indoor', 'Haubané', NULL, NULL, '4.41805556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20132, NULL, NULL, NULL, 'TAFIRE', 'IHS_VDB_093O', 'OCI1052', 'IHS', 'OCI', NULL, NULL, NULL, '-5.17132223', 'Indoor', 'Haubané', NULL, NULL, '9.06685834', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20133, NULL, NULL, NULL, 'TAHIRAGUHE', 'IHS_HSD_023M', 'OCI1054', 'IHS', 'IHS', NULL, NULL, NULL, '-6.39805556', 'Outdoor', 'Haubané', NULL, NULL, '6.80250000', 'En service', NULL, 'SHARING MTN 2010', NULL),
(20134, NULL, NULL, NULL, 'TAI', 'IHS_MCY_049O', 'OCI1055', 'IHS', 'OCI', NULL, NULL, NULL, '-7.46944444', 'Outdoor', 'Haubané', NULL, NULL, '5.87944444', 'En service', NULL, 'VICTOIRE', NULL),
(20135, NULL, NULL, NULL, 'TAKIKRO', 'IHS_ZNZ_052O', 'OCI1056', 'IHS', 'OCI', NULL, NULL, NULL, '-2.95972500', 'Indoor', 'Haubané', NULL, NULL, '7.24110833', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20136, NULL, NULL, NULL, 'TAKORAGUI', 'IHS_BSD_128O', 'OCI1057', 'IHS', 'OCI', NULL, NULL, NULL, '-6.79672223', 'Outdoor', 'Haubané', NULL, NULL, '5.75888889', 'En service', NULL, 'RAN 1000', NULL),
(20137, NULL, NULL, NULL, 'TANDA', 'IHS_ZNZ_025O', 'OCI1058', 'IHS', 'OCI', NULL, NULL, NULL, '-3.17088889', 'Indoor', 'Haubané', NULL, NULL, '7.79650000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20138, NULL, NULL, NULL, 'TANGUELAN', 'IHS_MCE_041O', 'OCI1059', 'IHS', 'OCI', NULL, NULL, NULL, '-3.30055155', 'Indoor', 'Haubané', NULL, NULL, '7.15916580', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20139, NULL, NULL, NULL, 'TANKESSE', 'IHS_ZNZ_048O', 'OCI1060', 'IHS', 'OCI', NULL, NULL, NULL, '-3.20361112', 'Indoor', 'Autostable', NULL, NULL, '7.35055556', 'En service', NULL, 'RAP', NULL),
(20140, NULL, NULL, NULL, 'TAOUDI', 'IHS_ZNZ_037M', 'OCI1061', 'IHS', 'IHS', NULL, NULL, NULL, '-3.43297222', 'Outdoor', 'Haubané', NULL, NULL, '8.14275000', 'En service', NULL, 'DENSIF 2010', NULL),
(20141, NULL, NULL, NULL, 'TAUMAN', 'IHS_LGN_305O', 'OCI1062', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07918889', 'Indoor', 'Haubané', NULL, NULL, '5.31778056', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20142, NULL, NULL, NULL, 'TAZIBOUE', 'IHS_HSD_014O', 'OCI1063', 'IHS', 'OCI', NULL, NULL, NULL, '-6.43278311', 'Indoor', 'Autostable', NULL, NULL, '6.89194425', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20143, NULL, NULL, NULL, 'TCHEDJELE', 'IHS_FMG_017O', 'OCI1064', 'IHS', 'OCI', NULL, NULL, NULL, '-6.04427778', 'Outdoor', 'Haubané', NULL, NULL, '6.13163889', 'En service', NULL, 'RAN 1000', NULL),
(20144, NULL, NULL, NULL, 'TEAPLEU', 'IHS_DHM_050O', 'OCI1065', 'IHS', 'OCI', NULL, NULL, NULL, '-8.12771667', 'Outdoor', 'Haubané', NULL, NULL, '7.03186111', 'En service', NULL, 'RAN 1000', NULL),
(20145, NULL, NULL, NULL, 'TEGUERE', 'IHS_SVN_004O', 'OCI1066', 'IHS', 'OCI', NULL, NULL, NULL, '-5.64127542', 'Indoor', 'Autostable', NULL, NULL, '9.44319821', 'En service', NULL, 'RAP', NULL),
(20146, NULL, NULL, NULL, 'TEHIRI', 'IHS_FMG_041O', 'OCI1067', 'IHS', 'OCI', NULL, NULL, NULL, '-5.98194483', 'Outdoor', 'Haubané', NULL, NULL, '6.39666297', 'En service', NULL, 'RAP', NULL),
(20147, NULL, NULL, NULL, 'TENTOUO', 'IHS_DHM_048O', 'OCI1068', 'IHS', 'OCI', NULL, NULL, NULL, '-8.17297222', 'Outdoor', 'Haubané', NULL, NULL, '7.18494444', 'En service', NULL, 'DENSIF 2010', NULL),
(20148, NULL, NULL, NULL, 'TERMINUS', 'IHS_LGN_252O', 'OCI1069', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07405556', 'Indoor', 'Autostable', NULL, NULL, '5.32971667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20149, NULL, NULL, NULL, 'TERRAFRIC', 'IHS_LGN_482O', 'OCI1070', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94552778', 'Outdoor', 'Autostable', NULL, NULL, '5.34011112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20150, NULL, NULL, NULL, 'THANRY_SND', 'IHS_MCY_026O', 'OCI1071', 'IHS', 'OCI', NULL, NULL, NULL, '-7.24022223', 'Outdoor', 'Autostable', NULL, NULL, '6.74336112', 'En service', NULL, 'VICTOIRE', NULL),
(20151, NULL, NULL, NULL, 'THERESE', 'IHS_LAC_006O', 'OCI1072', 'IHS', 'OCI', NULL, NULL, NULL, '-5.27302778', 'Indoor', 'Autostable', NULL, NULL, '6.82677778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20152, NULL, NULL, NULL, 'TIAPOUM', 'IHS_SCE_053O', 'OCI1073', 'IHS', 'OCI', NULL, NULL, NULL, '-3.02033334', 'Indoor', 'Haubané', NULL, NULL, '5.13919445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20153, NULL, NULL, NULL, 'TIASSALE', 'IHS_LGN_767O', 'OCI1074', 'IHS', 'OCI', NULL, NULL, NULL, '-4.82259167', 'Indoor', 'Haubané', NULL, NULL, '5.90635834', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20154, NULL, NULL, NULL, 'TIAZALE', 'IHS_BSD_096O', 'OCI1075', 'IHS', 'OCI', NULL, NULL, NULL, '-5.96236111', 'Outdoor', 'Haubané', NULL, NULL, '5.20025000', 'En service', NULL, 'RAN 1000', NULL),
(20155, NULL, NULL, NULL, 'TIEBISSOU', 'IHS_LAC_058O', 'OCI1076', 'IHS', 'OCI', NULL, NULL, NULL, '-5.22658333', 'Indoor', 'Haubané', NULL, NULL, '7.14185556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20156, NULL, NULL, NULL, 'TIEBISSOU_2', 'IHS_LAC_059O', 'OCI1077', 'IHS', 'OCI', NULL, NULL, NULL, '-5.22566667', 'Outdoor', 'Autostable', NULL, NULL, '7.15819167', 'En service', NULL, 'DENSIF 2009', NULL),
(20157, NULL, NULL, NULL, 'TIEGBA', 'IHS_SBD_040O', 'OCI1078', 'IHS', 'OCI', NULL, NULL, NULL, '-5.14194074', 'Outdoor', 'Haubané', NULL, NULL, '5.60000047', 'En service', NULL, 'RAP', NULL),
(20158, NULL, NULL, NULL, 'TIEKPE', 'IHS_SVN_026O', 'OCI1079', 'IHS', 'OCI', NULL, NULL, NULL, '-5.30763889', 'Outdoor', 'Haubané', NULL, NULL, '9.66335833', 'En service', NULL, 'RAN 1000', NULL),
(20159, NULL, NULL, NULL, 'TIEME', 'RTI_010', 'OCI1080', 'IHS', 'RTI', NULL, NULL, NULL, '-7.28666356', 'Indoor', 'Haubané', NULL, NULL, '9.54861175', 'En service', NULL, 'VICTOIRE', NULL),
(20160, NULL, NULL, NULL, 'TIEMELEKRO', 'IHS_NCE_012O', 'OCI1081', 'IHS', 'OCI', NULL, NULL, NULL, '-4.61398889', 'Indoor', 'Haubané', NULL, NULL, '6.50209445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20161, NULL, NULL, NULL, 'TIENDIEKRO', 'IHS_LAC_090O', 'OCI1082', 'IHS', 'OCI', NULL, NULL, NULL, '-4.76852778', 'Outdoor', 'Haubané', NULL, NULL, '7.43388889', 'En service', NULL, 'RAN 1000', NULL),
(20162, NULL, NULL, NULL, 'TIENIGBE_BOBO', 'IHS_WRD_044O', 'OCI1083', 'IHS', 'OCI', NULL, NULL, NULL, '-5.78408333', 'Outdoor', 'Haubané', NULL, NULL, '8.45619444', 'En service', NULL, 'RAN 1000', NULL),
(20163, NULL, NULL, NULL, 'TIENINGBOUE', 'IHS_WRD_041O', 'OCI1084', 'IHS', 'OCI', NULL, NULL, NULL, '-5.72305658', 'Indoor', 'Haubané', NULL, NULL, '8.18221999', 'En service', NULL, 'RAP', NULL),
(20164, NULL, NULL, NULL, 'TIENKO', 'IHS_DNG_036O', 'OCI1085', 'IHS', 'OCI', NULL, NULL, NULL, '-7.47966667', 'Outdoor', 'Haubané', NULL, NULL, '10.23780556', 'En service', NULL, 'RAN 1000', NULL),
(20165, NULL, NULL, NULL, 'TIENKOUAKRO', 'IHS_ZNZ_055O', 'OCI1086', 'IHS', 'OCI', NULL, NULL, NULL, '-3.05863889', 'Outdoor', 'Haubané', NULL, NULL, '7.22047223', 'En service', NULL, 'RAN 1000', NULL),
(20166, NULL, NULL, NULL, 'TIENY_SIABLY', 'IHS_DHM_011O', 'OCI1087', 'IHS', 'OCI', NULL, NULL, NULL, '-7.44922222', 'Outdoor', 'Haubané', NULL, NULL, '7.37538889', 'En service', NULL, 'DENSIF 2010', NULL),
(20167, NULL, NULL, NULL, 'TIMBE', 'IHS_VDB_057O', 'OCI1088', 'IHS', 'OCI', NULL, NULL, NULL, '-4.94063789', 'Outdoor', 'Haubané', NULL, NULL, '8.17316955', 'En service', NULL, 'RAN 1000', NULL),
(20168, NULL, NULL, NULL, 'TINGRELA', 'IHS_SVN_087O', 'OCI1089', 'IHS', 'OCI', NULL, NULL, NULL, '-6.40777778', 'Indoor', 'Haubané', NULL, NULL, '10.48177778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20169, NULL, NULL, NULL, 'TIOBLY', 'IHS_MCY_057O', 'OCI1090', 'IHS', 'OCI', NULL, NULL, NULL, '-8.49993611', 'Outdoor', 'Haubané', NULL, NULL, '6.53656111', 'En service', NULL, 'RAN 1000', NULL),
(20170, NULL, NULL, NULL, 'TIPADIPA', 'IHS_FMG_018O', 'OCI1091', 'IHS', 'OCI', NULL, NULL, NULL, '-5.86057501', 'Outdoor', 'Haubané', NULL, NULL, '6.08960278', 'En service', NULL, 'RAN 1000', NULL),
(20171, NULL, NULL, NULL, 'TOLLAKRO', 'IHS_LGN_774O', 'OCI1092', 'IHS', 'OCI', NULL, NULL, NULL, '-4.94122222', 'Outdoor', 'Haubané', NULL, NULL, '5.90994444', 'En service', NULL, 'RAN 1000', NULL),
(20172, NULL, NULL, NULL, 'TOMBOKRO', 'IHS_LAC_050O', 'OCI1093', 'IHS', 'OCI', NULL, NULL, NULL, '-5.50183333', 'Indoor', 'Haubané', NULL, NULL, '6.92733333', 'En service', NULL, NULL, NULL),
(20173, NULL, NULL, NULL, 'TOMONO', 'IHS_WRD_023O', 'OCI1094', 'IHS', 'OCI', NULL, NULL, NULL, '-6.10357478', 'Outdoor', 'Haubané', NULL, NULL, '8.32545081', 'En service', NULL, 'RAN 1000', NULL),
(20174, NULL, NULL, NULL, 'TONGON', 'IHS_SVN_037O', 'OCI1095', 'IHS', 'OCI', NULL, NULL, NULL, '-5.70286112', 'Indoor', 'Haubané', NULL, NULL, '9.93669445', 'En service', NULL, 'RAN 1000', NULL),
(20175, NULL, NULL, NULL, 'TONHOULE', 'IHS_WRD_015O', 'OCI1096', 'IHS', 'OCI', NULL, NULL, NULL, '-6.19555556', 'Outdoor', 'Autostable', NULL, NULL, '8.07111111', 'En service', NULL, 'RAN 1000', NULL),
(20176, NULL, NULL, NULL, 'TONLA', 'IHS_FMG_063O', 'OCI1097', 'IHS', 'OCI', NULL, NULL, NULL, '-5.64446848', 'Indoor', 'Haubané', NULL, NULL, '6.35138498', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20177, NULL, NULL, NULL, 'TOROGUHE', 'IHS_HSD_020O', 'OCI1098', 'IHS', 'OCI', NULL, NULL, NULL, '-6.46316667', 'Indoor', 'Autostable', NULL, NULL, '6.94358333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20178, NULL, NULL, NULL, 'TORTIYA', 'IHS_VDB_090O', 'OCI1099', 'IHS', 'OCI', NULL, NULL, NULL, '-5.68344082', 'Indoor', 'Haubané', NULL, NULL, '8.77030841', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20179, NULL, NULL, NULL, 'TOSSINOU', 'IHS_LGN_513O', 'OCI1100', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94211103', 'Outdoor', 'Autostable', NULL, NULL, '5.32858071', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20180, NULL, NULL, NULL, 'TOUBA', 'IHS_BAF_001O', 'OCI1101', 'IHS', 'OCI', NULL, NULL, NULL, '-7.68702778', 'Indoor', 'Autostable', NULL, NULL, '8.28669445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20181, NULL, NULL, NULL, 'TOUBACO', 'IHS_BAF_003O', 'OCI1102', 'IHS', 'OCI', NULL, NULL, NULL, '-7.68169167', 'Outdoor', 'Autostable', NULL, NULL, '8.27538889', 'En service', NULL, 'RAN 1000', NULL),
(20182, NULL, NULL, NULL, 'TOUIH', 'RTI_011', 'OCI1103', 'IHS', 'RTI', NULL, NULL, NULL, '-6.51922222', 'Indoor', 'Autostable', NULL, NULL, '5.29883333', 'En service', NULL, 'RAP', NULL),
(20183, NULL, NULL, NULL, 'TOUKOUZOU', 'IHS_LGN_753O', 'OCI1104', 'IHS', 'OCI', NULL, NULL, NULL, '-4.79666667', 'Indoor', 'Autostable', NULL, NULL, '5.15550000', 'En service', NULL, 'VICTOIRE', NULL),
(20184, NULL, NULL, NULL, 'TOULEUPLEU', 'IHS_MCY_056O', 'OCI1105', 'IHS', 'OCI', NULL, NULL, NULL, '-8.40855556', 'Indoor', 'Haubané', NULL, NULL, '6.59244445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20185, NULL, NULL, NULL, 'TOUMODI', 'IHS_LAC_066O', 'OCI1106', 'IHS', 'OCI', NULL, NULL, NULL, '-5.01735833', 'Indoor', 'Haubané', NULL, NULL, '6.55480278', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20186, NULL, NULL, NULL, 'TOUMOKORO', 'IHS_SVN_074O', 'OCI1107', 'IHS', 'OCI', NULL, NULL, NULL, '-5.75838889', 'Outdoor', 'Haubané', NULL, NULL, '10.38877778', 'En service', NULL, 'ELEPHANT', NULL),
(20187, NULL, NULL, NULL, 'TOUNVRE', 'IHS_SVN_078O', 'OCI1108', 'IHS', 'OCI', NULL, NULL, NULL, '-6.50313889', 'Outdoor', 'Haubané', NULL, NULL, '9.90600000', 'En service', NULL, 'DENSIF 2010', NULL),
(20188, NULL, NULL, NULL, 'TOUPAH', 'IHS_LGN_734O', 'OCI1109', 'IHS', 'OCI', NULL, NULL, NULL, '-4.56127778', 'Indoor', 'Haubané', NULL, NULL, '5.31201111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20189, NULL, NULL, NULL, 'TRANSUA', 'IHS_ZNZ_032O', 'OCI1110', 'IHS', 'OCI', NULL, NULL, NULL, '-3.01161111', 'Outdoor', 'Autostable', NULL, NULL, '7.54680557', 'En service', NULL, 'RAP', NULL),
(20190, NULL, NULL, NULL, 'TREICHTL', 'IHS_LGN_155O', 'OCI1111', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00866000', 'Indoor', 'MAT', NULL, NULL, '5.30462000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20191, NULL, NULL, NULL, 'TT_RGE', 'IHS_LGN_165O', 'OCI1113', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05972223', 'Indoor', 'Haubané', NULL, NULL, '5.32963889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20192, NULL, NULL, NULL, 'UNICAFE', 'Moov_027', 'OCI1114', 'IHS', 'Moov', NULL, NULL, NULL, '-4.05522223', 'Outdoor', 'Haubané', NULL, NULL, '5.46447223', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(20193, NULL, NULL, NULL, 'UNILEVER', 'IHS_LGN_288O', 'OCI1115', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00444445', 'Indoor', 'Autostable', NULL, NULL, '5.28252778', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20194, NULL, NULL, NULL, 'UNIWAX', 'IHS_LGN_318O', 'OCI1116', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08006112', 'Indoor', 'Autostable', NULL, NULL, '5.36336667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20195, NULL, NULL, NULL, 'UTEXI', 'IHS_NCE_007O', 'OCI1117', 'IHS', 'OCI', NULL, NULL, NULL, '-4.73971944', 'Indoor', 'Autostable', NULL, NULL, '6.66221944', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20196, NULL, NULL, NULL, 'VAAFLA', 'IHS_HSD_096O', 'OCI1118', 'IHS', 'OCI', NULL, NULL, NULL, '-6.63882567', 'Outdoor', 'Haubané', NULL, NULL, '7.41107804', 'En service', NULL, 'RAN 1000', NULL),
(20197, NULL, NULL, NULL, 'VALY', 'IHS_VDB_065O', 'OCI1119', 'IHS', 'OCI', NULL, NULL, NULL, '-5.58311111', 'Outdoor', 'Autostable', NULL, NULL, '7.66736111', 'En service', NULL, 'RAN 1000', NULL),
(20198, NULL, NULL, NULL, 'VAOU', 'IHS_HSD_109O', 'OCI1120', 'IHS', 'OCI', NULL, NULL, NULL, '-6.98491667', 'Outdoor', 'Haubané', NULL, NULL, '7.43905556', 'En service', NULL, 'RAN 1000', NULL),
(20199, NULL, NULL, NULL, 'VAVOUA', 'IHS_HSD_083O', 'OCI1121', 'IHS', 'OCI', NULL, NULL, NULL, '-6.47588889', 'Indoor', 'Haubané', NULL, NULL, '7.38488889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20200, NULL, NULL, NULL, 'VEGAS', 'IHS_LGN_254M', 'OCI1122', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97647600', 'Outdoor', 'Autostable', NULL, NULL, '5.35194500', 'En service', NULL, 'DENSIF 2010', NULL),
(20201, NULL, NULL, NULL, 'VESOS', 'IHS_LGN_587O', 'OCI1124', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01785973', 'Indoor', 'Autostable', NULL, NULL, '5.43155618', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20202, NULL, NULL, NULL, 'VIRUS', 'IHS_LGN_142O', 'OCI1125', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00789072', 'Indoor', 'MAT', NULL, NULL, '5.30780834', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20203, NULL, NULL, NULL, 'VRIDI_CANAL', 'IHS_LGN_376O', 'OCI1126', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01794445', 'Indoor', 'Autostable', NULL, NULL, '5.26516667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20204, NULL, NULL, NULL, 'WACOUBOUE', 'IHS_LGN_246O', 'OCI1127', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07374736', 'Outdoor', 'Haubané', NULL, NULL, '5.33991555', 'En service', NULL, 'DENSIF 2009', NULL),
(20205, NULL, NULL, NULL, 'WANTOUE', 'IHS_LGN_498O', 'OCI1128', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01413919', 'Indoor', 'Haubané', NULL, NULL, '5.41414158', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20206, NULL, NULL, NULL, 'WASSAKARA_MICRO', 'IHS_LGN_226O', 'OCI1129', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06797501', 'Indoor', 'MAT', NULL, NULL, '5.34644445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20207, NULL, NULL, NULL, 'WATE', 'IHS_BSD_031O', 'OCI1130', 'IHS', 'OCI', NULL, NULL, NULL, '-6.77641667', 'Outdoor', 'Haubané', NULL, NULL, '4.93750000', 'En service', NULL, 'DENSIF 2010', NULL),
(20208, NULL, NULL, NULL, 'WILLIAMS', 'IHS_LGN_145O', 'OCI1131', 'IHS', 'OCI', NULL, NULL, NULL, '-4.02110898', 'Indoor', 'MAT', NULL, NULL, '5.36686023', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20209, NULL, NULL, NULL, 'WOBIN', 'IHS_LGN_517O', 'OCI1132', 'IHS', 'OCI', NULL, NULL, NULL, '-4.10666667', 'Outdoor', 'Haubané', NULL, NULL, '5.33556389', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20210, NULL, NULL, NULL, 'WONSEALY', 'IHS_BSD_184O', 'OCI1133', 'IHS', 'OCI', NULL, NULL, NULL, '-7.04041667', 'Outdoor', 'Haubané', NULL, NULL, '6.17735833', 'En service', NULL, 'VICTOIRE', NULL),
(20211, NULL, NULL, NULL, 'YABAYO', 'IHS_BSD_162O', 'OCI1134', 'IHS', 'OCI', NULL, NULL, NULL, '-6.60061111', 'Indoor', 'Haubané', NULL, NULL, '5.95233333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20212, NULL, NULL, NULL, 'YAKASSE_FEYASSE', 'RTI_013', 'OCI1135', 'IHS', 'RTI', NULL, NULL, NULL, '-3.39111157', 'Indoor', 'Autostable', NULL, NULL, '6.95639185', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20213, NULL, NULL, NULL, 'YAKASSE_ME', 'IHS_AGN_043O', 'OCI1136', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95447066', 'Indoor', 'Haubané', NULL, NULL, '5.80755119', 'En service', NULL, 'RAP', NULL),
(20214, NULL, NULL, NULL, 'YAKASSE_OTTOBROU_IHS', 'IHS_AGN_031M', 'OCI1137', 'IHS', 'IHS', NULL, NULL, NULL, '-3.65019445', 'Outdoor', 'Autostable', NULL, NULL, '6.18027778', 'En service', NULL, NULL, NULL),
(20215, NULL, NULL, NULL, 'YAKICE', 'IHS_LGN_483O', 'OCI1138', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96947186', 'Indoor', 'Autostable', NULL, NULL, '5.39108605', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20216, NULL, NULL, NULL, 'YAKOLIDABOUO', 'IHS_BSD_164O', 'OCI1139', 'IHS', 'OCI', NULL, NULL, NULL, '-6.51666885', 'Indoor', 'Autostable', NULL, NULL, '5.96278036', 'En service', NULL, 'RAP', NULL),
(20217, NULL, NULL, NULL, 'YAKRO', 'OCIT_Strat_18', 'OCI1140', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-5.25916357', 'Indoor', 'Tour', NULL, NULL, '6.84241397', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20218, NULL, NULL, NULL, 'YALE', 'IHS_LGN_344O', 'OCI1141', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08452778', 'Indoor', 'Haubané', NULL, NULL, '5.34544445', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20219, NULL, NULL, NULL, 'YAOKRO', 'IHS_NCE_072O', 'OCI1142', 'IHS', 'OCI', NULL, NULL, NULL, '-5.84413889', 'Outdoor', 'Haubané', NULL, NULL, '6.72505556', 'En service', NULL, 'RAN 1000', NULL),
(20220, NULL, NULL, NULL, 'YAOKRO_MBAHIAKRO', 'IHS_NCE_071O', 'OCI1143', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98966667', 'Outdoor', 'Haubané', NULL, NULL, '7.74625000', 'En service', NULL, 'DENSIF 2010', NULL),
(20221, NULL, NULL, NULL, 'YAOU_NEW', 'Moov', 'OCI1144', 'Moov', 'Moov', NULL, NULL, NULL, '-3.625769', 'Outdoor', 'Autostable', NULL, NULL, '5.2451', 'En service', NULL, NULL, NULL),
(20222, NULL, NULL, NULL, 'YAOU_BIANOUAN', 'Moov_029', 'OCI1145', 'IHS', 'Moov', NULL, NULL, NULL, '-3.14113889', 'Outdoor', 'Haubané', NULL, NULL, '5.80388889', 'En service', NULL, 'DENSIF 2010', NULL),
(20223, NULL, NULL, NULL, 'YEMI', 'IHS_LGN_534O', 'OCI1146', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00580650', 'Indoor', 'Autostable', NULL, NULL, '5.41822578', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20224, NULL, NULL, NULL, 'YOCOBOUE', 'IHS_SBD_070O', 'OCI1147', 'IHS', 'OCI', NULL, NULL, NULL, '-5.10333740', 'Outdoor', 'Autostable', NULL, NULL, '5.26694469', 'En service', NULL, 'RAP', NULL),
(20225, NULL, NULL, NULL, 'YOP_KOUTE', 'IHS_LGN_237O', 'OCI1148', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07122223', 'Indoor', 'Haubané', NULL, NULL, '5.32363889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20226, NULL, NULL, NULL, 'YOP_PMI', 'IHS_LGN_287O', 'OCI1149', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07986104', 'Indoor', 'MAT', NULL, NULL, '5.34241932', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20227, NULL, NULL, NULL, 'YOPLAIT', 'IHS_LGN_434O', 'OCI1150', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09017402', 'Indoor', 'Autostable', NULL, NULL, '5.36700323', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20228, NULL, NULL, NULL, 'YOPOHUE', 'IHS_FMG_049O', 'OCI1151', 'IHS', 'OCI', NULL, NULL, NULL, '-5.82942500', 'Indoor', 'Haubané', NULL, NULL, '6.39668333', 'En service', NULL, 'RAP', NULL),
(20229, NULL, NULL, NULL, 'YOROBODI', 'IHS_ZNZ_057M', 'OCI1152', 'IHS', 'IHS', NULL, NULL, NULL, '-3.68449722', 'Outdoor', 'Autostable', NULL, NULL, '8.11141667', 'En service', NULL, 'SHARING MTN 2010', NULL),
(20230, NULL, NULL, NULL, 'ZAGNE', 'IHS_MCY_028O', 'OCI1153', 'IHS', 'OCI', NULL, NULL, NULL, '-7.48890000', 'Outdoor', 'Haubané', NULL, NULL, '6.22472500', 'En service', NULL, 'RAP', NULL),
(20231, NULL, NULL, NULL, 'ZAGUIE', 'IHS_MRH_020O', 'OCI1154', 'IHS', 'OCI', NULL, NULL, NULL, '-6.03380278', 'Outdoor', 'Autostable', NULL, NULL, '6.93030556', 'En service', NULL, 'RAN 1000', NULL),
(20232, NULL, NULL, NULL, 'ZAGUINASSO', 'IHS_SVN_075O', 'OCI1155', 'IHS', 'OCI', NULL, NULL, NULL, '-6.36805556', 'Outdoor', 'Haubané', NULL, NULL, '10.05300278', 'En service', NULL, 'RAN 1000', NULL),
(20233, NULL, NULL, NULL, 'ZAHER', 'IHS_LAC_007O', 'OCI1156', 'IHS', 'OCI', NULL, NULL, NULL, '-5.26046944', 'Indoor', 'Haubané', NULL, NULL, '6.80866667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20234, NULL, NULL, NULL, 'ZAIBO', 'IHS_HSD_036O', 'OCI1157', 'IHS', 'OCI', NULL, NULL, NULL, '-6.66550001', 'Outdoor', 'Haubané', NULL, NULL, '6.98500000', 'En service', NULL, 'RAP', NULL),
(20235, NULL, NULL, NULL, 'ZAKUEOUA', 'IHS_BSD_186O', 'OCI1158', 'IHS', 'OCI', NULL, NULL, NULL, '-6.51480556', 'Outdoor', 'Haubané', NULL, NULL, '6.22822223', 'En service', NULL, 'VICTOIRE', NULL),
(20236, NULL, NULL, NULL, 'ZALIOHOUAN', 'IHS_HSD_034O', 'OCI1159', 'IHS', 'OCI', NULL, NULL, NULL, '-6.23805411', 'Indoor', 'Haubané', NULL, NULL, '6.79194039', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20237, NULL, NULL, NULL, 'ZAMBAKRO', 'IHS_LAC_038O', 'OCI1160', 'IHS', 'OCI', NULL, NULL, NULL, '-5.37779458', 'Indoor', 'Autostable', NULL, NULL, '6.73333580', 'En service', NULL, 'RAP', NULL),
(20238, NULL, NULL, NULL, 'ZAMBLA', 'IHS_MRH_049O', 'OCI1161', 'IHS', 'OCI', NULL, NULL, NULL, '-6.05621667', 'Outdoor', 'Autostable', NULL, NULL, '7.42994167', 'En service', NULL, 'RAN 1000', NULL),
(20239, NULL, NULL, NULL, 'ZANGUE', 'IHS_FMG_080O', 'OCI1162', 'IHS', 'OCI', NULL, NULL, NULL, '-5.35443889', 'Outdoor', 'Haubané', NULL, NULL, '6.42822222', 'En service', NULL, 'RAN 1000', NULL),
(20240, NULL, NULL, NULL, 'ZANZAN', 'IHS_ZNZ_005O', 'OCI1163', 'IHS', 'OCI', NULL, NULL, NULL, '-2.81450000', 'Indoor', 'Autostable', NULL, NULL, '8.05055556', 'En service', NULL, 'RAP', NULL),
(20241, NULL, NULL, NULL, 'ZARANOU', 'IHS_MCE_029O', 'OCI1164', 'IHS', 'OCI', NULL, NULL, NULL, '-3.35911112', 'Indoor', 'Haubané', NULL, NULL, '6.42825000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20242, NULL, NULL, NULL, 'ZAROKO', 'IHS_SBD_038O', 'OCI1165', 'IHS', 'OCI', NULL, NULL, NULL, '-5.29719444', 'Outdoor', 'Haubané', NULL, NULL, '6.13533333', 'En service', NULL, 'DENSIF 2010', NULL),
(20243, NULL, NULL, NULL, 'ZATTA', 'IHS_LAC_043O', 'OCI1166', 'IHS', 'OCI', NULL, NULL, NULL, '-5.40466667', 'Outdoor', 'Haubané', NULL, NULL, '6.88375000', 'En service', NULL, 'VICTOIRE', NULL),
(20244, NULL, NULL, NULL, 'ZEAGLO', 'IHS_MCY_030O', 'OCI1167', 'IHS', 'OCI', NULL, NULL, NULL, '-7.83546389', 'Outdoor', 'Haubané', NULL, NULL, '6.55153056', 'En service', NULL, 'RAN 1000', NULL),
(20245, NULL, NULL, NULL, 'ZEALE', 'IHS_DHM_053O', 'OCI1168', 'IHS', 'OCI', NULL, NULL, NULL, '-8.17671667', 'Outdoor', 'Haubané', NULL, NULL, '6.97835833', 'En service', NULL, 'RAN 1000', NULL),
(20246, NULL, NULL, NULL, 'ZEBIZEKOU', 'IHS_FMG_037O', 'OCI1169', 'IHS', 'OCI', NULL, NULL, NULL, '-5.93793889', 'Outdoor', 'Autostable', NULL, NULL, '6.34661111', 'En service', NULL, 'VICTOIRE', NULL),
(20247, NULL, NULL, NULL, 'ZEBRA', 'Moov_030', 'OCI1170', 'IHS', 'Moov', NULL, NULL, NULL, '-6.52522223', 'Outdoor', 'Haubané', NULL, NULL, '6.92355556', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(20248, NULL, NULL, NULL, 'ZEGBAN', 'IHS_SBD_074O', 'OCI1171', 'IHS', 'OCI', NULL, NULL, NULL, '-5.58905556', 'Outdoor', 'Haubané', NULL, NULL, '5.16555556', 'En service', NULL, 'DENSIF 2010', NULL),
(20249, NULL, NULL, NULL, 'ZEGO', 'IHS_SBD_052O', 'OCI1172', 'IHS', 'OCI', NULL, NULL, NULL, '-5.19182688', 'Outdoor', 'Haubané', NULL, NULL, '6.14186276', 'En service', NULL, 'RAN 1000', NULL),
(20250, NULL, NULL, NULL, 'ZEMENEFLA_B', 'IHS_MRH_040O', 'OCI1173', 'IHS', 'OCI', NULL, NULL, NULL, '-5.78241667', 'Outdoor', 'Haubané', NULL, NULL, '6.55230556', 'En service', NULL, 'RAN 1000', NULL),
(20251, NULL, NULL, NULL, 'ZENITH', 'IHS_NCE_053O', 'OCI1174', 'IHS', 'OCI', NULL, NULL, NULL, '-3.95838889', 'Indoor', 'Autostable', NULL, NULL, '7.05531111', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20252, NULL, NULL, NULL, 'ZEPHIR', 'IHS_LGN_473O', 'OCI1175', 'IHS', 'OCI', NULL, NULL, NULL, '-3.94678056', 'Indoor', 'Autostable', NULL, NULL, '5.33175000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20253, NULL, NULL, NULL, 'ZEPREGUHE', 'IHS_HSD_022O', 'OCI1176', 'IHS', 'OCI', NULL, NULL, NULL, '-6.37255591', 'Outdoor', 'Haubané', NULL, NULL, '6.90321956', 'En service', NULL, 'RAN 1000', NULL),
(20254, NULL, NULL, NULL, 'ZERGBEU', 'IHS_BSD_158O', 'OCI1177', 'IHS', 'OCI', NULL, NULL, NULL, '-6.59322223', 'Outdoor', 'Haubané', NULL, NULL, '5.89658334', 'En service', NULL, 'RAN 1000', NULL),
(20255, NULL, NULL, NULL, 'ZI', 'IHS_LGN_370O', 'OCI1178', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08138889', 'Indoor', 'Haubané', NULL, NULL, '5.37013889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20256, NULL, NULL, NULL, 'ZIANSIEUPLEU', 'IHS_DHM_049M', 'OCI1179', 'IHS', 'IHS', NULL, NULL, NULL, '-8.14083333', 'Outdoor', 'Haubané', NULL, NULL, '7.11336111', 'En service', NULL, 'SHARING MTN 2010', NULL),
(20257, NULL, NULL, NULL, 'ZIKI_DIES', 'IHS_DHM_047O', 'OCI1180', 'IHS', 'OCI', NULL, NULL, NULL, '-5.43961111', 'Outdoor', 'Haubané', NULL, NULL, '5.76636111', 'En service', NULL, 'ELEPHANT', NULL),
(20258, NULL, NULL, NULL, 'ZIKISSO', 'IHS_SBD_059O', 'OCI1181', 'IHS', 'OCI', NULL, NULL, NULL, '-5.70085556', 'Indoor', 'Haubané', NULL, NULL, '6.06805556', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20259, NULL, NULL, NULL, 'ZIZIESSOU', 'Moov_031', 'OCI1182', 'IHS', 'Moov', NULL, NULL, NULL, '-5.07455556', 'Outdoor', 'Haubané', NULL, NULL, '7.10100000', 'En service', NULL, 'SHARING MOOV 2010', NULL),
(20260, NULL, NULL, NULL, 'ZOHOA', 'IHS_FMG_045O', 'OCI1183', 'IHS', 'OCI', NULL, NULL, NULL, '-6.16155556', 'Outdoor', 'Haubané', NULL, NULL, '6.32147222', 'En service', NULL, 'RAN 1000', NULL),
(20261, NULL, NULL, NULL, 'ZOU', 'IHS_DHM_041O', 'OCI1185', 'IHS', 'OCI', NULL, NULL, NULL, '-7.80700000', 'Outdoor', 'Haubané', NULL, NULL, '6.97538889', 'En service', NULL, 'RAN 1000', NULL),
(20262, NULL, NULL, NULL, 'ZOUAN_HOUIN', 'IHS_DHM_056O', 'OCI1186', 'IHS', 'OCI', NULL, NULL, NULL, '-8.20516667', 'Indoor', 'Haubané', NULL, NULL, '6.92046945', 'En service', NULL, 'RAP', NULL),
(20263, NULL, NULL, NULL, 'ZOUGBANGBEU', 'IHS_HSD_046O', 'OCI1187', 'IHS', 'OCI', NULL, NULL, NULL, '-6.76922222', 'Outdoor', 'Haubané', NULL, NULL, '6.79705556', 'En service', NULL, 'RAN 1000', NULL),
(20264, NULL, NULL, NULL, 'ZOUGOUZOA', 'IHS_BSD_182O', 'OCI1188', 'IHS', 'OCI', NULL, NULL, NULL, '-6.58972223', 'Outdoor', 'Haubané', NULL, NULL, '6.20808334', 'En service', NULL, 'RAN 1000', NULL),
(20265, NULL, NULL, NULL, 'ZOUKOUGBEU', 'RTI_015', 'OCI1189', 'IHS', 'RTI', NULL, NULL, NULL, '-6.86569000', 'Indoor', 'Haubané', NULL, NULL, '6.76135000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20266, NULL, NULL, NULL, 'ZOUZOU', 'IHS_HSD_068O', 'OCI1190', 'IHS', 'OCI', NULL, NULL, NULL, '-6.28130556', 'Outdoor', 'Autostable', NULL, NULL, '6.48044445', 'En service', NULL, 'DENSIF 2009', NULL),
(20267, NULL, NULL, NULL, 'ZUBLIN', 'IHS_LGN_361O', 'OCI1191', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00316667', 'Indoor', 'Haubané', NULL, NULL, '5.39750000', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20268, NULL, NULL, NULL, 'ZUENOULA', 'IHS_MRH_048O', 'OCI1192', 'IHS', 'OCI', NULL, NULL, NULL, '-6.03966667', 'Indoor', 'Haubané', NULL, NULL, '7.42858333', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20269, NULL, NULL, NULL, 'PORT_BOUET_CIT', 'IHS_LGN_588O', 'OCI1193', 'IHS', 'OCI', NULL, NULL, NULL, '-3.96303889', 'Indoor', 'Autostable', NULL, NULL, '5.25900556', 'En service', NULL, 'DENSIF 2010', NULL),
(20270, NULL, NULL, NULL, 'STE_RUTH', 'IHS_LGN_183O', 'OCI1194', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05963889', 'Outdoor', 'Haubané', NULL, NULL, '5.35088889', 'En service', NULL, 'DENSIF 2010', NULL),
(20271, NULL, NULL, NULL, 'ABOISSO_COMOE', 'IHS_SCE_035O', 'OCI1196', 'IHS', 'OCI', NULL, NULL, NULL, '-3.39680556', 'Outdoor', 'Haubané', NULL, NULL, '5.73450000', 'En service', NULL, 'DENSIF 2010', NULL),
(20272, NULL, NULL, NULL, 'AGBAOU', 'IHS_SBD_034O', 'OCI1197', 'IHS', 'OCI', NULL, NULL, NULL, '-5.20781945', 'Outdoor', 'Haubané', NULL, NULL, '6.07905278', 'En service', NULL, 'DENSIF 2010', NULL),
(20273, NULL, NULL, NULL, 'AGBOSSOU', 'IHS_NCE_041O', 'OCI1198', 'IHS', 'OCI', NULL, NULL, NULL, '-4.07877778', 'Outdoor', 'Haubané', NULL, NULL, '6.85133333', 'En service', NULL, 'DENSIF 2010', NULL),
(20274, NULL, NULL, NULL, 'AMANGBEU', 'IHS_AGN_064O', 'OCI1199', 'IHS', 'OCI', NULL, NULL, NULL, '-4.36930556', 'Outdoor', 'Haubané', NULL, NULL, '6.01614444', 'En service', NULL, 'DENSIF 2010', NULL),
(20275, NULL, NULL, NULL, 'BIDIE', 'IHS_FMG_056O', 'OCI1200', 'IHS', 'OCI', NULL, NULL, NULL, '-5.62225000', 'Outdoor', 'Haubané', NULL, NULL, '6.18941667', 'En service', NULL, 'DENSIF 2010', NULL),
(20276, NULL, NULL, NULL, 'BLANKSON', 'IHS_LGN_654M', 'OCI1201', 'IHS', 'IHS', NULL, NULL, NULL, '-3.92011121', 'Outdoor', 'Autostable', NULL, NULL, '5.25013621', 'En service', NULL, 'DENSIF 2010', NULL),
(20277, NULL, NULL, NULL, 'BROKOUA', 'IHS_HSD_043O', 'OCI1202', 'IHS', 'OCI', NULL, NULL, NULL, '-6.54611111', 'Outdoor', 'Haubané', NULL, NULL, '6.57527778', 'En service', NULL, 'DENSIF 2010', NULL),
(20278, NULL, NULL, NULL, 'DIAMBA', 'IHS_ZNZ_035O', 'OCI1203', 'IHS', 'OCI', NULL, NULL, NULL, '-3.31452778', 'Outdoor', 'Haubané', NULL, NULL, '7.81316667', 'En service', NULL, 'DENSIF 2010', NULL),
(20279, NULL, NULL, NULL, 'DOKPODON', 'IHS_SBD_073O', 'OCI1204', 'IHS', 'OCI', NULL, NULL, NULL, '-5.46522222', 'Outdoor', 'Haubané', NULL, NULL, '5.19977778', 'En service', NULL, 'DENSIF 2010', NULL),
(20280, NULL, NULL, NULL, 'EHUIASSO', 'IHS_MCE_039O', 'OCI1205', 'IHS', 'OCI', NULL, NULL, NULL, '-3.44441667', 'Outdoor', 'Haubané', NULL, NULL, '6.32094444', 'En service', NULL, 'DENSIF 2010', NULL),
(20281, NULL, NULL, NULL, 'GBALAGOUA', 'IHS_HSD_024O', 'OCI1206', 'IHS', 'OCI', NULL, NULL, NULL, '-6.44808333', 'Outdoor', 'Haubané', NULL, NULL, '6.77088889', 'En service', NULL, 'DENSIF 2010', NULL),
(20282, NULL, NULL, NULL, 'GOBAZRA', 'IHS_MRH_015O', 'OCI1207', 'IHS', 'OCI', NULL, NULL, NULL, '-5.96897223', 'Outdoor', 'Haubané', NULL, NULL, '6.95188889', 'En service', NULL, 'DENSIF 2010', NULL),
(20283, NULL, NULL, NULL, 'GUIMEYO', 'IHS_BSD_154O', 'OCI1208', 'IHS', 'OCI', NULL, NULL, NULL, '-6.31586112', 'Outdoor', 'Haubané', NULL, NULL, '5.83272223', 'En service', NULL, 'DENSIF 2010', NULL),
(20284, NULL, NULL, NULL, 'IGUELA', 'IHS_ZNZ_034O', 'OCI1209', 'IHS', 'OCI', NULL, NULL, NULL, '-3.22625000', 'Outdoor', 'Haubané', NULL, NULL, '7.72900000', 'En service', NULL, 'DENSIF 2010', NULL),
(20285, NULL, NULL, NULL, 'KOROBO', 'IHS_ZNZ_026O', 'OCI1210', 'IHS', 'OCI', NULL, NULL, NULL, '-3.10413889', 'Outdoor', 'Haubané', NULL, NULL, '7.71608333', 'En service', NULL, 'DENSIF 2010', NULL),
(20286, NULL, NULL, NULL, 'KOUADIOBILEKRO', 'IHS_NCE_030O', 'OCI1211', 'IHS', 'OCI', NULL, NULL, NULL, '-4.32047222', 'Outdoor', 'Haubané', NULL, NULL, '6.94102778', 'En service', NULL, 'DENSIF 2010', NULL),
(20287, NULL, NULL, NULL, 'MINFLA', 'IHS_MRH_055O', 'OCI1212', 'IHS', 'OCI', NULL, NULL, NULL, '-6.04966667', 'Outdoor', 'Haubané', NULL, NULL, '7.53102778', 'En service', NULL, 'DENSIF 2010', NULL),
(20288, NULL, NULL, NULL, 'NERO_BROUSSE', 'IHS_BSD_034O', 'OCI1213', 'IHS', 'OCI', NULL, NULL, NULL, '-6.92386389', 'Outdoor', 'Haubané', NULL, NULL, '4.82472222', 'En service', NULL, NULL, NULL),
(20289, NULL, NULL, NULL, 'SIETINFLA', 'IHS_MRH_010O', 'OCI1214', 'IHS', 'OCI', NULL, NULL, NULL, '-5.73452778', 'Outdoor', 'Haubané', NULL, NULL, '6.82125000', 'En service', NULL, 'DENSIF 2010', NULL),
(20290, NULL, NULL, NULL, 'TAKISALEKRO', 'IHS_LAC_069O', 'OCI1215', 'IHS', 'OCI', NULL, NULL, NULL, '-5.26775000', 'Outdoor', 'Haubané', NULL, NULL, '7.22658056', 'En service', NULL, 'DENSIF 2010', NULL),
(20291, NULL, NULL, NULL, 'TIEDIO', 'IHS_ZNZ_029O', 'OCI1216', 'IHS', 'OCI', NULL, NULL, NULL, '-3.27311111', 'Outdoor', 'Haubané', NULL, NULL, '7.88013889', 'En service', NULL, 'DENSIF 2010', NULL),
(20292, NULL, NULL, NULL, 'YOHOUDA', 'IHS_FMG_073O', 'OCI1217', 'IHS', 'OCI', NULL, NULL, NULL, '-5.55786111', 'Outdoor', 'Haubané', NULL, NULL, '6.49172222', 'En service', NULL, 'DENSIF 2010', NULL),
(20293, NULL, NULL, NULL, 'AMANVI', 'IHS_MRH_013O', 'OCI1218', 'IHS', 'OCI', NULL, NULL, NULL, '-3.13447222', 'Outdoor', 'Haubané', NULL, NULL, '7.96255556', 'En service', NULL, 'DENSIF 2010', NULL),
(20294, NULL, NULL, NULL, 'BABOKON', 'IHS_SBD_041O', 'OCI1219', 'IHS', 'OCI', NULL, NULL, NULL, '-5.29536111', 'Outdoor', 'Haubané', NULL, NULL, '5.51975000', 'En service', NULL, 'DENSIF 2010', NULL),
(20295, NULL, NULL, NULL, 'BAKANOU', 'IHS_LGN_742O', 'OCI1220', 'IHS', 'OCI', NULL, NULL, NULL, '-4.63716667', 'Outdoor', 'Haubané', NULL, NULL, '5.59444444', 'En service', NULL, 'DENSIF 2010', NULL),
(20296, NULL, NULL, NULL, 'BOAHIA', 'IHS_ZNZ_054O', 'OCI1221', 'IHS', 'OCI', NULL, NULL, NULL, '-3.51705556', 'Outdoor', 'Haubané', NULL, NULL, '7.57763889', 'En service', NULL, 'DENSIF 2010', NULL),
(20297, NULL, NULL, NULL, 'DEBRIMOU', 'IHS_LGN_720M', 'OCI1222', 'IHS', 'IHS', NULL, NULL, NULL, '-4.38958300', 'Outdoor', 'Haubané', NULL, NULL, '5.37048300', 'En service', NULL, 'DENSIF 2010', NULL),
(20298, NULL, NULL, NULL, 'KONDROBO', 'IHS_VDB_063O', 'OCI1223', 'IHS', 'RTI', NULL, NULL, NULL, '-4.63172222', 'Outdoor', 'Haubané', NULL, NULL, '7.47886111', 'En service', NULL, 'DENSIF 2010', NULL),
(20299, NULL, NULL, NULL, 'MOLONOU-BLE', 'IHS_LAC_085O', 'OCI1224', 'IHS', 'OCI', NULL, NULL, NULL, '-4.98977778', 'Outdoor', 'Haubané', NULL, NULL, '7.40761112', 'En service', NULL, 'DENSIF 2010', NULL),
(20300, NULL, NULL, NULL, 'NIEKY_BONJOUR', 'IHS_LGN_680O', 'OCI1225', 'IHS', 'OCI', NULL, NULL, NULL, '-4.25333334', 'Outdoor', 'Haubané', NULL, NULL, '5.41327778', 'En service', NULL, 'DENSIF 2010', NULL),
(20301, NULL, NULL, NULL, 'TRIANIKRO', 'IHS_NCE_013O', 'OCI1226', 'IHS', 'OCI', NULL, NULL, NULL, '-4.80991667', 'Outdoor', 'Haubané', NULL, NULL, '6.85138889', 'En service', NULL, 'DENSIF 2010', NULL),
(20302, NULL, NULL, NULL, 'ZANZANSOU', 'IHS_NCE_063O', 'OCI1227', 'IHS', 'OCI', NULL, NULL, NULL, '-3.87661111', 'Outdoor', 'Haubané', NULL, NULL, '7.36930556', 'En service', NULL, 'DENSIF 2010', NULL),
(20303, NULL, NULL, NULL, 'ASSA', 'IHS_LGN_324O', 'OCI1228', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08289233', 'Outdoor', 'Haubané', NULL, NULL, '5.32135738', 'En service', NULL, 'DENSIF 2010', NULL),
(20304, NULL, NULL, NULL, 'ASSOMPTION', 'IHS_LGN_160O', 'OCI1229', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05871959', 'Outdoor', 'Autostable', NULL, NULL, '5.33838590', 'En service', NULL, 'DENSIF 2010', NULL),
(20305, NULL, NULL, NULL, 'BOZI', 'IHS_MRH_016O', 'OCI1230', 'IHS', 'OCI', NULL, NULL, NULL, '-5.53611111', 'Outdoor', 'Haubané', NULL, NULL, '6.91447222', 'En service', NULL, 'DENSIF 2010', NULL),
(20306, NULL, NULL, NULL, 'EBATHE', 'IHS_LGN_270O', 'OCI1232', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98197700', 'Outdoor', 'Haubané', NULL, NULL, '5.30384304', 'En service', NULL, 'DENSIF 2010', NULL),
(20307, NULL, NULL, NULL, 'AEROPORT_MAN', 'MAN001', 'OCI1233', 'Esco', 'OCI', NULL, NULL, NULL, '-7.59352778', 'Outdoor', 'Autostable', NULL, NULL, '7.27338056', 'En service', NULL, NULL, NULL),
(20308, NULL, NULL, NULL, 'ORCHIDEE', 'IHS_LGN_321O', 'OCI1236', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08396945', 'Outdoor', 'Haubané', NULL, NULL, '5.33905556', 'En service', NULL, 'DENSIF 2010', NULL),
(20309, NULL, NULL, NULL, 'PORT_BOUET_2', 'IHS_LGN_358O', 'OCI1237', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08762778', 'Outdoor', 'Haubané', NULL, NULL, '5.35018889', 'En service', NULL, 'DENSIF 2010', NULL),
(20310, NULL, NULL, NULL, 'SOUNGASSOU', 'IHS_NCE_008O', 'OCI1238', 'IHS', 'OCI', NULL, NULL, NULL, '-4.62444445', 'Outdoor', 'Haubané', NULL, NULL, '6.63005556', 'En service', NULL, 'DENSIF 2010', NULL),
(20311, NULL, NULL, NULL, 'ADVENTIS', 'IHS_LGN_514O', 'OCI1239', 'IHS', 'OCI', NULL, NULL, NULL, '-4.10538900', 'Outdoor', 'Haubané', NULL, NULL, '5.32216700', 'En service', NULL, 'DENSIF 2010', NULL),
(20312, NULL, NULL, NULL, 'BALAYO_BAYOTA', 'IHS_FMG_054O', 'OCI1240', 'IHS', 'OCI', NULL, NULL, NULL, '-6.00763889', 'Outdoor', 'Haubané', NULL, NULL, '6.43582500', 'En service', NULL, 'DENSIF 2010', NULL),
(20313, NULL, NULL, NULL, 'BANDAKAGNI', 'IHS_ZNZ_027O', 'OCI1241', 'IHS', 'OCI', NULL, NULL, NULL, '-3.62719444', 'Indoor', 'Haubané', NULL, NULL, '8.11361111', 'En service', NULL, 'DENSIF 2010', NULL),
(20314, NULL, NULL, NULL, 'BAONFLA', 'IHS_MRH_021O', 'OCI1242', 'IHS', 'OCI', NULL, NULL, NULL, '-5.49688889', 'Outdoor', 'Haubané', NULL, NULL, '6.83013889', 'En service', NULL, 'DENSIF 2010', NULL),
(20315, NULL, NULL, NULL, 'BEZIAKA', 'IHS_MRH_054O', 'OCI1243', 'IHS', 'OCI', NULL, NULL, NULL, '-6.14422222', 'Outdoor', 'Haubané', NULL, NULL, '7.45166667', 'En service', NULL, 'DENSIF 2010', NULL),
(20316, NULL, NULL, NULL, 'DOBRE', 'IHS_BSD_106O', 'OCI1244', 'IHS', 'OCI', NULL, NULL, NULL, '-6.33419445', 'Outdoor', 'Haubané', NULL, NULL, '5.55977778', 'En service', NULL, 'DENSIF 2010', NULL),
(20317, NULL, NULL, NULL, 'FISHMEAT', 'Moov_010', 'OCI1245', 'IHS', 'Moov', NULL, NULL, NULL, '-4.00516100', 'Outdoor', 'Autostable', NULL, NULL, '5.28795900', 'En service', NULL, 'DENSIF 2010', NULL),
(20318, NULL, NULL, NULL, 'GUILEHIRI', 'IHS_SBD_014O', 'OCI1246', 'IHS', 'OCI', NULL, NULL, NULL, '-5.30841667', 'Outdoor', 'Haubané', NULL, NULL, '5.74730556', 'En service', NULL, 'DENSIF 2010', NULL),
(20319, NULL, NULL, NULL, 'MOLONOU', 'IHS_LAC_065O', 'OCI1247', 'IHS', 'OCI', NULL, NULL, NULL, '-5.36539722', 'Outdoor', 'Haubané', NULL, NULL, '7.16415833', 'En service', NULL, 'DENSIF 2010', NULL),
(20320, NULL, NULL, NULL, 'NANGBO_DONGBO', 'IHS_ZNZ_047O', 'OCI1248', 'IHS', 'OCI', NULL, NULL, NULL, '-3.58822222', 'Outdoor', 'Haubané', NULL, NULL, '7.88658333', 'En service', NULL, 'DENSIF 2010', NULL),
(20321, NULL, NULL, NULL, 'PISSEKOU', 'IHS_FMG_034O', 'OCI1249', 'IHS', 'OCI', NULL, NULL, NULL, '-5.82255556', 'Outdoor', 'Haubané', NULL, NULL, '6.28869444', 'En service', NULL, 'DENSIF 2010', NULL),
(20322, NULL, NULL, NULL, 'VOUEBOUFLA', 'IHS_MRH_057O', 'OCI1251', 'IHS', 'OCI', NULL, NULL, NULL, '-5.94961111', 'Outdoor', 'Haubané', NULL, NULL, '7.62436111', 'En service', NULL, 'DENSIF 2010', NULL),
(20323, NULL, NULL, NULL, 'ZOZOKOI', 'IHS_LGN_783O', 'OCI1252', 'IHS', 'OCI', NULL, NULL, NULL, '-4.05109400', 'Outdoor', 'Haubané', NULL, NULL, '5.48469300', 'En service', NULL, 'DENSIF 2010', NULL),
(20324, NULL, NULL, NULL, 'AKANDJE', 'IHS_LGN_671O', 'OCI1253', 'IHS', 'OCI', NULL, NULL, NULL, '-3.89841667', 'Outdoor', 'Haubané', NULL, NULL, '5.41525000', 'En service', NULL, 'DENSIF 2010', NULL),
(20325, NULL, NULL, NULL, 'COCOTERAIE', 'IHS_SCE_084O', 'OCI1254', 'IHS', 'OCI', NULL, NULL, NULL, '-3.77516667', 'Outdoor', 'Autostable', NULL, NULL, '5.21455556', 'En service', NULL, 'DENSIF 2010', NULL),
(20326, NULL, NULL, NULL, 'DATTA', 'IHS_SBD_015O', 'OCI1255', 'IHS', 'OCI', NULL, NULL, NULL, '-5.32255556', 'Outdoor', 'Haubané', NULL, NULL, '5.93375000', 'En service', NULL, 'DENSIF 2010', NULL),
(20327, NULL, NULL, NULL, 'DJAPADJI', 'IHS_BSD_066O', 'OCI1256', 'IHS', 'OCI', NULL, NULL, NULL, '-6.81844444', 'Outdoor', 'Haubané', NULL, NULL, '5.29619444', 'En service', NULL, 'DENSIF 2010', NULL),
(20328, NULL, NULL, NULL, 'KASSASSOU', 'IHS_LGN_765O', 'OCI1257', 'IHS', 'OCI', NULL, NULL, NULL, '-4.76722222', 'Outdoor', 'Haubané', NULL, NULL, '5.97072222', 'En service', NULL, 'DENSIF 2010', NULL),
(20329, NULL, NULL, NULL, 'LIBELLULE', 'IHS_LGN_366O', 'OCI1258', 'IHS', 'OCI', NULL, NULL, NULL, '-4.08975278', 'Outdoor', 'Haubané', NULL, NULL, '5.34422778', 'En service', NULL, 'DENSIF 2010', NULL),
(20330, NULL, NULL, NULL, 'TONGON_VILLAGE', 'IHS_SVN_036O', 'OCI1261', 'IHS', 'OCI', NULL, NULL, NULL, '-5.72697223', 'Outdoor', 'Haubané', NULL, NULL, '9.90616667', 'En service', NULL, 'DENSIF 2010', NULL),
(20331, NULL, NULL, NULL, 'TOROSSANGUEHI', 'IHS_ZNZ_023O', 'OCI1262', 'IHS', 'OCI', NULL, NULL, NULL, '-3.11494444', 'Outdoor', 'Haubané', NULL, NULL, '8.30758333', 'En service', NULL, 'DENSIF 2010', NULL),
(20332, NULL, NULL, NULL, 'BELLECOTE', 'ABJ008', 'OCI1263', 'Esco', 'OCI', NULL, NULL, NULL, '-3.96938889', 'Outdoor', 'autostable', NULL, NULL, '5.38711111', 'En service', NULL, 'DENSIF 2010', NULL),
(20333, NULL, NULL, NULL, 'AGENCE_OCIT_BKE', 'IHS_VDB_003O', 'OCI1264', 'IHS', 'OCI', NULL, NULL, NULL, '-5.03060834', 'Outdoor', 'Autostable', NULL, NULL, '7.68386667', 'En service', NULL, 'DENSIF 2010', NULL),
(20334, NULL, NULL, NULL, 'WOUKOLO', 'Moov_028', 'OCI1265', 'IHS', 'Moov', NULL, NULL, NULL, '-5.10925000', 'Outdoor', 'Haubané', NULL, NULL, '5.27530556', 'En service', NULL, 'DENSIF 2010', NULL),
(20335, NULL, NULL, NULL, 'HOTEL_PARLEMENTAIRE', 'YAM023', 'OCI1267', 'Esco', 'OCI', NULL, NULL, NULL, '-5.23278400', 'Outdoor', 'autostable', NULL, NULL, '6.81157800', 'En service', NULL, 'DENSIF 2010', NULL),
(20336, NULL, NULL, NULL, 'MICRO_ID_FONDATION', 'OCI_Indoor_016', 'OCI1269', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-5.26483056', 'Outdoor', 'MAT', NULL, NULL, '6.79648333', 'En service', NULL, 'DENSIF 2010', NULL),
(20337, NULL, NULL, NULL, 'TOUMODI_CORRIDOR', 'RTI_012', 'OCI1273', 'IHS', 'RTI', NULL, NULL, NULL, '-5.03347222', 'Indoor', 'Haubané', NULL, NULL, '6.54763889', 'En service', NULL, 'DENSIF 2011', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(20338, NULL, NULL, NULL, 'AHOKOI', 'OCI_Tiers_001', 'OCI1274', 'IHS', 'Particulier', NULL, NULL, NULL, '-3.74572222', 'Indoor', 'Haubané', NULL, NULL, '6.14883333', 'En service', NULL, 'DENSIF 2011', NULL),
(20339, NULL, NULL, NULL, 'DGI_MICRO', 'OCI_Indoor_004', 'OCI1275', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.02318888888889', 'Outdoor', 'MAT', NULL, NULL, '5.33495555555556', 'En service', NULL, 'DENSIF 2011', NULL),
(20340, NULL, NULL, NULL, 'ELOKATE', 'IHS_LGN_702O', 'OCI1276', 'IHS', 'OCI', NULL, NULL, NULL, '-3.75011111', 'Outdoor', 'Haubané', NULL, NULL, '5.29491667', 'En service', NULL, 'DENSIF 2011', NULL),
(20341, NULL, NULL, NULL, 'MICRO_IBIS_PLATEAU', 'OCI_Indoor_010', 'OCI1277', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.02297778', 'Indoor', 'MAT', NULL, NULL, '5.32662222', 'En service', NULL, 'MICRO BTS 2010', NULL),
(20342, NULL, NULL, NULL, 'SOKORODOUGOU', 'IHS_DNG_022O', 'OCI1279', 'IHS', 'RTI', NULL, NULL, NULL, '-7.55338889', 'Outdoor', 'Haubané', NULL, NULL, '9.03197222', 'En service', NULL, 'DENSIF 2011', NULL),
(20343, NULL, NULL, NULL, 'ZAALA', 'RTI_014', 'OCI1280', 'IHS', 'RTI', NULL, NULL, NULL, '-7.61579167', 'Outdoor', 'Haubané', NULL, NULL, '8.22440278', 'En service', NULL, 'DENSIF 2011', NULL),
(20344, NULL, NULL, NULL, 'SAHA_DMC', 'to be defined', 'OCI1281', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-3.97847778', 'Outdoor', 'Haubané', NULL, NULL, '5.29401112', 'En service', NULL, 'PLASMA (222)', NULL),
(20345, NULL, NULL, NULL, 'SIEMENS', 'IHS_LGN_212O', 'OCI1282', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00755556', 'Outdoor', 'Autostable', NULL, NULL, '5.29352778', 'En service', NULL, 'DENSIF 2011', NULL),
(20346, NULL, NULL, NULL, 'BEOUE_LAYAN', 'IHS_MCY_035O', 'OCI1283', 'IHS', 'OCI', NULL, NULL, NULL, '-7.88622222', 'Indoor', 'Haubané', NULL, NULL, '6.54183333', 'En service', NULL, 'DENSIF 2011', NULL),
(20347, NULL, NULL, NULL, 'KONGOTI', 'IHS_NCE_060O', 'OCI1284', 'IHS', 'OCI', NULL, NULL, NULL, '-3.89333333', 'Outdoor', 'Haubané', NULL, NULL, '7.17322222', 'En service', NULL, 'DENSIF 2011', NULL),
(20348, NULL, NULL, NULL, 'BOKALA', 'IHS_VDB_076O', 'OCI1285', 'IHS', 'OCI', NULL, NULL, NULL, '-4.57294444', 'Indoor', 'Haubané', NULL, NULL, '8.40802778', 'En service', NULL, 'DENSIF 2011', NULL),
(20349, NULL, NULL, NULL, 'SAHABO', 'IHS_LAC_035O', 'OCI1286', 'IHS', 'OCI', NULL, NULL, NULL, '-5.38503889', 'Outdoor', 'Haubané', NULL, NULL, '6.84565833', 'En service', NULL, 'DENSIF 2011', NULL),
(20350, NULL, NULL, NULL, 'ZIMBABWE', 'IHS_BSD_012O', 'OCI1288', 'IHS', 'OCI', NULL, NULL, NULL, '-6.66678400', 'Outdoor', 'Haubané', NULL, NULL, '4.76036400', 'En service', NULL, 'DENSIF 2011', NULL),
(20351, NULL, NULL, NULL, 'BABEL', 'IHS_LGN_105O', 'OCI1293', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00201112', 'Outdoor', 'MAT', NULL, NULL, '5.32291389', 'En service', NULL, 'PLASMA (75)', NULL),
(20352, NULL, NULL, NULL, 'PC_DABOU', 'IHS_LGN_713O', 'OCI1294', 'IHS', 'OCI', NULL, NULL, NULL, '-4.36908333', 'Outdoor', 'Autostable', NULL, NULL, '5.32741667', 'En service', NULL, 'PLASMA (75)', NULL),
(20353, NULL, NULL, NULL, 'WINNER', 'IHS_LGN_594O', 'OCI1295', 'IHS', 'OCI', NULL, NULL, NULL, '-3.92938889', 'Outdoor', 'Haubané', NULL, NULL, '5.36256667', 'En service', NULL, 'PLASMA (75)', NULL),
(20354, NULL, NULL, NULL, 'ANNEPE', 'IHS_AGN_027O', 'OCI1296', 'IHS', 'OCI', NULL, NULL, NULL, '-3.76850000', 'Outdoor', 'Haubané', NULL, NULL, '5.90158333', 'En service', NULL, 'DENSIF 2012', NULL),
(20355, NULL, NULL, NULL, 'BAMORO_BAOULE', 'IHS_VDB_032O', 'OCI1297', 'IHS', 'OCI', NULL, NULL, NULL, '-5.04036112', 'Outdoor', 'Haubané', NULL, NULL, '7.83086112', 'En service', NULL, 'DENSIF 2012', NULL),
(20356, NULL, NULL, NULL, 'GUIENDE', 'IHS_ZNZ_079O', 'OCI1298', 'IHS', 'OCI', NULL, NULL, NULL, '-3.09413611', 'Outdoor', 'Haubané', NULL, NULL, '7.85600000', 'En service', NULL, 'DENSIF 2012', NULL),
(20357, NULL, NULL, NULL, 'KAVIESSOU', 'Moov_013', 'OCI1299', 'IHS', 'Moov', NULL, NULL, NULL, '-5.63800000', 'Outdoor', 'Autostable', NULL, NULL, '6.92694444', 'En service', NULL, 'DENSIF 2012', NULL),
(20358, NULL, NULL, NULL, 'KONI', 'IHS_SVN_015M', 'OCI1300', 'IHS', 'IHS', NULL, NULL, NULL, '-5.68825000', 'Outdoor', 'Haubané', NULL, NULL, '9.59030556', 'En service', NULL, 'DENSIF 2012', NULL),
(20359, NULL, NULL, NULL, 'KOSSIHOUEN', 'IHS_LGN_710O', 'OCI1301', 'IHS', 'OCI', NULL, NULL, NULL, '-4.28077778', 'Outdoor', 'Haubané', NULL, NULL, '5.52825000', 'En service', NULL, 'DENSIF 2012', NULL),
(20360, NULL, NULL, NULL, 'AEROPORT_YAKRO', 'IHS_LAC_036O', 'OCI1302', 'IHS', 'OCI', NULL, NULL, NULL, '-5.35450000', 'Outdoor', 'Autostable', NULL, NULL, '6.90297222', 'En service', NULL, 'DENSIF 2012', NULL),
(20361, NULL, NULL, NULL, 'AHEREMOU_ADJEKRO', 'Moov_001', 'OCI1303', 'IHS', 'Moov', NULL, NULL, NULL, '-4.93308333', 'Outdoor', 'Haubané', NULL, NULL, '6.21813889', 'En service', NULL, 'DENSIF 2012', NULL),
(20362, NULL, NULL, NULL, 'CANELLE', 'IHS_BSD_020M', 'OCI1304', 'IHS', 'IHS', NULL, NULL, NULL, '-6.62975278', 'Outdoor', 'Autostable', NULL, NULL, '4.73127223', 'En service', NULL, 'DENSIF 2012', NULL),
(20363, NULL, NULL, NULL, 'FALLONE', 'IHS_LGN_392O', 'OCI1305', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09180556', 'Outdoor', 'Haubané', NULL, NULL, '5.33992778', 'En service', NULL, 'DENSIF 2012', NULL),
(20364, NULL, NULL, NULL, 'MBRIMBO', 'IHS_LAC_087O', 'OCI1307', 'IHS', 'OCI', NULL, NULL, NULL, '-4.85533333', 'Outdoor', 'Haubané', NULL, NULL, '6.04500000', 'En service', NULL, 'DENSIF 2012', NULL),
(20365, NULL, NULL, NULL, 'MICRO_ID_ALPHA2000', 'OCI_Indoor_011', 'OCI1308', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.01923', 'Outdoor', 'MAT', NULL, NULL, '5.323326', 'En service', NULL, 'DENSIF 2012', NULL),
(20366, NULL, NULL, NULL, 'NAFOUN', 'IHS_SVN_092O', 'OCI1309', 'IHS', 'OCI', NULL, NULL, NULL, '-6.21150000', 'Outdoor', 'Haubané', NULL, NULL, '9.33619444', 'En service', NULL, 'DENSIF 2012', NULL),
(20367, NULL, NULL, NULL, 'NDA', 'Moov_020', 'OCI1310', 'IHS', 'Moov', NULL, NULL, NULL, '-4.05038889', 'Outdoor', 'Autostable', NULL, NULL, '5.49941667', 'En service', NULL, 'DENSIF 2012', NULL),
(20368, NULL, NULL, NULL, 'PACOBO', 'IHS_LGN_779O', 'OCI1311', 'IHS', 'OCI', NULL, NULL, NULL, '-4.94127778', 'Outdoor', 'Haubané', NULL, NULL, '6.17163889', 'En service', NULL, 'DENSIF 2012', NULL),
(20369, NULL, NULL, NULL, 'PK_65', 'IHS_LGN_736O', 'OCI1312', 'IHS', 'OCI', NULL, NULL, NULL, '-4.44297222', 'Outdoor', 'autostable', NULL, NULL, '5.62361111', 'En service', NULL, 'DENSIF 2012', NULL),
(20370, NULL, NULL, NULL, 'RAN_AGBOVILLE', 'IHS_AGN_052O', 'OCI1313', 'IHS', 'OCI', NULL, NULL, NULL, '-4.20936667', 'Outdoor', 'Autostable', NULL, NULL, '5.91671944', 'En service', NULL, 'DENSIF 2012', NULL),
(20371, NULL, NULL, NULL, 'REUSSITE', 'IHS_SCE_012O', 'OCI1314', 'IHS', 'OCI', NULL, NULL, NULL, '-3.03569444', 'Outdoor', 'Autostable', NULL, NULL, '5.41291667', 'En service', NULL, 'DENSIF 2012', NULL),
(20372, NULL, NULL, NULL, 'SOKOURA_CIT', 'IHS_VDB_005O', 'OCI1315', 'IHS', 'OCI', NULL, NULL, NULL, '-5.01755556', 'Outdoor', 'Autostable', NULL, NULL, '7.69666667', 'En service', NULL, 'DENSIF 2012', NULL),
(20373, NULL, NULL, NULL, 'TCHELEKRO', 'Moov_026', 'OCI1316', 'IHS', 'Moov', NULL, NULL, NULL, '-5.09296667', 'Outdoor', 'Autostable', NULL, NULL, '7.68373889', 'En service', NULL, 'DENSIF 2012', NULL),
(20374, NULL, NULL, NULL, 'DIALOGUE_EXT', 'IHS_SBD_005M', 'OCI1318', 'IHS', 'IHS', NULL, NULL, NULL, '-5.36213889', 'Outdoor', 'Autostable', NULL, NULL, '5.81680556', 'En service', NULL, 'DENSIF 2013', NULL),
(20375, NULL, NULL, NULL, 'ASSABOU', 'IHS_LAC_011O', 'OCI1319', 'IHS', 'OCI', NULL, NULL, NULL, '-5.26130833', 'Outdoor', 'Haubané', NULL, NULL, '6.82999167', 'En service', NULL, 'DENSIF 2013', NULL),
(20376, NULL, NULL, NULL, 'COLAS', 'IHS_BSD_019O', 'OCI1320', 'IHS', 'OCI', NULL, NULL, NULL, '-6.66975000', 'Outdoor', 'Autostable', NULL, NULL, '4.78244444', 'En service', NULL, 'DENSIF 2013', NULL),
(20377, NULL, NULL, NULL, 'GBAKALEKPA', 'IHS_BSD_147O', 'OCI1321', 'IHS', 'OCI', NULL, NULL, NULL, '-6.59372222', 'Outdoor', 'Autostable', NULL, NULL, '5.79850000', 'En service', NULL, 'DENSIF 2013', NULL),
(20378, NULL, NULL, NULL, 'IDEC', 'IHS_SBD_011O', 'OCI1322', 'IHS', 'OCI', NULL, NULL, NULL, '-5.39308333', 'Outdoor', 'Autostable', NULL, NULL, '5.83258333', 'En service', NULL, 'DENSIF 2013', NULL),
(20379, NULL, NULL, NULL, 'KANOUKRO', 'IHS_VDB_036O', 'OCI1328', 'IHS', 'OCI', NULL, NULL, NULL, '-4.98741667', 'Outdoor', 'Haubané', NULL, NULL, '7.51525000', 'En service', NULL, 'DENSIF 2013', NULL),
(20380, NULL, NULL, NULL, 'LIBREVILLE', 'IHS_DHM_006O', 'OCI1329', 'IHS', 'OCI', NULL, NULL, NULL, '-7.55499444', 'Outdoor', 'Autostable', NULL, NULL, '7.41851944', 'En service', NULL, 'DENSIF 2013', NULL),
(20381, NULL, NULL, NULL, 'MEGVIE', 'IHS_LGN_360O', 'OCI1330', 'IHS', 'OCI', NULL, NULL, NULL, '-3.99858333', 'Outdoor', 'Autostable', NULL, NULL, '5.39522222', 'En service', NULL, 'DENSIF 2013', NULL),
(20382, NULL, NULL, NULL, 'NAMASSI', 'IHS_ZNZ_038M', 'OCI1331', 'IHS', 'IHS', NULL, NULL, NULL, '-3.43727500', 'Outdoor', 'Haubané', NULL, NULL, '7.94968333', 'En service', NULL, 'DENSIF 2013', NULL),
(20383, NULL, NULL, NULL, 'OHINENE', 'IHS_LGN_202O', 'OCI1332', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98966667', 'Outdoor', 'Haubané', NULL, NULL, '5.35858333', 'En service', NULL, 'DENSIF 2013', NULL),
(20384, NULL, NULL, NULL, 'SONOUKO', 'IHS_BSD_014O', 'OCI1333', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64461600', 'Outdoor', 'Autostable', NULL, NULL, '4.73594200', 'En service', NULL, 'DENSIF 2013', NULL),
(20385, NULL, NULL, NULL, 'TALLA', 'IHS_WRD_012M', 'OCI1334', 'IHS', 'IHS', NULL, NULL, NULL, '-7.01175000', 'Outdoor', 'Autostable', NULL, NULL, '7.88725000', 'En service', NULL, 'DENSIF 2013', NULL),
(20386, NULL, NULL, NULL, 'VATICAN_DIVO', 'IHS_SBD_080O', 'OCI1335', 'IHS', 'OCI', NULL, NULL, NULL, '-5.35169445', 'Outdoor', 'Autostable', NULL, NULL, '5.85277778', 'En service', NULL, 'DENSIF 2013', NULL),
(20387, NULL, NULL, NULL, 'AKOIKRO', 'IHS_MCE_011O', 'OCI1336', 'IHS', 'OCI', NULL, NULL, NULL, '-3.50898611', 'Outdoor', 'Autostable', NULL, NULL, '6.75912222', 'En service', NULL, 'DENSIF 2013', NULL),
(20388, NULL, NULL, NULL, 'DEBETE', 'IHS_SVN_090O', 'OCI1337', 'IHS', 'OCI', NULL, NULL, NULL, '-6.64685556', 'Outdoor', 'Haubané', NULL, NULL, '10.61659444', 'En service', NULL, 'DENSIF 2013', NULL),
(20389, NULL, NULL, NULL, 'DEKO', 'IHS_BSD_052O', 'OCI1338', 'IHS', 'OCI', NULL, NULL, NULL, '-7.08055556', 'Outdoor', 'Autostable', NULL, NULL, '4.67180556', 'En service', NULL, 'Densif 2013', NULL),
(20390, NULL, NULL, NULL, 'FADIADOUGOU', 'IHS_WRD_025M', 'OCI1339', 'IHS', 'IHS', NULL, NULL, NULL, '-6.61543889', 'Outdoor', 'Haubané', NULL, NULL, '8.70133333', 'En service', NULL, 'DENSIF 2013', NULL),
(20391, NULL, NULL, NULL, 'GALLEA', 'IHS_BSD_127O', 'OCI1340', 'IHS', 'OCI', NULL, NULL, NULL, '-6.62325000', 'Outdoor', 'Autostable', NULL, NULL, '5.76675000', 'En service', NULL, 'DENSIF 2013', NULL),
(20392, NULL, NULL, NULL, 'KANOROBA', 'IHS_SVN_049M', 'OCI1341', 'IHS', 'IHS', NULL, NULL, NULL, '-6.12072222', 'Outdoor', 'Haubané', NULL, NULL, '9.10988889', 'En service', NULL, 'DENSIF 2013', NULL),
(20393, NULL, NULL, NULL, 'KOUASSI_NIANGUINI', 'IHS_ZNZ_039M', 'OCI1342', 'IHS', 'IHS', NULL, NULL, NULL, '-3.03656667', 'Outdoor', 'Haubané', NULL, NULL, '7.38059167', 'En service', NULL, 'DENSIF 2013', NULL),
(20394, NULL, NULL, NULL, 'MORONOU', 'Moov_017', 'OCI1344', 'IHS', 'Moov', NULL, NULL, NULL, '-4.97105556', 'Outdoor', 'Haubané', NULL, NULL, '6.31691667', 'En service', NULL, 'DENSIF 2013', NULL),
(20395, NULL, NULL, NULL, 'NDAKRO', 'IHS_LGN_784O', 'OCI1345', 'IHS', 'OCI', NULL, NULL, NULL, '-4.72797222', 'Outdoor', 'Haubané', NULL, NULL, '5.94919444', 'En service', NULL, 'DENSIF 2013', NULL),
(20396, NULL, NULL, NULL, 'OCIT_SAN_PEDRO', 'OCI', 'OCI1346', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-6.63294445', 'Outdoor', 'autostable', NULL, NULL, '4.73729167', 'En service', NULL, 'DENSIF 2013', NULL),
(20397, NULL, NULL, NULL, 'POSTE_TIASSALE', 'IHS_LGN_785O', 'OCI1347', 'IHS', 'OCI', NULL, NULL, NULL, '-4.82794444', 'Outdoor', 'Autostable', NULL, NULL, '5.89330556', 'En service', NULL, 'DENSIF 2013', NULL),
(20398, NULL, NULL, NULL, 'SIANA', 'IHS_WRD_005M', 'OCI1348', 'IHS', 'IHS', NULL, NULL, NULL, '-6.55550000', 'Outdoor', 'Haubané', NULL, NULL, '8.05633333', 'En service', NULL, 'DENSIF 2013', NULL),
(20399, NULL, NULL, NULL, 'TEHINI', 'IHS_ZNZ_070O', 'OCI1350', 'IHS', 'RTI', NULL, NULL, NULL, '-3.66672222', 'Outdoor', 'Haubané', NULL, NULL, '9.61505557', 'En service', NULL, 'DENSIF 2013', NULL),
(20400, NULL, NULL, NULL, 'TOUMODI_SAKASSOU', 'IHS_VDB_068M', 'OCI1351', 'IHS', 'IHS', NULL, NULL, NULL, '-5.56932778', 'Outdoor', 'Haubané', NULL, NULL, '7.40185000', 'En service', NULL, 'DENSIF 2013', NULL),
(20401, NULL, NULL, NULL, 'DIALAKORO', 'IHS_WRD_036M', 'OCI1354', 'IHS', 'IHS', NULL, NULL, NULL, '-5.84733333', 'Outdoor', 'Autostable', NULL, NULL, '8.19163889', 'En service', NULL, 'DENSIF 2013', NULL),
(20402, NULL, NULL, NULL, 'GBELEBAN', 'IHS_DNG_023M', 'OCI1355', 'IHS', 'OCI', NULL, NULL, NULL, '-8.11091667', 'Outdoor', 'Haubané', NULL, NULL, '9.58050000', 'En service', NULL, 'DENSIF 2013', NULL),
(20403, NULL, NULL, NULL, 'NIAMAZRA', 'IHS_LGN_755O', 'OCI1356', 'IHS', 'OCI', NULL, NULL, NULL, '-4.65008333', 'Outdoor', 'Haubané', NULL, NULL, '5.88294444', 'En service', NULL, 'DENSIF 2013', NULL),
(20404, NULL, NULL, NULL, 'SAMANGO', 'IHS_DNG_007O', 'OCI1357', 'IHS', 'OCI', NULL, NULL, NULL, '-7.73284722', 'Outdoor', 'Haubané', NULL, NULL, '9.65881111', 'En service', NULL, 'DENSIF 2013', NULL),
(20405, NULL, NULL, NULL, 'SEYDOUGOU', 'IHS_DNG_017O', 'OCI1358', 'IHS', 'OCI', NULL, NULL, NULL, '-7.98038056', 'Outdoor', 'Haubané', NULL, NULL, '9.51042222', 'En service', NULL, 'DENSIF 2013', NULL),
(20406, NULL, NULL, NULL, 'TOGONIERE', 'IHS_SVN_044O', 'OCI1359', 'IHS', 'OCI', NULL, NULL, NULL, '-5.05536111', 'Outdoor', 'Haubané', NULL, NULL, '9.48791667', 'En service', NULL, 'DENSIF 2013', NULL),
(20407, NULL, NULL, NULL, 'EPHRATA', 'IHS_LGN_626O', 'OCI1360', 'IHS', 'OCI', NULL, NULL, NULL, '-3.92257222', 'Outdoor', 'Haubané', NULL, NULL, '5.37240278', 'En service', NULL, 'DENSIF 2013', NULL),
(20408, NULL, NULL, NULL, 'HYDROFISH', 'IHS_LGN_662O', 'OCI1361', 'IHS', 'OCI', NULL, NULL, NULL, '-3.88222222', 'Outdoor', 'Autostable', NULL, NULL, '5.33502779', 'En service', NULL, 'DENSIF 2013', NULL),
(20409, NULL, NULL, NULL, 'KAVI', 'IHS_LGN_750O', 'OCI1362', 'IHS', 'OCI', NULL, NULL, NULL, '-4.58341667', 'Outdoor', 'Haubané', NULL, NULL, '5.81147222', 'En service', NULL, 'DENSIF 2013', NULL),
(20410, NULL, NULL, NULL, 'KROGBA', 'IHS_LGN_700O', 'OCI1363', 'IHS', 'OCI', NULL, NULL, NULL, '-4.24102778', 'Outdoor', 'Haubané', NULL, NULL, '5.50566667', 'En service', NULL, 'DENSIF 2013', NULL),
(20411, NULL, NULL, NULL, 'MICRO_ID_ARABIE_SAOU', 'OCI_indoor', 'OCI1364', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.01051944', 'Indoor', NULL, NULL, NULL, '5.33083889', 'En service', NULL, NULL, NULL),
(20412, NULL, NULL, NULL, 'PRONANI', 'IHS_MRH_033O', 'OCI1367', 'IHS', 'OCI', NULL, NULL, NULL, '-5.90252778', 'Outdoor', 'Autostable', NULL, NULL, '6.61330556', 'En service', NULL, 'DENSIF 2013', NULL),
(20413, NULL, NULL, NULL, 'AIP', 'IHS_LGN_035O', 'OCI1368', 'IHS', 'OCI', NULL, NULL, NULL, '-4.01566667', 'Outdoor', 'Haubané', NULL, NULL, '5.32447223', 'En service', NULL, 'PLASMA (75)', NULL),
(20414, NULL, NULL, NULL, 'MICRO_FONDATION_BATIMENT', 'OCI_Indoor_008', 'OCI1369', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-5.26484444', 'Outdoor', 'MAT', NULL, NULL, '6.79733611', 'En service', NULL, 'DENSIF 2013', NULL),
(20415, NULL, NULL, NULL, 'MICRO_ID_HARMONIE', 'OCI_Indoor_018', 'OCI1370', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.023335', 'Outdoor', 'MAT', NULL, NULL, '5.330085', 'En service', NULL, 'DENSIF 2013', NULL),
(20416, NULL, NULL, NULL, 'AFFOTOBO', 'IHS_VDB_049O', 'OCI1371', 'IHS', 'OCI', NULL, NULL, NULL, '-5.46106111', 'Outdoor', 'Haubané', NULL, NULL, '7.67076944', 'En service', NULL, 'DENSIF 2013', NULL),
(20417, NULL, NULL, NULL, 'ANIKRO', 'IHS_LAC_049O', 'OCI1372', 'IHS', 'OCI', NULL, NULL, NULL, '-5.11019445', 'Outdoor', 'Haubané', NULL, NULL, '6.62688889', 'En service', NULL, 'DENSIF 2013', NULL),
(20418, NULL, NULL, NULL, 'CATHEDRALE', 'IHS_LGN_011M', 'OCI1373', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01861111', 'Outdoor', 'Autostable', NULL, NULL, '5.32980556', 'En service', NULL, 'DENSIF 2013', NULL),
(20419, NULL, NULL, NULL, 'DALOA_AGENCE', 'OCIT_Strat_08', 'OCI1374', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-6.44588889', 'Outdoor', 'autostable', NULL, NULL, '6.88100000', 'En service', NULL, 'DENSIF 2013', NULL),
(20420, NULL, NULL, NULL, 'KATIOLA_CIT', 'IHS_VDB_052O', 'OCI1375', 'IHS', 'OCI', NULL, NULL, NULL, '-5.09929444', 'Outdoor', 'Autostable', NULL, NULL, '8.14161667', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20421, NULL, NULL, NULL, 'KLOTOU', 'IHS_BSD_069O', 'OCI1376', 'IHS', 'OCI', NULL, NULL, NULL, '-7.18730556', 'Indoor', 'Haubané', NULL, NULL, '4.55586111', 'En service', NULL, 'DENSIF 2013', NULL),
(20422, NULL, NULL, NULL, 'KONGODEKRO', 'IHS_VDB_031O', 'OCI1377', 'IHS', 'OCI', NULL, NULL, NULL, '-5.03662500', 'Outdoor', 'Haubané', NULL, NULL, '7.62815278', 'En service', NULL, 'DENSIF 2013', NULL),
(20423, NULL, NULL, NULL, 'OLAM', 'IHS_VDB_030O', 'OCI1378', 'IHS', 'OCI', NULL, NULL, NULL, '-4.96950000', 'Outdoor', 'Autostable', NULL, NULL, '7.69823056', 'En service', NULL, 'DENSIF 2013', NULL),
(20424, NULL, NULL, NULL, 'PRIKRO_IHS', 'IHS_NCE_070M', 'OCI1379', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99941667', 'Outdoor', 'Autostable', NULL, NULL, '7.65011111', 'En service', NULL, 'IHS 2013', NULL),
(20425, NULL, NULL, NULL, 'SNTRA', 'OCI_Tiers_003', 'OCI1380', 'IHS', 'Particulier', NULL, NULL, NULL, '-3.93438889', 'Outdoor', 'Haubané', NULL, NULL, '6.46541667', 'En service', NULL, 'DENSIF 2013', NULL),
(20426, NULL, NULL, NULL, 'KOKRENOU_MAIRIE', 'IHS_LAC_091O', 'OCI1384', 'IHS', 'OCI', NULL, NULL, NULL, '-5.27403056', 'Outdoor', 'Autostable', NULL, NULL, '6.76631112', 'En service', NULL, 'IHS 2013', NULL),
(20427, NULL, NULL, NULL, 'PALETUVIER', 'IHS_LGN_227O', 'OCI1390', 'IHS', 'OCI', NULL, NULL, NULL, '-3.97954389', 'Outdoor', 'Autostable', NULL, NULL, '5.32885806', 'En service', NULL, 'PLASMA (75) 2013', NULL),
(20428, NULL, NULL, NULL, 'CHR_DIMBOKRO', 'IHS_NCE_004M', 'OCI1391', 'IHS', 'IHS', NULL, NULL, NULL, '-4.69961112', 'Outdoor', 'Autostable', NULL, NULL, '6.65583334', 'En service', NULL, 'DENSIF 2013', NULL),
(20429, NULL, NULL, NULL, 'DALOA_SOLEIL', 'IHS_HSD_008M', 'OCI1392', 'IHS', 'IHS', NULL, NULL, NULL, '-6.46233334', 'Outdoor', 'Autostable', NULL, NULL, '6.88277778', 'En service', NULL, 'DENSIF 2013', NULL),
(20430, NULL, NULL, NULL, 'MAN_RESID', 'IHS_DHM_102M', 'OCI1393', 'IHS', 'IHS', NULL, NULL, NULL, '-7.56166668', 'Outdoor', 'Autostable', NULL, NULL, '7.41516667', 'En service', NULL, 'DENSIF 2013', NULL),
(20431, NULL, NULL, NULL, 'SIKENSI_MARCHE', 'IHS_LGN_747M', 'OCI1394', 'IHS', 'IHS', NULL, NULL, NULL, '-4.57527500', 'Outdoor', 'Autostable', NULL, NULL, '5.67237778', 'En service', NULL, 'DENSIF 2013', NULL),
(20432, NULL, NULL, NULL, 'BOUHITAFLA', 'IHS_HSD_079M', 'OCI1395', 'IHS', 'IHS', NULL, NULL, NULL, '-6.46144445', 'Outdoor', 'Haubané', NULL, NULL, '7.37594445', 'En service', NULL, 'DENSIF 2013', NULL),
(20433, NULL, NULL, NULL, 'BROFODOUME', 'IHS_LGN_689M', 'OCI1396', 'IHS', 'IHS', NULL, NULL, NULL, '-3.92680556', 'Outdoor', 'Haubané', NULL, NULL, '5.50875000', 'En service', NULL, 'DENSIF 2013', NULL),
(20434, NULL, NULL, NULL, '147_LOGEMENTS', 'IHS_LGN_542M', 'OCI1397', 'IHS', 'IHS', NULL, NULL, NULL, '-3.94153056', 'Outdoor', 'Autostable', NULL, NULL, '5.30797501', 'En service', NULL, 'DENSIF 2013', NULL),
(20435, NULL, NULL, NULL, 'ASSOUINDE', 'IHS_SCE_057M', 'OCI1398', 'IHS', 'IHS', NULL, NULL, NULL, '-3.46255556', 'Outdoor', 'Autostable', NULL, NULL, '5.15980556', 'En service', NULL, 'DENSIF 2013', NULL),
(20436, NULL, NULL, NULL, 'FEREDOUGOU', 'IHS_DNG_018M', 'OCI1399', 'IHS', 'IHS', NULL, NULL, NULL, '-7.73547778', 'Outdoor', 'Haubané', NULL, NULL, '9.83828056', 'En service', NULL, 'DENSIF 2013', NULL),
(20437, NULL, NULL, NULL, 'GUIGLO_RESIDENTIEL', 'IHS_MCY_003M', 'OCI1400', 'IHS', 'IHS', NULL, NULL, NULL, '-7.49380500', 'Outdoor', 'Autostable', NULL, NULL, '6.54213888', 'En service', NULL, 'DENSIF 2013', NULL),
(20438, NULL, NULL, NULL, 'HAOUSSABOUGOU', 'IHS_SVN_006M', 'OCI1401', 'IHS', 'IHS', NULL, NULL, NULL, '-5.63917501', 'Outdoor', 'Autostable', NULL, NULL, '9.47746945', 'En service', NULL, 'DENSIF 2013', NULL),
(20439, NULL, NULL, NULL, 'KOBLATA', 'IHS_MRH_005M', 'OCI1402', 'IHS', 'IHS', NULL, NULL, NULL, '-5.73769445', 'Outdoor', 'Autostable', NULL, NULL, '6.98355556', 'En service', NULL, 'DENSIF 2013', NULL),
(20440, NULL, NULL, NULL, 'LYCEE_TECHNIQUE', 'IHS_LGN_054M', 'OCI1403', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01098612', 'Outdoor', 'Autostable', NULL, NULL, '5.34448612', 'En service', NULL, 'DENSIF 2013', NULL),
(20441, NULL, NULL, NULL, 'NIANGBO', 'IHS_VDB_088M', 'OCI1404', 'IHS', 'IHS', NULL, NULL, NULL, '-5.18405556', 'Outdoor', 'Autostable', NULL, NULL, '8.81461112', 'En service', NULL, 'DENSIF 2013', NULL),
(20442, NULL, NULL, NULL, 'SATIKRAN', 'IHS_MCE_026M', 'OCI1405', 'IHS', 'IHS', NULL, NULL, NULL, '-3.74802778', 'Outdoor', 'Haubané', NULL, NULL, '6.83022223', 'En service', NULL, 'DENSIF 2013', NULL),
(20443, NULL, NULL, NULL, 'SINDENOU', 'IHS_LAC_092O', 'OCI1406', 'IHS', 'OCI', NULL, NULL, NULL, '-5.29013056', 'Outdoor', 'Autostable', NULL, NULL, '6.83910278', 'En service', NULL, 'DENSIF 2013', NULL),
(20444, NULL, NULL, NULL, 'ABATTOIR_IHS', 'IHS_LGN_581M', 'OCI1407', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96943334', 'Outdoor', 'Autostable', NULL, NULL, '5.25739445', 'En service', NULL, 'IHS 2013', NULL),
(20445, NULL, NULL, NULL, 'ABOBODOUME', 'IHS_LGN_128M', 'OCI1408', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03783334', 'Outdoor', 'Autostable', NULL, NULL, '5.30975000', 'En service', NULL, 'IHS 2013', NULL),
(20446, NULL, NULL, NULL, 'ABOBO_BAOULE', 'IHS_LGN_596M', 'OCI1409', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98236112', 'Outdoor', 'autostable', NULL, NULL, '5.42486112', 'En service', NULL, 'IHS 2013', NULL),
(20447, NULL, NULL, NULL, 'ADJAME_MOSQUEE', 'IHS_LGN_066M', 'OCI1410', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02752778', 'Outdoor', 'Haubané', NULL, NULL, '5.35269445', 'En service', NULL, 'IHS 2013', NULL),
(20448, NULL, NULL, NULL, 'AEROPORT_DHL', 'IHS_LGN_652M', 'OCI1411', 'IHS', 'IHS', NULL, NULL, NULL, '-3.93594445', 'Outdoor', 'Autostable', NULL, NULL, '5.24769445', 'En service', NULL, 'IHS 2013', NULL),
(20449, NULL, NULL, NULL, 'AVENUE_21', 'IHS_LGN_174M', 'OCI1412', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00758334', 'Outdoor', 'MAT', NULL, NULL, '5.30161112', 'En service', NULL, 'IHS 2013', NULL),
(20450, NULL, NULL, NULL, 'BANANKORO', 'IHS_DNG_015M', 'OCI1413', 'IHS', 'IHS', NULL, NULL, NULL, '-7.39705556', 'Outdoor', 'Autostable', NULL, NULL, '9.81080556', 'En service', NULL, 'IHS 2013', NULL),
(20451, NULL, NULL, NULL, 'BEAGO', 'IHS_LGN_316M', 'OCI1414', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07838889', 'Outdoor', 'Haubané', NULL, NULL, '5.31086112', 'En service', NULL, 'IHS 2013', NULL),
(20452, NULL, NULL, NULL, 'BRISTOL', 'IHS_LGN_339M', 'OCI1415', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08017223', 'Outdoor', 'autostable', NULL, NULL, '5.36077223', 'En service', NULL, 'IHS 2013', NULL),
(20453, NULL, NULL, NULL, 'CAMPEMENT_CITE', 'IHS_LGN_568M', 'OCI1416', 'IHS', 'IHS', NULL, NULL, NULL, '-3.93530556', 'Outdoor', 'Autostable', NULL, NULL, '5.31069445', 'En service', NULL, 'IHS 2013', NULL),
(20454, NULL, NULL, NULL, 'CARLA', 'IHS_LGN_267M', 'OCI1417', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00121667', 'Outdoor', 'Haubané', NULL, NULL, '5.28828334', 'En service', NULL, 'IHS 2013', NULL),
(20455, NULL, NULL, NULL, 'DJE_KONAN', 'IHS_LGN_418M', 'OCI1418', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97019445', 'Outdoor', 'Autostable', NULL, NULL, '5.28761112', 'En service', NULL, 'IHS 2013', NULL),
(20456, NULL, NULL, NULL, 'DJIBOUA', 'IHS_SBD_012M', 'OCI1419', 'IHS', 'IHS', NULL, NULL, NULL, '-5.30630556', 'Outdoor', 'Haubané', NULL, NULL, '5.85088889', 'En service', NULL, 'IHS 2013', NULL),
(20457, NULL, NULL, NULL, 'DORA', 'IHS_LGN_235M', 'OCI1420', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98113889', 'Outdoor', 'autostable', NULL, NULL, '5.35675001', 'En service', NULL, 'IHS 2013', NULL),
(20458, NULL, NULL, NULL, 'DOUE', 'IHS_MCY_019M', 'OCI1421', 'IHS', 'IHS', NULL, NULL, NULL, '-7.35158334', 'Outdoor', 'Autostable', NULL, NULL, '6.74572223', 'En service', NULL, 'IHS 2013', NULL),
(20459, NULL, NULL, NULL, 'DUEKOUE_RESIDENTIEL', 'IHS_MCY_020M', 'OCI1422', 'IHS', 'IHS', NULL, NULL, NULL, '-7.34211112', 'Outdoor', 'Autostable', NULL, NULL, '6.74100001', 'En service', NULL, 'IHS 2013', NULL),
(20460, NULL, NULL, NULL, 'DOUGROUPALEGNOA', 'IHS_FMG_023M', 'OCI1423', 'IHS', 'IHS', NULL, NULL, NULL, '-5.93858334', 'Outdoor', 'Autostable', NULL, NULL, '5.99411112', 'En service', NULL, 'IHS 2013', NULL),
(20461, NULL, NULL, NULL, 'EULALIE', 'IHS_LGN_553M', 'OCI1424', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00231667', 'Outdoor', 'autostable', NULL, NULL, '5.42038334', 'En service', NULL, 'IHS 2013', NULL),
(20462, NULL, NULL, NULL, 'FOURIERE', 'IHS_LGN_518M', 'OCI1425', 'IHS', 'IHS', NULL, NULL, NULL, '-4.10022223', 'Outdoor', 'Autostable', NULL, NULL, '5.36775000', 'En service', NULL, 'IHS 2013', NULL),
(20463, NULL, NULL, NULL, 'GAGNOA_CSK', 'IHS_FMG_001M', 'OCI1426', 'IHS', 'IHS', NULL, NULL, NULL, '-5.95027778', 'Outdoor', 'Haubané', NULL, NULL, '6.12869445', 'En service', NULL, 'IHS 2013', NULL),
(20464, NULL, NULL, NULL, 'GAGNOA_EXT', 'IHS_FMG_013M', 'OCI1427', 'IHS', 'IHS', NULL, NULL, NULL, '-5.96972223', 'Outdoor', 'Autostable', NULL, NULL, '6.13088889', 'En service', NULL, 'IHS 2013', NULL),
(20465, NULL, NULL, NULL, 'GAGNOA_HOPITAL', 'IHS_FMG_006M', 'OCI1428', 'IHS', 'IHS', NULL, NULL, NULL, '-5.94155556', 'Outdoor', 'Autostable', NULL, NULL, '6.14261112', 'En service', NULL, 'IHS 2013', NULL),
(20466, NULL, NULL, NULL, 'GAGNOA_NQ', 'IHS_FMG_012M', 'OCI1429', 'IHS', 'IHS', NULL, NULL, NULL, '-5.94586112', 'Outdoor', 'Autostable', NULL, NULL, '6.15394445', 'En service', NULL, 'IHS 2013', NULL),
(20467, NULL, NULL, NULL, 'GARE_BASSAM', 'IHS_LGN_195M', 'OCI1430', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00413889', 'Outdoor', 'Haubané', NULL, NULL, '5.29861112', 'En service', NULL, 'IHS 2013', NULL),
(20468, NULL, NULL, NULL, 'GARE_NORD', 'IHS_LGN_108M', 'OCI1431', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02724445', 'Outdoor', 'Autostable', NULL, NULL, '5.36029445', 'En service', NULL, 'IHS 2013', NULL),
(20469, NULL, NULL, NULL, 'GNIMI', 'IHS_LGN_101M', 'OCI1432', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04855556', 'Outdoor', 'Haubané', NULL, NULL, '5.33444445', 'En service', NULL, 'IHS 2013', NULL),
(20470, NULL, NULL, NULL, 'GUESSIHIO', 'IHS_FMG_016M', 'OCI1433', 'IHS', 'IHS', NULL, NULL, NULL, '-5.98613889', 'Outdoor', 'Autostable', NULL, NULL, '6.11472223', 'En service', NULL, 'IHS 2013', NULL),
(20471, NULL, NULL, NULL, 'GUIGLO_GARE', 'IHS_MCY_006M', 'OCI1434', 'IHS', 'IHS', NULL, NULL, NULL, '-7.50430556', 'Outdoor', 'Autostable', NULL, NULL, '6.54088889', 'En service', NULL, 'IHS 2013', NULL),
(20472, NULL, NULL, NULL, 'GUIGLO_SEA', 'IHS_MCY_007M', 'OCI1435', 'IHS', 'IHS', NULL, NULL, NULL, '-7.49669445', 'Outdoor', 'Autostable', NULL, NULL, '6.55283334', 'En service', NULL, 'IHS 2013', NULL),
(20473, NULL, NULL, NULL, 'HABITAT', 'IHS_LAC_003M', 'OCI1436', 'IHS', 'IHS', NULL, NULL, NULL, '-5.27447223', 'Outdoor', 'Autostable', NULL, NULL, '6.82311112', 'En service', NULL, 'IHS 2013', NULL),
(20474, NULL, NULL, NULL, 'HIRE_IHS', 'IHS_SBD_057M', 'OCI1437', 'IHS', 'IHS', NULL, NULL, NULL, '-5.28623056', 'Outdoor', 'Haubané', NULL, NULL, '6.19845834', 'En service', NULL, 'IHS 2013', NULL),
(20475, NULL, NULL, NULL, 'ISSIA_KOKO', 'IHS_HSD_057M', 'OCI1438', 'IHS', 'IHS', NULL, NULL, NULL, '-6.58213889', 'Outdoor', 'Haubané', NULL, NULL, '6.50505556', 'En service', NULL, 'IHS 2013', NULL),
(20476, NULL, NULL, NULL, 'JEAN_BOSCO', 'IHS_LGN_159M', 'OCI1439', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00391667', 'Outdoor', 'MAT', NULL, NULL, '5.30627778', 'En service', NULL, 'IHS 2013', NULL),
(20477, NULL, NULL, NULL, 'KAHANSO', 'IHS_DNG_009M', 'OCI1440', 'IHS', 'IHS', NULL, NULL, NULL, '-7.60486112', 'Outdoor', 'Autostable', NULL, NULL, '9.24977778', 'En service', NULL, 'IHS 2013', NULL),
(20478, NULL, NULL, NULL, 'MAGOU', 'IHS_LGN_291M', 'OCI1441', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97869445', 'Outdoor', 'Autostable', NULL, NULL, '5.30183334', 'En service', NULL, 'IHS 2013', NULL),
(20479, NULL, NULL, NULL, 'MAISON_BLANCHE', 'IHS_LGN_330M', 'OCI1442', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08294445', 'Outdoor', 'Autostable', NULL, NULL, '5.35016667', 'En service', NULL, 'IHS 2013', NULL),
(20480, NULL, NULL, NULL, 'MAN_SEA', 'IHS_DHM_005M', 'OCI1443', 'IHS', 'IHS', NULL, NULL, NULL, '-7.55305556', 'Outdoor', 'autostable', NULL, NULL, '7.39780556', 'En service', NULL, 'IHS 2013', NULL),
(20481, NULL, NULL, NULL, 'OUARANIERE', 'IHS_SVN_011M', 'OCI1444', 'IHS', 'IHS', NULL, NULL, NULL, '-5.66780556', 'Outdoor', 'Autostable', NULL, NULL, '9.42483334', 'En service', NULL, 'IHS 2013', NULL),
(20482, NULL, NULL, NULL, 'PHENIX', 'IHS_LGN_290M', 'OCI1445', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07902778', 'Outdoor', 'Autostable', NULL, NULL, '5.34505556', 'En service', NULL, 'IHS 2013', NULL),
(20483, NULL, NULL, NULL, 'SAGBE_NORD', 'IHS_LGN_597M', 'OCI1446', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03410834', 'Outdoor', 'Autostable', NULL, NULL, '5.43422501', 'En service', NULL, 'IHS 2013', NULL),
(20484, NULL, NULL, NULL, 'SALAM', 'IHS_FMG_002M', 'OCI1447', 'IHS', 'IHS', NULL, NULL, NULL, '-5.95808334', 'Outdoor', 'Autostable', NULL, NULL, '6.12980556', 'En service', NULL, 'IHS 2013', NULL),
(20485, NULL, NULL, NULL, 'SIANSOBA', 'IHS_DNG_021M', 'OCI1448', 'IHS', 'IHS', NULL, NULL, NULL, '-7.05891667', 'Outdoor', 'Haubané', NULL, NULL, '9.59497223', 'En service', NULL, 'IHS 2013', NULL),
(20486, NULL, NULL, NULL, 'SILOVE', 'IHS_LGN_564M', 'OCI1449', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96447778', 'Outdoor', 'Autostable', NULL, NULL, '5.26630556', 'En service', NULL, NULL, NULL),
(20487, NULL, NULL, NULL, 'ST_CYRILLE', 'IHS_LGN_673M', 'OCI1450', 'IHS', 'IHS', NULL, NULL, NULL, '-3.87352778', 'Outdoor', 'Autostable', NULL, NULL, '5.35969445', 'En service', NULL, 'IHS 2013', NULL),
(20488, NULL, NULL, NULL, 'ST_LOUIS', 'IHS_LGN_112M', 'OCI1451', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04805556', 'Outdoor', 'Haubané', NULL, NULL, '5.34613889', 'En service', NULL, 'IHS 2013', NULL),
(20489, NULL, NULL, NULL, 'TERMINUS_13', 'IHS_LGN_480M', 'OCI1452', 'IHS', 'IHS', NULL, NULL, NULL, '-3.95727778', 'Outdoor', 'MAT', NULL, NULL, '5.29366667', 'En service', NULL, 'IHS 2013', NULL),
(20490, NULL, NULL, NULL, 'WOROFLA', 'IHS_WRD_013M', 'OCI1453', 'IHS', 'IHS', NULL, NULL, NULL, '-6.90744445', 'Outdoor', 'Haubané', NULL, NULL, '8.27080556', 'En service', NULL, 'IHS 2013', NULL),
(20491, NULL, NULL, NULL, 'ZOO', 'IHS_LGN_263M', 'OCI1454', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99955556', 'Outdoor', 'Autostable', NULL, NULL, '5.37997223', 'En service', NULL, 'IHS 2013', NULL),
(20492, NULL, NULL, NULL, 'ABOBO_BOCABO', 'IHS_LGN_567M', 'OCI1458', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03383334', 'Outdoor', 'autostable', NULL, NULL, '5.42561112', 'En service', NULL, 'DENSIF 2013', NULL),
(20493, NULL, NULL, NULL, 'ABOISSO_SOKOURA', 'IHS_SCE_001M', 'OCI1459', 'IHS', 'IHS', NULL, NULL, NULL, '-3.20794445', 'Outdoor', 'Autostable', NULL, NULL, '5.48122223', 'En service', NULL, 'DENSIF 2013', NULL),
(20494, NULL, NULL, NULL, 'ADZOPE_HABITAT', 'IHS_AGN_003M', 'OCI1460', 'IHS', 'IHS', NULL, NULL, NULL, '-3.85305556', 'Outdoor', 'Autostable', NULL, NULL, '6.11216667', 'En service', NULL, 'DENSIF 2013', NULL),
(20495, NULL, NULL, NULL, 'AGBOVILLE_SOKOURA', 'IHS_AGN_053M', 'OCI1461', 'IHS', 'IHS', NULL, NULL, NULL, '-4.22394445', 'Outdoor', 'Autostable', NULL, NULL, '5.94441667', 'En service', NULL, 'DENSIF 2013', NULL),
(20496, NULL, NULL, NULL, 'AGNIKRO', 'IHS_MCE_003M', 'OCI1462', 'IHS', 'IHS', NULL, NULL, NULL, '-3.48047223', 'Outdoor', 'Autostable', NULL, NULL, '6.71816667', 'En service', NULL, 'DENSIF 2013', NULL),
(20497, NULL, NULL, NULL, 'BELLE_CITE', 'IHS_LGN_637M', 'OCI1463', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02341667', 'Outdoor', 'Autostable', NULL, NULL, '5.45022223', 'En service', NULL, 'DENSIF 2013', NULL),
(20498, NULL, NULL, NULL, 'NOVA', 'IHS_LGN_650M', 'OCI1464', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04802778', 'Outdoor', 'Autostable', NULL, NULL, '5.45533334', 'En service', NULL, 'DENSIF 2013', NULL),
(20499, NULL, NULL, NULL, 'ANONKOUA', 'IHS_LGN_591M', 'OCI1465', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04030556', 'Outdoor', 'MAT', NULL, NULL, '5.43250000', 'En service', NULL, 'DENSIF 2013', NULL),
(20500, NULL, NULL, NULL, 'PEULIER', 'IHS_LGN_052M', 'OCI1466', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03036112', 'Outdoor', 'Haubané', NULL, NULL, '5.35032223', 'En service', NULL, 'IHS 2013', NULL),
(20501, NULL, NULL, NULL, 'EHANIA_V3', 'IHS_SCE_039M', 'OCI1467', 'IHS', 'IHS', NULL, NULL, NULL, '-3.03377778', 'Outdoor', 'Haubané', NULL, NULL, '5.19988889', 'En service', NULL, 'IHS 2013', NULL),
(20502, NULL, NULL, NULL, 'RAN_EXTENSION', 'IHS_LGN_668M', 'OCI1469', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04241667', 'Outdoor', 'Autostable', NULL, NULL, '5.47844445', 'En service', NULL, 'IHS 2013', NULL),
(20503, NULL, NULL, NULL, 'BASE_NAVALE', 'IHS_LGN_063M', 'OCI1470', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03781112', 'Outdoor', 'MAT', NULL, NULL, '5.34606667', 'En service', NULL, 'IHS 2013', NULL),
(20504, NULL, NULL, NULL, 'AZAGUIE_IHS', 'IHS_AGN_065M', 'OCI1471', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07719445', 'Outdoor', 'Autostable', NULL, NULL, '5.62586112', 'En service', NULL, 'IHS 2013', NULL),
(20505, NULL, NULL, NULL, 'BONOUA_FO', 'IHS_SCE_067M', 'OCI1472', 'IHS', 'IHS', NULL, NULL, NULL, '-3.60419445', 'Outdoor', 'Autostable', NULL, NULL, '5.25805556', 'En service', NULL, 'IHS 2013', NULL),
(20506, NULL, NULL, NULL, 'ALFITYA', 'IHS_VDB_022M', 'OCI1473', 'IHS', 'IHS', NULL, NULL, NULL, '-5.01283334', 'Outdoor', 'Autostable', NULL, NULL, '7.72217778', 'En service', NULL, 'IHS 2013', NULL),
(20507, NULL, NULL, NULL, 'KOTCHA', 'IHS_VDB_028M', 'OCI1474', 'IHS', 'IHS', NULL, NULL, NULL, '-5.03090556', 'Outdoor', 'Autostable', NULL, NULL, '7.73674167', 'En service', NULL, 'IHS 2013', NULL),
(20508, NULL, NULL, NULL, 'BROBO_IHS', 'IHS_VDB_037M', 'OCI1475', 'IHS', 'IHS', NULL, NULL, NULL, '-4.83105278', 'Outdoor', 'Haubané', NULL, NULL, '7.63422778', 'En service', NULL, 'IHS 2013', NULL),
(20509, NULL, NULL, NULL, 'SIKABOUTOU', 'IHS_HSD_031M', 'OCI1477', 'IHS', 'IHS', NULL, NULL, NULL, '-6.56538889', 'Outdoor', 'Autostable', NULL, NULL, '7.01775000', 'En service', NULL, 'IHS 2013', NULL),
(20510, NULL, NULL, NULL, 'CLIMACO', 'IHS_HSD_019M', 'OCI1478', 'IHS', 'IHS', NULL, NULL, NULL, '-6.41161112', 'Outdoor', 'Autostable', NULL, NULL, '6.90066667', 'En service', NULL, 'IHS 2013', NULL),
(20511, NULL, NULL, NULL, 'DJASSANOU', 'IHS_LAC_075M', 'OCI1479', 'IHS', 'IHS', NULL, NULL, NULL, '-4.83650001', 'Outdoor', 'Haubané', NULL, NULL, '6.98072223', 'En service', NULL, 'IHS 2013', NULL),
(20512, NULL, NULL, NULL, 'DIMBOKRO_BELLEVILLE', 'IHS_NCE_006M', 'OCI1480', 'IHS', 'IHS', NULL, NULL, NULL, '-4.72237500', 'Outdoor', 'Autostable', NULL, NULL, '6.65702223', 'En service', NULL, 'IHS 2013', NULL),
(20513, NULL, NULL, NULL, 'KOMIKRO', 'IHS_NCE_003M', 'OCI1481', 'IHS', 'IHS', NULL, NULL, NULL, '-4.70856389', 'Outdoor', 'Autostable', NULL, NULL, '6.64150556', 'En service', NULL, 'IHS 2013', NULL),
(20514, NULL, NULL, NULL, 'EHOULE', 'IHS_SBD_006M', 'OCI1482', 'IHS', 'IHS', NULL, NULL, NULL, '-5.35158334', 'Outdoor', 'Haubané', NULL, NULL, '5.83850001', 'En service', NULL, 'IHS 2013', NULL),
(20515, NULL, NULL, NULL, 'IDEFOR', 'IHS_SBD_017M', 'OCI1483', 'IHS', 'IHS', NULL, NULL, NULL, '-5.25325000', 'Outdoor', 'Haubané', NULL, NULL, '5.79541667', 'En service', NULL, 'IHS 2013', NULL),
(20516, NULL, NULL, NULL, 'BARIO', 'IHS_FMG_009M', 'OCI1484', 'IHS', 'IHS', NULL, NULL, NULL, '-5.96016667', 'Outdoor', 'Autostable', NULL, NULL, '6.14427778', 'En service', NULL, 'IHS 2013', NULL),
(20517, NULL, NULL, NULL, 'SOILIO', 'IHS_FMG_005M', 'OCI1485', 'IHS', 'IHS', NULL, NULL, NULL, '-5.96480556', 'Outdoor', 'Autostable', NULL, NULL, '6.12775001', 'En service', NULL, 'IHS 2013', NULL),
(20518, NULL, NULL, NULL, 'KRIKORIA', 'IHS_HSD_037M', 'OCI1486', 'IHS', 'IHS', NULL, NULL, NULL, '-6.62705556', 'Outdoor', 'Autostable', NULL, NULL, '6.70730556', 'En service', NULL, 'IHS 2013', NULL),
(20519, NULL, NULL, NULL, 'MONT_COUPE', 'IHS_BSD_099M', 'OCI1487', 'IHS', 'IHS', NULL, NULL, NULL, '-7.41861112', 'Outdoor', 'Haubané', NULL, NULL, '5.01473334', 'En service', NULL, 'IHS 2013', NULL),
(20520, NULL, NULL, NULL, 'BASSAM_PLAGE', 'IHS_SCE_074M', 'OCI1488', 'IHS', 'IHS', NULL, NULL, NULL, '-3.74727778', 'Outdoor', 'Autostable', NULL, NULL, '5.19691667', 'En service', NULL, 'IHS 2013', NULL),
(20521, NULL, NULL, NULL, 'LAHOU_CORRIDOR', 'IHS_LGN_769M', 'OCI1489', 'IHS', 'IHS', NULL, NULL, NULL, '-5.00941667', 'Outdoor', 'Autostable', NULL, NULL, '5.27438889', 'En service', NULL, 'IHS 2013', NULL),
(20522, NULL, NULL, NULL, 'MBROU', 'IHS_LGN_726M', 'OCI1490', 'IHS', 'IHS', NULL, NULL, NULL, '-4.36177778', 'Outdoor', 'Autostable', NULL, NULL, '5.57572223', 'En service', NULL, 'IHS 2013', NULL),
(20523, NULL, NULL, NULL, 'GUIGLO_THANRY', 'IHS_MCY_004M', 'OCI1491', 'IHS', 'IHS', NULL, NULL, NULL, '-7.50911112', 'Outdoor', 'Autostable', NULL, NULL, '6.53641667', 'En service', NULL, 'IHS 2013', NULL),
(20524, NULL, NULL, NULL, 'INFANTERIE', 'IHS_SVN_008M', 'OCI1492', 'IHS', 'IHS', NULL, NULL, NULL, '-5.61355556', 'Outdoor', 'Haubané', NULL, NULL, '9.47233334', 'En service', NULL, 'IHS 2013', NULL),
(20525, NULL, NULL, NULL, 'NATCHIO', 'IHS_SVN_010M', 'OCI1493', 'IHS', 'IHS', NULL, NULL, NULL, '-5.60116667', 'Outdoor', 'Autostable', NULL, NULL, '9.47683334', 'En service', NULL, 'IHS 2013', NULL),
(20526, NULL, NULL, NULL, 'PHARMACIE_14', 'IHS_SVN_005M', 'OCI1494', 'IHS', 'IHS', NULL, NULL, NULL, '-5.62805556', 'Outdoor', 'Autostable', NULL, NULL, '9.45022223', 'En service', NULL, 'IHS 2013', NULL),
(20527, NULL, NULL, NULL, 'AKOMIENBLA2', 'IHS_LGN_455M', 'OCI1495', 'IHS', 'IHS', NULL, NULL, NULL, '-3.94905556', 'Outdoor', 'MAT', NULL, NULL, '5.31000001', 'En service', NULL, 'IHS 2013', NULL),
(20528, NULL, NULL, NULL, 'IROKO', 'IHS_LGN_421M', 'OCI1496', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96450000', 'Outdoor', 'MAT', NULL, NULL, '5.29430556', 'En service', NULL, 'IHS 2013', NULL),
(20529, NULL, NULL, NULL, 'MIRABELLE', 'IHS_LGN_363M', 'OCI1497', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97077778', 'Outdoor', 'Haubané', NULL, NULL, '5.29563889', 'En service', NULL, 'IHS 2013', NULL),
(20530, NULL, NULL, NULL, 'AGNIMANGBO', 'IHS_LGN_737M', 'OCI1498', 'IHS', 'IHS', NULL, NULL, NULL, '-4.57783334', 'Outdoor', 'Haubané', NULL, NULL, '5.46902778', 'En service', NULL, 'IHS 2013', NULL),
(20531, NULL, NULL, NULL, 'MARANDALA', 'IHS_WRD_038M', 'OCI1499', 'IHS', 'IHS', NULL, NULL, NULL, '-5.91922223', 'Outdoor', 'Autostable', NULL, NULL, '8.44444445', 'En service', NULL, 'IHS 2013', NULL),
(20532, NULL, NULL, NULL, 'STE_BERNADETTE', 'IHS_LGN_340M', 'OCI1501', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97383334', 'Outdoor', 'Autostable', NULL, NULL, '5.29858334', 'En service', NULL, 'IHS 2013', NULL),
(20533, NULL, NULL, NULL, 'CNRA', 'IHS_LGN_687M', 'OCI1502', 'IHS', 'IHS', NULL, NULL, NULL, '-3.83786112', 'Outdoor', 'Autostable', NULL, NULL, '5.27852778', 'En service', NULL, 'IHS 2013', NULL),
(20534, NULL, NULL, NULL, 'VRIDI_ZBWE', 'IHS_LGN_373M', 'OCI1503', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99461112', 'Outdoor', 'Autostable', NULL, NULL, '5.27438889', 'En service', NULL, 'IHS 2013', NULL),
(20535, NULL, NULL, NULL, 'SP_CHATEAU', 'IHS_BSD_013M', 'OCI1504', 'IHS', 'IHS', NULL, NULL, NULL, '-6.66411112', 'Outdoor', 'autostable', NULL, NULL, '4.77847223', 'En service', NULL, 'IHS 2013', NULL),
(20536, NULL, NULL, NULL, 'MIGNORE', 'IHS_HSD_104M', 'OCI1505', 'IHS', 'IHS', NULL, NULL, NULL, '-6.78880556', 'Outdoor', 'Haubané', NULL, NULL, '7.49252778', 'En service', NULL, 'IHS 2013', NULL),
(20537, NULL, NULL, NULL, 'KOTOULA', 'IHS_DNG_034M', 'OCI1506', 'IHS', 'IHS', NULL, NULL, NULL, '-7.39261112', 'Outdoor', 'Haubané', NULL, NULL, '10.11569445', 'En service', NULL, 'IHS 2013', NULL),
(20538, NULL, NULL, NULL, 'VAVOUA_CENTRE', 'IHS_HSD_086M', 'OCI1507', 'IHS', 'IHS', NULL, NULL, NULL, '-6.48341667', 'Outdoor', 'Autostable', NULL, NULL, '7.39063889', 'En service', NULL, 'IHS 2013', NULL),
(20539, NULL, NULL, NULL, 'DIOULAKRO', 'IHS_LAC_010M', 'OCI1508', 'IHS', 'IHS', NULL, NULL, NULL, '-5.27438889', 'Outdoor', 'Autostable', NULL, NULL, '6.80149167', 'En service', NULL, 'IHS 2013', NULL),
(20540, NULL, NULL, NULL, 'VISITATION', 'IHS_LAC_014M', 'OCI1509', 'IHS', 'IHS', NULL, NULL, NULL, '-5.25152778', 'Outdoor', 'Autostable', NULL, NULL, '6.81219445', 'En service', NULL, 'IHS 2013', NULL),
(20541, NULL, NULL, NULL, 'ASSEMBLE', 'IHS_LGN_413M', 'OCI1511', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09386112', 'Outdoor', 'Autostable', NULL, NULL, '5.34333334', 'En service', NULL, 'IHS 2013', NULL),
(20542, NULL, NULL, NULL, 'BENIHOUA', 'IHS_LGN_409M', 'OCI1512', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09338889', 'Outdoor', 'MAT', NULL, NULL, '5.32211112', 'En service', NULL, 'IHS 2013', NULL),
(20543, NULL, NULL, NULL, 'CAMPUS_CITE', 'IHS_LGN_162M', 'OCI1515', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98925556', 'Outdoor', 'Autostable', NULL, NULL, '5.33865000', 'En service', NULL, 'IHS 2013', NULL),
(20544, NULL, NULL, NULL, 'ETUEBOUE', 'IHS_SCE_024M', 'OCI1516', 'IHS', 'IHS', NULL, NULL, NULL, '-3.21041667', 'Outdoor', 'Haubané', NULL, NULL, '5.21227778', 'En service', NULL, 'IHS 2013', NULL),
(20545, NULL, NULL, NULL, 'BLE', 'IHS_SBD_020M', 'OCI1518', 'IHS', 'IHS', NULL, NULL, NULL, '-5.20358334', 'Outdoor', 'Haubané', NULL, NULL, '5.89933334', 'En service', NULL, 'IHS 2013', NULL),
(20546, NULL, NULL, NULL, 'LAKOTA_LYCEE', 'IHS_SBD_049M', 'OCI1519', 'IHS', 'IHS', NULL, NULL, NULL, '-5.68700000', 'Outdoor', 'Autostable', NULL, NULL, '5.86997223', 'En service', NULL, 'IHS 2013', NULL),
(20547, NULL, NULL, NULL, 'MARCORY_RESID', 'IHS_LGN_194M', 'OCI1520', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99202778', 'Outdoor', 'Haubané', NULL, NULL, '5.30950001', 'En service', NULL, 'IHS 2013', NULL),
(20548, NULL, NULL, NULL, 'PALMICI_BLIDOUBA', 'IHS_BSD_108M', 'OCI1521', 'IHS', 'IHS', NULL, NULL, NULL, '-7.47216667', 'Outdoor', 'Haubané', NULL, NULL, '4.52975001', 'En service', NULL, 'IHS 2013', NULL),
(20549, NULL, NULL, NULL, 'SINFRA_GARE', 'IHS_MRH_034M', 'OCI1522', 'IHS', 'IHS', NULL, NULL, NULL, '-5.91041667', 'Outdoor', 'Autostable', NULL, NULL, '6.61602778', 'En service', NULL, 'IHS 2013', NULL),
(20550, NULL, NULL, NULL, 'ST_CHARLE', 'IHS_LGN_460M', 'OCI1523', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02020556', 'Outdoor', 'MAT', NULL, NULL, '5.41143056', 'En service', NULL, 'IHS 2013', NULL),
(20551, NULL, NULL, NULL, 'TOUMODI_RESIDENTIEL', 'IHS_LAC_061M', 'OCI1524', 'IHS', 'IHS', NULL, NULL, NULL, '-5.03238334', 'Outdoor', 'Autostable', NULL, NULL, '6.56130834', 'En service', NULL, 'IHS 2013', NULL),
(20552, NULL, NULL, NULL, 'VRIDI_CHAPELLE', 'IHS_LGN_485M', 'OCI1525', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98522223', 'Outdoor', 'Autostable', NULL, NULL, '5.26608334', 'En service', NULL, 'IHS 2013', NULL),
(20553, NULL, NULL, NULL, 'OTTAWA_IHS', 'IHS_BSD_144M', 'OCI1526', 'IHS', 'IHS', NULL, NULL, NULL, '-6.27977778', 'Outdoor', 'Autostable', NULL, NULL, '5.72111112', 'En service', NULL, 'IHS 2013', NULL),
(20554, NULL, NULL, NULL, 'MARABADJASSA_IHS', 'IHS_VDB_060M', 'OCI1527', 'IHS', 'IHS', NULL, NULL, NULL, '-5.42369445', 'Outdoor', 'Autostable', NULL, NULL, '8.06291667', 'En service', NULL, 'IHS 2013', NULL),
(20555, NULL, NULL, NULL, 'DED', 'to be defined', 'OCI1528', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-3.99247222', 'Indoor', 'autostable', NULL, NULL, '5.38230556', 'En service', NULL, 'PLASMA (222)', NULL),
(20556, NULL, NULL, NULL, 'YANKAFISSA', 'IHS_DNG_004M', 'OCI1529', 'IHS', 'IHS', NULL, NULL, NULL, '-7.57272223', 'Outdoor', 'Autostable', NULL, NULL, '9.51558334', 'En service', NULL, 'IHS 2013', NULL),
(20557, NULL, NULL, NULL, 'PRIMA_OD', 'IHS_LGN_304M', 'OCI1530', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98289445', 'Outdoor', 'autostable', NULL, NULL, '5.29430001', 'En service', NULL, 'IHS 2013', NULL),
(20558, NULL, NULL, NULL, 'ABOULIE', 'IHS_SCE_025M', 'OCI1531', 'IHS', 'IHS', NULL, NULL, NULL, '-2.93458334', 'Outdoor', 'Haubané', NULL, NULL, '5.45347223', 'En service', NULL, 'IHS 2013', NULL),
(20559, NULL, NULL, NULL, 'ADK', 'IHS_BSD_185M', 'OCI1532', 'IHS', 'IHS', NULL, NULL, NULL, '-7.06916667', 'Outdoor', 'Haubané', NULL, NULL, '6.18091667', 'En service', NULL, 'IHS 2013', NULL),
(20560, NULL, NULL, NULL, 'ALIANCE', 'IHS_WRD_001M', 'OCI1534', 'IHS', 'IHS', NULL, NULL, NULL, '-6.68488889', 'Outdoor', 'Autostable', NULL, NULL, '7.95713889', 'En service', NULL, NULL, NULL),
(20561, NULL, NULL, NULL, 'AMAHOUYE', 'IHS_SBD_008M', 'OCI1535', 'IHS', 'IHS', NULL, NULL, NULL, '-5.36122223', 'Outdoor', 'Autostable', NULL, NULL, '5.84355556', 'En service', NULL, 'IHS 2013', NULL),
(20562, NULL, NULL, NULL, 'ANDOKOI_MARCHE', 'IHS_LGN_283M', 'OCI1536', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07263889', 'Outdoor', 'MAT', NULL, NULL, '5.36172223', 'En service', NULL, 'IHS 2013', NULL),
(20563, NULL, NULL, NULL, 'ANDOU_MBATTO', 'IHS_LGN_721M', 'OCI1537', 'IHS', 'IHS', NULL, NULL, NULL, '-3.65980556', 'Outdoor', 'Haubané', NULL, NULL, '5.40838889', 'En service', NULL, 'IHS 2013', NULL),
(20564, NULL, NULL, NULL, 'ANYAMA_PALMERAIE', 'IHS_LGN_674M', 'OCI1538', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04769445', 'Outdoor', 'autostable', NULL, NULL, '5.48733334', 'En service', NULL, 'IHS 2013', NULL),
(20565, NULL, NULL, NULL, 'AYAPRIKRO', 'IHS_LAC_073M', 'OCI1539', 'IHS', 'IHS', NULL, NULL, NULL, '-5.23898056', 'Outdoor', 'Haubané', NULL, NULL, '7.27268334', 'En service', NULL, 'IHS 2013', NULL),
(20566, NULL, NULL, NULL, 'BADOUKRO', 'IHS_ZNZ_042M', 'OCI1540', 'IHS', 'IHS', NULL, NULL, NULL, '-2.97869445', 'Outdoor', 'Haubané', NULL, NULL, '7.28588889', 'En service', NULL, 'IHS 2013', NULL),
(20567, NULL, NULL, NULL, 'BAHUT', 'IHS_VDB_020M', 'OCI1541', 'IHS', 'IHS', NULL, NULL, NULL, '-4.98880834', 'Outdoor', 'Autostable', NULL, NULL, '7.69616389', 'En service', NULL, 'IHS 2013', NULL),
(20568, NULL, NULL, NULL, 'BALEYO', 'IHS_BSD_129M', 'OCI1542', 'IHS', 'IHS', NULL, NULL, NULL, '-6.54719445', 'Outdoor', 'Autostable', NULL, NULL, '5.76372223', 'En service', NULL, 'IHS 2013', NULL),
(20569, NULL, NULL, NULL, 'BANACOMOE', 'IHS_AGN_068M', 'OCI1543', 'IHS', 'IHS', NULL, NULL, NULL, '-3.71119445', 'Outdoor', 'Haubané', NULL, NULL, '6.62480556', 'En service', NULL, 'IHS 2013', NULL),
(20570, NULL, NULL, NULL, 'BANIA', 'IHS_ZNZ_060M', 'OCI1544', 'IHS', 'IHS', NULL, NULL, NULL, '-3.17602778', 'Outdoor', 'Haubané', NULL, NULL, '9.01283334', 'En service', NULL, 'IHS 2013', NULL),
(20571, NULL, NULL, NULL, 'BECANTY', 'IHS_NCE_051M', 'OCI1545', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97169445', 'Outdoor', 'Autostable', NULL, NULL, '7.05977778', 'En service', NULL, 'IHS 2013', NULL),
(20572, NULL, NULL, NULL, 'BIELOU', 'IHS_WRD_026M', 'OCI1546', 'IHS', 'IHS', NULL, NULL, NULL, '-6.19769445', 'Outdoor', 'Haubané', NULL, NULL, '8.54402778', 'En service', NULL, 'IHS 2013', NULL),
(20573, NULL, NULL, NULL, 'BIETRY_STA', 'IHS_LGN_276M', 'OCI1547', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99022223', 'Outdoor', 'Haubané', NULL, NULL, '5.29291667', 'En service', NULL, 'IHS 2013', NULL),
(20574, NULL, NULL, NULL, 'BONOUA_CHATEAU', 'IHS_SCE_061M', 'OCI1548', 'IHS', 'IHS', NULL, NULL, NULL, '-3.58955556', 'Outdoor', 'Autostable', NULL, NULL, '5.28555556', 'En service', NULL, 'IHS 2013', NULL),
(20575, NULL, NULL, NULL, 'BOTRO_IHS', 'IHS_VDB_044M', 'OCI1549', 'IHS', 'IHS', NULL, NULL, NULL, '-5.31044445', 'Outdoor', 'Haubané', NULL, NULL, '7.83413889', 'En service', NULL, 'IHS 2013', NULL),
(20576, NULL, NULL, NULL, 'BOUAKE_MARCHE', 'IHS_VDB_004M', 'OCI1550', 'IHS', 'IHS', NULL, NULL, NULL, '-5.01790278', 'Outdoor', 'Autostable', NULL, NULL, '7.69136112', 'En service', NULL, 'IHS 2013', NULL),
(20577, NULL, NULL, NULL, 'CAMELIA', 'IHS_LGN_611M', 'OCI1551', 'IHS', 'IHS', NULL, NULL, NULL, '-3.91861112', 'Outdoor', 'Haubané', NULL, NULL, '5.34477778', 'En service', NULL, 'IHS 2013', NULL),
(20578, NULL, NULL, NULL, 'CAMPUS_BOUAKE', 'IHS_VDB_021M', 'OCI1552', 'IHS', 'IHS', NULL, NULL, NULL, '-5.06044723', 'Outdoor', 'Autostable', NULL, NULL, '7.68786945', 'En service', NULL, 'IHS 2013', NULL),
(20579, NULL, NULL, NULL, 'COCO_SERVICE', 'IHS_LGN_401M', 'OCI1553', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01848334', 'Outdoor', 'Haubané', NULL, NULL, '5.40388889', 'En service', NULL, 'IHS 2013', NULL),
(20580, NULL, NULL, NULL, 'COPRO', 'IHS_HSD_013M', 'OCI1554', 'IHS', 'IHS', NULL, NULL, NULL, '-6.44066667', 'Outdoor', 'Autostable', NULL, NULL, '6.89652779', 'En service', NULL, 'IHS 2013', NULL),
(20581, NULL, NULL, NULL, 'DALOA_EVECHET', 'IHS_HSD_003M', 'OCI1555', 'IHS', 'IHS', NULL, NULL, NULL, '-6.43844445', 'Outdoor', 'Autostable', NULL, NULL, '6.88091667', 'En service', NULL, 'IHS 2013', NULL),
(20582, NULL, NULL, NULL, 'DALOA_MOSQUEE', 'IHS_HSD_001M', 'OCI1556', 'IHS', 'IHS', NULL, NULL, NULL, '-6.44908334', 'Outdoor', 'Haubané', NULL, NULL, '6.87355556', 'En service', NULL, 'IHS 2013', NULL),
(20583, NULL, NULL, NULL, 'DEUX_PLATEAUX', 'IHS_LGN_191M', 'OCI1557', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99943889', 'Outdoor', 'Haubané', NULL, NULL, '5.36921945', 'En service', NULL, 'IHS 2013', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(20584, NULL, NULL, NULL, 'DIGAKO', 'IHS_SBD_039M', 'OCI1558', 'IHS', 'IHS', NULL, NULL, NULL, '-5.57613889', 'Outdoor', 'Haubané', NULL, NULL, '6.05519445', 'En service', NULL, 'IHS 2013', NULL),
(20585, NULL, NULL, NULL, 'DJI', 'IHS_SVN_014M', 'OCI1559', 'IHS', 'IHS', NULL, NULL, NULL, '-5.75577223', 'Outdoor', 'Haubané', NULL, NULL, '9.50431945', 'En service', NULL, 'IHS 2013', NULL),
(20586, NULL, NULL, NULL, 'DUEKOUE_KERE', 'IHS_MCY_015M', 'OCI1560', 'IHS', 'IHS', NULL, NULL, NULL, '-7.35397223', 'Outdoor', 'Autostable', NULL, NULL, '6.73569445', 'En service', NULL, 'IHS 2013', NULL),
(20587, NULL, NULL, NULL, 'EPP_RAIL', 'IHS_LGN_577M', 'OCI1561', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02330556', 'Outdoor', 'Autostable', NULL, NULL, '5.42738889', 'En service', NULL, 'IHS 2013', NULL),
(20588, NULL, NULL, NULL, 'FANGABOUGOU', 'IHS_SVN_064M', 'OCI1562', 'IHS', 'IHS', NULL, NULL, NULL, '-6.47763889', 'Outdoor', 'Autostable', NULL, NULL, '9.53847223', 'En service', NULL, 'IHS 2013', NULL),
(20589, NULL, NULL, NULL, 'GANAONI', 'IHS_SVN_059M', 'OCI1563', 'IHS', 'IHS', NULL, NULL, NULL, '-6.32677778', 'Outdoor', 'Haubané', NULL, NULL, '9.28066667', 'En service', NULL, 'IHS 2013', NULL),
(20590, NULL, NULL, NULL, 'GBONNE', 'IHS_DHM_014M', 'OCI1564', 'IHS', 'IHS', NULL, NULL, NULL, '-7.41758334', 'Outdoor', 'Haubané', NULL, NULL, '7.54188889', 'En service', NULL, 'IHS 2013', NULL),
(20591, NULL, NULL, NULL, 'GBONOU', 'IHS_NCE_038M', 'OCI1565', 'IHS', 'IHS', NULL, NULL, NULL, '-4.40797223', 'Outdoor', 'Haubané', NULL, NULL, '7.14586112', 'En service', NULL, 'IHS 2013', NULL),
(20592, NULL, NULL, NULL, 'GRAND_NAHIO', 'IHS_HSD_087M', 'OCI1566', 'IHS', 'IHS', NULL, NULL, NULL, '-6.23666667', 'Outdoor', 'Haubané', NULL, NULL, '6.39641667', 'En service', NULL, 'IHS 2013', NULL),
(20593, NULL, NULL, NULL, 'GUIALOPLEU', 'IHS_DHM_043M', 'OCI1567', 'IHS', 'IHS', NULL, NULL, NULL, '-8.13860834', 'Outdoor', 'Autostable', NULL, NULL, '7.26532223', 'En service', NULL, 'IHS 2013', NULL),
(20594, NULL, NULL, NULL, 'KATOGO', 'IHS_SVN_065M', 'OCI1568', 'IHS', 'IHS', NULL, NULL, NULL, '-6.13211112', 'Outdoor', 'Haubané', NULL, NULL, '10.14616667', 'En service', NULL, 'IHS 2013', NULL),
(20595, NULL, NULL, NULL, 'KM4_ONUCI', 'IHS_LGN_244M', 'OCI1569', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99591667', 'Outdoor', 'Autostable', NULL, NULL, '5.29402778', 'En service', NULL, 'IHS 2013', NULL),
(20596, NULL, NULL, NULL, 'KOBOUO', 'IHS_FMG_036M', 'OCI1570', 'IHS', 'IHS', NULL, NULL, NULL, '-5.99922223', 'Outdoor', 'Haubané', NULL, NULL, '5.91980556', 'En service', NULL, 'IHS 2013', NULL),
(20597, NULL, NULL, NULL, 'KODIOSSOU', 'IHS_LGN_733M', 'OCI1571', 'IHS', 'IHS', NULL, NULL, NULL, '-3.75147223', 'Outdoor', 'Haubané', NULL, NULL, '5.76483334', 'En service', NULL, 'IHS 2013', NULL),
(20598, NULL, NULL, NULL, 'KONTROU', 'IHS_DHM_015M', 'OCI1572', 'IHS', 'IHS', NULL, NULL, NULL, '-7.33666667', 'Outdoor', 'Haubané', NULL, NULL, '7.43963889', 'En service', NULL, 'IHS 2013', NULL),
(20599, NULL, NULL, NULL, 'KOTOUAGNOU', 'IHS_SCE_056M', 'OCI1573', 'IHS', 'IHS', NULL, NULL, NULL, '-2.89377778', 'Outdoor', 'Haubané', NULL, NULL, '5.22197223', 'En service', NULL, 'IHS 2013', NULL),
(20600, NULL, NULL, NULL, 'KOTOUBA', 'IHS_ZNZ_040M', 'OCI1574', 'IHS', 'IHS', NULL, NULL, NULL, '-3.16450001', 'Outdoor', 'Haubané', NULL, NULL, '8.70177778', 'En service', NULL, 'IHS 2013', NULL),
(20601, NULL, NULL, NULL, 'KOUASSI_NDAWA', 'IHS_ZNZ_009M', 'OCI1575', 'IHS', 'IHS', NULL, NULL, NULL, '-2.91669445', 'Outdoor', 'Autostable', NULL, NULL, '8.12930556', 'En service', NULL, 'IHS 2013', NULL),
(20602, NULL, NULL, NULL, 'KOUNTIGUISSO', 'IHS_BAF_014M', 'OCI1576', 'IHS', 'IHS', NULL, NULL, NULL, '-7.37652778', 'Outdoor', 'Haubané', NULL, NULL, '8.51480556', 'En service', NULL, 'IHS 2013', NULL),
(20603, NULL, NULL, NULL, 'LATAHA', 'IHS_SVN_013M', 'OCI1577', 'IHS', 'IHS', NULL, NULL, NULL, '-5.59243612', 'Outdoor', 'Haubané', NULL, NULL, '9.57260278', 'En service', NULL, 'IHS 2013', NULL),
(20604, NULL, NULL, NULL, 'LELEBREKOUA', 'IHS_FMG_022M', 'OCI1578', 'IHS', 'IHS', NULL, NULL, NULL, '-5.81347223', 'Outdoor', 'Haubané', NULL, NULL, '6.17072223', 'En service', NULL, 'IHS 2013', NULL),
(20605, NULL, NULL, NULL, 'LURIEL', 'IHS_LGN_293M', 'OCI1579', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98588889', 'Outdoor', 'autostable', NULL, NULL, '5.37655556', 'En service', NULL, 'IHS 2013', NULL),
(20606, NULL, NULL, NULL, 'MAMA', 'IHS_FMG_031M', 'OCI1580', 'IHS', 'IHS', NULL, NULL, NULL, '-5.98600001', 'Outdoor', 'Autostable', NULL, NULL, '6.31688889', 'En service', NULL, 'IHS 2013', NULL),
(20607, NULL, NULL, NULL, 'MAN_MISTROT', 'IHS_DHM_003M', 'OCI1581', 'IHS', 'IHS', NULL, NULL, NULL, '-7.54186112', 'Outdoor', 'Autostable', NULL, NULL, '7.41036112', 'En service', NULL, 'IHS 2013', NULL),
(20608, NULL, NULL, NULL, 'MBATTO_RESIDENTIEL', 'IHS_NCE_023M', 'OCI1582', 'IHS', 'IHS', NULL, NULL, NULL, '-4.36547223', 'Outdoor', 'Autostable', NULL, NULL, '6.48000000', 'En service', NULL, 'IHS 2013', NULL),
(20609, NULL, NULL, NULL, 'MBORLA', 'IHS_VDB_080M', 'OCI1583', 'IHS', 'IHS', NULL, NULL, NULL, '-4.48150001', 'Outdoor', 'Haubané', NULL, NULL, '8.47166667', 'En service', NULL, 'IHS 2013', NULL),
(20610, NULL, NULL, NULL, 'MEAGUI_EPP4', 'IHS_BSD_079M', 'OCI1584', 'IHS', 'IHS', NULL, NULL, NULL, '-6.56216667', 'Outdoor', 'Autostable', NULL, NULL, '5.40961112', 'En service', NULL, 'IHS 2013', NULL),
(20611, NULL, NULL, NULL, 'MEAGUI_NETRO', 'IHS_BSD_076M', 'OCI1585', 'IHS', 'IHS', NULL, NULL, NULL, '-6.56055556', 'Outdoor', 'Autostable', NULL, NULL, '5.40338889', 'En service', NULL, 'IHS 2013', NULL),
(20612, NULL, NULL, NULL, 'MICRO_ID_FLASH', 'OCI_Indoor_015', 'OCI1587', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.017197', 'Outdoor', 'MAT', NULL, NULL, '5.325128', 'En service', NULL, 'DENSIF 2013', NULL),
(20613, NULL, NULL, NULL, 'MPOUTO', 'IHS_LGN_404M', 'OCI1588', 'IHS', 'IHS', NULL, NULL, NULL, '-3.95486112', 'Outdoor', 'Haubané', NULL, NULL, '5.32616667', 'En service', NULL, 'IHS 2013', NULL),
(20614, NULL, NULL, NULL, 'NANGOUNKAHA', 'IHS_SVN_012M', 'OCI1589', 'IHS', 'IHS', NULL, NULL, NULL, '-5.53382223', 'Outdoor', 'Haubané', NULL, NULL, '9.49283056', 'En service', NULL, 'IHS 2013', NULL),
(20615, NULL, NULL, NULL, 'NGUINOU', 'IHS_NCE_036M', 'OCI1590', 'IHS', 'IHS', NULL, NULL, NULL, '-4.18230556', 'Outdoor', 'Haubané', NULL, NULL, '6.73236111', 'En service', NULL, 'IHS 2013', NULL),
(20616, NULL, NULL, NULL, 'NIAMENLESSA', 'IHS_SCE_047M', 'OCI1591', 'IHS', 'IHS', NULL, NULL, NULL, '-2.83936112', 'Outdoor', 'Haubané', NULL, NULL, '5.46536112', 'En service', NULL, 'IHS 2013', NULL),
(20617, NULL, NULL, NULL, 'ODIENNE_RESIDENTIEL', 'IHS_DNG_003M', 'OCI1592', 'IHS', 'IHS', NULL, NULL, NULL, '-7.55144445', 'Outdoor', 'Autostable', NULL, NULL, '9.50294445', 'En service', NULL, 'IHS 2013', NULL),
(20618, NULL, NULL, NULL, 'OKABIS', 'IHS_LGN_576M', 'OCI1593', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00295000', 'Outdoor', 'Autostable', NULL, NULL, '5.42482500', 'En service', NULL, 'IHS 2013', NULL),
(20619, NULL, NULL, NULL, 'OUALEBO', 'IHS_BSD_104M', 'OCI1594', 'IHS', 'IHS', NULL, NULL, NULL, '-6.83705556', 'Outdoor', 'Haubané', NULL, NULL, '5.58794445', 'En service', NULL, 'IHS 2013', NULL),
(20620, NULL, NULL, NULL, 'OUATTARADOUGOU', 'IHS_MCY_025M', 'OCI1595', 'IHS', 'IHS', NULL, NULL, NULL, '-7.20091667', 'Outdoor', 'Haubané', NULL, NULL, '6.59097223', 'En service', NULL, 'IHS 2013', NULL),
(20621, NULL, NULL, NULL, 'PETIONARA', 'IHS_VDB_073M', 'OCI1596', 'IHS', 'IHS', NULL, NULL, NULL, '-5.11675001', 'Outdoor', 'Haubané', NULL, NULL, '8.42894445', 'En service', NULL, 'IHS 2013', NULL),
(20622, NULL, NULL, NULL, 'PETIT_YAPO', 'IHS_AGN_056M', 'OCI1597', 'IHS', 'IHS', NULL, NULL, NULL, '-4.14488889', 'Outdoor', 'Haubané', NULL, NULL, '5.79675000', 'En service', NULL, 'IHS 2013', NULL),
(20623, NULL, NULL, NULL, 'RIVIERA_BESSIKOI', 'IHS_LGN_510M', 'OCI1599', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96426667', 'Outdoor', 'Autostable', NULL, NULL, '5.39056112', 'En service', NULL, 'IHS 2013', NULL),
(20624, NULL, NULL, NULL, 'RIVIERA_SELMER', 'IHS_LGN_393M', 'OCI1600', 'IHS', 'IHS', NULL, NULL, NULL, '-3.95805278', 'Outdoor', 'Haubané', NULL, NULL, '5.35323334', 'En service', NULL, 'IHS 2013', NULL),
(20625, NULL, NULL, NULL, 'SAPHIR', 'IHS_LGN_624M', 'OCI1601', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05277778', 'Outdoor', 'autostable', NULL, NULL, '5.44069445', 'En service', NULL, 'IHS 2013', NULL),
(20626, NULL, NULL, NULL, 'SCB_SPADI', 'IHS_LGN_770M', 'OCI1602', 'IHS', 'IHS', NULL, NULL, NULL, '-4.79402778', 'Outdoor', 'Haubané', NULL, NULL, '5.96161112', 'En service', NULL, 'IHS 2013', NULL),
(20627, NULL, NULL, NULL, 'SECVIL', 'IHS_BSD_081M', 'OCI1603', 'IHS', 'IHS', NULL, NULL, NULL, '-6.56166667', 'Outdoor', 'Autostable', NULL, NULL, '5.41533334', 'En service', NULL, 'IHS 2013', NULL),
(20628, NULL, NULL, NULL, 'SHELL_VALLON', 'IHS_LGN_161M', 'OCI1604', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99530556', 'Outdoor', 'Autostable', NULL, NULL, '5.35475000', 'En service', NULL, 'IHS 2013', NULL),
(20629, NULL, NULL, NULL, 'SONDO', 'IHS_NCE_055M', 'OCI1605', 'IHS', 'IHS', NULL, NULL, NULL, '-4.58338889', 'Outdoor', 'Haubané', NULL, NULL, '7.50619445', 'En service', NULL, 'IHS 2013', NULL),
(20630, NULL, NULL, NULL, 'SOTREF', 'IHS_BSD_011M', 'OCI1606', 'IHS', 'IHS', NULL, NULL, NULL, '-6.64830556', 'Outdoor', 'Haubané', NULL, NULL, '4.78458334', 'En service', NULL, 'IHS 2013', NULL),
(20631, NULL, NULL, NULL, 'SOUBRE_CAMPEMENT', 'IHS_BSD_136M', 'OCI1607', 'IHS', 'IHS', NULL, NULL, NULL, '-6.58563889', 'Outdoor', 'Autostable', NULL, NULL, '5.78230556', 'En service', NULL, 'IHS 2013', NULL),
(20632, NULL, NULL, NULL, 'SOUBRE_GABON', 'IHS_BSD_134M', 'OCI1608', 'IHS', 'IHS', NULL, NULL, NULL, '-6.59375000', 'Outdoor', 'Autostable', NULL, NULL, '5.77844445', 'En service', NULL, 'IHS 2013', NULL),
(20633, NULL, NULL, NULL, 'ST_VINCENT', 'IHS_LGN_106M', 'OCI1609', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04052778', 'Outdoor', 'Autostable', NULL, NULL, '5.31552778', 'En service', NULL, 'IHS 2013', NULL),
(20634, NULL, NULL, NULL, 'TABOUDOUOPO', 'IHS_BSD_087M', 'OCI1610', 'IHS', 'IHS', NULL, NULL, NULL, '-7.32306945', 'Outdoor', 'Haubané', NULL, NULL, '4.45196945', 'En service', NULL, 'IHS 2013', NULL),
(20635, NULL, NULL, NULL, 'TAMBI', 'IHS_ZNZ_018M', 'OCI1611', 'IHS', 'IHS', NULL, NULL, NULL, '-2.56936112', 'Outdoor', 'Haubané', NULL, NULL, '8.22625000', 'En service', NULL, 'IHS 2013', NULL),
(20636, NULL, NULL, NULL, 'TCHAPATCHA', 'IHS_LGN_481M', 'OCI1612', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00601945', 'Outdoor', 'MAT', NULL, NULL, '5.41012501', 'En service', NULL, 'IHS 2013', NULL),
(20637, NULL, NULL, NULL, 'TERRE_ROUGE', 'IHS_BSD_010M', 'OCI1613', 'IHS', 'IHS', NULL, NULL, NULL, '-6.66561112', 'Outdoor', 'Haubané', NULL, NULL, '4.76625000', 'En service', NULL, 'IHS 2013', NULL),
(20638, NULL, NULL, NULL, 'WILLI_COMPLEXE', 'IHS_LGN_192M', 'OCI1614', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02226945', 'Outdoor', 'Haubané', NULL, NULL, '5.37563334', 'En service', NULL, 'IHS 2013', NULL),
(20639, NULL, NULL, NULL, 'YAKRO_CSP', 'IHS_LAC_001M', 'OCI1615', 'IHS', 'IHS', NULL, NULL, NULL, '-5.26975000', 'Outdoor', 'Autostable', NULL, NULL, '6.81602778', 'En service', NULL, 'IHS 2013', NULL),
(20640, NULL, NULL, NULL, 'YOP_NBUREAU', 'IHS_LGN_184M', 'OCI1616', 'IHS', 'IHS', NULL, NULL, NULL, '-4.06308334', 'Outdoor', 'Autostable', NULL, NULL, '5.33394445', 'En service', NULL, 'IHS 2013', NULL),
(20641, NULL, NULL, NULL, 'ZADDI', 'IHS_FMG_051M', 'OCI1617', 'IHS', 'IHS', NULL, NULL, NULL, '-5.73525001', 'Outdoor', 'Haubané', NULL, NULL, '6.33411112', 'En service', NULL, 'IHS 2013', NULL),
(20642, NULL, NULL, NULL, 'DJOUKOUYO', 'IHS_FMG_053M', 'OCI1619', 'IHS', 'IHS', NULL, NULL, NULL, '-5.96150001', 'Outdoor', 'Autostable', NULL, NULL, '5.82744445', 'En service', NULL, 'IHS 2013', NULL),
(20643, NULL, NULL, NULL, 'ASSURANCE', 'IHS_LGN_081M', 'OCI1621', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01716667', 'Outdoor', 'MAT', NULL, NULL, '5.31602778', 'En service', NULL, 'IHS 2013', NULL),
(20644, NULL, NULL, NULL, 'ABRONAMOUE', 'IHS_MCE_017M', 'OCI1622', 'IHS', 'IHS', NULL, NULL, NULL, '-3.34166667', 'Outdoor', 'Haubané', NULL, NULL, '6.75322223', 'En service', NULL, 'IHS 2013', NULL),
(20645, NULL, NULL, NULL, 'ATTIGUEHI', 'IHS_LGN_760M', 'OCI1623', 'IHS', 'IHS', NULL, NULL, NULL, '-4.55388889', 'Outdoor', 'Autostable', NULL, NULL, '6.06085556', 'En service', NULL, 'IHS 2013', NULL),
(20646, NULL, NULL, NULL, 'BLANFLA', 'IHS_MRH_009M', 'OCI1624', 'IHS', 'IHS', NULL, NULL, NULL, '-5.77330556', 'Outdoor', 'Autostable', NULL, NULL, '6.84238889', 'En service', NULL, 'IHS 2013', NULL),
(20647, NULL, NULL, NULL, 'BORIBANA', 'IHS_LGN_020M', 'OCI1625', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03113889', 'Outdoor', 'Haubané', NULL, NULL, '5.34161112', 'En service', NULL, 'IHS 2013', NULL),
(20648, NULL, NULL, NULL, 'BORON', 'IHS_SVN_062M', 'OCI1626', 'IHS', 'IHS', NULL, NULL, NULL, '-5.97037223', 'Outdoor', 'Haubané', NULL, NULL, '8.69323334', 'En service', NULL, 'IHS 2013', NULL),
(20649, NULL, NULL, NULL, 'BOUAFLE_MARCHE', 'IHS_MRH_004M', 'OCI1627', 'IHS', 'IHS', NULL, NULL, NULL, '-5.74141667', 'Outdoor', 'Autostable', NULL, NULL, '6.98969445', 'En service', NULL, 'IHS 2013', NULL),
(20650, NULL, NULL, NULL, 'BOUKO', 'IHS_ZNZ_064M', 'OCI1628', 'IHS', 'IHS', NULL, NULL, NULL, '-3.17297223', 'Outdoor', 'Haubané', NULL, NULL, '9.47161112', 'En service', NULL, 'IHS 2013', NULL),
(20651, NULL, NULL, NULL, 'BRABODOUGOU', 'IHS_SBD_013M', 'OCI1629', 'IHS', 'IHS', NULL, NULL, NULL, '-5.30105556', 'Outdoor', 'Haubané', NULL, NULL, '5.80236112', 'En service', NULL, 'IHS 2013', NULL),
(20652, NULL, NULL, NULL, 'CASSE', 'IHS_LGN_148M', 'OCI1630', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02645278', 'Outdoor', 'Haubané', NULL, NULL, '5.36713334', 'En service', NULL, 'IHS 2013', NULL),
(20653, NULL, NULL, NULL, 'DIEOUZON', 'IHS_DHM_024M', 'OCI1631', 'IHS', 'IHS', NULL, NULL, NULL, '-7.32250001', 'Outdoor', 'Haubané', NULL, NULL, '7.15777778', 'En service', NULL, 'IHS 2013', NULL),
(20654, NULL, NULL, NULL, 'FOUMBOLO', 'IHS_VDB_086M', 'OCI1632', 'IHS', 'IHS', NULL, NULL, NULL, '-4.65097223', 'Outdoor', 'Haubané', NULL, NULL, '8.63838889', 'En service', NULL, 'IHS 2013', NULL),
(20655, NULL, NULL, NULL, 'FOUNGBESSO', 'IHS_BAF_009M', 'OCI1633', 'IHS', 'IHS', NULL, NULL, NULL, '-7.67769445', 'Outdoor', 'Haubané', NULL, NULL, '7.95286112', 'En service', NULL, 'IHS 2013', NULL),
(20656, NULL, NULL, NULL, 'GNAKOBLONOUAN', 'IHS_SBD_072M', 'OCI1634', 'IHS', 'IHS', NULL, NULL, NULL, '-5.98400001', 'Outdoor', 'Haubané', NULL, NULL, '5.70997223', 'En service', NULL, 'IHS 2013', NULL),
(20657, NULL, NULL, NULL, 'GUEZON_TAHOKE', 'IHS_DHM_040M', 'OCI1635', 'IHS', 'IHS', NULL, NULL, NULL, '-7.17947222', 'Outdoor', 'Haubané', NULL, NULL, '7.08311111', 'En service', NULL, 'IHS 2013', NULL),
(20658, NULL, NULL, NULL, 'GUINTEGUELA', 'IHS_BAF_012M', 'OCI1636', 'IHS', 'IHS', NULL, NULL, NULL, '-7.31866667', 'Outdoor', 'Autostable', NULL, NULL, '8.28747223', 'En service', NULL, 'IHS 2013', NULL),
(20659, NULL, NULL, NULL, 'HEIKPAN', 'IHS_BSD_002M', 'OCI1637', 'IHS', 'IHS', NULL, NULL, NULL, '-6.64636112', 'Outdoor', 'Haubané', NULL, NULL, '4.76588889', 'En service', NULL, 'IHS 2013', NULL),
(20660, NULL, NULL, NULL, 'ILE_VERTE', 'IHS_LGN_634M', 'OCI1638', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00558334', 'Outdoor', 'Haubané', NULL, NULL, '5.44697223', 'En service', NULL, 'IHS 2013', NULL),
(20661, NULL, NULL, NULL, 'ISTCO', 'IHS_LGN_412M', 'OCI1639', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96019445', 'Outdoor', 'MAT', NULL, NULL, '5.30380556', 'En service', NULL, 'IHS 2013', NULL),
(20662, NULL, NULL, NULL, 'KIMBIRILA_SUD', 'IHS_DNG_006M', 'OCI1640', 'IHS', 'IHS', NULL, NULL, NULL, '-7.61311112', 'Outdoor', 'Autostable', NULL, NULL, '9.72261112', 'En service', NULL, 'IHS 2013', NULL),
(20663, NULL, NULL, NULL, 'KOONAN', 'IHS_BAF_008M', 'OCI1641', 'IHS', 'IHS', NULL, NULL, NULL, '-7.97600000', 'Outdoor', 'Haubané', NULL, NULL, '8.36125000', 'En service', NULL, 'IHS 2013', NULL),
(20664, NULL, NULL, NULL, 'KORHOGO_KOKO', 'IHS_SVN_001M', 'OCI1642', 'IHS', 'IHS', NULL, NULL, NULL, '-5.63350001', 'Outdoor', 'Autostable', NULL, NULL, '9.46180556', 'En service', NULL, 'IHS 2013', NULL),
(20665, NULL, NULL, NULL, 'KOTABLIEOUA', 'IHS_BSD_183M', 'OCI1643', 'IHS', 'IHS', NULL, NULL, NULL, '-6.51894445', 'Outdoor', 'Autostable', NULL, NULL, '6.20909167', 'En service', NULL, 'IHS 2013', NULL),
(20666, NULL, NULL, NULL, 'NOUKPOUDOU', 'IHS_HSD_100M', 'OCI1644', 'IHS', 'IHS', NULL, NULL, NULL, '-6.89891667', 'Outdoor', 'Haubané', NULL, NULL, '6.39833334', 'En service', NULL, 'IHS 2013', NULL),
(20667, NULL, NULL, NULL, 'PINHOU_KOULOUAN', 'IHS_DHM_038M', 'OCI1645', 'IHS', 'IHS', NULL, NULL, NULL, '-7.70152778', 'Outdoor', 'Haubané', NULL, NULL, '6.95600000', 'En service', NULL, 'IHS 2013', NULL),
(20668, NULL, NULL, NULL, 'SONONZO', 'IHS_WRD_032M', 'OCI1646', 'IHS', 'IHS', NULL, NULL, NULL, '-6.13469445', 'Outdoor', 'Haubané', NULL, NULL, '8.63211112', 'En service', NULL, 'IHS 2013', NULL),
(20669, NULL, NULL, NULL, 'SPHINX', 'IHS_LGN_643M', 'OCI1647', 'IHS', 'IHS', NULL, NULL, NULL, '-4.06847223', 'Outdoor', 'Haubané', NULL, NULL, '5.44447223', 'En service', NULL, 'IHS 2013', NULL),
(20670, NULL, NULL, NULL, 'TAHOGORA', 'IHS_VDB_081M', 'OCI1648', 'IHS', 'IHS', NULL, NULL, NULL, '-4.58616667', 'Outdoor', 'Haubané', NULL, NULL, '8.56044445', 'En service', NULL, 'IHS 2013', NULL),
(20671, NULL, NULL, NULL, 'TIEMA', 'IHS_WRD_020M', 'OCI1649', 'IHS', 'IHS', NULL, NULL, NULL, '-6.84327778', 'Outdoor', 'Autostable', NULL, NULL, '8.14058334', 'En service', NULL, 'IHS 2013', NULL),
(20672, NULL, NULL, NULL, 'WINDENE', 'IHS_VDB_091M', 'OCI1650', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08075000', 'Outdoor', 'Haubané', NULL, NULL, '8.57277778', 'En service', NULL, 'IHS 2013', NULL),
(20673, NULL, NULL, NULL, 'ADZOPE_LYCEE', 'IHS_AGN_004M', 'OCI1651', 'IHS', 'IHS', NULL, NULL, NULL, '-3.86858334', 'Outdoor', 'Autostable', NULL, NULL, '6.11402778', 'En service', NULL, 'IHS 2013', NULL),
(20674, NULL, NULL, NULL, 'AKOUNOUGBE', 'IHS_SCE_032M', 'OCI1652', 'IHS', 'IHS', NULL, NULL, NULL, '-3.17319445', 'Outdoor', 'Haubané', NULL, NULL, '5.18902778', 'En service', NULL, 'IHS 2013', NULL),
(20675, NULL, NULL, NULL, 'AVOCATIER', 'IHS_LGN_613M', 'OCI1653', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02963889', 'Outdoor', 'Haubané + 2 mat', NULL, NULL, '5.44047223', 'En service', NULL, 'IHS 2013', NULL),
(20676, NULL, NULL, NULL, 'DANANON', 'IHS_HSD_108M', 'OCI1654', 'IHS', 'IHS', NULL, NULL, NULL, '-6.36169445', 'Outdoor', 'Autostable', NULL, NULL, '7.61358334', 'En service', NULL, 'IHS 2013', NULL),
(20677, NULL, NULL, NULL, 'GOMENEBERI', 'IHS_SBD_063M', 'OCI1655', 'IHS', 'IHS', NULL, NULL, NULL, '-5.52019445', 'Outdoor', 'Haubané', NULL, NULL, '5.38097223', 'En service', NULL, 'IHS 2013', NULL),
(20678, NULL, NULL, NULL, 'MIFA', 'IHS_LGN_046M', 'OCI1656', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03505556', 'Outdoor', 'Haubané', NULL, NULL, '5.34464167', 'En service', NULL, 'IHS 2013', NULL),
(20679, NULL, NULL, NULL, 'NIABABLY', 'IHS_BSD_077M', 'OCI1657', 'IHS', 'IHS', NULL, NULL, NULL, '-6.07036112', 'Outdoor', 'Autostable', NULL, NULL, '5.06380556', 'En service', NULL, 'IHS 2013', NULL),
(20680, NULL, NULL, NULL, 'PONA', 'IHS_MCY_010O', 'OCI1658', 'IHS', 'IHS', NULL, NULL, NULL, '-7.54875000', 'Outdoor', 'Haubané', NULL, NULL, '6.40641667', 'En service', NULL, 'IHS 2013', NULL),
(20681, NULL, NULL, NULL, 'RANCH_SIPILOU', 'IHS_DHM_042M', 'OCI1659', 'IHS', 'IHS', NULL, NULL, NULL, '-7.85352778', 'Outdoor', 'Haubané', NULL, NULL, '7.84458334', 'En service', NULL, 'IHS 2013', NULL),
(20682, NULL, NULL, NULL, 'SEGUELON', 'IHS_DNG_020M', 'OCI1660', 'IHS', 'IHS', NULL, NULL, NULL, '-7.12288889', 'Outdoor', 'Haubané', NULL, NULL, '9.37386112', 'En service', NULL, 'IHS 2013', NULL),
(20683, NULL, NULL, NULL, 'TOMORA', 'IHS_ZNZ_028M', 'OCI1661', 'IHS', 'IHS', NULL, NULL, NULL, '-3.30538889', 'Outdoor', 'Haubané', NULL, NULL, '8.01072223', 'En service', NULL, 'IHS 2013', NULL),
(20684, NULL, NULL, NULL, 'BILIMONO', 'IHS_SVN_091M', 'OCI1662', 'IHS', 'IHS', NULL, NULL, NULL, '-4.14540278', 'Outdoor', 'Haubané', NULL, NULL, '8.92106112', 'En service', NULL, 'IHS 2013', NULL),
(20685, NULL, NULL, NULL, 'BOUGOU', 'IHS_SVN_088M', 'OCI1663', 'IHS', 'IHS', NULL, NULL, NULL, '-4.40758334', 'Outdoor', 'Haubané', NULL, NULL, '8.94475000', 'En service', NULL, 'IHS 2013', NULL),
(20686, NULL, NULL, NULL, 'KALAKALA', 'IHS_SVN_058O', 'OCI1664', 'IHS', 'IHS', NULL, NULL, NULL, '-4.91572223', 'Outdoor', 'Haubané', NULL, NULL, '9.46027778', 'En service', NULL, 'IHS 2013', NULL),
(20687, NULL, NULL, NULL, 'KOKOLOPOZO', 'IHS_BSD_083M', 'OCI1665', 'IHS', 'IHS', NULL, NULL, NULL, '-6.08736112', 'Outdoor', 'Haubané', NULL, NULL, '5.14422223', 'En service', NULL, 'IHS 2013', NULL),
(20688, NULL, NULL, NULL, 'KOTIBE', 'IHS_LGN_275M', 'OCI1666', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07702778', 'Outdoor', 'Autostable', NULL, NULL, '5.32925000', 'En service', NULL, 'IHS 2013', NULL),
(20689, NULL, NULL, NULL, 'SOMINASSE', 'IHS_ZNZ_058M', 'OCI1667', 'IHS', 'IHS', NULL, NULL, NULL, '-3.75663889', 'Outdoor', 'Haubané', NULL, NULL, '8.37219445', 'En service', NULL, 'IHS 2013', NULL),
(20690, NULL, NULL, NULL, 'TORO_KINKENE', 'IHS_SVN_089M', 'OCI1668', 'IHS', 'IHS', NULL, NULL, NULL, '-4.42063889', 'Outdoor', 'Haubané', NULL, NULL, '8.86444445', 'En service', NULL, 'IHS 2013', NULL),
(20691, NULL, NULL, NULL, 'ST_MARC', 'IHS_LGN_793O', 'OCI1669', 'IHS', 'OCI', NULL, NULL, NULL, '-4.04827778', 'Outdoor', 'Autostable', NULL, NULL, '5.32402778', 'En service', NULL, 'IHS 2013', NULL),
(20692, NULL, NULL, NULL, 'NASSIAN_IHS', 'IHS_ZNZ_043M', 'OCI1670', 'IHS', 'IHS', NULL, NULL, NULL, '-3.46872223', 'Outdoor', 'Haubané', NULL, NULL, '8.44683334', 'En service', NULL, 'IHS 2013', NULL),
(20693, NULL, NULL, NULL, 'ABRADINOU', 'IHS_MCE_053M', 'OCI1671', 'IHS', 'IHS', NULL, NULL, NULL, '-3.45500000', 'Outdoor', 'Haubané', NULL, NULL, '6.18816667', 'En service', NULL, 'IHS 2013', NULL),
(20694, NULL, NULL, NULL, 'COTIVO', 'IHS_AGN_051M', 'OCI1672', 'IHS', 'IHS', NULL, NULL, NULL, '-4.20447223', 'Outdoor', 'Autostable', NULL, NULL, '5.90830556', 'En service', NULL, 'IHS 2013', NULL),
(20695, NULL, NULL, NULL, 'BANOUFLA', 'IHS_MRH_059M', 'OCI1673', 'IHS', 'IHS', NULL, NULL, NULL, '-6.30619445', 'Outdoor', 'Autostable', NULL, NULL, '7.45597223', 'En service', NULL, 'IHS 2013', NULL),
(20696, NULL, NULL, NULL, 'BROUBROU', 'IHS_LGN_758M', 'OCI1675', 'IHS', 'IHS', NULL, NULL, NULL, '-4.81902778', 'Outdoor', 'Haubané', NULL, NULL, '5.72247223', 'En service', NULL, 'IHS 2013', NULL),
(20697, NULL, NULL, NULL, 'HORTY', 'IHS_LGN_451M', 'OCI1677', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97952778', 'Outdoor', 'Haubané', NULL, NULL, '5.39569445', 'En service', NULL, 'IHS 2013', NULL),
(20698, NULL, NULL, NULL, 'RIVIERA_EXTENSION', 'IHS_LGN_449M', 'OCI1678', 'IHS', 'IHS', NULL, NULL, NULL, '-3.94905556', 'Outdoor', 'Haubané', NULL, NULL, '5.34169445', 'En service', NULL, 'IHS 2013', NULL),
(20699, NULL, NULL, NULL, 'GLY_RAIL', 'IHS_SBD_018M', 'OCI1679', 'IHS', 'IHS', NULL, NULL, NULL, '-5.28361112', 'Outdoor', 'Haubané', NULL, NULL, '5.70938889', 'En service', NULL, 'IHS 2013', NULL),
(20700, NULL, NULL, NULL, 'BASSAM_PHARE', 'IHS_SCE_075M', 'OCI1680', 'IHS', 'IHS', NULL, NULL, NULL, '-3.73122223', 'Outdoor', 'Autostable', NULL, NULL, '5.20986112', 'En service', NULL, 'IHS 2013', NULL),
(20701, NULL, NULL, NULL, 'GUINKIN', 'IHS_MCY_014M', 'OCI1681', 'IHS', 'IHS', NULL, NULL, NULL, '-7.72213889', 'Outdoor', 'Haubané', NULL, NULL, '6.56416667', 'En service', NULL, 'IHS 2013', NULL),
(20702, NULL, NULL, NULL, 'CITADELLE', 'IHS_LGN_511M', 'OCI1682', 'IHS', 'IHS', NULL, NULL, NULL, '-3.95527778', 'Outdoor', 'MAT', NULL, NULL, '5.29075000', 'En service', NULL, 'IHS 2013', NULL),
(20703, NULL, NULL, NULL, 'BENSON', 'IHS_LGN_234M', 'OCI1683', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98577778', 'Outdoor', 'MAT', NULL, NULL, '5.30605556', 'En service', NULL, 'IHS 2013', NULL),
(20704, NULL, NULL, NULL, 'NIZAHON', 'IHS_MCY_013M', 'OCI1684', 'IHS', 'IHS', NULL, NULL, NULL, '-7.39555556', 'Outdoor', 'Haubané', NULL, NULL, '6.37080556', 'En service', NULL, 'IHS 2013', NULL),
(20705, NULL, NULL, NULL, 'PALM_BEACH', 'IHS_LGN_546M', 'OCI1685', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98766667', 'Outdoor', 'Haubané', NULL, NULL, '5.25538889', 'En service', NULL, 'IHS 2013', NULL),
(20706, NULL, NULL, NULL, 'SAKOFE', 'IHS_BAF_004O', 'OCI1686', 'IHS', 'OCI', NULL, NULL, NULL, '-7.79067778', 'Outdoor', 'Haubané', NULL, NULL, '8.29941389', 'En service', NULL, 'IHS 2013', NULL),
(20707, NULL, NULL, NULL, 'BETHEL', 'IHS_BSD_009M', 'OCI1689', 'IHS', 'IHS', NULL, NULL, NULL, '-6.64413889', 'Outdoor', 'Haubané', NULL, NULL, '4.73877778', 'En service', NULL, 'IHS 2013', NULL),
(20708, NULL, NULL, NULL, 'KANGUELE', 'IHS_ZNZ_073O', 'OCI1690', 'IHS', 'IHS', NULL, NULL, NULL, '-2.71491667', 'Outdoor', 'Haubané', NULL, NULL, '8.12330556', 'En service', NULL, 'IHS 2013', NULL),
(20709, NULL, NULL, NULL, 'TALAHINI', 'IHS_ZNZ_083O', 'OCI1691', 'IHS', 'OCI', NULL, NULL, NULL, '-3.56400000', 'Outdoor', 'Haubané', NULL, NULL, '8.39485278', 'En service', NULL, 'IHS 2013', NULL),
(20710, NULL, NULL, NULL, 'TOUMODI_MARCHE', 'IHS_LAC_067M', 'OCI1692', 'IHS', 'IHS', NULL, NULL, NULL, '-5.01219445', 'Outdoor', 'Haubané', NULL, NULL, '6.55547223', 'En service', NULL, 'IHS 2013', NULL),
(20711, NULL, NULL, NULL, 'HOTEL_DIEU', 'IHS_LGN_189M', 'OCI1693', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00836112', 'Outdoor', 'Haubané', NULL, NULL, '5.29741667', 'En service', NULL, 'IHS 2013', NULL),
(20712, NULL, NULL, NULL, 'VOLTAIRE', 'IHS_LGN_215M', 'OCI1694', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99350001', 'Outdoor', 'MAT', NULL, NULL, '5.30233334', 'En service', NULL, 'IHS 2013', NULL),
(20713, NULL, NULL, NULL, 'VROUHO', 'IHS_HSD_111M', 'OCI1695', 'IHS', 'IHS', NULL, NULL, NULL, '-6.57688889', 'Outdoor', 'Autostable', NULL, NULL, '7.68425001', 'En service', NULL, 'IHS 2013', NULL),
(20714, NULL, NULL, NULL, 'NZUEKOKORE', 'IHS_NCE_026M', 'OCI1696', 'IHS', 'IHS', NULL, NULL, NULL, '-4.29463889', 'Outdoor', 'Haubané', NULL, NULL, '6.57019445', 'En service', NULL, 'IHS 2013', NULL),
(20715, NULL, NULL, NULL, 'YAKRO_220', 'IHS_LAC_009M', 'OCI1697', 'IHS', 'IHS', NULL, NULL, NULL, '-5.25913889', 'Outdoor', 'Autostable', NULL, NULL, '6.82344445', 'En service', NULL, 'IHS 2013', NULL),
(20716, NULL, NULL, NULL, 'BAGOUE', 'IHS_LGN_450M', 'OCI1698', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09936112', 'Outdoor', 'MAT', NULL, NULL, '5.33238889', 'En service', NULL, 'IHS 2013', NULL),
(20717, NULL, NULL, NULL, 'ECIS', 'IHS_LGN_264M', 'OCI1699', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07169445', 'Outdoor', 'Autostable', NULL, NULL, '5.35455556', 'En service', NULL, 'IHS 2013', NULL),
(20718, NULL, NULL, NULL, 'MAROC_STAR', 'IHS_LGN_464M', 'OCI1700', 'IHS', 'IHS', NULL, NULL, NULL, '-4.10127778', 'Outdoor', 'MAT', NULL, NULL, '5.33786112', 'En service', NULL, 'IHS 2013', NULL),
(20719, NULL, NULL, NULL, 'NOVALIME', 'IHS_LGN_355M', 'OCI1701', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08777778', 'Outdoor', 'MAT', NULL, NULL, '5.34538889', 'En service', NULL, 'IHS 2013', NULL),
(20720, NULL, NULL, NULL, 'POSTE_TOIT_ROUGE', 'IHS_LGN_139M', 'OCI1702', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05488889', 'Outdoor', 'MAT', NULL, NULL, '5.33352778', 'En service', NULL, NULL, NULL),
(20721, NULL, NULL, NULL, 'ROUTE_DABOU', 'IHS_LGN_493M', 'OCI1703', 'IHS', 'IHS', NULL, NULL, NULL, '-4.10002778', 'Outdoor', 'Haubané', NULL, NULL, '5.35838889', 'En service', NULL, 'IHS 2013', NULL),
(20722, NULL, NULL, NULL, 'STE_ELISABETH', 'IHS_LGN_454M', 'OCI1704', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09836112', 'Outdoor', 'Haubané', NULL, NULL, '5.34886112', 'En service', NULL, 'IHS 2013', NULL),
(20723, NULL, NULL, NULL, 'YOP_BAPTISTE', 'IHS_LGN_171M', 'OCI1705', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05944445', 'Outdoor', 'MAT', NULL, NULL, '5.32497223', 'En service', NULL, 'IHS 2013', NULL),
(20724, NULL, NULL, NULL, 'YOP_CAMP', 'IHS_LGN_216M', 'OCI1706', 'IHS', 'IHS', NULL, NULL, NULL, '-4.06600001', 'Outdoor', 'autostable', NULL, NULL, '5.31783334', 'En service', NULL, 'IHS 2013', NULL),
(20725, NULL, NULL, NULL, 'AKEKRO', 'IHS_MCY_040O', 'OCI1707', 'IHS', 'OCI', NULL, NULL, NULL, '-7.60308334', 'Outdoor', 'Haubané', NULL, NULL, '6.17536112', 'En service', NULL, 'IHS 2013', NULL),
(20726, NULL, NULL, NULL, 'AKREBI', 'IHS_MCE_054M', 'OCI1708', 'IHS', 'IHS', NULL, NULL, NULL, '-3.38355556', 'Outdoor', 'Haubané', NULL, NULL, '6.14094445', 'En service', NULL, 'IHS 2013', NULL),
(20727, NULL, NULL, NULL, 'VROUHO_2', 'IHS_HSD_112M', 'OCI1709', 'IHS', 'IHS', NULL, NULL, NULL, '-6.66705556', 'Outdoor', 'Autostable', NULL, NULL, '7.68616667', 'En service', NULL, 'IHS 2013', NULL),
(20728, NULL, NULL, NULL, 'DAGODIO', 'IHS_FMG_024M', 'OCI1710', 'IHS', 'IHS', NULL, NULL, NULL, '-6.09416667', 'Outdoor', 'Haubané', NULL, NULL, '6.15930556', 'En service', NULL, 'IHS 2013', NULL),
(20729, NULL, NULL, NULL, 'DALOA_GARAGE', 'IHS_HSD_010M', 'OCI1711', 'IHS', 'IHS', NULL, NULL, NULL, '-6.44663889', 'Outdoor', 'Autostable', NULL, NULL, '6.85272223', 'En service', NULL, 'IHS 2013', NULL),
(20730, NULL, NULL, NULL, 'GOUDI-ZEGO', 'IHS_SBD_058M', 'OCI1712', 'IHS', 'IHS', NULL, NULL, NULL, '-5.10302778', 'Outdoor', 'Haubané', NULL, NULL, '6.11752778', 'En service', NULL, 'IHS 2013', NULL),
(20731, NULL, NULL, NULL, 'GOUMERE_BOUNA', 'IHS_ZNZ_074O', 'OCI1713', 'IHS', 'OCI', NULL, NULL, NULL, '-3.17211111', 'Outdoor', 'Haubané', NULL, NULL, '8.61819444', 'En service', NULL, 'IHS 2013', NULL),
(20732, NULL, NULL, NULL, 'GSNANTI', 'IHS_LGN_427M', 'OCI1714', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01097223', 'Outdoor', 'Haubané', NULL, NULL, '5.40663889', 'En service', NULL, 'IHS 2013', NULL),
(20733, NULL, NULL, NULL, 'HOTEL_IVOIRE_PALMIER', 'OCI_Palmier_003', 'OCI1715', 'Esco', 'OCI', NULL, NULL, NULL, '-4.00466667', 'Outdoor', 'Autostable', NULL, NULL, '5.32544445', 'En service', NULL, 'IHS 2013', NULL),
(20734, NULL, NULL, NULL, 'KAHEN_ZARABAON', 'IHS_MCY_037M', 'OCI1716', 'IHS', 'IHS', NULL, NULL, NULL, '-7.63277778', 'Outdoor', 'Haubané', NULL, NULL, '6.91675000', 'En service', NULL, 'IHS 2013', NULL),
(20735, NULL, NULL, NULL, 'MAMIE_ADJOUA', 'IHS_LAC_012M', 'OCI1717', 'IHS', 'IHS', NULL, NULL, NULL, '-5.27172223', 'Outdoor', 'Autostable', NULL, NULL, '6.83286112', 'En service', NULL, 'IHS 2013', NULL),
(20736, NULL, NULL, NULL, 'PETIT_OUAGA', 'IHS_BSD_171M', 'OCI1719', 'IHS', 'IHS', NULL, NULL, NULL, '-6.83044445', 'Outdoor', 'Haubané', NULL, NULL, '6.02091667', 'En service', NULL, 'IHS 2013', NULL),
(20737, NULL, NULL, NULL, 'SERIHIO', 'IHS_FMG_044M', 'OCI1720', 'IHS', 'IHS', NULL, NULL, NULL, '-6.12277778', 'Outdoor', 'Haubané', NULL, NULL, '5.90047223', 'En service', NULL, 'IHS 2013', NULL),
(20738, NULL, NULL, NULL, 'TEHINI_RELAIS', 'IHS_ZNZ_069M', 'OCI1721', 'IHS', 'IHS', NULL, NULL, NULL, '-3.59758334', 'Outdoor', 'Haubané', NULL, NULL, '9.58000000', 'En service', NULL, 'IHS 2013', NULL),
(20739, NULL, NULL, NULL, 'YAOSSEDOUGOU', 'IHS_VDB_079M', 'OCI1722', 'IHS', 'IHS', NULL, NULL, NULL, '-4.24565000', 'Outdoor', 'Autostable', NULL, NULL, '8.23672501', 'En service', NULL, 'IHS 2013', NULL),
(20740, NULL, NULL, NULL, 'YOP_CHU', 'ABJ076', 'OCI1723', 'Esco', 'OCI', NULL, NULL, NULL, '-4.08605556', 'Outdoor', 'autostable', NULL, NULL, '5.35725001', 'En service', NULL, 'IHS 2013', NULL),
(20741, NULL, NULL, NULL, 'YOP_MGOURO', 'IHS_LGN_280M', 'OCI1724', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07641667', 'Outdoor', 'Haubané', NULL, NULL, '5.35080556', 'En service', NULL, 'IHS 2013', NULL),
(20742, NULL, NULL, NULL, 'YOP_PETRO_IVOIRE', 'IHS_LGN_369M', 'OCI1725', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09094445', 'Outdoor', 'MAT', NULL, NULL, '5.33527778', 'En service', NULL, 'IHS 2013', NULL),
(20743, NULL, NULL, NULL, 'TENDENE', 'IHS_VDB_087M', 'OCI1726', 'IHS', 'IHS', NULL, NULL, NULL, '-4.23727223', 'Outdoor', 'Haubané', NULL, NULL, '8.47169445', 'En service', NULL, 'IHS 2013', NULL),
(20744, NULL, NULL, NULL, 'RAMBLAIS_NEW', 'IHS_LGN_362M', 'OCI1727', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96922223', 'Outdoor', 'MAT', NULL, NULL, '5.29894445', 'En service', NULL, 'IHS 2013', NULL),
(20745, NULL, NULL, NULL, 'CORNICHE_PALMIER', 'ABJ114', 'OCI1728', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01311112', 'Outdoor', 'Autostable', NULL, NULL, '5.33480556', 'En service', NULL, 'IHS 2013', NULL),
(20746, NULL, NULL, NULL, 'ADJAME_MARCHE', 'IHS_LGN_026M', 'OCI1729', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02680556', 'Outdoor', 'Haubané', NULL, NULL, '5.34611112', 'En service', NULL, 'IHS 2013', NULL),
(20747, NULL, NULL, NULL, 'ASSAKRO', 'IHS_MCE_021M', 'OCI1730', 'IHS', 'IHS', NULL, NULL, NULL, '-3.63066667', 'Outdoor', 'Haubané', NULL, NULL, '6.57719445', 'En service', NULL, 'IHS 2013', NULL),
(20748, NULL, NULL, NULL, 'BOULAFLA', 'IHS_LGN_135M', 'OCI1731', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05294445', 'Outdoor', 'Haubané', NULL, NULL, '5.32863889', 'En service', NULL, 'IHS 2013', NULL),
(20749, NULL, NULL, NULL, 'DACOURITRO', 'IHS_SBD_033M', 'OCI1732', 'IHS', 'IHS', NULL, NULL, NULL, '-5.59680556', 'Outdoor', 'Haubané', NULL, NULL, '5.97252778', 'En service', NULL, 'IHS 2013', NULL),
(20750, NULL, NULL, NULL, 'KOSSANDJI', 'IHS_LGN_744M', 'OCI1733', 'IHS', 'IHS', NULL, NULL, NULL, '-3.60458334', 'Outdoor', 'Haubané', NULL, NULL, '5.82458334', 'En service', NULL, 'IHS 2013', NULL),
(20751, NULL, NULL, NULL, 'MIANKOU_KOUASSIKRO', 'IHS_BSD_118M', 'OCI1734', 'IHS', 'IHS', NULL, NULL, NULL, '-6.14811112', 'Outdoor', 'Haubané', NULL, NULL, '5.55244445', 'En service', NULL, 'IHS 2013', NULL),
(20752, NULL, NULL, NULL, 'NGORANKRO', 'IHS_NCE_075O', 'OCI1735', 'IHS', 'OCI', NULL, NULL, NULL, '-3.84688889', 'Outdoor', 'Haubané', NULL, NULL, '6.92152778', 'En service', NULL, 'IHS 2013', NULL),
(20753, NULL, NULL, NULL, 'SAYE', 'IHS_ZNZ_065M', 'OCI1736', 'IHS', 'IHS', NULL, NULL, NULL, '-3.34641667', 'Outdoor', 'Haubané', NULL, NULL, '9.45494445', 'En service', NULL, 'IHS 2013', NULL),
(20754, NULL, NULL, NULL, 'DEGAULLE_PALMIER', 'ABJ116', 'OCI1737', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01075834', 'Outdoor', 'Autostable', NULL, NULL, '5.31866667', 'En service', NULL, 'IHS 2013', NULL),
(20755, NULL, NULL, NULL, 'MARLEY', 'IHS_LGN_515M', 'OCI1738', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01744445', 'Outdoor', 'Autostable', NULL, NULL, '5.41683334', 'En service', NULL, 'IHS 2013', NULL),
(20756, NULL, NULL, NULL, 'SOUBRE_NORD', 'IHS_BSD_146M', 'OCI1739', 'IHS', 'IHS', NULL, NULL, NULL, '-6.58663889', 'Outdoor', 'Autostable', NULL, NULL, '5.79233334', 'En service', NULL, 'IHS 2013', NULL),
(20757, NULL, NULL, NULL, 'MAROC_CIT', 'IHS_LGN_792O', 'OCI1741', 'IHS', 'OCI', NULL, NULL, NULL, '-4.10027778', 'Outdoor', 'autostable', NULL, NULL, '5.34119445', 'En service', NULL, 'DENSIF 2014', NULL),
(20758, NULL, NULL, NULL, 'PALMERAIE_MOBILE', 'IHS_LGN_472M', 'OCI1742', 'IHS', 'IHS', NULL, NULL, NULL, '-3.95867', 'Outdoor', 'Autostable Mobile', NULL, NULL, '5.37724', 'En service', NULL, NULL, NULL),
(20759, NULL, NULL, NULL, 'ST_PIERRE', 'IHS_LGN_337M', 'OCI1744', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08705556', 'Outdoor', 'autostable', NULL, NULL, '5.32716667', 'En service', NULL, 'DENSIF 2014', NULL),
(20760, NULL, NULL, NULL, 'BUYO_PLATO', 'IHS_BSD_195O', 'OCI1745', 'IHS', 'OCI', NULL, NULL, NULL, '-6.99766667', 'Outdoor', 'autostable', NULL, NULL, '6.27411112', 'En service', NULL, 'Densif 2014', NULL),
(20761, NULL, NULL, NULL, 'OTTOPE', 'IHS_AGN_086M', 'OCI1746', 'IHS', 'IHS', NULL, NULL, NULL, '-4.29780556', 'Outdoor', 'Autostable', NULL, NULL, '5.70536112', 'En service', NULL, 'DEPLOIEMENT 2014', NULL),
(20762, NULL, NULL, NULL, 'BIANKOUMA_GARE', 'IHS_DHM_067O', 'OCI1747', 'IHS', 'IHS', NULL, NULL, NULL, '-7.61480556', 'Outdoor', 'autostable', NULL, NULL, '7.73394445', 'En service', NULL, 'DENSIF 2014', NULL),
(20763, NULL, NULL, NULL, 'BONON_SUD', 'IHS_MRH_067O', 'OCI1748', 'IHS', 'IHS', NULL, NULL, NULL, '-6.04405556', 'Outdoor', 'autostable', NULL, NULL, '6.92119445', 'En service', NULL, 'DENSIF 2014', NULL),
(20764, NULL, NULL, NULL, 'LANGEVIN_NEW', 'IHS_LGN_827O', 'OCI1749', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97483334', 'Outdoor', 'Autostable', NULL, NULL, '5.28447223', 'En service', NULL, 'DENSIF 2014', NULL),
(20765, NULL, NULL, NULL, 'MARCHE_BELLEVILLE', 'IHS_LGN_824O', 'OCI1750', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99800000', 'Outdoor', 'autostable', NULL, NULL, '5.30558334', 'En service', NULL, 'DENSIF 2014', NULL),
(20766, NULL, NULL, NULL, 'OLIVIER', 'IHS_LGN_825O', 'OCI1751', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00662778', 'Outdoor', 'autostable', NULL, NULL, '5.37438612', 'En service', NULL, 'DENSIF 2014', NULL),
(20767, NULL, NULL, NULL, 'OUALI', 'IHS_LGN_836O', 'OCI1752', 'IHS', 'IHS', NULL, NULL, NULL, '-3.91233334', 'Outdoor', 'autostable', NULL, NULL, '5.38463889', 'En service', NULL, 'DENSIF 2014', NULL),
(20768, NULL, NULL, NULL, 'STE_AGATHE', 'IHS_LGN_826O', 'OCI1753', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96694445', 'Outdoor', 'Haubané', NULL, NULL, '5.30252778', 'En service', NULL, 'DENSIF 2014', NULL),
(20769, NULL, NULL, NULL, 'ANGRE_CHATO', 'IHS_LGN_830O', 'OCI1754', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98550000', 'Outdoor', 'autostable', NULL, NULL, '5.41055556', 'En service', NULL, 'DENSIF 2014', NULL),
(20770, NULL, NULL, NULL, 'BAFFIA', 'IHS_SCE_092O', 'OCI1755', 'IHS', 'IHS', NULL, NULL, NULL, '-2.98763889', 'Outdoor', 'Autostable', NULL, NULL, '5.53169445', 'En service', NULL, 'DENSIF 2014', NULL),
(20771, NULL, NULL, NULL, 'BANNEU', 'IHS_DHM_078O', 'OCI1756', 'IHS', 'IHS', NULL, NULL, NULL, '-8.24816667', 'Outdoor', 'Autostable', NULL, NULL, '7.07666667', 'En service', NULL, 'DENSIF 2014', NULL),
(20772, NULL, NULL, NULL, 'BEOUE_ZIBIAO', 'IHS_DHM_068O', 'OCI1757', 'IHS', 'IHS', NULL, NULL, NULL, '-7.38947223', 'Outdoor', 'Autostable', NULL, NULL, '7.11458334', 'En service', NULL, 'DENSIF 2014', NULL),
(20773, NULL, NULL, NULL, 'BLOTILE', 'IHS_DHM_071O', 'OCI1758', 'IHS', 'IHS', NULL, NULL, NULL, '-7.69536112', 'Outdoor', 'Autostable', NULL, NULL, '7.05061112', 'En service', NULL, 'DENSIF 2014', NULL),
(20774, NULL, NULL, NULL, 'BODO_DIDIEVI', 'IHS_LAC_100O', 'OCI1759', 'IHS', 'IHS', NULL, NULL, NULL, '-4.79683334', 'Outdoor', 'Autostable', NULL, NULL, '7.07536112', 'En service', NULL, 'DENSIF 2014', NULL),
(20775, NULL, NULL, NULL, 'BOFORT', 'IHS_VDB_107O', 'OCI1760', 'IHS', 'IHS', NULL, NULL, NULL, '-5.03655556', 'Outdoor', 'Autostable', NULL, NULL, '7.71319445', 'En service', NULL, 'DENSIF 2014', NULL),
(20776, NULL, NULL, NULL, 'BOUAKE_STADE', 'IHS_VDB_106M', 'OCI1761', 'IHS', 'IHS', NULL, NULL, NULL, '-5.04821945', 'Outdoor', 'Autostable', NULL, NULL, '7.68143056', 'En service', NULL, 'DENSIF 2014', NULL),
(20777, NULL, NULL, NULL, 'BOUNDA', 'IHS_VDB_111O', 'OCI1762', 'IHS', 'IHS', NULL, NULL, NULL, '-4.73491667', 'Outdoor', 'Autostable', NULL, NULL, '7.62044445', 'En service', NULL, 'DENSIF 2014', NULL),
(20778, NULL, NULL, NULL, 'CARNAVAL', 'IHS_VDB_105O', 'OCI1763', 'IHS', 'IHS', NULL, NULL, NULL, '-5.03476389', 'Outdoor', 'Autostable', NULL, NULL, '7.67548056', 'En service', NULL, 'DENSIF 2014', NULL),
(20779, NULL, NULL, NULL, 'DEBO', 'IHS_MCY_070O', 'OCI1764', 'IHS', 'IHS', NULL, NULL, NULL, '-6.77895000', 'Outdoor', 'Autostable', NULL, NULL, '6.67631945', 'En service', NULL, 'DENSIF 2014', NULL),
(20780, NULL, NULL, NULL, 'DIBOBLI', 'IHS_MCY_068O', 'OCI1765', 'IHS', 'IHS', NULL, NULL, NULL, '-7.01972223', 'Outdoor', 'Autostable', NULL, NULL, '6.73916112', 'En service', NULL, 'DENSIF 2014', NULL),
(20781, NULL, NULL, NULL, 'DJEZOUKRO', 'IHS_VDB_108O', 'OCI1766', 'IHS', 'IHS', NULL, NULL, NULL, '-5.05302778', 'Outdoor', 'Autostable', NULL, NULL, '7.70888889', 'En service', NULL, 'DENSIF 2014', NULL),
(20782, NULL, NULL, NULL, 'DOHIRIGUEKAHA', 'IHS_SVN_103O', 'OCI1767', 'IHS', 'IHS', NULL, NULL, NULL, '-5.39308334', 'Outdoor', 'Autostable', NULL, NULL, '9.46750001', 'En service', NULL, 'DENSIF 2014', NULL),
(20783, NULL, NULL, NULL, 'DOUAGUE', 'IHS_DHM_073O', 'OCI1768', 'IHS', 'IHS', NULL, NULL, NULL, '-7.13531112', 'Outdoor', 'Autostable', NULL, NULL, '7.46972223', 'En service', NULL, 'DENSIF 2014', NULL),
(20784, NULL, NULL, NULL, 'GUEHOUO', 'IHS_DHM_070O', 'OCI1769', 'IHS', 'IHS', NULL, NULL, NULL, '-7.44186945', 'Outdoor', 'Autostable', NULL, NULL, '7.05313056', 'En service', NULL, 'DENSIF 2014', NULL),
(20785, NULL, NULL, NULL, 'KAKO_VILLAGE', 'IHS_BSD_209O', 'OCI1770', 'IHS', 'IHS', NULL, NULL, NULL, '-7.01288889', 'Outdoor', 'Autostable', NULL, NULL, '4.77000001', 'En service', NULL, 'DENSIF 2014', NULL),
(20786, NULL, NULL, NULL, 'KAKOLO', 'IHS_SVN_108O', 'OCI1771', 'IHS', 'IHS', NULL, NULL, NULL, '-6.20502778', 'Outdoor', 'Autostable', NULL, NULL, '10.34216667', 'En service', NULL, 'DENSIF 2014', NULL),
(20787, NULL, NULL, NULL, 'KEIBLY', 'IHS_MCY_069O', 'OCI1772', 'IHS', 'IHS', NULL, NULL, NULL, '-7.47208889', 'Outdoor', 'Autostable', NULL, NULL, '5.99315001', 'En service', NULL, 'DENSIF 2014', NULL),
(20788, NULL, NULL, NULL, 'KORHOGO_EXT', 'IHS_SVN_101M', 'OCI1773', 'IHS', 'IHS', NULL, NULL, NULL, '-5.65563056', 'Outdoor', 'autostable', NULL, NULL, '9.48098056', 'En service', NULL, 'DENSIF 2014', NULL),
(20789, NULL, NULL, NULL, 'KOUN_FAO', 'IHS_MCE_065O', 'OCI1774', 'IHS', 'IHS', NULL, NULL, NULL, '-3.25222222', 'Outdoor', 'autostable', NULL, NULL, '7.48944444', 'En service', NULL, 'DENSIF 2014', NULL),
(20790, NULL, NULL, NULL, 'MAKUALE', 'IHS_DHM_076O', 'OCI1775', 'IHS', 'IHS', NULL, NULL, NULL, '-8.21450001', 'Outdoor', 'autostable', NULL, NULL, '6.91925001', 'En service', NULL, 'DENSIF 2014', NULL),
(20791, NULL, NULL, NULL, 'MOHAME', 'IHS_SCE_094O', 'OCI1778', 'IHS', 'IHS', NULL, NULL, NULL, '-3.54961112', 'Outdoor', 'Autostable', NULL, NULL, '5.17558334', 'En service', NULL, 'DENSIF 2014', NULL),
(20792, NULL, NULL, NULL, 'NGUESSAN_POKOUKRO', 'IHS_VDB_112M', 'OCI1779', 'IHS', 'IHS', NULL, NULL, NULL, '-5.19401945', 'Outdoor', 'Autostable', NULL, NULL, '7.55956112', 'En service', NULL, 'DENSIF 2014', NULL),
(20793, NULL, NULL, NULL, 'NIEMENE', 'IHS_VDB_115M', 'OCI1780', 'IHS', 'IHS', NULL, NULL, NULL, '-4.69016667', 'Outdoor', 'Autostable', NULL, NULL, '8.44775001', 'En service', NULL, 'DENSIF 2014', NULL),
(20794, NULL, NULL, NULL, 'OUYABLI', 'IHS_DHM_069O', 'OCI1781', 'IHS', 'IHS', NULL, NULL, NULL, '-7.21090001', 'Outdoor', 'Autostable', NULL, NULL, '7.32823056', 'En service', NULL, 'DENSIF 2014', NULL),
(20795, NULL, NULL, NULL, 'ROYAUME', 'IHS_MCE_061O', 'OCI1782', 'IHS', 'IHS', NULL, NULL, NULL, '-3.50472223', 'Outdoor', 'autostable', NULL, NULL, '6.72911945', 'En service', NULL, 'DENSIF 2014', NULL),
(20796, NULL, NULL, NULL, 'YOP_OPI', 'IHS_LGN_829O', 'OCI1783', 'IHS', 'IHS', NULL, NULL, NULL, '-4.10561112', 'Outdoor', 'autostable', NULL, NULL, '5.35133334', 'En service', NULL, 'DENSIF 2014', NULL),
(20797, NULL, NULL, NULL, 'YOP_SICOGI', 'IHS_LGN_849O', 'OCI1784', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07872223', 'Outdoor', 'autostable', NULL, NULL, '5.33597223', 'En service', NULL, 'DENSIF 2014', NULL),
(20798, NULL, NULL, NULL, 'AEROPORT_KGO', 'KOR012', 'OCI1785', 'Esco', 'OCI', NULL, NULL, NULL, '-5.55561945', 'Outdoor', 'Autostable', NULL, NULL, '9.39240000', 'En service', NULL, 'DENSIF 2015', NULL),
(20799, NULL, NULL, NULL, 'AKPASSANOU', 'IHS_NCE_081O', 'OCI1786', 'IHS', 'IHS', NULL, NULL, NULL, '-4.44822223', 'Outdoor', 'Autostable', NULL, NULL, '7.35363889', 'En service', NULL, 'DENSIF 2015', NULL),
(20800, NULL, NULL, NULL, 'ABOUSSOUAN', 'IHS_LGN_856O', 'OCI1787', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01570833', 'Outdoor', 'Haubané', NULL, NULL, '5.30413890', 'En service', NULL, 'DENSIF 2015', NULL),
(20801, NULL, NULL, NULL, 'AGNIB_LIBERTE', 'IHS_MCE_066O', 'OCI1788', 'IHS', 'IHS', NULL, NULL, NULL, '-3.20686112', 'Outdoor', 'autostable', NULL, NULL, '7.13275001', 'En service', NULL, 'DENSIF 2015', NULL),
(20802, NULL, NULL, NULL, 'BABOU_NEW', 'IHS_BSD_200M', 'OCI1789', 'IHS', 'IHS', NULL, NULL, NULL, '-6.65891667', 'Outdoor', 'Autostable', NULL, NULL, '4.77113889', 'En service', NULL, 'DENSIF 2015', NULL),
(20803, NULL, NULL, NULL, 'BEDIAKRO', 'IHS_NCE_080O', 'OCI1790', 'IHS', 'IHS', NULL, NULL, NULL, '-4.66041667', 'Outdoor', 'Autostable', NULL, NULL, '6.44366667', 'En service', NULL, 'DENSIF 2015', NULL),
(20804, NULL, NULL, NULL, 'BERTILLE', 'IHS_LGN_847O', 'OCI1791', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99138889', 'Outdoor', 'autostable', NULL, NULL, '5.36194445', 'En service', NULL, 'DENSIF 2015', NULL),
(20805, NULL, NULL, NULL, 'DALOA_INFANTERIE', 'IHS_HSD_120M', 'OCI1792', 'IHS', 'IHS', NULL, NULL, NULL, '-6.45697223', 'Outdoor', 'autostable', NULL, NULL, '6.86380556', 'En service', NULL, 'DENSIF 2015', NULL),
(20806, NULL, NULL, NULL, 'DEINNEU', 'IHS_DHM_077O', 'OCI1793', 'IHS', 'IHS', NULL, NULL, NULL, '-8.28280556', 'Outdoor', 'Autostable', NULL, NULL, '6.97855556', 'En service', NULL, 'DENSIF 2015', NULL),
(20807, NULL, NULL, NULL, 'DJIDOUBAYE', 'IHS_MCY_067O', 'OCI1794', 'IHS', 'IHS', NULL, NULL, NULL, '-7.49241667', 'Outdoor', 'Autostable', NULL, NULL, '6.08136112', 'En service', NULL, 'DENSIF 2015', NULL),
(20808, NULL, NULL, NULL, 'DOLOUROUVOGO', 'IHS_SVN_102O', 'OCI1795', 'IHS', 'IHS', NULL, NULL, NULL, '-5.49430556', 'Outdoor', 'Autostable', NULL, NULL, '9.63950001', 'En service', NULL, 'DENSIF 2015', NULL),
(20809, NULL, NULL, NULL, 'FEKESSE', 'IHS_LGN_835O', 'OCI1796', 'IHS', 'IHS', NULL, NULL, NULL, '-3.91069445', 'Outdoor', 'Autostable', NULL, NULL, '5.37436112', 'En service', NULL, 'DENSIF 2015', NULL),
(20810, NULL, NULL, NULL, 'GAGORE', 'IHS_FMG_093O', 'OCI1797', 'IHS', 'IHS', NULL, NULL, NULL, '-5.62877778', 'Outdoor', 'Autostable', NULL, NULL, '6.04730556', 'En service', NULL, 'DENSIF 2015', NULL),
(20811, NULL, NULL, NULL, 'GBOMBELO', 'IHS_DHM_066O', 'OCI1798', 'IHS', 'IHS', NULL, NULL, NULL, '-7.64743889', 'Outdoor', 'Autostable', NULL, NULL, '7.58888056', 'En service', NULL, 'DENSIF 2015', NULL),
(20812, NULL, NULL, NULL, 'IMPRIMERIE_MACRO', 'IHS_LGN_822O', 'OCI1799', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02158334', 'Outdoor', 'MAT', NULL, NULL, '5.32544445', 'En service', NULL, 'DENSIF 2015', NULL),
(20813, NULL, NULL, NULL, 'KANAWOLO', 'IHS_SVN_104O', 'OCI1801', 'IHS', 'IHS', NULL, NULL, NULL, '-5.31136112', 'Outdoor', 'Autostable', NULL, NULL, '8.78741667', 'En service', NULL, 'DENSIF 2015', NULL),
(20814, NULL, NULL, NULL, 'KATCHEKAN', 'IHS_LGN_841M', 'OCI1802', 'IHS', 'IHS', NULL, NULL, NULL, '-4.88583056', 'Outdoor', 'Autostable', NULL, NULL, '5.31261112', 'En service', NULL, 'DENSIF 2015', NULL),
(20815, NULL, NULL, NULL, 'KATIMASSOU', 'IHS_MCE_064O', 'OCI1803', 'IHS', 'IHS', NULL, NULL, NULL, '-3.57019445', 'Outdoor', 'Autostable', NULL, NULL, '7.34283334', 'En service', NULL, 'DENSIF 2015', NULL),
(20816, NULL, NULL, NULL, 'MADJAN', 'IHS_SCE_093M', 'OCI1804', 'IHS', 'IHS', NULL, NULL, NULL, '-3.35616667', 'Outdoor', 'Autostable', NULL, NULL, '5.14983334', 'En service', NULL, 'DENSIF 2015', NULL),
(20817, NULL, NULL, NULL, 'NOTRE_DAME_NEW', 'IHS_LGN_179M', 'OCI1805', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00436667', 'Outdoor', 'autostable', NULL, NULL, '5.30250278', 'En service', NULL, 'DENSIF 2015', NULL),
(20818, NULL, NULL, NULL, 'PAPARA', 'IHS_SVN_110M', 'OCI1806', 'IHS', 'IHS', NULL, NULL, NULL, '-6.25901112', 'Outdoor', 'Autostable', NULL, NULL, '10.61760001', 'En service', NULL, 'DENSIF 2015', NULL),
(20819, NULL, NULL, NULL, 'SISSENGUE', 'IHS_SVN_109M', 'OCI1807', 'IHS', 'IHS', NULL, NULL, NULL, '-6.21286112', 'Outdoor', 'Autostable', NULL, NULL, '10.44891667', 'En service', NULL, 'DENSIF 2015', NULL),
(20820, NULL, NULL, NULL, 'STADE_FHB', 'IHS_LGN_845O', 'OCI1808', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01997223', 'Outdoor', 'autostable', NULL, NULL, '5.32758334', 'En service', NULL, 'DENSIF 2015', NULL),
(20821, NULL, NULL, NULL, 'YOP_ZITIP', 'IHS_LGN_828M', 'OCI1809', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08738889', 'Outdoor', 'autostable', NULL, NULL, '5.38263889', 'En service', NULL, 'DENSIF 2015', NULL),
(20822, NULL, NULL, NULL, 'PECHEUR_NEW', 'IHS_LGN_848O', 'OCI1810', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00905556', 'Outdoor', 'autostable', NULL, NULL, '5.28875000', 'En service', NULL, 'PLASMA 2015', NULL),
(20823, NULL, NULL, NULL, 'TIEVIESSOU', 'IHS_LGN_842M', 'OCI1811', 'IHS', 'IHS', NULL, NULL, NULL, '-4.88883334', 'Outdoor', 'Autostable', NULL, NULL, '5.35388889', 'En service', NULL, 'DENSIF 2015', NULL),
(20824, NULL, NULL, NULL, 'MOVIS_MICRO', 'OCI_Indoor_026', 'OCI1812', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.01058334', 'Outdoor', 'MAT', NULL, NULL, '5.28227778', 'En service', NULL, 'DENSIF 2015', NULL),
(20825, NULL, NULL, NULL, 'SACO_NEW', 'IHS_LGN_851O', 'OCI1814', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00100000', 'Outdoor', 'autostable', NULL, NULL, '5.25641667', 'En service', NULL, 'DENSIF 2015', NULL),
(20826, NULL, NULL, NULL, 'YOP_MAIRIE', 'IHS_LGN_211M', 'OCI1815', 'IHS', 'IHS', NULL, NULL, NULL, '-4.06775000', 'Outdoor', 'autostable', NULL, NULL, '5.34341667', 'En service', NULL, 'DENSIF 2015', NULL),
(20827, NULL, NULL, NULL, 'ZEO', 'IHS_DHM_079O', 'OCI1816', 'IHS', 'IHS', NULL, NULL, NULL, '-7.46651389', 'Outdoor', 'Autostable', NULL, NULL, '7.12173889', 'En service', NULL, 'EXTENSION 2015', NULL),
(20828, NULL, NULL, NULL, 'KOKOUMBO_IHS', 'IHS_LAC_051M', 'OCI1817', 'IHS', 'IHS', NULL, NULL, NULL, '-5.25775001', 'Outdoor', 'autostable', NULL, NULL, '6.54552778', 'En service', NULL, 'DENSIF 2015', NULL),
(20829, NULL, NULL, NULL, 'GSPM', 'IHS_LGN_859O', 'OCI1818', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02136112', 'Outdoor', 'Autostable', NULL, NULL, '5.34200001', 'En service', NULL, 'DENSIF 2015', NULL),
(20830, NULL, NULL, NULL, 'GONDO', 'IHS_LGN_831O', 'OCI1819', 'IHS', 'IHS', NULL, NULL, NULL, '-4.11327778', 'Outdoor', 'autostable', NULL, NULL, '5.33844445', 'En service', NULL, 'DENSIF 2015', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(20831, NULL, NULL, NULL, 'BOUGOU_MBENGUE', 'IHS_SVN_105O', 'OCI1820', 'IHS', 'IHS', NULL, NULL, NULL, '-5.86850001', 'Outdoor', 'Autostable', NULL, NULL, '10.22438889', 'En service', NULL, 'EXTENSION 2015', NULL),
(20832, NULL, NULL, NULL, 'ANNO', 'IHS_AGN_085O', 'OCI1821', 'IHS', 'IHS', NULL, NULL, NULL, '-4.38386112', 'Outdoor', 'Autostable', NULL, NULL, '5.86613889', 'En service', NULL, 'EXTENSION 2015', NULL),
(20833, NULL, NULL, NULL, 'AHONDO', 'IHS_FMG_095O', 'OCI1822', 'IHS', 'IHS', NULL, NULL, NULL, '-5.14608334', 'Outdoor', 'Autostable', NULL, NULL, '6.30627778', 'En service', NULL, 'EXTENSION 2015', NULL),
(20834, NULL, NULL, NULL, 'AKEBLE', 'IHS_LGN_259M', 'OCI1823', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97293889', 'Outdoor', 'Autostable', NULL, NULL, '5.33736112', 'En service', NULL, 'DENSIF 2015', NULL),
(20835, NULL, NULL, NULL, 'SABOUDOUGOU', 'IHS_BAF_025O', 'OCI1824', 'IHS', 'IHS', NULL, NULL, NULL, '-8.11556112', 'Outdoor', 'Autostable', NULL, NULL, '8.37910001', 'En service', NULL, 'DENSIF 2015', NULL),
(20836, NULL, NULL, NULL, 'DANOA', 'IHS_ZNZ_078O', 'OCI1825', 'IHS', 'IHS', NULL, NULL, NULL, '-3.08013889', 'Outdoor', 'Autostable', NULL, NULL, '9.68088889', 'En service', NULL, 'DENSIF 2015', NULL),
(20837, NULL, NULL, NULL, 'DIDA_MOESSOU', 'IHS_LAC_101O', 'OCI1826', 'IHS', 'IHS', NULL, NULL, NULL, '-4.52286112', 'Outdoor', 'Autostable', NULL, NULL, '6.90863889', 'En service', NULL, 'DENSIF 2015', NULL),
(20838, NULL, NULL, NULL, 'YOUNDOUO', 'IHS_ZNZ_076M', 'OCI1827', 'IHS', 'IHS', NULL, NULL, NULL, '-2.96416667', 'Outdoor', 'Autostable', NULL, NULL, '8.82052778', 'En service', NULL, 'DENSIF 2015', NULL),
(20839, NULL, NULL, NULL, 'DATO', 'IHS_LGN_834O', 'OCI1829', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07772223', 'Outdoor', 'autostable', NULL, NULL, '5.44227778', 'En service', NULL, 'DENSIF 2015', NULL),
(20840, NULL, NULL, NULL, 'PALM_ELOKA', 'IHS_LGN_840M', 'OCI1830', 'IHS', 'IHS', NULL, NULL, NULL, '-3.80188889', 'Outdoor', 'autostable', NULL, NULL, '5.31497223', 'En service', NULL, 'DENSIF 2015', NULL),
(20841, NULL, NULL, NULL, 'ABOBO_BOISEC', 'IHS_LGN_833M', 'OCI1831', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03714000', 'Outdoor', 'autostable', NULL, NULL, '5.45519000', 'En service', NULL, 'DENSIF 2015', NULL),
(20842, NULL, NULL, NULL, 'KORHOGO_SINISTRE', 'IHS_SVN_100M', 'OCI1832', 'IHS', 'IHS', NULL, NULL, NULL, '-5.60763889', 'Outdoor', 'autostable', NULL, NULL, '9.44022223', 'En service', NULL, 'DENSIF 2015', NULL),
(20843, NULL, NULL, NULL, 'BUYO_NEW', 'IHS_BSD_187M', 'OCI1833', 'IHS', 'IHS', NULL, NULL, NULL, '-7.00252778', 'Outdoor', 'autostable', NULL, NULL, '6.24577778', 'En service', NULL, 'DENSIF 2015', NULL),
(20844, NULL, NULL, NULL, 'GBLIGLO', 'IHS_BSD_180M', 'OCI1834', 'IHS', 'IHS', NULL, NULL, NULL, '-7.02971945', 'Outdoor', 'Autostable', NULL, NULL, '6.15117778', 'En service', NULL, 'EXTENSION 2015', NULL),
(20845, NULL, NULL, NULL, 'PITIGOA', 'IHS_BSD_208M', 'OCI1835', 'IHS', 'IHS', NULL, NULL, NULL, '-6.77300001', 'Outdoor', 'Autostable', NULL, NULL, '6.10775000', 'En service', NULL, 'DENSIF 2015', NULL),
(20846, NULL, NULL, NULL, 'YORODOUGOU', 'IHS_DHM_074O', 'OCI1836', 'IHS', 'IHS', NULL, NULL, NULL, '-7.88422223', 'Outdoor', 'Autostable', NULL, NULL, '7.78400001', 'En service', NULL, 'EXTENSION 2015', NULL),
(20847, NULL, NULL, NULL, 'MAN_NORD', 'IHS_DHM_065M', 'OCI1837', 'IHS', 'IHS', NULL, NULL, NULL, '-7.54911945', 'Outdoor', 'autostable', NULL, NULL, '7.41968889', 'En service', NULL, 'DENSIF 2015', NULL),
(20848, NULL, NULL, NULL, 'MICRO_ID_MOL', 'OCI_Indoor_020', 'OCI1838', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.011228', 'Outdoor', 'MAT', NULL, NULL, '5.282892', 'En service', NULL, 'DENSIF 2015', NULL),
(20849, NULL, NULL, NULL, 'LALERABA', 'KOR008', 'OCI1839', 'Esco', 'OCI', NULL, NULL, NULL, '-5.08683334', 'Outdoor', 'Autostable', NULL, NULL, '10.13225000', 'En service', NULL, 'EXTENSION 2015', NULL),
(20850, NULL, NULL, NULL, 'ANGRE_TERRAIN', 'IHS_LGN_430M', 'OCI1840', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98622223', 'Outdoor', 'autostable', NULL, NULL, '5.39752778', 'En service', NULL, 'DENSIF 2015', NULL),
(20851, NULL, NULL, NULL, 'TABOU_RESIDENTIEL', 'IHS_BSD_093M', 'OCI1842', 'IHS', 'IHS', NULL, NULL, NULL, '-7.36302778', 'Outdoor', 'autostable', NULL, NULL, '4.42011389', 'En service', NULL, 'DENSIF 2015', NULL),
(20852, NULL, NULL, NULL, 'DERRIERE_GENIE', 'IHS_LGN_832M', 'OCI1845', 'IHS', 'IHS', NULL, NULL, NULL, '-3.94519445', 'Outdoor', 'autostable', NULL, NULL, '5.38483334', 'En service', NULL, 'DENSIF 2015', NULL),
(20853, NULL, NULL, NULL, 'KOTIESSOU', 'IHS_SBD_096O', 'OCI1846', 'IHS', 'IHS', NULL, NULL, NULL, '-5.05819445', 'Outdoor', 'Autostable', NULL, NULL, '6.18116667', 'En service', NULL, 'EXTENSION 2015', NULL),
(20854, NULL, NULL, NULL, 'MOQUEVILLE', 'IHS_LGN_699M', 'OCI1847', 'IHS', 'IHS', NULL, NULL, NULL, '-3.76527778', 'Outdoor', 'autostable', NULL, NULL, '5.22516667', 'En service', NULL, 'DENSIF 2015', NULL),
(20855, NULL, NULL, NULL, 'RIVIERA_4', 'ABJ027', 'OCI1848', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95263334', 'Outdoor', 'Autostable', NULL, NULL, '5.33639167', 'En service', NULL, 'PLASMA 2015', NULL),
(20856, NULL, NULL, NULL, 'ROSIER_STAR', 'IHS_LGN_371M', 'OCI1849', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97144445', 'Outdoor', 'autostable', NULL, NULL, '5.37972223', 'En service', NULL, 'PLASMA 2015', NULL),
(20857, NULL, NULL, NULL, 'SASSANDRA_CORRIDOR', 'IHS_BSD_204O', 'OCI1850', 'IHS', 'IHS', NULL, NULL, NULL, '-6.13111112', 'Outdoor', 'autostable', NULL, NULL, '4.99475001', 'En service', NULL, 'DENSIF 2015', NULL),
(20858, NULL, NULL, NULL, 'MAMADI_NEW', 'IHS_LGN_241M', 'OCI1851', 'IHS', 'OCI', NULL, NULL, NULL, '-4.06486111', 'Outdoor', 'autostable', NULL, NULL, '5.36172222', 'En service', NULL, 'DENSIF 2015', NULL),
(20859, NULL, NULL, NULL, 'BKE_SOURCE', 'IHS_VDB_133M', 'OCI1854', 'IHS', 'IHS', NULL, NULL, NULL, '-5.01977778', 'Outdoor', 'Autostable', NULL, NULL, '7.66708334', 'En service', NULL, 'DENSIF 2015', NULL),
(20860, NULL, NULL, NULL, 'COBAKRO', 'IHS_LGN_837M', 'OCI1855', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08400000', 'Outdoor', 'autostable', NULL, NULL, '5.44925000', 'En service', NULL, 'DENSIF 2015', NULL),
(20861, NULL, NULL, NULL, 'GRIHIRI', 'IHS_BSD_205O', 'OCI1856', 'IHS', 'IHS', NULL, NULL, NULL, '-6.34544445', 'Outdoor', 'Autostable', NULL, NULL, '5.43441667', 'En service', NULL, 'EXTENSION 2015', NULL),
(20862, NULL, NULL, NULL, 'SOUBRE_RIVER', 'IHS_BSD_211O', 'OCI1857', 'IHS', 'IHS', NULL, NULL, NULL, '-6.58005557', 'Outdoor', 'Autostable', NULL, NULL, '5.79555556', 'En service', NULL, 'DENSIF 2015', NULL),
(20863, NULL, NULL, NULL, 'YEZIMALA', 'IHS_ZNZ_075O', 'OCI1858', 'IHS', 'IHS', NULL, NULL, NULL, '-2.94330556', 'Outdoor', 'Autostable', NULL, NULL, '8.20925000', 'En service', NULL, 'EXTENSION 2015', NULL),
(20864, NULL, NULL, NULL, 'ANYAMA_BELLEVILLE', 'IHS_LGN_893M', 'OCI1859', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03788889', 'Outdoor', 'autostable', NULL, NULL, '5.46530556', 'En service', NULL, 'DENSIF 2015', NULL),
(20865, NULL, NULL, NULL, 'ANYAMA_SHNEIDER', 'IHS_LGN_897M', 'OCI1860', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05533333', 'Outdoor', 'autostable', NULL, NULL, '5.50647222', 'En service', NULL, 'DENSIF 2015', NULL),
(20866, NULL, NULL, NULL, 'BEOUMI_IHS', 'IHS_VDB_098M', 'OCI1861', 'IHS', 'IHS', NULL, NULL, NULL, '-5.59341667', 'Outdoor', 'Autostable', NULL, NULL, '7.67194445', 'En service', NULL, 'DENSIF 2015', NULL),
(20867, NULL, NULL, NULL, 'BKE_BROUKRO', 'IHS_VDB_120O', 'OCI1862', 'IHS', 'IHS', NULL, NULL, NULL, '-5.05827778', 'Outdoor', 'Autostable', NULL, NULL, '7.66658334', 'En service', NULL, 'DENSIF 2015', NULL),
(20868, NULL, NULL, NULL, 'DABOU_MAIRIE', 'IHS_LGN_715M', 'OCI1863', 'IHS', 'IHS', NULL, NULL, NULL, '-4.37350001', 'Outdoor', 'Autostable', NULL, NULL, '5.32869445', 'En service', NULL, 'DENSIF 2015', NULL),
(20869, NULL, NULL, NULL, 'DALOA_ABATTOIR', 'IHS_HSD_124O', 'OCI1864', 'IHS', 'IHS', NULL, NULL, NULL, '-6.42627778', 'Outdoor', 'Autostable', NULL, NULL, '6.85197223', 'En service', NULL, 'DENSIF 2015', NULL),
(20870, NULL, NULL, NULL, 'DALOA_IRIS', 'IHS_HSD_123O', 'OCI1865', 'IHS', 'IHS', NULL, NULL, NULL, '-6.45775001', 'Outdoor', 'Autostable', NULL, NULL, '6.89811112', 'En service', NULL, 'DENSIF 2015', NULL),
(20871, NULL, NULL, NULL, 'DANANE_SHELL', 'IHS_DHM_045M', 'OCI1866', 'IHS', 'IHS', NULL, NULL, NULL, '-8.15661111', 'Outdoor', 'autostable', NULL, NULL, '7.25619444', 'En service', NULL, 'DENSIF 2015', NULL),
(20872, NULL, NULL, NULL, 'DIASPORA', 'IHS_LGN_878O', 'OCI1867', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96530556', 'Outdoor', 'Autostable', NULL, NULL, '5.39850000', 'En service', NULL, 'DENSIF 2015', NULL),
(20873, NULL, NULL, NULL, 'DIVO_ETOILE', 'IHS_SBD_090M', 'OCI1868', 'IHS', 'IHS', NULL, NULL, NULL, '-5.37688890', 'Outdoor', 'Autostable', NULL, NULL, '5.83175000', 'En service', NULL, 'DENSIF 2015', NULL),
(20874, NULL, NULL, NULL, 'EMETTEUR', 'IHS_VDB_119O', 'OCI1869', 'IHS', 'IHS', NULL, NULL, NULL, '-5.00733334', 'Outdoor', 'Autostable', NULL, NULL, '7.66327778', 'En service', NULL, 'DENSIF 2015', NULL),
(20875, NULL, NULL, NULL, 'FERKE_DOUANE', 'IHS_SVN_112O', 'OCI1870', 'IHS', 'IHS', NULL, NULL, NULL, '-5.18991667', 'Outdoor', 'Autostable', NULL, NULL, '9.61411112', 'En service', NULL, 'DENSIF 2015', NULL),
(20876, NULL, NULL, NULL, 'FETEVIL', 'IHS_VDB_122O', 'OCI1871', 'IHS', 'IHS', NULL, NULL, NULL, '-4.99833334', 'Outdoor', 'Autostable', NULL, NULL, '7.73072223', 'En service', NULL, 'DENSIF 2015', NULL),
(20877, NULL, NULL, NULL, 'FLEMING', 'IHS_LGN_870O', 'OCI1872', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97561112', 'Outdoor', 'Haubané', NULL, NULL, '5.28891667', 'En service', NULL, 'DENSIF 2015', NULL),
(20878, NULL, NULL, NULL, 'HEBE', 'IHS_SCE_097O', 'OCI1873', 'IHS', 'IHS', NULL, NULL, NULL, '-3.52455556', 'Outdoor', 'Autostable', NULL, NULL, '5.16791667', 'En service', NULL, 'EXTENSION 2015', NULL),
(20879, NULL, NULL, NULL, 'HOUPHOUETVIL', 'IHS_VDB_118O', 'OCI1874', 'IHS', 'IHS', NULL, NULL, NULL, '-5.03613889', 'Outdoor', 'Autostable', NULL, NULL, '7.66702778', 'En service', NULL, 'DENSIF 2015', NULL),
(20880, NULL, NULL, NULL, 'KAMONOU', 'IHS_VDB_117O', 'OCI1875', 'IHS', 'IHS', NULL, NULL, NULL, '-5.02866667', 'Outdoor', 'Autostable', NULL, NULL, '7.70313889', 'En service', NULL, 'EXTENSION 2015', NULL),
(20881, NULL, NULL, NULL, 'MAHIKARI', 'IHS_LGN_869O', 'OCI1876', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99358334', 'Outdoor', 'Haubané', NULL, NULL, '5.39288889', 'En service', NULL, 'EXTENSION 2015', NULL),
(20882, NULL, NULL, NULL, 'MAN_CAFOP', 'IHS_DHM_080M', 'OCI1877', 'IHS', 'IHS', NULL, NULL, NULL, '-7.56611112', 'Outdoor', 'autostable', NULL, NULL, '7.39641667', 'En service', NULL, 'DENSIF 2015', NULL),
(20883, NULL, NULL, NULL, 'MARCHE_GOURO', 'IHS_LGN_853O', 'OCI1878', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02386111', 'Outdoor', 'autostable', NULL, NULL, '5.34797222', 'En service', NULL, 'DENSIF 2015', NULL),
(20884, NULL, NULL, NULL, 'PORTUAIRE', 'IHS_LGN_866O', 'OCI1880', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01683334', 'Outdoor', 'Haubané', NULL, NULL, '5.30125001', 'En service', NULL, 'DENSIF 2015', NULL),
(20885, NULL, NULL, NULL, 'POTON', 'IHS_SCE_095O', 'OCI1881', 'IHS', 'IHS', NULL, NULL, NULL, '-3.32694445', 'Outdoor', 'Autostable', NULL, NULL, '5.14344445', 'En service', NULL, 'DENSIF 2015', NULL),
(20886, NULL, NULL, NULL, 'ROSIER_BASSAM', 'IHS_LGN_899O', 'OCI1882', 'IHS', 'IHS', NULL, NULL, NULL, '-3.79036112', 'Outdoor', 'Autostable', NULL, NULL, '5.21433334', 'En service', NULL, 'DENSIF 2015', NULL),
(20887, NULL, NULL, NULL, 'RTE_AKOUEDO', 'IHS_LGN_875M', 'OCI1884', 'IHS', 'IHS', NULL, NULL, NULL, '-3.94838513', 'Outdoor', 'Autostable', NULL, NULL, '5.35936127', 'En service', NULL, 'DENSIF 2015', NULL),
(20888, NULL, NULL, NULL, 'RTE_ANYAMA', 'IHS_LGN_894O', 'OCI1885', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07508334', 'Outdoor', 'Autostable', NULL, NULL, '5.46452778', 'En service', NULL, 'DENSIF 2015', NULL),
(20889, NULL, NULL, NULL, 'TANDA_CHATO', 'IHS_ZNZ_081O', 'OCI1886', 'IHS', 'IHS', NULL, NULL, NULL, '-3.16675000', 'Outdoor', 'Autostable', NULL, NULL, '7.80752779', 'En service', NULL, 'DENSIF 2015', NULL),
(20890, NULL, NULL, NULL, 'VARALE', 'IHS_ZNZ_067O', 'OCI1887', 'IHS', 'OCI', NULL, NULL, NULL, '-3.27894445', 'Outdoor', 'Haubané', NULL, NULL, '9.65411111', 'En service', NULL, 'EXTENSION 2015', NULL),
(20891, NULL, NULL, NULL, 'VERSANT', 'IHS_LGN_867O', 'OCI1888', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00344444', 'Outdoor', 'Haubané', NULL, NULL, '5.38452778', 'En service', NULL, 'DENSIF 2015', NULL),
(20892, NULL, NULL, NULL, 'YAKRO_BACAMBEL', 'IHS_LAC_102O', 'OCI1889', 'IHS', 'IHS', NULL, NULL, NULL, '-5.25797222', 'Outdoor', 'Autostable', NULL, NULL, '6.84025001', 'En service', NULL, 'DENSIF 2015', NULL),
(20893, NULL, NULL, NULL, 'ZANZAN_MARCHE', 'IHS_ZNZ_002M', 'OCI1890', 'IHS', 'IHS', NULL, NULL, NULL, '-2.80881112', 'Outdoor', 'Autostable', NULL, NULL, '8.04506112', 'En service', NULL, 'DENSIF 2015', NULL),
(20894, NULL, NULL, NULL, 'ZAKOUA', 'DAL010', 'OCI1891', 'Esco', 'OCI', NULL, NULL, NULL, '-6.45193334', 'Outdoor', 'Autostable', NULL, NULL, '6.79847501', 'En service', NULL, 'DENSIF 2015', NULL),
(20895, NULL, NULL, NULL, 'ANDOKOI_CHATO', 'IHS_LGN_296M', 'OCI1892', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07038889', 'Outdoor', 'Autostable', NULL, NULL, '5.36794444', 'En service', NULL, 'DENSIF 2015', NULL),
(20896, NULL, NULL, NULL, 'ATCI_NEAR', 'ABJ055', 'OCI1893', 'Esco', 'Moov', NULL, NULL, NULL, '-3.94197222', 'Outdoor', 'autostable', NULL, NULL, '5.36643056', 'En service', NULL, 'DENSIF 2015', NULL),
(20897, NULL, NULL, NULL, 'BINGERVIL_EXT', 'IHS_LGN_895O', 'OCI1894', 'IHS', 'IHS', NULL, NULL, NULL, '-3.88952778', 'Outdoor', 'Autostable', NULL, NULL, '5.37472223', 'En service', NULL, 'DENSIF 2015', NULL),
(20898, NULL, NULL, NULL, 'BKE_COMMERCE', 'IHS_VDB_116O', 'OCI1895', 'IHS', 'IHS', NULL, NULL, NULL, '-5.02136112', 'Outdoor', 'Autostable', NULL, NULL, '7.68169445', 'En service', NULL, 'DENSIF 2015', NULL),
(20899, NULL, NULL, NULL, 'BODOUYO', 'IHS_BSD_206M', 'OCI1896', 'IHS', 'IHS', NULL, NULL, NULL, '-6.17197223', 'Outdoor', 'Autostable', NULL, NULL, '5.69202778', 'En service', NULL, 'DENSIF 2014', NULL),
(20900, NULL, NULL, NULL, 'CAMP_AKOUEDO', 'IHS_LGN_877M', 'OCI1897', 'IHS', 'IHS', NULL, NULL, NULL, '-3.95083333', 'Outdoor', 'autostable', NULL, NULL, '5.37555557', 'En service', NULL, 'DENSIF 2015', NULL),
(20901, NULL, NULL, NULL, 'COCODY_CSP', 'Moov', 'OCI1898', 'Esco', 'Moov', NULL, NULL, NULL, '-3.99148889', 'Outdoor', 'Autostable', NULL, NULL, '5.34723890', 'En service', NULL, 'DENSIF 2015', NULL),
(20902, NULL, NULL, NULL, 'DALOA_GBOKORA', 'IHS_HSD_125M', 'OCI1899', 'IHS', 'IHS', NULL, NULL, NULL, '-6.45172222', 'Outdoor', 'Autostable', NULL, NULL, '6.90647223', 'En service', NULL, 'DENSIF 2015', NULL),
(20903, NULL, NULL, NULL, 'DAOUKRO_SHELL', 'IHS_NCE_052M', 'OCI1900', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96108334', 'Outdoor', 'autostable', NULL, NULL, '7.05577778', 'En service', NULL, 'DENSIF 2015', NULL),
(20904, NULL, NULL, NULL, 'ETIADA', 'Moov_009', 'OCI1902', 'Esco', 'Moov', NULL, NULL, NULL, '-3.94393889', 'Outdoor', 'autostable', NULL, NULL, '5.35903890', 'En service', NULL, 'DENSIF 2015', NULL),
(20905, NULL, NULL, NULL, 'GADEAU', 'IHS_LAC_060M', 'OCI1903', 'IHS', 'IHS', NULL, NULL, NULL, '-5.23150001', 'Outdoor', 'Autostable', NULL, NULL, '7.15683334', 'En service', NULL, 'DENSIF 2015', NULL),
(20906, NULL, NULL, NULL, 'GAGNOA_SOLEIL', 'IHS_FMG_091M', 'OCI1904', 'IHS', 'IHS', NULL, NULL, NULL, '-5.91461111', 'Outdoor', 'autostable', NULL, NULL, '6.12819444', 'En service', NULL, 'DENSIF 2015', NULL),
(20907, NULL, NULL, NULL, 'GANZRA', 'IHS_MRH_069O', 'OCI1905', 'IHS', 'IHS', NULL, NULL, NULL, '-6.04566668', 'Outdoor', 'Autostable', NULL, NULL, '7.42111111', 'En service', NULL, 'EXTENSION 2015', NULL),
(20908, NULL, NULL, NULL, 'GOHOU_ZAGNA', 'IHS_DHM_072M', 'OCI1906', 'IHS', 'IHS', NULL, NULL, NULL, '-7.40163056', 'Outdoor', 'Autostable', NULL, NULL, '7.03901945', 'En service', NULL, 'EXTENSION 2015', NULL),
(20909, NULL, NULL, NULL, 'GOUDROU', 'IHS_LGN_844M', 'OCI1907', 'IHS', 'IHS', NULL, NULL, NULL, '-6.08969444', 'Outdoor', 'autostable', NULL, NULL, '4.95933333', 'En service', NULL, 'EXTENSION 2015', NULL),
(20910, NULL, NULL, NULL, 'IFFOU', 'IHS_NCE_084O', 'OCI1908', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96847222', 'Outdoor', 'Autostable', NULL, NULL, '7.04150000', 'En service', NULL, 'DENSIF 2015', NULL),
(20911, NULL, NULL, NULL, 'ISSIA_ZOBIA', 'IHS_HSD_126M', 'OCI1909', 'IHS', 'IHS', NULL, NULL, NULL, '-6.60286111', 'Outdoor', 'autostable', NULL, NULL, '6.48805557', 'En service', NULL, 'DENSIF 2015', NULL),
(20912, NULL, NULL, NULL, 'KAMAGAYA', 'IHS_ZNZ_080M', 'OCI1910', 'IHS', 'IHS', NULL, NULL, NULL, '-2.78883334', 'Outdoor', 'autostable', NULL, NULL, '8.03594444', 'En service', NULL, 'DENSIF 2015', NULL),
(20913, NULL, NULL, NULL, 'KASSERE_IHS', 'IHS_SVN_053M', 'OCI1911', 'IHS', 'IHS', NULL, NULL, NULL, '-6.21900000', 'Outdoor', 'Haubané', NULL, NULL, '9.81850000', 'En service', NULL, 'EXTENSION 2015', NULL),
(20914, NULL, NULL, NULL, 'KETEKRE', 'IHS_LAC_048M', 'OCI1912', 'IHS', 'IHS', NULL, NULL, NULL, '-5.06569444', 'Outdoor', 'Autostable', NULL, NULL, '6.74561112', 'En service', NULL, 'EXTENSION 2015', NULL),
(20915, NULL, NULL, NULL, 'KOUASSIBAKRO', 'IHS_MCY_065M', 'OCI1913', 'IHS', 'IHS', NULL, NULL, NULL, '-7.51708333', 'Outdoor', 'Autostable', NULL, NULL, '6.77822222', 'En service', NULL, 'EXTENSION 2015', NULL),
(20916, NULL, NULL, NULL, 'MBADON', 'IHS_LGN_880O', 'OCI1914', 'IHS', 'IHS', NULL, NULL, NULL, '-3.93386112', 'Outdoor', 'Autostable', NULL, NULL, '5.33136112', 'En service', NULL, 'DENSIF 2015', NULL),
(20917, NULL, NULL, NULL, 'NEVADAV', 'IHS_BSD_008M', 'OCI1915', 'IHS', 'IHS', NULL, NULL, NULL, '-6.65111111', 'Outdoor', 'Autostable', NULL, NULL, '4.74325000', 'En service', NULL, 'DENSIF 2015', NULL),
(20918, NULL, NULL, NULL, 'ONUCI_DANANE', 'IHS_DHM_083O', 'OCI1916', 'IHS', 'IHS', NULL, NULL, NULL, '-8.16347223', 'Outdoor', 'Autostable', NULL, NULL, '7.23536112', 'En service', NULL, 'DENSIF 2015', NULL),
(20919, NULL, NULL, NULL, 'ONUCI_DUEKOUE', 'IHS_DHM_084O', 'OCI1917', 'IHS', 'IHS', NULL, NULL, NULL, '-7.31472223', 'Outdoor', 'Autostable', NULL, NULL, '6.74338889', 'En service', NULL, 'DENSIF 2015', NULL),
(20920, NULL, NULL, NULL, 'ONUCI_MAN', 'IHS_DHM_081O', 'OCI1918', 'IHS', 'IHS', NULL, NULL, NULL, '-7.61077778', 'Outdoor', 'Autostable', NULL, NULL, '7.35463889', 'En service', NULL, 'DENSIF 2015', NULL),
(20921, NULL, NULL, NULL, 'POLLET', 'IHS_BSD_210O', 'OCI1920', 'IHS', 'IHS', NULL, NULL, NULL, '-6.08786112', 'Outdoor', 'Autostable', NULL, NULL, '4.94563889', 'En service', NULL, 'DENSIF 2015', NULL),
(20922, NULL, NULL, NULL, 'PHCIE_ESTHER', 'IHS_LGN_876O', 'OCI1922', 'IHS', 'IHS', NULL, NULL, NULL, '-4.10575001', 'Outdoor', 'Autostable', NULL, NULL, '5.32555557', 'En service', NULL, 'DENSIF 2015', NULL),
(20923, NULL, NULL, NULL, 'DANHANDROU', 'IHS_MCY_066M', 'OCI1923', 'IHS', 'IHS', NULL, NULL, NULL, '-7.89472223', 'Outdoor', 'Autostable', NULL, NULL, '6.65277778', 'En service', NULL, 'EXTENSION 2015', NULL),
(20924, NULL, NULL, NULL, 'SAGBE_TERMINUS', 'IHS_LGN_788M', 'OCI1924', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03444444', 'Outdoor', 'autostable', NULL, NULL, '5.41750000', 'En service', NULL, 'DENSIF 2015', NULL),
(20925, NULL, NULL, NULL, 'YOP_MONIA', 'IHS_LGN_873O', 'OCI1925', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09669445', 'Outdoor', 'Haubané', NULL, NULL, '5.35475001', 'En service', NULL, 'DENSIF 2015', NULL),
(20926, NULL, NULL, NULL, 'TOLAKOUADIO', 'IHS_VDB_121O', 'OCI1926', 'IHS', 'IHS', NULL, NULL, NULL, '-5.04341667', 'Outdoor', 'Autostable', NULL, NULL, '7.72752778', 'En service', NULL, 'EXTENSION 2015', NULL),
(20927, NULL, NULL, NULL, 'TERMITE', 'Moov', 'OCI1927', 'Esco', 'Moov', NULL, NULL, NULL, '-4.05843056', 'Outdoor', 'Autostable', NULL, NULL, '5.34571945', 'En service', NULL, 'DENSIF 2015', NULL),
(20928, NULL, NULL, NULL, 'ETOILE_DU_SUD_MICRO', 'OCI', 'OCI1928', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.73770151', 'Outdoor', 'MAT', NULL, NULL, '5.19498171', 'En service', NULL, 'DENSIF 2015', NULL),
(20929, NULL, NULL, NULL, 'MILLENIUM', 'OCI_Indoor_029', 'OCI1931', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.94210833', 'Outdoor', 'MAT', NULL, NULL, '5.32858056', 'En service', NULL, 'PLASMA 2015', NULL),
(20930, NULL, NULL, NULL, 'ECOBANK_MICRO', 'OCI_Indoor_033', 'OCI1933', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.01860785', 'Indoor', 'MAT', NULL, NULL, '5.31689016', 'En service', NULL, 'DENSIF 2015', NULL),
(20931, NULL, NULL, NULL, 'RESIDENCE_MAYA', 'ABJ020', 'OCI1934', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97768611', 'Outdoor', 'MAT', NULL, NULL, '5.35868612', 'En service', NULL, 'DENSIF 2015', NULL),
(20932, NULL, NULL, NULL, 'SOCOPRIX_MICRO', 'OCI_Indoor_031', 'OCI1935', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.95633141', 'Indoor', 'MAT', NULL, NULL, '5.36227958', 'En service', NULL, 'DENSIF 2015', NULL),
(20933, NULL, NULL, NULL, 'BASSADZIN', 'ABG007', 'OCI1936', 'Esco', 'OCI', NULL, NULL, NULL, '-3.73627778', 'Outdoor', 'Autostable', NULL, NULL, '5.93205557', 'En service', NULL, 'EXTENSION 2015', NULL),
(20934, NULL, NULL, NULL, 'BRAFEDON', 'ABJ095', 'OCI1937', 'Esco', 'OCI', NULL, NULL, NULL, '-4.98100001', 'Outdoor', 'Autostable', NULL, NULL, '5.15005556', 'En service', NULL, 'EXTENSION 2015', NULL),
(20935, NULL, NULL, NULL, 'CARREFOUR_ABATA', 'IHS_LGN_888O', 'OCI1938', 'IHS', 'IHS', NULL, NULL, NULL, '-3.92905556', 'Outdoor', 'Haubané', NULL, NULL, '5.37300000', 'En service', NULL, 'PLASMA 2015', NULL),
(20936, NULL, NULL, NULL, 'GUEZON_GBEAN', 'IHS_DHM_082O', 'OCI1939', 'IHS', 'IHS', NULL, NULL, NULL, '-7.32216668', 'Outdoor', 'Autostable', NULL, NULL, '7.27425000', 'En service', NULL, 'EXTENSION 2015', NULL),
(20937, NULL, NULL, NULL, 'IRIEKALOUFLA', 'YAM022', 'OCI1940', 'Esco', 'OCI', NULL, NULL, NULL, '-5.85035278', 'Outdoor', 'Haubané', NULL, NULL, '7.69110278', 'En service', NULL, 'EXTENSION 2016', NULL),
(20938, NULL, NULL, NULL, 'MICRO_ID_IVOTEL', 'OCI_Indoor_034', 'OCI1941', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.01875278', 'Outdoor', 'MAT', NULL, NULL, '5.32392779', 'En service', NULL, 'DENSIF 2015', NULL),
(20939, NULL, NULL, NULL, 'SASSAKO_BEGNINI', 'IHS_LGN_701M', 'OCI1942', 'IHS', 'OCI', NULL, NULL, NULL, '-4.27413889', 'Outdoor', 'Autostable', NULL, NULL, '5.22036112', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20940, NULL, NULL, NULL, 'SECODIS_NEW', 'IHS_LGN_787M', 'OCI1943', 'IHS', 'OCI', NULL, NULL, NULL, '-4.00775000', 'Outdoor', 'Autostable', NULL, NULL, '5.26256390', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20941, NULL, NULL, NULL, 'STE_ANNE', 'IHS_NCE_085O', 'OCI1944', 'IHS', 'IHS', NULL, NULL, NULL, '-4.49205556', 'Outdoor', 'Autostable', NULL, NULL, '7.06105556', 'En service', NULL, 'DENSIF 2015', NULL),
(20942, NULL, NULL, NULL, 'YAKRO_NANAN', 'IHS_LAC_103O', 'OCI1945', 'IHS', 'IHS', NULL, NULL, NULL, '-5.23883334', 'Outdoor', 'Autostable', NULL, NULL, '6.78155556', 'En service', NULL, 'DENSIF 2015', NULL),
(20943, NULL, NULL, NULL, 'BARON', 'IHS_LGN_595M', 'OCI1948', 'IHS', 'IHS', NULL, NULL, NULL, '-3.94978334', 'Outdoor', NULL, NULL, NULL, '5.24879445', 'En service', NULL, NULL, NULL),
(20944, NULL, NULL, NULL, 'MICRO_ID_BDU', 'OCI_', 'OCI1949', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.01949444', 'Outdoor', 'MAT', NULL, NULL, '5.32437500', 'En service', NULL, 'DENSIF 2016', NULL),
(20945, NULL, NULL, NULL, 'CIT_ZIN', 'to be defined', 'OCI1951', 'Esco', 'OCI', NULL, NULL, NULL, '-4.08828889', 'Outdoor', 'Autostable', NULL, NULL, '5.37691668', 'En service', NULL, 'PLASMA 2016', NULL),
(20946, NULL, NULL, NULL, 'ANOUMABO_NEW', 'IHS_LGN_900O', 'OCI1953', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96447223', 'Indoor', 'Haubané', NULL, NULL, '5.30447223', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20947, NULL, NULL, NULL, 'MERVEILLE', 'IHS_LGN_887O', 'OCI1954', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96711112', 'Outdoor', 'Autostable', NULL, NULL, '5.41952778', 'En service', NULL, 'DENSIF 2016', NULL),
(20948, NULL, NULL, NULL, 'ABENG_PLATO', 'IHS_MCE_067O', 'OCI1955', 'IHS', 'IHS', NULL, NULL, NULL, '-3.49645278', 'outdoor', 'autostable', NULL, NULL, '6.74626112', 'En service', NULL, 'DENSIF 2016', NULL),
(20949, NULL, NULL, NULL, 'DIAMANKANI', 'KOR005', 'OCI1957', 'Esco', 'OCI', NULL, NULL, NULL, '-6.52472200', 'Outdoor', 'Haubané', NULL, NULL, '10.56611100', 'En service', NULL, 'EXTENSION 2016', NULL),
(20950, NULL, NULL, NULL, 'GAZAHIO', 'IHS_FMG_094M', 'OCI1958', 'IHS', 'IHS', NULL, NULL, NULL, '-6.35941668', 'Outdoor', 'Autostable', NULL, NULL, '6.23800000', 'En service', NULL, 'EXTENSION 2016', NULL),
(20951, NULL, NULL, NULL, 'GOUVERNEUR', 'IHS_LGN_872O', 'OCI1959', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09700001', 'outdoor', 'Autostable', NULL, NULL, '5.31927778', 'En service', NULL, 'DENSIF 2016', NULL),
(20952, NULL, NULL, NULL, 'OUPAGUI', 'IHS_BSD_100M', 'OCI1960', 'IHS', 'IHS', NULL, NULL, NULL, '-6.59316389', 'Outdoor', 'Haubané', NULL, NULL, '5.58390556', 'En service', NULL, 'EXTENSION 2016', NULL),
(20953, NULL, NULL, NULL, 'LABOGEM', 'IHS_LGN_399M', 'OCI1961', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96038890', 'Indoor', 'MAT', NULL, NULL, '5.36516667', 'En service', NULL, 'EXTENSION 2016', NULL),
(20954, NULL, NULL, NULL, 'RADISSON BLUE', NULL, 'OCI1962', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.93650000', 'Indoor', 'mural', NULL, NULL, '5.25875000', 'En service', NULL, NULL, NULL),
(20955, NULL, NULL, NULL, 'Residence_horizon', 'IHS_LGN_955O', 'OCI1963', 'IHS', 'IHS', NULL, NULL, NULL, '-4.01297530', 'Outdoor', 'MAT', NULL, NULL, '5.32141295', 'En service', NULL, 'PLASMA 2016', NULL),
(20956, NULL, NULL, NULL, 'MAZEH_NEW', 'IHS_LGN_850O', 'OCI1965', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97380556', 'Indoor', 'Haubané', NULL, NULL, '5.27638889', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(20957, NULL, NULL, NULL, '4ETAGES', 'IHS_LGN_617M', 'OCI1966', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00783334', 'Outdoor', 'Autostable', NULL, NULL, '5.44061112', 'En service', NULL, 'PLASMA 2016', NULL),
(20958, NULL, NULL, NULL, 'ABOBO_BELLEVILLE', 'IHS_LGN_821M', 'OCI1967', 'IHS', 'IHS', NULL, NULL, NULL, '-3.98879900', 'Outdoor', 'Autostable', NULL, NULL, '5.42160051', 'En service', NULL, 'PLASMA 2016', NULL),
(20959, NULL, NULL, NULL, 'ABOISSO_BETIABO', 'IHS_SCE_098M', 'OCI1968', 'IHS', 'IHS', NULL, NULL, NULL, '-3.19094400', 'Outdoor', 'Autostable', NULL, NULL, '5.47889000', 'En service', NULL, 'PLASMA 2016', NULL),
(20960, NULL, NULL, NULL, 'AKEIKOI_DJIBI', 'IHS_LGN_891M', 'OCI1969', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00106374', 'Outdoor', 'Autostable', NULL, NULL, '5.45380815', 'En service', NULL, 'PLASMA 2016', NULL),
(20961, NULL, NULL, NULL, 'ANONO_VILLAGE', 'IHS_LGN_286M', 'OCI1971', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96991382', 'Outdoor', 'Haubané', NULL, NULL, '5.34522600', 'En service', NULL, 'PLASMA 2016', NULL),
(20962, NULL, NULL, NULL, 'BONIKRO_EXT', 'IHS_LGN_883M', 'OCI1973', 'IHS', 'IHS', NULL, NULL, NULL, '-4.11880556', 'Indoor', 'Haubané', NULL, NULL, '5.35252778', 'En service', NULL, 'PLASMA 2016', NULL),
(20963, NULL, NULL, NULL, 'CIMAF', 'IHS_LGN_469M', 'OCI1975', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08022223', 'Outdoor', 'Autostable', NULL, NULL, '5.38838889', 'En service', NULL, 'PLASMA 2016', NULL),
(20964, NULL, NULL, NULL, 'DJIBI_VILLAGE', 'IHS_LGN_892M', 'OCI1976', 'IHS', 'IHS', NULL, NULL, NULL, '-3.97483334', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.45480556', 'En service', NULL, 'PLASMA 2016', NULL),
(20965, NULL, NULL, NULL, 'DJOROBITE', 'Tiers', 'OCI1977', 'Moov', 'Moov', NULL, NULL, NULL, '-3.95697222', 'Outdoor', 'Autostable', NULL, NULL, '5.39727778', 'En service', NULL, 'PLASMA 2016', NULL),
(20966, NULL, NULL, NULL, 'EPP_RAN', 'IHS_LGN_016M', 'OCI1978', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02583334', 'Outdoor', 'Autostable', NULL, NULL, '5.32541667', 'En service', NULL, 'PLASMA 2016', NULL),
(20967, NULL, NULL, NULL, 'GBINI', 'IHS_SVN_107M', 'OCI1979', 'IHS', 'IHS', NULL, NULL, NULL, '-6.23083057', 'Outdoor', 'Autostable', NULL, NULL, '10.24193889', 'En service', NULL, 'IHS_MTN', NULL),
(20968, NULL, NULL, NULL, '220logements', 'IHS_LGN_053M', 'OCI1980', 'IHS', 'IHS', NULL, NULL, NULL, '-4.017389', 'Outdoor', 'Autostable', NULL, NULL, '5.349417', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(20969, NULL, NULL, NULL, 'MOSQUATI', 'IHS_LAC_015M', 'OCI1981', 'IHS', 'IHS', NULL, NULL, NULL, '-5.28902778', 'Outdoor', 'Autostable', NULL, NULL, '6.81691667', 'En service', NULL, 'PLASMA 2016', NULL),
(20970, NULL, NULL, NULL, 'PLAQUE_MARCHE', 'IHS_LGN_820M', 'OCI1983', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00350001', 'Outdoor', 'Autostable', NULL, NULL, '5.43072222', 'En service', NULL, 'PLASMA 2016', NULL),
(20971, NULL, NULL, NULL, 'SOCIFAB', 'IHS_LGN_956M', 'OCI1984', 'IHS', 'IHS', NULL, NULL, NULL, '-4.07241668', 'Outdoor', 'Autostable', NULL, NULL, '5.56675001', 'En service', NULL, 'DENSIF 2016', NULL),
(20972, NULL, NULL, NULL, 'STAR9B', 'IHS_LGN_525M', 'OCI1985', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99044343', 'Outdoor', 'Haubané', NULL, NULL, '5.41161195', 'En service', NULL, 'PLASMA 2016', NULL),
(20973, NULL, NULL, NULL, 'Touadji', 'SPE002', 'OCI1986', 'Esco', 'OCI', NULL, NULL, NULL, '-6.58350000', 'Outdoor', 'Haubané', NULL, NULL, '5.51877779', 'En service', NULL, 'EXT 2016', NULL),
(20974, NULL, NULL, NULL, 'TREICH_ENTENTE', 'IHS_LGN_846M', 'OCI1987', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00055751', 'Outdoor', 'Autostable', NULL, NULL, '5.30416601', 'En service', NULL, 'PLASMA 2016', NULL),
(20975, NULL, NULL, NULL, 'YOP_GF', 'IHS_LGN_207M', 'OCI1988', 'IHS', 'IHS', NULL, NULL, NULL, '-4.06366697', 'Outdoor', 'MAT', NULL, NULL, '5.35010869', 'En service', NULL, 'PLASMA 2016', NULL),
(20976, NULL, NULL, NULL, 'BOUAFLE_BLAMA', 'IHS_MRH_076O', 'OCI1989', 'IHS', 'IHS', NULL, NULL, NULL, '-5.75766667', 'Outdoor', 'Autostable', NULL, NULL, '6.99947223', 'En service', NULL, 'DENSIF 2016', NULL),
(20977, NULL, NULL, NULL, 'BOUAKE_KOKO', 'IHS_VDB_127O', 'OCI1990', 'IHS', 'IHS', NULL, NULL, NULL, '-5.04119445', 'Outdoor', 'Autostable', NULL, NULL, '7.69044445', 'En service', NULL, 'DENSIF 2016', NULL),
(20978, NULL, NULL, NULL, 'DALOA_MARCHE', 'IHS_HSD_134O', 'OCI1991', 'IHS', 'IHS', NULL, NULL, NULL, '-6.45573056', 'Outdoor', 'Autostable', NULL, NULL, '6.87241667', 'En service', NULL, 'DENSIF 2016', NULL),
(20979, NULL, NULL, NULL, 'DUEKOUE_SUD', 'IHS_MCY_073O', 'OCI1992', 'IHS', 'IHS', NULL, NULL, NULL, '-7.35960000', 'Outdoor', 'Autostable', NULL, NULL, '6.72927778', 'En service', NULL, 'DENSIF 2016', NULL),
(20980, NULL, NULL, NULL, 'SP_BELLEVILLE', 'IHS_BSD_219O', 'OCI1993', 'IHS', 'IHS', NULL, NULL, NULL, '-6.68758000', 'Outdoor', 'Autostable', NULL, NULL, '4.77527000', 'En service', NULL, 'DENSIF 2016', NULL),
(20981, NULL, NULL, NULL, 'KROHON', 'IHS_BSD_221O', 'OCI1994', 'IHS', 'IHS', NULL, NULL, NULL, '-6.52570001', 'Outdoor', 'Autostable', NULL, NULL, '5.35483334', 'En service', NULL, NULL, NULL),
(20982, NULL, NULL, NULL, 'NIMBO', 'IHS_VDB_128O', 'OCI1995', 'IHS', 'IHS', NULL, NULL, NULL, '-5.02772223', 'Outdoor', 'Autostable', NULL, NULL, '7.67330556', 'En service', NULL, 'EXTENSION 2016', NULL),
(20983, NULL, NULL, NULL, 'ANYAMA_ADJAME', 'IHS_LGN_937O', 'OCI1996', 'IHS', 'IHS', NULL, NULL, NULL, '-4.03511700', 'Outdoor', 'Autostable', NULL, NULL, '5.48775000', 'En service', NULL, 'EXTENSION 2016', NULL),
(20984, NULL, NULL, NULL, 'ADZOPE_CORRIDOR', 'IHS_AGN_088O', 'OCI1997', 'IHS', 'IHS', NULL, NULL, NULL, '-3.87108334', 'Outdoor', 'Autostable', NULL, NULL, '6.08716667', 'En service', NULL, NULL, NULL),
(20985, NULL, NULL, NULL, 'APRES_CAMP', 'IHS_LGN_946O', 'OCI1998', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05569445', 'Outdoor', 'Autostable', NULL, NULL, '5.42552778', 'En service', NULL, 'DENSIF 2016', NULL),
(20986, NULL, NULL, NULL, 'BASSAM_LYCEE', 'IHS_SCE_104O', 'OCI1999', 'IHS', 'IHS', NULL, NULL, NULL, '-3.75166667', 'Outdoor', 'Autostable', NULL, NULL, '5.21578889', 'En service', NULL, 'DENSIF 2016', NULL),
(20987, NULL, NULL, NULL, 'OUFFOUE DIEKRO', 'IHS_LAC_112O', 'OCI2001', 'IHS', 'IHS', NULL, NULL, NULL, '-5.13525000', 'Outdoor', 'Autostable', NULL, NULL, '6.91508334', 'En service', NULL, 'DENSIF 2016', NULL),
(20988, NULL, NULL, NULL, 'TOUNGBOKRO', 'IHS_VDB_126O', 'OCI2002', 'IHS', 'IHS', NULL, NULL, NULL, '-5.09847223', 'Outdoor', 'Autostable', NULL, NULL, '7.37836112', 'En service', NULL, 'EXTENSION 2016', NULL),
(20989, NULL, NULL, NULL, 'AKPESSEKRO', 'YAM015', 'OCI2003', 'Esco', 'OCI', NULL, NULL, NULL, '-5.30313000', 'Outdoor', 'Autostable', NULL, NULL, '6.73472000', 'En service', NULL, 'EXTENSION 2016', NULL),
(20990, NULL, NULL, NULL, 'AZALAI', 'Indoor', 'OCI2004', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.98619000', 'Indoor', NULL, NULL, NULL, '5.29948900', 'En service', NULL, 'DENSIF 2016', NULL),
(20991, NULL, NULL, NULL, 'BLEDY_GOAZON', 'IHS_MCY_074O', 'OCI2005', 'IHS', 'IHS', NULL, NULL, NULL, '-7.77805000', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.56373100', 'En service', NULL, 'EXT 2016', NULL),
(20992, NULL, NULL, NULL, 'CELONA', 'ABJ011', 'OCI2006', 'Esco', 'OCI', NULL, NULL, NULL, '-3.93913900', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.37825000', 'En service', NULL, 'DENSIF 2016', NULL),
(20993, NULL, NULL, NULL, 'GOGOGUHE', 'IHS_HSD_133O', 'OCI2007', 'IHS', 'IHS', NULL, NULL, NULL, '-6.42272500', 'Outdoor', 'Autostable', NULL, NULL, '6.66075800', 'En service', NULL, 'EXTENSION 2016', NULL),
(20994, NULL, NULL, NULL, 'ISSIA_NDD', 'IHS_HSD_135O', 'OCI2008', 'IHS', 'IHS', NULL, NULL, NULL, '-6.57111112', 'Outdoor', 'Autostable', NULL, NULL, '6.48811112', 'En service', NULL, 'EXTENSION 2016', NULL),
(20995, NULL, NULL, NULL, 'KAKOU_BROUKRO', 'IHS_LAC_039O', 'OCI2009', 'IHS', 'OCI', NULL, NULL, NULL, '-5.13422222', 'Outdoor', 'Haubané', NULL, NULL, '6.84653612', 'En service', NULL, NULL, NULL),
(20996, NULL, NULL, NULL, 'KATIOLA_RAIL', 'BKE007', 'OCI2010', 'Esco', 'OCI', NULL, NULL, NULL, '-5.10765400', 'Outdoor', 'Autostable', NULL, NULL, '8.13431000', 'En service', NULL, 'EXTENSION 2016', NULL),
(20997, NULL, NULL, NULL, 'KONDIEBOUMAN', 'IHS_AGN_089O', 'OCI2011', 'IHS', 'IHS', NULL, NULL, NULL, '-4.54311112', 'Outdoor', 'Autostable', NULL, NULL, '6.21852778', 'En service', NULL, 'EXTENSION 2016', NULL),
(20998, NULL, NULL, NULL, 'MEDON_INAHIRI', 'IHS_BSD_223O', 'OCI2012', 'IHS', 'IHS', NULL, NULL, NULL, '-6.21448056', 'Outdoor', NULL, NULL, NULL, '5.20458056', 'En service', NULL, 'EXTENSION 2016', NULL),
(20999, NULL, NULL, NULL, 'MICRO_FONDATION_CONGRES', NULL, 'OCI2013', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-5.26483932', 'Indoor', NULL, NULL, NULL, '6.79733631', 'En service', NULL, 'DENSIF 2016', NULL),
(21000, NULL, NULL, NULL, 'MICRO_FONDATION_SALLEC', NULL, 'OCI2014', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-5.26484167', 'Indoor', NULL, NULL, NULL, '6.79733334', 'En service', NULL, NULL, NULL),
(21001, NULL, NULL, NULL, 'NAWOLOKAHA', 'IHS_SVN_140O', 'OCI2016', 'IHS', 'IHS', NULL, NULL, NULL, '-5.35173000', 'Outdoor', 'Autostable', NULL, NULL, '9.43109000', 'En service', NULL, 'EXTENSION 2016', NULL),
(21002, NULL, NULL, NULL, 'NYAMOIN', 'IHS_ZNZ_093O', 'OCI2017', 'IHS', 'IHS', NULL, NULL, NULL, '-3.43780556', 'Outdoor', 'Autostable', NULL, NULL, '9.61175000', 'En service', NULL, 'EXTENSION 2016', NULL),
(21003, NULL, NULL, NULL, 'PONONDOUGOU', 'IHS_SVN_136O', 'OCI2019', 'IHS', 'IHS', NULL, NULL, NULL, '-6.32306000', 'Outdoor', 'Autostable', NULL, NULL, '9.52092000', 'En service', NULL, 'EXTENSION 2016', NULL),
(21004, NULL, NULL, NULL, 'SCB_NIAKARA', 'IHS_VDB_131O', 'OCI2020', 'IHS', 'IHS', NULL, NULL, NULL, '-5.47661112', 'Outdoor', 'Autostable', NULL, NULL, '8.77166667', 'En service', NULL, 'EXTENSION 2016', NULL),
(21005, NULL, NULL, NULL, 'SOKOBO', 'IHS_VDB_129O', 'OCI2021', 'IHS', 'IHS', NULL, NULL, NULL, '-5.30791667', 'Outdoor', 'Autostable', NULL, NULL, '7.59213889', 'En service', NULL, 'EXTENSION 2016', NULL),
(21006, NULL, NULL, NULL, 'YAOU_MOBILE', 'Tiers', 'OCI2022', 'Esco', 'OCI', NULL, NULL, NULL, '-3.66874445', 'Outdoor', 'Autostable', NULL, NULL, '5.23186112', 'En service', NULL, 'EXTENSION 2017', NULL),
(21007, NULL, NULL, NULL, 'ZANZRA', 'IHS_MRH_075O', 'OCI2023', 'IHS', 'IHS', NULL, NULL, NULL, '-6.21075001', 'Outdoor', NULL, NULL, NULL, '7.48013889', 'En service', NULL, 'EXT 2016', NULL),
(21008, NULL, NULL, NULL, 'AUTOROUTE_BASSAM', 'IHS_LGN_961O', 'OCI2025', 'IHS', 'IHS', NULL, NULL, NULL, '-3.85876945', 'Outdoor', NULL, NULL, NULL, '5.23576945', 'En service', NULL, 'DENSIF 2017', NULL),
(21009, NULL, NULL, NULL, 'BINGERVIL_SUD', 'IHS_LGN_945O', 'OCI2027', 'IHS', 'IHS', NULL, NULL, NULL, '-3.89175000', 'Outdoor', 'Autostable', NULL, NULL, '5.33672223', 'En service', NULL, 'DENSIF 2017', NULL),
(21010, NULL, NULL, NULL, 'CIDT_NEW', 'IHS_VDB_134O', 'OCI2029', 'IHS', 'OCI', NULL, NULL, NULL, '-5.05816230', 'Outdoor', 'Autostable', NULL, NULL, '7.70172555', 'En service', NULL, 'DENSIF 2017', NULL),
(21011, NULL, NULL, NULL, 'DJORO-DJORO', 'IHS_ZNZ_094O', 'OCI2030', 'IHS', 'IHS', NULL, NULL, NULL, '-3.71575001', 'Outdoor', 'Autostable', NULL, NULL, '7.89322223', 'En service', NULL, 'EXTENSION 2017', NULL),
(21012, NULL, NULL, NULL, 'KASSIAPLEU', 'IHS_DHM_098O', 'OCI2032', 'IHS', 'IHS', NULL, NULL, NULL, '-7.80501900', 'Outdoor', NULL, NULL, NULL, '7.36370000', 'En service', NULL, 'EXTENSION 2017', NULL),
(21013, NULL, NULL, NULL, 'MADRIZE', 'IHS_LGN_938O', 'OCI2034', 'IHS', 'IHS', NULL, NULL, NULL, '-3.92748889', 'Outdoor', NULL, NULL, NULL, '5.37643056', 'En service', NULL, 'DENSIF 2017', NULL),
(21014, NULL, NULL, NULL, 'MAHANDIANA_SOKOURANI', 'IHS_SVN_139O', 'OCI2035', 'IHS', 'IHS', NULL, NULL, NULL, '-6.68048000', 'Outdoor', NULL, NULL, NULL, '10.24805000', 'En service', NULL, 'EXTENSION 2017', NULL),
(21015, NULL, NULL, NULL, 'PAILLET_EXT', 'ABJ047', 'OCI2036', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01025000', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.38138889', 'En service', NULL, 'DENSIF 2017', NULL),
(21016, NULL, NULL, NULL, 'RESIDENCE_NIABLE', 'IHS_LGN_957O', 'OCI2037', 'IHS', 'OCI', NULL, NULL, NULL, '-3.98288889', 'Outdoor', 'Autostable', NULL, NULL, '5.39447223', 'En service', NULL, 'DENSIF 2017', NULL),
(21017, NULL, NULL, NULL, 'SANHALA', 'IHS_SVN_135O', 'OCI2038', 'IHS', 'IHS', NULL, NULL, NULL, '-6.85542000', 'Outdoor', NULL, NULL, NULL, '10.03915000', 'En service', NULL, 'EXTENSION 2017', NULL),
(21018, NULL, NULL, NULL, 'VENANCE_IHS', 'IHS_LGN_670M', 'OCI2039', 'IHS', 'IHS', NULL, NULL, NULL, '-4.14727778', 'Outdoor', 'Autostable', NULL, NULL, '5.39566667', 'En service', NULL, 'DENSIF 2017', NULL),
(21019, NULL, NULL, NULL, 'ZOGOUINE', 'IHS_SVN_137O', 'OCI2040', 'IHS', 'IHS', NULL, NULL, NULL, '-7.97711945', 'Outdoor', 'Haubané', NULL, NULL, '7.09691112', 'En service', NULL, 'EXTENSION 2017', NULL),
(21020, NULL, NULL, NULL, 'ANONKOUA_SUD', 'ABJ035', 'OCI2044', 'Esco', 'OCI', NULL, NULL, NULL, '-4.04511112', 'Outdoor', 'Autostable', NULL, NULL, '5.42491667', 'En service', NULL, 'DENSIF 2017', NULL),
(21021, NULL, NULL, NULL, 'CARREFOUR_FAYA', 'ABJ009', 'OCI2046', 'Esco', 'OCI', NULL, NULL, NULL, '-3.93814445', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.36952778', 'En service', NULL, 'DENSIF 2017', NULL),
(21022, NULL, NULL, NULL, 'CDCI_ANANERAIE', 'ABJ072', 'OCI2047', 'Esco', 'OCI', NULL, NULL, NULL, '-4.09555556', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.34550000', 'En service', NULL, 'DENSIF 2017', NULL),
(21023, NULL, NULL, NULL, 'CITE_GATL', 'ABJ051', 'OCI2048', 'Esco', 'OCI', NULL, NULL, NULL, '-3.94016400', 'Outdoor', 'Autostable', NULL, NULL, '5.26289400', 'En service', NULL, 'DENSIF 2017', NULL),
(21024, NULL, NULL, NULL, 'CIT_BOUAKE', 'IHS_VDB_001M', 'OCI2049', 'IHS', 'IHS', NULL, NULL, NULL, '-5.02772223', 'Outdoor', 'Autostable', NULL, NULL, '7.68633334', 'En service', NULL, 'DENSIF 2017', NULL),
(21025, NULL, NULL, NULL, 'COCOTERAIE_ROSIER', 'ABJ058', 'OCI2050', 'Esco', 'OCI', NULL, NULL, NULL, '-3.78179700', 'Outdoor', 'Autostable', NULL, NULL, '5.21391700', 'En service', NULL, 'DENSIF 2017', NULL),
(21026, NULL, NULL, NULL, 'GESCO_NEW', 'IHS_LGN_958O', 'OCI2052', 'IHS', 'OCI', NULL, NULL, NULL, '-4.09899300', 'Outdoor', NULL, NULL, NULL, '5.36234700', 'En service', NULL, 'DENSIF 2017', NULL),
(21027, NULL, NULL, NULL, 'HOTEL_PRESIDENT_PALMIER', 'YAM018', 'OCI2053', 'Esco', 'OCI', NULL, NULL, NULL, '-5.25249904', 'Outdoor', 'Autostable', NULL, NULL, '6.80196773', 'En service', NULL, 'DENSIF 2017', NULL),
(21028, NULL, NULL, NULL, 'KETIN_IHS', 'IHS_AGN_041M', 'OCI2055', 'IHS', 'IHS', NULL, NULL, NULL, '-3.88745000', 'Indoor', 'Autostable', NULL, NULL, '6.39321000', 'En service', NULL, 'DENSIF 2017', NULL),
(21029, NULL, NULL, NULL, 'KRINJABO_IHS', 'IHS_SCE_086M', 'OCI2056', 'IHS', 'IHS', NULL, NULL, NULL, '-3.20805000', 'Indoor', 'Autostable', NULL, NULL, '5.39741667', 'En service', NULL, 'EXT 2017', NULL),
(21030, NULL, NULL, NULL, 'AVIATION', 'IHS_DNG_002M', 'OCI2058', 'IHS', 'IHS', NULL, NULL, NULL, '-7.56419445', 'Outdoor', 'Autostable', NULL, NULL, '9.49183056', 'En service', NULL, 'DENSIF 2017', NULL),
(21031, NULL, NULL, NULL, 'ORANGE_CAMPUS', 'ABJ021', 'OCI2059', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01288889', 'Indoor', 'Autostable', NULL, NULL, '5.33952778', 'En service', NULL, 'DENSIF 2017', NULL),
(21032, NULL, NULL, NULL, 'POPEE', 'ABJ024', 'OCI2061', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97561111', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.39255556', 'En service', NULL, 'DENSIF 2017', NULL),
(21033, NULL, NULL, NULL, 'RUBINO_IHS', 'IHS_AGN_057M', 'OCI2062', 'IHS', 'IHS', NULL, NULL, NULL, '-4.31516667', 'Outdoor', 'Autostable', NULL, NULL, '6.07183334', 'En service', NULL, 'EXT 2017', NULL),
(21034, NULL, NULL, NULL, 'SODEMI', 'IHS_LGN_819M', 'OCI2064', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00217031', 'Outdoor', 'Autostable', NULL, NULL, '5.34721837', 'En service', NULL, 'DENSIF 2017', NULL),
(21035, NULL, NULL, NULL, 'SP_PORT', 'IHS_BSD_222O', 'OCI2065', 'IHS', 'IHS', NULL, NULL, NULL, '-6.62446044', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.75377143', 'En service', NULL, 'DENSIF 2017', NULL),
(21036, NULL, NULL, NULL, 'YOP_LYCEE_TECH', 'IHS_LGN_325M', 'OCI2067', 'IHS', 'IHS', NULL, NULL, NULL, '-4.081', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.35513889', 'En service', NULL, 'DENSIF 2017', NULL),
(21037, NULL, NULL, NULL, 'ADOU_KOFFIKRO', 'IHS_MCE_068O', 'OCI2068', 'IHS', 'IHS', NULL, NULL, NULL, '-3.46029700', 'Outdoor', NULL, NULL, NULL, '6.69702500', 'En service', NULL, 'EXT 2017', NULL),
(21038, NULL, NULL, NULL, 'ALOKOI_PR', 'Tiers', 'OCI2070', 'OCI en propre', 'Particulier', NULL, NULL, NULL, '-4.15857778', 'Outdoor', 'Haubané', NULL, NULL, '5.41420556', 'En service', NULL, 'DENSIF 2017', NULL),
(21039, NULL, NULL, NULL, 'ANASUR_COCODY', 'ABJ002', 'OCI2071', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98613889', 'Outdoor', 'Autostable', NULL, NULL, '5.35816667', 'En service', NULL, 'HIRONDELLE', NULL),
(21040, NULL, NULL, NULL, 'ARC_EN_CIEL', 'ABJ003', 'OCI2072', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97843056', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.40548889', 'En service', NULL, 'HIRONDELLE', NULL),
(21041, NULL, NULL, NULL, 'ARDOISE_CAFE', 'ABJ005', 'OCI2073', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95427778', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.35027778', 'En service', NULL, 'HIRONDELLE', NULL),
(21042, NULL, NULL, NULL, 'AEROPORT_BKE', 'BKE001', 'OCI2076', 'Esco', 'OCI', NULL, NULL, NULL, '-5.06471700', 'Outdoor', 'Autostable', NULL, NULL, '7.73941400', 'En service', NULL, NULL, NULL),
(21043, NULL, NULL, NULL, 'BELLEVIEW', 'ABJ007', 'OCI2077', 'Esco', 'OCI', NULL, NULL, NULL, '-4.09512223', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.33855001', 'En service', NULL, 'HIRONDELLE', NULL),
(21044, NULL, NULL, NULL, 'BINGERVILLE_MARCHE', 'ABJ010', 'OCI2078', 'Esco', 'OCI', NULL, NULL, NULL, '-3.88226400', 'Outdoor', 'Autostable', NULL, NULL, '5.36050800', 'En service', NULL, 'HIRONDELLE', NULL),
(21045, NULL, NULL, NULL, 'BONOUA_MOBILE', 'ABJ057', 'OCI2079', 'Esco', 'OCI', NULL, NULL, NULL, '-3.58466667', 'Outdoor', 'Autostable', NULL, NULL, '5.27144445', 'En service', NULL, 'EXTENSION 2017', NULL),
(21046, NULL, NULL, NULL, 'BLOLEQUIN_IHS', 'IHS_MCY_045M', 'OCI2081', 'IHS', 'IHS', NULL, NULL, NULL, '-8.00905556', 'Indoor', 'Autostable', NULL, NULL, '6.57280556', 'En service', NULL, 'DENSIF 2017', NULL),
(21047, NULL, NULL, NULL, 'MICRO_ID_FARAH', 'Indoor', 'OCI2082', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.98369093', 'Indoor', 'Autostable', NULL, NULL, '5.30916795', 'En service', NULL, NULL, NULL),
(21048, NULL, NULL, NULL, 'DAGBA', 'IHS_SVN_141O', 'OCI2083', 'IHS', 'IHS', NULL, NULL, NULL, '-5.96150001', 'Outdoor', NULL, NULL, NULL, '9.24633334', 'En service', NULL, 'EXTENSION 2017', NULL),
(21049, NULL, NULL, NULL, 'DJIBI_CGK', 'ABJ040', 'OCI2086', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97394445', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.38330556', 'En service', NULL, 'HIRONDELLE', NULL),
(21050, NULL, NULL, NULL, 'EECI_RIVIERA', 'ABJ004', 'OCI2088', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95853889', 'Outdoor', 'Autostable', NULL, NULL, '5.34866112', 'En service', NULL, 'HIRONDELLE', NULL),
(21051, NULL, NULL, NULL, 'KONANKRO_IHS', 'IHS_SBD_010M', 'OCI2089', 'IHS', 'IHS', NULL, NULL, NULL, '-5.36361100', 'Indoor', 'Autostable', NULL, NULL, '5.85080600', 'En service', NULL, 'DENSIF 2017', NULL),
(21052, NULL, NULL, NULL, 'KOUKOURANDOUMI', 'ABJ069', 'OCI2090', 'Esco', 'OCI', NULL, NULL, NULL, '-3.17675000', 'Outdoor', 'Haubané', NULL, NULL, '5.52180556', 'En service', NULL, 'EXTENSION 2017', NULL),
(21053, NULL, NULL, NULL, 'MAN_LYCEE2', 'IHS_DHM_086M', 'OCI2092', 'IHS', 'IHS', NULL, NULL, NULL, '-7.51255000', 'Indoor', 'Haubané', NULL, NULL, '7.40586100', 'En service', NULL, NULL, NULL),
(21054, NULL, NULL, NULL, 'GOULALEU', 'IHS_DHM_099O', 'OCI2094', 'IHS', 'IHS', NULL, NULL, NULL, '-8.36273000', 'Outdoor', NULL, NULL, NULL, '6.70436000', 'En service', NULL, 'EXTENSION 2017', NULL),
(21055, NULL, NULL, NULL, 'GRAND_GBAPLEU', 'MAN019', 'OCI2095', 'Moov', 'Moov', NULL, NULL, NULL, '-7.5297', 'Indoor', 'Autostable', NULL, NULL, '7.4088', 'En service', NULL, 'DENSIF 2017', NULL),
(21056, NULL, NULL, NULL, 'ROUTE_ABATA', 'IHS_LGN_940O', 'OCI2097', 'IHS', 'IHS', NULL, NULL, NULL, '-3.92263889', 'Outdoor', NULL, NULL, NULL, '5.35030556', 'En service', NULL, NULL, NULL),
(21057, NULL, NULL, NULL, 'TSF_Mobile', 'IHS_VDB_006O', 'OCI2098', 'IHS', 'OCI', NULL, NULL, NULL, '-5.01323300', 'Outdoor', 'Autostable Mobile', NULL, NULL, '7.67473300', 'En service', NULL, 'RAN 1000', NULL),
(21058, NULL, NULL, NULL, 'HIRONDELLE', 'IHS_LGN_953O', 'OCI2099', 'IHS', 'IHS', NULL, NULL, NULL, '-3.99553056', 'Outdoor', NULL, NULL, NULL, '5.36810000', 'En service', NULL, 'HIRONDELLE', NULL),
(21059, NULL, NULL, NULL, 'KOGUI_IHS', 'IHS_BSD_062M', 'OCI2101', 'IHS', 'IHS', NULL, NULL, NULL, '-6.53250000', 'Outdoor', 'Autostable', NULL, NULL, '5.25730600', 'En service', NULL, 'EXTENSION 2017', NULL),
(21060, NULL, NULL, NULL, 'KOMBOLOKOURA', 'KOR014', 'OCI2102', 'Esco', 'OCI', NULL, NULL, NULL, '-5.88268889', 'Outdoor', 'Haubané', NULL, NULL, '9.33246112', 'En service', NULL, 'HIRONDELLE', NULL),
(21061, NULL, NULL, NULL, 'CAMP_AGBAN', 'Esco', 'OCI2103', 'Esco', 'OCI', NULL, NULL, NULL, '-4.00867', 'Outdoor', 'Autostable', NULL, NULL, '5.36567', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21062, NULL, NULL, NULL, 'NDOTRE_CASSE', 'ABJ041', 'OCI2104', 'Esco', 'OCI', NULL, NULL, NULL, '-4.0774', 'Outdoor', 'Autostable', NULL, NULL, '5.43088', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21063, NULL, NULL, NULL, 'ELEPHANT', 'Esco', 'OCI2105', 'Esco', 'OCI', NULL, NULL, NULL, '-3.88115', 'Outdoor', 'Autostable', NULL, NULL, '5.24414', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21064, NULL, NULL, NULL, 'RANKOI', 'Esco', 'OCI2106', 'Esco', 'OCI', NULL, NULL, NULL, '-3.90901', 'Outdoor', 'Autostable', NULL, NULL, '5.39403', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21065, NULL, NULL, NULL, 'ATHENA', 'ABJ006', 'OCI2107', 'Esco', 'OCI', NULL, NULL, NULL, '-3.90491', 'Outdoor', 'Autostable', NULL, NULL, '5.37946', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21066, NULL, NULL, NULL, 'AZITO_SOCOGI', 'ABJ071', 'OCI2108', 'Esco', 'OCI', NULL, NULL, NULL, '-4.09222', 'Outdoor', 'Autostable', NULL, NULL, '5.30971', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21067, NULL, NULL, NULL, 'KOWEIT_SUD', 'Esco', 'OCI2109', 'Esco', 'OCI', NULL, NULL, NULL, '-4.05415', 'Outdoor', 'Autostable', NULL, NULL, '5.31163', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21068, NULL, NULL, NULL, 'MANGRE_DAN', 'BKE005', 'OCI2110', 'Esco', 'OCI', NULL, NULL, NULL, '-5.62494700', 'Outdoor', 'Haubané', NULL, NULL, '7.45815000', 'En service', NULL, 'HIRONDELLE', NULL),
(21069, NULL, NULL, NULL, 'MICRO_PLAYCE_PALMERAIE', 'OCI_indoor', 'OCI2111', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.93913900', 'Indoor', NULL, NULL, NULL, '5.37825000', 'En service', NULL, NULL, NULL),
(21070, NULL, NULL, NULL, 'MODESTE', 'IHS_LGN_939O', 'OCI2112', 'IHS', 'IHS', NULL, NULL, NULL, '-3.81612778', 'Outdoor', NULL, NULL, NULL, '5.23134445', 'En service', NULL, 'DENSIF 2017', NULL),
(21071, NULL, NULL, NULL, 'NV DUEKOUE', 'Esco', 'OCI2113', 'Esco', 'OCI', NULL, NULL, NULL, '-7.35052', 'Outdoor', 'Autostable', NULL, NULL, '6.69975', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21072, NULL, NULL, NULL, 'MOSQUEE_IHS', 'IHS_LAC_002M', 'OCI2114', 'IHS', 'IHS', NULL, NULL, NULL, '-5.27327800', 'Outdoor', 'Autostable', NULL, NULL, '6.80997200', 'En service', NULL, 'DENSIF 2017', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(21073, NULL, NULL, NULL, 'DALOA_STADE', 'Esco', 'OCI2115', 'Esco', 'OCI', NULL, NULL, NULL, '-6.45872', 'Outdoor', 'Autostable', NULL, NULL, '6.88945', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21074, NULL, NULL, NULL, 'PALMERAIE_BALEY', 'ABJ025', 'OCI2117', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95097500', 'Outdoor', 'Autostable', NULL, NULL, '5.38086400', 'En service', NULL, 'HIRONDELLE', NULL),
(21075, NULL, NULL, NULL, 'PENIEL', 'Esco', 'OCI2118', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98832778', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.39106112', 'En service', NULL, 'HIRONDELLE', NULL),
(21076, NULL, NULL, NULL, 'PERLA', 'ABJ061', 'OCI2119', 'Esco', 'OCI', NULL, NULL, NULL, '-4.06716667', 'Outdoor', 'MAT', NULL, NULL, '5.35715556', 'En service', NULL, 'HIRONDELLE', NULL),
(21077, NULL, NULL, NULL, 'PERUSIA', 'ABJ062', 'OCI2120', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97861111', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.28083333', 'En service', NULL, 'HIRONDELLE', NULL),
(21078, NULL, NULL, NULL, 'LOUHIRI', 'Esco', 'OCI2121', 'Esco', 'OCI', NULL, NULL, NULL, '-6.35133', 'Outdoor', 'Autostable', NULL, NULL, '5.36081', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21079, NULL, NULL, NULL, 'KOUAKOUSSEKRO', 'Esco', 'OCI2130', 'Esco', 'OCI', NULL, NULL, NULL, '-4.15513', 'Outdoor', 'Autostable', NULL, NULL, '7.28974', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21080, NULL, NULL, NULL, 'SANDEGUE_IHS', 'IHS_ZNZ_045M', 'OCI2123', 'IHS', 'IHS', NULL, NULL, NULL, '-3.57857223', 'Indoor', 'Autostable', NULL, NULL, '7.94792778', 'En service', NULL, 'DENSIF 2017', NULL),
(21081, NULL, NULL, NULL, 'BABA', 'Esco', 'OCI2124', 'Esco', 'OCI', NULL, NULL, NULL, '-6.73063', 'Outdoor', 'Autostable', NULL, NULL, '4.7594', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21082, NULL, NULL, NULL, 'SEIZRA_BONON', 'DAL003', 'OCI2125', 'Esco', 'OCI', NULL, NULL, NULL, '-6.10191667', 'Outdoor', NULL, NULL, NULL, '6.91927778', 'En service', NULL, 'HIRONDELLE', NULL),
(21083, NULL, NULL, NULL, 'SOBA', 'KOR016', 'OCI2127', 'Esco', 'OCI', NULL, NULL, NULL, '-5.60590000', 'Outdoor', 'Autostable', NULL, NULL, '9.45720000', 'En service', NULL, 'HIRONDELLE', NULL),
(21084, NULL, NULL, NULL, 'TCHASSODJI', 'ABG003', 'OCI2128', 'Esco', 'OCI', NULL, NULL, NULL, '-3.868125', 'Outdoor', 'Autostable', NULL, NULL, '6.100383', 'En service', NULL, 'HIRONDELLE', NULL),
(21085, NULL, NULL, NULL, 'TOLAKRO_DOBRE', 'IHS_BSD_220O', 'OCI2129', 'IHS', 'IHS', NULL, NULL, NULL, '-6.36958056', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.62506112', 'En service', NULL, 'EXTENSION 2017', NULL),
(21086, NULL, NULL, NULL, 'CAIMPEX', 'Esco', 'OCI2146', 'Esco', 'OCI', NULL, NULL, NULL, '-3.48038', 'Outdoor', 'Autostable', NULL, NULL, '5.21121', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21087, NULL, NULL, NULL, 'BONGO VILLAGE', 'Esco', 'OCI2131', 'Esco', 'OCI', NULL, NULL, NULL, '-3.54663', 'Outdoor', 'Autostable', NULL, NULL, '5.50863', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21088, NULL, NULL, NULL, 'YELLEU', 'IHS_DHM_100O', 'OCI2132', 'IHS', 'IHS', NULL, NULL, NULL, '-8.05191900', 'Outdoor', NULL, NULL, NULL, '6.97060000', 'En service', NULL, 'HIRONDELLE', NULL),
(21089, NULL, NULL, NULL, 'YOP_BATIM', 'ABJ078', 'OCI2133', 'Esco', 'OCI', NULL, NULL, NULL, '-4.09346900', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.35977400', 'En service', NULL, 'DENSIF 2017', NULL),
(21090, NULL, NULL, NULL, 'YOP_WALI', 'IHS_LGN_944O', 'OCI2134', 'IHS', 'IHS', NULL, NULL, NULL, '-4.06011112', 'Outdoor', NULL, NULL, NULL, '5.35511112', 'En service', NULL, 'DENSIF 2017', NULL),
(21091, NULL, NULL, NULL, 'ZI_NEW', 'IHS_LGN_504M', 'OCI2135', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09863889', 'Outdoor', 'Autostable', NULL, NULL, '5.37513889', 'En service', NULL, 'DENSIF 2017', NULL),
(21092, NULL, NULL, NULL, 'SEREBISSOU', 'ABG020', 'OCI2136', 'Esco', 'OCI', NULL, NULL, NULL, '-4.65601', 'Outdoor', 'Autostable', NULL, NULL, '6.34483', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21093, NULL, NULL, NULL, 'ADJAHUI', 'ABJ049', 'OCI2137', 'Esco', 'OCI', NULL, NULL, NULL, '-3.94892600', 'Outdoor', 'Autostable', NULL, NULL, '5.27547700', 'En service', NULL, 'HIRONDELLE', NULL),
(21094, NULL, NULL, NULL, 'ZIOGOUINE', 'Esco', 'OCI2138', 'Esco', 'OCI', NULL, NULL, NULL, '-7.63993', 'Outdoor', 'Autostable', NULL, NULL, '7.19215', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21095, NULL, NULL, NULL, 'ZOE_BRUNO', 'ABJ064', 'OCI2139', 'Esco', 'OCI', NULL, NULL, NULL, '-3.94966667', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.28383334', 'En service', NULL, 'HIRONDELLE', NULL),
(21096, NULL, NULL, NULL, 'SYNACACI', 'IHS_LGN_884M', 'OCI2140', 'IHS', 'IHS', NULL, NULL, NULL, '-3.945361', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.346653', 'En service', NULL, 'ATHENA2017', NULL),
(21097, NULL, NULL, NULL, 'MAHOUNOU_AKOUE', 'Esco', 'OCI2141', 'Esco', 'OCI', NULL, NULL, NULL, '-5.37466667', 'Outdoor', 'Autostable', NULL, NULL, '6.95658334', 'En service', NULL, 'ATHENA2017', NULL),
(21098, NULL, NULL, NULL, 'CASCIAS', 'ABJ085', 'OCI2142', 'Esco', 'OCI', NULL, NULL, NULL, '-4.09484723', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.32775834', 'En service', NULL, 'HIRONDELLE', NULL),
(21099, NULL, NULL, NULL, 'GATOUO 2', 'Esco', 'OCI2143', 'Esco', 'OCI', NULL, NULL, NULL, '-8.29407', 'Outdoor', 'Autostable', NULL, NULL, '6.72723', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21100, NULL, NULL, NULL, 'CIERA', 'Esco', 'OCI2144', 'Esco', 'OCI', NULL, NULL, NULL, '-3.93355', 'Outdoor', 'Autostable', NULL, NULL, '5.38177', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21101, NULL, NULL, NULL, 'TOUGBO', 'Esco', 'OCI2347', 'Esco', 'OCI', NULL, NULL, NULL, '-4.14118', 'Outdoor', 'Autostable', NULL, NULL, '9.76441', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21102, NULL, NULL, NULL, 'BLIDOUBA_NEW', 'SPE008', 'OCI2147', 'Esco', 'OCI', NULL, NULL, NULL, '-7.49788889', 'Indoor', 'Autostable', NULL, NULL, '4.56113889', 'En service', NULL, NULL, NULL),
(21103, NULL, NULL, NULL, 'CANAVESSE_AKRESSI', 'ABJ068', 'OCI2148', 'Esco', 'OCI', NULL, NULL, NULL, '-3.09466667', 'Outdoor', 'Haubané', NULL, NULL, '5.62788889', 'En service', NULL, 'HIRONDELLE', NULL),
(21104, NULL, NULL, NULL, 'TAGOLILIE_NEW', 'DAL025', 'OCI2149', 'Esco', 'Moov', NULL, NULL, NULL, '-5.70641667', 'Outdoor', 'Autostable', NULL, NULL, '5.95286111', 'En service', NULL, NULL, NULL),
(21105, NULL, NULL, NULL, 'GAGNOA BARIO EXT', 'IHS_FMG_098M', 'OCI2150', 'IHS', 'IHS', NULL, NULL, NULL, '-5.966586', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.15411', 'En service', NULL, 'ATHENA2017', NULL),
(21106, NULL, NULL, NULL, 'KORHOGO_BELLEVILLE', 'IHS_SVN_120M', 'OCI2151', 'IHS', 'IHS', NULL, NULL, NULL, '-5.60603', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.425461', 'En service', NULL, 'ATHENA2017', NULL),
(21107, NULL, NULL, NULL, 'KREZOUKOUE', 'IHS_SBD_097M', 'OCI2152', 'IHS', 'IHS', NULL, NULL, NULL, '-5.44615', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.07245', 'En service', NULL, 'ATHENA2017', NULL),
(21108, NULL, NULL, NULL, 'GBOGOLO', 'IHS_WRD_053M', 'OCI2153', 'IHS', 'IHS', NULL, NULL, NULL, '-6.44564', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.79461', 'En service', NULL, 'ATHENA2017', NULL),
(21109, NULL, NULL, NULL, 'NIAPIDOU', 'IHS_BSD_214M', 'OCI2154', 'IHS', 'IHS', NULL, NULL, NULL, '-6.05942', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.33981', 'En service', NULL, 'ATHENA2017', NULL),
(21110, NULL, NULL, NULL, 'KOKONOU', 'IHS_NCE_090M', 'OCI2155', 'IHS', 'IHS', NULL, NULL, NULL, '-3.61795', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.13145', 'En service', NULL, 'ATHENA2017', NULL),
(21111, NULL, NULL, NULL, 'BOGOUINE', 'IHS_DHM_085M', 'OCI2156', 'IHS', 'IHS', NULL, NULL, NULL, '-7.59781', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.26287', 'En service', NULL, 'ATHENA2017', NULL),
(21112, NULL, NULL, NULL, 'BOLONA', 'IHS_SVN_125M', 'OCI2157', 'IHS', 'IHS', NULL, NULL, NULL, '-6.43761', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '10.29867', 'En service', NULL, 'ATHENA2017', NULL),
(21113, NULL, NULL, NULL, 'KOUASSISSERANOU', 'IHS_ZNZ_089M', 'OCI2158', 'IHS', 'IHS', NULL, NULL, NULL, '-2.9114', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.65422', 'En service', NULL, 'ATHENA2017', NULL),
(21114, NULL, NULL, NULL, 'PODIO', 'IHS_BSD_217M', 'OCI2159', 'IHS', 'IHS', NULL, NULL, NULL, '-6.47068', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.85646', 'En service', NULL, 'ATHENA2017', NULL),
(21115, NULL, NULL, NULL, 'ABATTA NQ', 'IHS_LGN_979M', 'OCI2160', 'IHS', 'IHS', NULL, NULL, NULL, '-3.909822', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.34569', 'En service', NULL, 'ATHENA2017', NULL),
(21116, NULL, NULL, NULL, 'ABEANOU', 'IHS_NCE_086M', 'OCI2161', 'IHS', 'IHS', NULL, NULL, NULL, '-4.23326', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.972805', 'En service', NULL, 'ATHENA2017', NULL),
(21117, NULL, NULL, NULL, 'AboboAnyama', 'IHS_LGN_901M', 'OCI2162', 'IHS', 'IHS', NULL, NULL, NULL, '-4.045229541', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.469518601', 'En service', NULL, 'ATHENA2017', NULL),
(21118, NULL, NULL, NULL, 'AboboBCNew', 'IHS_LGN_903M', 'OCI2163', 'IHS', 'IHS', NULL, NULL, NULL, '-4.020517', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.457575', 'En service', NULL, 'ATHENA2017', NULL),
(21119, NULL, NULL, NULL, 'AboboCarrefour', 'IHS_LGN_904M', 'OCI2164', 'IHS', 'IHS', NULL, NULL, NULL, '-4.009886', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.421119', 'En service', NULL, 'ATHENA2017', NULL),
(21120, NULL, NULL, NULL, 'aboboCobakro3', 'IHS_LGN_976M', 'OCI2165', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09229', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.45351', 'En service', NULL, 'ATHENA2017', NULL),
(21121, NULL, NULL, NULL, 'AboboRenfo6', 'IHS_LGN_977M', 'OCI2166', 'IHS', 'IHS', NULL, NULL, NULL, '-4.06964', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.47669', 'En service', NULL, 'ATHENA2017', NULL),
(21122, NULL, NULL, NULL, 'ABOISSONEW2TPExtension', 'IHS_SCE_099M', 'OCI2167', 'IHS', 'IHS', NULL, NULL, NULL, '-3.213333', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.45772', 'En service', NULL, 'ATHENA2017', NULL),
(21123, NULL, NULL, NULL, 'ADJAMEDES APOTRES', 'IHS_LGN_812M', 'OCI2168', 'IHS', 'IHS', NULL, NULL, NULL, '-4.0207', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.344323', 'En service', NULL, 'ATHENA2017', NULL),
(21124, NULL, NULL, NULL, 'ADJINTELEGRAM', 'IHS_LGN_935M', 'OCI2169', 'IHS', 'IHS', NULL, NULL, NULL, '-3.849854', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.41366', 'En service', NULL, 'ATHENA2017', NULL),
(21125, NULL, NULL, NULL, 'AGNISSANKOI', 'IHS_LGN_936M', 'OCI2170', 'IHS', 'IHS', NULL, NULL, NULL, '-3.921992', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.650997', 'En service', NULL, 'ATHENA2017', NULL),
(21126, NULL, NULL, NULL, 'AKACHANTIER', 'IHS_SCE_102M', 'OCI2171', 'IHS', 'IHS', NULL, NULL, NULL, '-3.329515', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.676922', 'En service', NULL, 'ATHENA2017', NULL),
(21127, NULL, NULL, NULL, 'AKAKRO', 'IHS_MCE_060M', 'OCI2172', 'IHS', 'IHS', NULL, NULL, NULL, '-5.95214', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.05742', 'En service', NULL, 'ATHENA2017', NULL),
(21128, NULL, NULL, NULL, 'Akpoue-Boue', 'IHS_NCE_083M', 'OCI2173', 'IHS', 'IHS', NULL, NULL, NULL, '-4.14333', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.44222', 'En service', NULL, 'ATHENA2017', NULL),
(21129, NULL, NULL, NULL, 'ALADGE ', 'IHS_LGN_922M', 'OCI2174', 'IHS', 'IHS', NULL, NULL, NULL, '-3.982609', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.418653', 'En service', NULL, 'ATHENA2017', NULL),
(21130, NULL, NULL, NULL, 'ALLANY', 'IHS_AGN_084M', 'OCI2175', 'IHS', 'IHS', NULL, NULL, NULL, '-4.33583', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.135', 'En service', NULL, 'ATHENA2017', NULL),
(21131, NULL, NULL, NULL, 'ALLEKRAN', 'IHS_MRH_066M', 'OCI2176', 'IHS', 'IHS', NULL, NULL, NULL, '-5.59667', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.91806', 'En service', NULL, 'ATHENA2017', NULL),
(21132, NULL, NULL, NULL, 'ALLONGO', 'IHS_NCE_087M', 'OCI2177', 'IHS', 'IHS', NULL, NULL, NULL, '-4.472375', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.376182', 'En service', NULL, 'ATHENA2017', NULL),
(21133, NULL, NULL, NULL, 'ALLOSO2', 'IHS_SCE_103M', 'OCI2178', 'IHS', 'IHS', NULL, NULL, NULL, '-3.498089', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.575181', 'En service', NULL, 'ATHENA2017', NULL),
(21134, NULL, NULL, NULL, 'ANGAMANKRO', 'IHS_NCE_088M', 'OCI2179', 'IHS', 'IHS', NULL, NULL, NULL, '-4.001132', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.359272', 'En service', NULL, 'ATHENA2017', NULL),
(21135, NULL, NULL, NULL, 'ANGOUAYAOKRO', 'IHS_VDB_110M', 'OCI2180', 'IHS', 'IHS', NULL, NULL, NULL, '-5.21694', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.69333', 'En service', NULL, 'ATHENA2017', NULL),
(21136, NULL, NULL, NULL, 'AnoumaboSansFil', 'IHS_LGN_934M', 'OCI2181', 'IHS', 'IHS', NULL, NULL, NULL, '-3.965152', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.309578', 'En service', NULL, 'ATHENA2017', NULL),
(21137, NULL, NULL, NULL, 'AnyamaBelleVilleEXt', 'IHS_LGN_929M', 'OCI2182', 'IHS', 'IHS', NULL, NULL, NULL, '-4.030531', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.474286', 'En service', NULL, 'ATHENA2017', NULL),
(21138, NULL, NULL, NULL, 'AnyamachateauExt', 'IHS_LGN_928M', 'OCI2183', 'IHS', 'IHS', NULL, NULL, NULL, '-4.068583', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.486857', 'En service', NULL, 'ATHENA2017', NULL),
(21139, NULL, NULL, NULL, 'AnyamaNQ', 'IHS_LGN_905M', 'OCI2184', 'IHS', 'IHS', NULL, NULL, NULL, '-4.04555', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.504167', 'En service', NULL, 'ATHENA2017', NULL),
(21140, NULL, NULL, NULL, 'AnyamaRenfo8', 'IHS_LGN_975M', 'OCI2185', 'IHS', 'IHS', NULL, NULL, NULL, '-4.025131', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.46653', 'En service', NULL, 'ATHENA2017', NULL),
(21141, NULL, NULL, NULL, 'AOUNIENFOUTOU', 'IHS_NCE_091M', 'OCI2186', 'IHS', 'IHS', NULL, NULL, NULL, '-4.376558', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.781431', 'En service', NULL, 'ATHENA2017', NULL),
(21142, NULL, NULL, NULL, 'ApresPontBrime', 'IHS_BSD_216M', 'OCI2187', 'IHS', 'IHS', NULL, NULL, NULL, '-6.599343', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.832227', 'En service', NULL, 'ATHENA2017', NULL),
(21143, NULL, NULL, NULL, 'ASSEMPANAYE', 'IHS_ZNZ_077M', 'OCI2188', 'IHS', 'IHS', NULL, NULL, NULL, '-3.2875', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.35361', 'En service', NULL, 'ATHENA2017', NULL),
(21144, NULL, NULL, NULL, 'ASSIENGATTAKRO', 'IHS_LAC_105M', 'OCI2189', 'IHS', 'IHS', NULL, NULL, NULL, '-5.091833', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.052254', 'En service', NULL, 'ATHENA2017', NULL),
(21145, NULL, NULL, NULL, 'ASSIKOUN', 'IHS_AGN_081M', 'OCI2190', 'IHS', 'IHS', NULL, NULL, NULL, '-3.87528', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.42194', 'En service', NULL, 'ATHENA2017', NULL),
(21146, NULL, NULL, NULL, 'BAFINGDALLA', 'IHS_DHM_095M', 'OCI2191', 'IHS', 'IHS', NULL, NULL, NULL, '-7.667815', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.850623', 'En service', NULL, 'ATHENA2017', NULL),
(21147, NULL, NULL, NULL, 'BAHESETRON(GUEHIEBLY)', 'IHS_MCY_071M', 'OCI2192', 'IHS', 'IHS', NULL, NULL, NULL, '-7.397489', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.957586', 'En service', NULL, 'ATHENA2017', NULL),
(21148, NULL, NULL, NULL, 'BAKRO', 'IHS_SCE_091M', 'OCI2193', 'IHS', 'IHS', NULL, NULL, NULL, '-3.24', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.50611', 'En service', NULL, 'ATHENA2017', NULL),
(21149, NULL, NULL, NULL, 'BANGOUA', 'IHS_MCE_063M', 'OCI2194', 'IHS', 'IHS', NULL, NULL, NULL, '-3.47056', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.33556', 'En service', NULL, 'ATHENA2017', NULL),
(21150, NULL, NULL, NULL, 'BASSA', 'IHS_BSD_224M', 'OCI2195', 'IHS', 'IHS', NULL, NULL, NULL, '-6.154389', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.915122', 'En service', NULL, 'ATHENA2017', NULL),
(21151, NULL, NULL, NULL, 'BASSEKODOUGOU', 'IHS_DNG_048M', 'OCI2196', 'IHS', 'IHS', NULL, NULL, NULL, '-7.574384', 'Outdoor', 'Autostable', NULL, NULL, '9.454377', 'En service', NULL, 'ATHENA2017', NULL),
(21152, NULL, NULL, NULL, 'BATEGUEDEA 1', 'IHS_HSD_138M', 'OCI2197', 'IHS', 'IHS', NULL, NULL, NULL, '-6.684939', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.812921', 'En service', NULL, 'ATHENA2017', NULL),
(21153, NULL, NULL, NULL, 'BazraSokoura', 'IHS_HSD_136M', 'OCI2198', 'IHS', 'IHS', NULL, NULL, NULL, '-6.62034', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.546771', 'En service', NULL, 'ATHENA2017', NULL),
(21154, NULL, NULL, NULL, 'BEGBESSOU', 'IHS_MRH_072M', 'OCI2199', 'IHS', 'IHS', NULL, NULL, NULL, '-5.598339', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.068382', 'En service', NULL, 'ATHENA2017', NULL),
(21155, NULL, NULL, NULL, 'BENDIEKOMENANKRO', 'IHS_NCE_089M', 'OCI2200', 'IHS', 'IHS', NULL, NULL, NULL, '-3.969983', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.205079', 'En service', NULL, 'ATHENA2017', NULL),
(21156, NULL, NULL, NULL, 'Bietry2', 'IHS_LGN_452M', 'OCI2201', 'IHS', 'IHS', NULL, NULL, NULL, '-3.973277778', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.278694444', 'En service', NULL, 'ATHENA2017', NULL),
(21157, NULL, NULL, NULL, 'Bingerville cité fourgère', 'IHS_LGN_890M', 'OCI2202', 'IHS', 'IHS', NULL, NULL, NULL, '-3.908335', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.360812', 'En service', NULL, 'ATHENA2017', NULL),
(21158, NULL, NULL, NULL, 'BkeRenfo9', 'IHS_VDB_136M', 'OCI2203', 'IHS', 'IHS', NULL, NULL, NULL, '-5.04258', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.74138', 'En service', NULL, 'ATHENA2017', NULL),
(21159, NULL, NULL, NULL, 'Blody', 'IHS_DHM_088M', 'OCI2204', 'IHS', 'IHS', NULL, NULL, NULL, '-7.289647', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.798386', 'En service', NULL, 'ATHENA2017', NULL),
(21160, NULL, NULL, NULL, 'BOUINDALA', 'IHS_BAF_030M', 'OCI2205', 'IHS', 'IHS', NULL, NULL, NULL, '-7.708983', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.18135', 'En service', NULL, 'ATHENA2017', NULL),
(21161, NULL, NULL, NULL, 'Boukebo', 'IHS_VDB_132M', 'OCI2206', 'IHS', 'IHS', NULL, NULL, NULL, '-5.293656', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.762185', 'En service', NULL, 'ATHENA2017', NULL),
(21162, NULL, NULL, NULL, 'BROUDOUME', 'IHS_FMG_100M', 'OCI2207', 'IHS', 'IHS', NULL, NULL, NULL, '-5.871714', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.364662', 'En service', NULL, 'ATHENA2017', NULL),
(21163, NULL, NULL, NULL, 'CafedeVersailles', 'IHS_LGN_932M', 'OCI2208', 'IHS', 'IHS', NULL, NULL, NULL, '-3.987733', 'Outdoor', 'HAUBANNE', NULL, NULL, '5.384684', 'En service', NULL, 'ATHENA2017', NULL),
(21164, NULL, NULL, NULL, 'CANTONDJAKPO', 'IHS_NCE_092M', 'OCI2209', 'IHS', 'IHS', NULL, NULL, NULL, '-4.449983', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.2236', 'En service', NULL, 'ATHENA2017', NULL),
(21165, NULL, NULL, NULL, 'CANTONDOUGOU', 'IHS_BSD_203M', 'OCI2210', 'IHS', 'IHS', NULL, NULL, NULL, '-6.40194', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.88194', 'En service', NULL, 'ATHENA2017', NULL),
(21166, NULL, NULL, NULL, 'CCommandoExt', 'IHS_LGN_925M', 'OCI2211', 'IHS', 'IHS', NULL, NULL, NULL, '-3.964584', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.282477', 'En service', NULL, 'ATHENA2017', NULL),
(21167, NULL, NULL, NULL, 'CFI', 'IHS_SBD_092M', 'OCI2212', 'IHS', 'IHS', NULL, NULL, NULL, '-5.17583', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.72361', 'En service', NULL, 'ATHENA2017', NULL),
(21168, NULL, NULL, NULL, 'CocodyCiteSIRNord', 'IHS_LGN_965M', 'OCI2213', 'IHS', 'IHS', NULL, NULL, NULL, '-3.93787', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.39281', 'En service', NULL, 'ATHENA2017', NULL),
(21169, NULL, NULL, NULL, 'CocodyExt2', 'IHS_LGN_967M', 'OCI2214', 'IHS', 'IHS', NULL, NULL, NULL, '-3.952385', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.40846', 'En service', NULL, 'ATHENA2017', NULL),
(21170, NULL, NULL, NULL, 'COCODY_EXTENSION', 'IHS_LGN_908M', 'OCI2215', 'IHS', 'IHS', NULL, NULL, NULL, '-3.944045', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.402318', 'En service', NULL, 'ATHENA2017', NULL),
(21171, NULL, NULL, NULL, 'CocodyNew4', 'IHS_LGN_968M', 'OCI2216', 'IHS', 'IHS', NULL, NULL, NULL, '-3.92003', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.38246', 'En service', NULL, 'ATHENA2017', NULL),
(21172, NULL, NULL, NULL, 'CocodyNew5', 'IHS_LGN_969M', 'OCI2217', 'IHS', 'IHS', NULL, NULL, NULL, '-3.91778', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.39019', 'En service', NULL, 'ATHENA2017', NULL),
(21173, NULL, NULL, NULL, 'CocodyNew7', 'IHS_LGN_962M', 'OCI2218', 'IHS', 'IHS', NULL, NULL, NULL, '-3.918082', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.36727', 'En service', NULL, 'ATHENA2017', NULL),
(21174, NULL, NULL, NULL, 'Copa', 'IHS_AGN_080M', 'OCI2219', 'IHS', 'IHS', NULL, NULL, NULL, '-4.11556', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.24222', 'En service', NULL, 'ATHENA2017', NULL),
(21175, NULL, NULL, NULL, 'DAKOUEPLEU', 'IHS_DHM_101M', 'OCI2220', 'IHS', 'IHS', NULL, NULL, NULL, '-7.57305', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.185053', 'En service', NULL, 'ATHENA2017', NULL),
(21176, NULL, NULL, NULL, 'DALIA', 'IHS_HSD_122M', 'OCI2221', 'IHS', 'IHS', NULL, NULL, NULL, '-6.30778', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.52083', 'En service', NULL, 'ATHENA2017', NULL),
(21177, NULL, NULL, NULL, 'DASSOUGBO', 'IHS_SVN_113M', 'OCI2222', 'IHS', 'IHS', NULL, NULL, NULL, '-5.787139', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.388167', 'En service', NULL, 'ATHENA2017', NULL),
(21178, NULL, NULL, NULL, 'DEPA', 'IHS_HSD_131M', 'OCI2223', 'IHS', 'IHS', NULL, NULL, NULL, '-6.547402', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.444778', 'En service', NULL, 'ATHENA2017', NULL),
(21179, NULL, NULL, NULL, 'DIASSON', 'IHS_AGN_087M', 'OCI2224', 'IHS', 'IHS', NULL, NULL, NULL, '-3.728633', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.972481', 'En service', NULL, 'ATHENA2017', NULL),
(21180, NULL, NULL, NULL, 'DIDAYAOKRO/LAC', 'IHS_LAC_106M', 'OCI2225', 'IHS', 'IHS', NULL, NULL, NULL, '-4.82026', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.412524', 'En service', NULL, 'ATHENA2017', NULL),
(21181, NULL, NULL, NULL, 'DivoBribore', 'IHS_SBD_095M', 'OCI2226', 'IHS', 'IHS', NULL, NULL, NULL, '-5.373432', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.819908', 'En service', NULL, 'ATHENA2017', NULL),
(21182, NULL, NULL, NULL, 'EBIMPE ', 'IHS_LGN_906M', 'OCI2227', 'IHS', 'IHS', NULL, NULL, NULL, '-4.081571', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.500754', 'En service', NULL, 'ATHENA2017', NULL),
(21183, NULL, NULL, NULL, 'Ferefougoula', 'IHS_DNG_042M', 'OCI2228', 'IHS', 'IHS', NULL, NULL, NULL, '-7.733217', 'Outdoor', 'Autostable', NULL, NULL, '9.284073', 'En service', NULL, 'ATHENA2017', NULL),
(21184, NULL, NULL, NULL, 'FEREMANDOUGOU', 'IHS_DNG_047M', 'OCI2229', 'IHS', 'IHS', NULL, NULL, NULL, '-7.572432', 'Outdoor', 'Autostable', NULL, NULL, '8.955179', 'En service', NULL, 'ATHENA2017', NULL),
(21185, NULL, NULL, NULL, 'GagnoaExt3', 'IHS_FMG_097M', 'OCI2230', 'IHS', 'IHS', NULL, NULL, NULL, '-5.971488', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.140015', 'En service', NULL, 'ATHENA2017', NULL),
(21186, NULL, NULL, NULL, 'GagnoaLycée', 'IHS_FMG_099M', 'OCI2231', 'IHS', 'IHS', NULL, NULL, NULL, '-5.951789', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.118181', 'En service', NULL, 'ATHENA2017', NULL),
(21187, NULL, NULL, NULL, 'GAGNOAZAPATA', 'IHS_FMG_096M', 'OCI2232', 'IHS', 'IHS', NULL, NULL, NULL, '-5.93875', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.10703', 'En service', NULL, 'ATHENA2017', NULL),
(21188, NULL, NULL, NULL, 'Gbangbégouiné', 'IHS_DHM_090M', 'OCI2233', 'IHS', 'IHS', NULL, NULL, NULL, '-7.674002', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.332342', 'En service', NULL, 'ATHENA2017', NULL),
(21189, NULL, NULL, NULL, 'gbangbo', 'IHS_ZNZ_085M', 'OCI2234', 'IHS', 'IHS', NULL, NULL, NULL, '-3.53654', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.053218', 'En service', NULL, 'ATHENA2017', NULL),
(21190, NULL, NULL, NULL, 'GBEGARTI', 'IHS_SBD_096M', 'OCI2235', 'IHS', 'IHS', NULL, NULL, NULL, '-5.504332', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.028423', 'En service', NULL, 'ATHENA2017', NULL),
(21191, NULL, NULL, NULL, 'gbemasso', 'IHS_WRD_052M', 'OCI2236', 'IHS', 'IHS', NULL, NULL, NULL, '-6.692474', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.937891', 'En service', NULL, 'ATHENA2017', NULL),
(21192, NULL, NULL, NULL, 'gbetogo', 'IHS_SVN_123M', 'OCI2237', 'IHS', 'IHS', NULL, NULL, NULL, '-6.94143', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.124713', 'En service', NULL, 'ATHENA2017', NULL),
(21193, NULL, NULL, NULL, 'GBOPROUYA(Chantier)', 'IHS_HSD_121M', 'OCI2238', 'IHS', 'IHS', NULL, NULL, NULL, '-6.28833', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.70889', 'En service', NULL, 'ATHENA2017', NULL),
(21194, NULL, NULL, NULL, 'Gnehiri', 'IHS_SBD_091M', 'OCI2239', 'IHS', 'IHS', NULL, NULL, NULL, '-5.41667', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.96556', 'En service', NULL, 'ATHENA2017', NULL),
(21195, NULL, NULL, NULL, 'GonzaqExt2', 'IHS_LGN_909M', 'OCI2240', 'IHS', 'IHS', NULL, NULL, NULL, '-3.910444', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.259722', 'En service', NULL, 'ATHENA2017', NULL),
(21196, NULL, NULL, NULL, 'Gorodi', 'IHS_HSD_128M', 'OCI2241', 'IHS', 'IHS', NULL, NULL, NULL, '-6.916188', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.69901', 'En service', NULL, 'ATHENA2017', NULL),
(21197, NULL, NULL, NULL, 'GOUABO_RUBINO', 'IHS_NCE_082M', 'OCI2242', 'IHS', 'IHS', NULL, NULL, NULL, '-4.32056', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.00056', 'En service', NULL, 'ATHENA2017', NULL),
(21198, NULL, NULL, NULL, 'GOUANA', 'IHS_BAF_027M', 'OCI2243', 'IHS', 'IHS', NULL, NULL, NULL, '-7.684389', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.072698', 'En service', NULL, 'ATHENA2017', NULL),
(21199, NULL, NULL, NULL, 'GRANDZIA', 'IHS_FMG_101M', 'OCI2244', 'IHS', 'IHS', NULL, NULL, NULL, '-6.25203', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.190588', 'En service', NULL, 'ATHENA2017', NULL),
(21200, NULL, NULL, NULL, 'Guingloville', 'IHS_DHM_087M', 'OCI2245', 'IHS', 'IHS', NULL, NULL, NULL, '-7.407885', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.189614', 'En service', NULL, 'ATHENA2017', NULL),
(21201, NULL, NULL, NULL, 'Kagbangbè', 'IHS_DNG_043M', 'OCI2246', 'IHS', 'IHS', NULL, NULL, NULL, '-7.55233', 'Outdoor', 'Autostable', NULL, NULL, '10.144871', 'En service', NULL, 'ATHENA2017', NULL),
(21202, NULL, NULL, NULL, 'KALOA', 'IHS_SVN_127M', 'OCI2247', 'IHS', 'IHS', NULL, NULL, NULL, '-6.053003', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '10.005651', 'En service', NULL, 'ATHENA2017', NULL),
(21203, NULL, NULL, NULL, 'KEHI-GBAHI', 'IHS_FMG_102M', 'OCI2248', 'IHS', 'IHS', NULL, NULL, NULL, '-5.8418', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.22901', 'En service', NULL, 'ATHENA2017', NULL),
(21204, NULL, NULL, NULL, 'KIRAMISSE', 'IHS_ZNZ_087M', 'OCI2249', 'IHS', 'IHS', NULL, NULL, NULL, '-3.447258', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.221551', 'En service', NULL, 'ATHENA2017', NULL),
(21205, NULL, NULL, NULL, 'KOFFIKRO', 'IHS_NCE_084M', 'OCI2250', 'IHS', 'IHS', NULL, NULL, NULL, '-5.64806', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.93472', 'En service', NULL, 'ATHENA2017', NULL),
(21206, NULL, NULL, NULL, 'KOLON', 'IHS_SVN_114M', 'OCI2251', 'IHS', 'IHS', NULL, NULL, NULL, '-4.2165', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.041778', 'En service', NULL, 'ATHENA2017', NULL),
(21207, NULL, NULL, NULL, 'KONANKOKOREKRO', 'IHS_LAC_107M', 'OCI2253', 'IHS', 'IHS', NULL, NULL, NULL, '-5.07076', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.692511', 'En service', NULL, 'ATHENA2017', NULL),
(21208, NULL, NULL, NULL, 'KorhogoRenfo2', 'IHS_SVN_146M', 'OCI2254', 'IHS', 'IHS', NULL, NULL, NULL, '-5.61716', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.46054', 'En service', NULL, 'ATHENA2017', NULL),
(21209, NULL, NULL, NULL, 'KorhogoRenfo3', 'IHS_SVN_147M', 'OCI2255', 'IHS', 'IHS', NULL, NULL, NULL, '-5.64295', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.4703', 'En service', NULL, 'ATHENA2017', NULL),
(21210, NULL, NULL, NULL, 'KorhogoRenfo6', 'IHS_SVN_148M', 'OCI2256', 'IHS', 'IHS', NULL, NULL, NULL, '-5.667917', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.481389', 'En service', NULL, 'ATHENA2017', NULL),
(21211, NULL, NULL, NULL, 'KorhogoSinistreExt / KORHOGO KASSIMERE', 'IHS_SVN_121M', 'OCI2257', 'IHS', 'IHS', NULL, NULL, NULL, '-5.589346', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.446425', 'En service', NULL, 'ATHENA2017', NULL),
(21212, NULL, NULL, NULL, 'KOROKARA', 'IHS_SVN_128M', 'OCI2258', 'IHS', 'IHS', NULL, NULL, NULL, '-5.62573', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.90073', 'En service', NULL, 'ATHENA2017', NULL),
(21213, NULL, NULL, NULL, 'KOTIO', 'IHS_ZNZ_088M', 'OCI2259', 'IHS', 'IHS', NULL, NULL, NULL, '-3.010963', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.037991', 'En service', NULL, 'ATHENA2017', NULL),
(21214, NULL, NULL, NULL, 'KOUAMEADJI', 'IHS_BSD_225M', 'OCI2260', 'IHS', 'IHS', NULL, NULL, NULL, '-6.472633', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.475236', 'En service', NULL, 'ATHENA2017', NULL),
(21215, NULL, NULL, NULL, 'KOULAEOUE', 'IHS_DHM_089M', 'OCI2261', 'IHS', 'IHS', NULL, NULL, NULL, '-7.892264', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.051224', 'En service', NULL, 'ATHENA2017', NULL),
(21216, NULL, NULL, NULL, 'KoumZIExt', 'IHS_LGN_933M', 'OCI2262', 'IHS', 'IHS', NULL, NULL, NULL, '-3.951418', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.294922', 'En service', NULL, 'ATHENA2017', NULL),
(21217, NULL, NULL, NULL, 'KOUROUKONO-DIOULASSO', 'IHS_SVN_115M', 'OCI2263', 'IHS', 'IHS', NULL, NULL, NULL, '-4.449167', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.061611', 'En service', NULL, 'ATHENA2017', NULL),
(21218, NULL, NULL, NULL, 'KOUROUKOUNA', 'IHS_VDB_125M', 'OCI2264', 'IHS', 'IHS', NULL, NULL, NULL, '-5.19904', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.28947', 'En service', NULL, 'ATHENA2017', NULL),
(21219, NULL, NULL, NULL, 'LAHOUDIGAN', 'IHS_ZNZ_090M', 'OCI2265', 'IHS', 'IHS', NULL, NULL, NULL, '-3.039123', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.254044', 'En service', NULL, 'ATHENA2017', NULL),
(21220, NULL, NULL, NULL, 'LAMEKAHA1&2&3', 'IHS_SVN_144M', 'OCI2266', 'IHS', 'IHS', NULL, NULL, NULL, '-5.056261', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.365394', 'En service', NULL, 'ATHENA2017', NULL),
(21221, NULL, NULL, NULL, 'LANDIOUGOU', 'IHS_SVN_122M', 'OCI2267', 'IHS', 'IHS', NULL, NULL, NULL, '-6.2913', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.78264', 'En service', NULL, 'ATHENA2017', NULL),
(21222, NULL, NULL, NULL, 'LEASSO', 'IHS_WRD_054M', 'OCI2268', 'IHS', 'IHS', NULL, NULL, NULL, '-5.92191', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.726549', 'En service', NULL, 'ATHENA2017', NULL),
(21223, NULL, NULL, NULL, 'Lengbre', 'IHS_LAC_108M', 'OCI2269', 'IHS', 'IHS', NULL, NULL, NULL, '-5.141631', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.397429', 'En service', NULL, 'ATHENA2017', NULL),
(21224, NULL, NULL, NULL, 'LigaCamp', 'IHS_HSD_139M', 'OCI2270', 'IHS', 'IHS', NULL, NULL, NULL, '-6.636642', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.604317', 'En service', NULL, 'ATHENA2017', NULL),
(21225, NULL, NULL, NULL, 'LOGBAYO', 'IHS_BSD_207M', 'OCI2271', 'IHS', 'IHS', NULL, NULL, NULL, '-6.58667', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.85333', 'En service', NULL, 'ATHENA2017', NULL),
(21226, NULL, NULL, NULL, 'LOGBOBROU', 'IHS_SBD_098M', 'OCI2272', 'IHS', 'IHS', NULL, NULL, NULL, '-5.694692', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.580142', 'En service', NULL, 'ATHENA2017', NULL),
(21227, NULL, NULL, NULL, 'LONGO', 'IHS_VDB_123M', 'OCI2273', 'IHS', 'IHS', NULL, NULL, NULL, '-5.395611', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.975583', 'En service', NULL, 'ATHENA2017', NULL),
(21228, NULL, NULL, NULL, 'madianan', 'IHS_DNG_045M', 'OCI2274', 'IHS', 'IHS', NULL, NULL, NULL, '-6.949672', 'Outdoor', 'Autostable', NULL, NULL, '9.472914', 'En service', NULL, 'ATHENA2017', NULL),
(21229, NULL, NULL, NULL, 'Mahino 2', 'IHS_BSD_226M', 'OCI2275', 'IHS', 'IHS', NULL, NULL, NULL, '-7.42176', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.10302', 'En service', NULL, 'ATHENA2017', NULL),
(21230, NULL, NULL, NULL, 'MAPRI', 'IHS_BSD_202M', 'OCI2276', 'IHS', 'IHS', NULL, NULL, NULL, '-6.53639', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.84833', 'En service', NULL, 'ATHENA2017', NULL),
(21231, NULL, NULL, NULL, 'Mbohoin', 'IHS_SCE_100M', 'OCI2278', 'IHS', 'IHS', NULL, NULL, NULL, '-3.638228', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.564141', 'En service', NULL, 'ATHENA2017', NULL),
(21232, NULL, NULL, NULL, 'MEDON', 'IHS_BSD_215M', 'OCI2279', 'IHS', 'IHS', NULL, NULL, NULL, '-6.146504', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.066191', 'En service', NULL, 'ATHENA2017', NULL),
(21233, NULL, NULL, NULL, 'MOLONGO', 'IHS_SVN_129M', 'OCI2280', 'IHS', 'IHS', NULL, NULL, NULL, '-6.604341', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.832269', 'En service', NULL, 'ATHENA2017', NULL),
(21234, NULL, NULL, NULL, 'NahioCamp', 'IHS_HSD_137M', 'OCI2281', 'IHS', 'IHS', NULL, NULL, NULL, '-6.140718', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.442007', 'En service', NULL, 'ATHENA2017', NULL),
(21235, NULL, NULL, NULL, 'Naniefongo', 'IHS_SVN_046M', 'OCI2282', 'IHS', 'IHS', NULL, NULL, NULL, '-5.143972222', 'Outdoor', 'HAUBANNE', NULL, NULL, '9.785055556', 'En service', NULL, 'ATHENA2017', NULL),
(21236, NULL, NULL, NULL, 'Nazia', 'IHS_FMG_092M', 'OCI2283', 'IHS', 'IHS', NULL, NULL, NULL, '-6.02083', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.24361', 'En service', NULL, 'ATHENA2017', NULL),
(21237, NULL, NULL, NULL, 'N\'DA KOUASSIKRO', 'IHS_LAC_109M', 'OCI2284', 'IHS', 'IHS', NULL, NULL, NULL, '-5.111305', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.365864', 'En service', NULL, 'ATHENA2017', NULL),
(21238, NULL, NULL, NULL, 'NdotreCobakro2', 'IHS_LGN_974M', 'OCI2285', 'IHS', 'IHS', NULL, NULL, NULL, '-4.08108', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.45475', 'En service', NULL, 'ATHENA2017', NULL),
(21239, NULL, NULL, NULL, 'NEMANAKOYA', 'IHS_BSD_212M', 'OCI2286', 'IHS', 'IHS', NULL, NULL, NULL, '-5.764972', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.860833', 'En service', NULL, 'ATHENA2017', NULL),
(21240, NULL, NULL, NULL, 'N\'GOLODOUGOU', 'IHS_BAF_028M', 'OCI2287', 'IHS', 'IHS', NULL, NULL, NULL, '-7.627984', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.393896', 'En service', NULL, 'ATHENA2017', NULL),
(21241, NULL, NULL, NULL, 'Niamana', 'IHS_DNG_039M', 'OCI2288', 'IHS', 'IHS', NULL, NULL, NULL, '-7.8875', 'Outdoor', 'Autostable', NULL, NULL, '9.584722222', 'En service', NULL, 'ATHENA2017', NULL),
(21242, NULL, NULL, NULL, 'NIAMASSO', 'IHS_DNG_049M', 'OCI2289', 'IHS', 'IHS', NULL, NULL, NULL, '-7.70547', 'Outdoor', 'Autostable', NULL, NULL, '9.505085', 'En service', NULL, 'ATHENA2017', NULL),
(21243, NULL, NULL, NULL, 'NOGOTAHA', 'IHS_SVN_130M', 'OCI2290', 'IHS', 'IHS', NULL, NULL, NULL, '-5.831865', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.179024', 'En service', NULL, 'ATHENA2017', NULL),
(21244, NULL, NULL, NULL, 'Offoriguie', 'IHS_AGN_083M', 'OCI2291', 'IHS', 'IHS', NULL, NULL, NULL, '-4.25944', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.87944', 'En service', NULL, 'ATHENA2017', NULL),
(21245, NULL, NULL, NULL, 'OUAYERE', 'IHS_DNG_044M', 'OCI2292', 'IHS', 'IHS', NULL, NULL, NULL, '-6.923062', 'Outdoor', 'Autostable', NULL, NULL, '10.139745', 'En service', NULL, 'ATHENA2017', NULL),
(21246, NULL, NULL, NULL, 'oulaiglepleu', 'IHS_DHM_091M', 'OCI2293', 'IHS', 'IHS', NULL, NULL, NULL, '-7.780263', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.207618', 'En service', NULL, 'ATHENA2017', NULL),
(21247, NULL, NULL, NULL, 'OUNANGAKAHA', 'IHS_SVN_117M', 'OCI2294', 'IHS', 'IHS', NULL, NULL, NULL, '-5.545778', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.135306', 'En service', NULL, 'ATHENA2017', NULL),
(21248, NULL, NULL, NULL, 'PalmeraieExt', 'IHS_LGN_912M', 'OCI2295', 'IHS', 'IHS', NULL, NULL, NULL, '-3.977518', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.381604', 'En service', NULL, 'ATHENA2017', NULL),
(21249, NULL, NULL, NULL, 'PANDAH', 'IHS_LGN_838M', 'OCI2296', 'IHS', 'IHS', NULL, NULL, NULL, '-4.52944', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.2775', 'En service', NULL, 'ATHENA2017', NULL),
(21250, NULL, NULL, NULL, 'PETIT GABO', 'IHS_BSD_201M', 'OCI2297', 'IHS', 'IHS', NULL, NULL, NULL, '-6.61806', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.86528', 'En service', NULL, 'ATHENA2017', NULL),
(21251, NULL, NULL, NULL, 'PK8', 'IHS_HSD_129M', 'OCI2298', 'IHS', 'IHS', NULL, NULL, NULL, '-6.422795', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.399379', 'En service', NULL, 'ATHENA2017', NULL),
(21252, NULL, NULL, NULL, 'POKO', 'IHS_ZNZ_091M', 'OCI2299', 'IHS', 'IHS', NULL, NULL, NULL, '-2.959932', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.510921', 'En service', NULL, 'ATHENA2017', NULL),
(21253, NULL, NULL, NULL, 'Poumbly', 'IHS_DHM_092M', 'OCI2300', 'IHS', 'IHS', NULL, NULL, NULL, '-7.205401', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.360744', 'En service', NULL, 'ATHENA2017', NULL),
(21254, NULL, NULL, NULL, 'POUNDIA', 'IHS_SVN_143M', 'OCI2301', 'IHS', 'IHS', NULL, NULL, NULL, '-5.81307', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.04296', 'En service', NULL, 'ATHENA2017', NULL),
(21255, NULL, NULL, NULL, 'RivieraStViateurExt', 'IHS_LGN_914M', 'OCI2302', 'IHS', 'IHS', NULL, NULL, NULL, '-3.950899', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.390502', 'En service', NULL, 'ATHENA2017', NULL),
(21256, NULL, NULL, NULL, 'SADA', 'IHS_MCY_075M', 'OCI2303', 'IHS', 'IHS', NULL, NULL, NULL, '-7.603146', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.633611', 'En service', NULL, 'ATHENA2017', NULL),
(21257, NULL, NULL, NULL, 'SAHANDALA', 'IHS_SVN_126M', 'OCI2304', 'IHS', 'IHS', NULL, NULL, NULL, '-4.462955', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.444086', 'En service', NULL, 'ATHENA2017', NULL),
(21258, NULL, NULL, NULL, 'SAKPELE', 'IHS_SVN_131M', 'OCI2305', 'IHS', 'IHS', NULL, NULL, NULL, '-6.01539', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.232771', 'En service', NULL, 'ATHENA2017', NULL),
(21259, NULL, NULL, NULL, 'Siakakro', 'IHS_MCE_062M', 'OCI2306', 'IHS', 'IHS', NULL, NULL, NULL, '-3.24583', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.90778', 'En service', NULL, 'ATHENA2017', NULL),
(21260, NULL, NULL, NULL, 'SIKOLO', 'IHS_SVN_118M', 'OCI2307', 'IHS', 'IHS', NULL, NULL, NULL, '-4.716722', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.441278', 'En service', NULL, 'ATHENA2017', NULL),
(21261, NULL, NULL, NULL, 'SinfraRteBouafle', 'IHS_MRH_070M', 'OCI2308', 'IHS', 'IHS', NULL, NULL, NULL, '-5.909157', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.628723', 'En service', NULL, 'ATHENA2017', NULL),
(21262, NULL, NULL, NULL, 'SOKROGBO', 'IHS_LGN_843M', 'OCI2309', 'IHS', 'IHS', NULL, NULL, NULL, '-4.96236', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.04699', 'En service', NULL, 'ATHENA2017', NULL),
(21263, NULL, NULL, NULL, 'SoubreRenfo2', 'IHS_BSD_213M', 'OCI2310', 'IHS', 'IHS', NULL, NULL, NULL, '-6.573651', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.784756', 'En service', NULL, 'ATHENA2017', NULL),
(21264, NULL, NULL, NULL, 'SRAN-BONDOSSOU', 'IHS_VDB_114M', 'OCI2311', 'IHS', 'IHS', NULL, NULL, NULL, '-5.6', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.38', 'En service', NULL, 'ATHENA2017', NULL),
(21265, NULL, NULL, NULL, 'TamaboVillage', 'IHS_LGN_839M', 'OCI2312', 'IHS', 'IHS', NULL, NULL, NULL, '-4.82056', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.41111', 'En service', NULL, 'ATHENA2017', NULL),
(21266, NULL, NULL, NULL, 'TCHEBLEGUHE', 'IHS_HSD_132M', 'OCI2313', 'IHS', 'IHS', NULL, NULL, NULL, '-6.48424', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.692612', 'En service', NULL, 'ATHENA2017', NULL),
(21267, NULL, NULL, NULL, 'TIEMBLY-GLOPLOU', 'IHS_DHM_093M', 'OCI2314', 'IHS', 'IHS', NULL, NULL, NULL, '-7.479353', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.958195', 'En service', NULL, 'ATHENA2017', NULL),
(21268, NULL, NULL, NULL, 'TIEPLE', 'IHS_VDB_109M', 'OCI2315', 'IHS', 'IHS', NULL, NULL, NULL, '-5.00278', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.54611', 'En service', NULL, 'ATHENA2017', NULL),
(21269, NULL, NULL, NULL, 'TIETIEKOU', 'IHS_FMG_103M', 'OCI2316', 'IHS', 'IHS', NULL, NULL, NULL, '-5.877099', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.144119', 'En service', NULL, 'ATHENA2017', NULL),
(21270, NULL, NULL, NULL, 'TIORO', 'IHS_SVN_142M', 'OCI2317', 'IHS', 'IHS', NULL, NULL, NULL, '-5.63817', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.356168', 'En service', NULL, 'ATHENA2017', NULL),
(21271, NULL, NULL, NULL, 'Tounzuebo', 'IHS_VDB_113M', 'OCI2318', 'IHS', 'IHS', NULL, NULL, NULL, '-5.24306', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.07861', 'En service', NULL, 'ATHENA2017', NULL),
(21272, NULL, NULL, NULL, 'TOURESSO 2', 'IHS_BAF_029M', 'OCI2319', 'IHS', 'IHS', NULL, NULL, NULL, '-7.569708', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.47641', 'En service', NULL, 'ATHENA2017', NULL),
(21273, NULL, NULL, NULL, 'Trafla', 'IHS_HSD_130M', 'OCI2320', 'IHS', 'IHS', NULL, NULL, NULL, '-6.375492', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.504691', 'En service', NULL, 'ATHENA2017', NULL),
(21274, NULL, NULL, NULL, 'VavouaRenfo2', 'IHS_HSD_140M', 'OCI2321', 'IHS', 'IHS', NULL, NULL, NULL, '-6.47926', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.36934', 'En service', NULL, 'ATHENA2017', NULL),
(21275, NULL, NULL, NULL, 'WANEWA', 'IHS_FMG_104M', 'OCI2322', 'IHS', 'IHS', NULL, NULL, NULL, '-6.112861', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.827399', 'En service', NULL, 'ATHENA2017', NULL),
(21276, NULL, NULL, NULL, 'Yadibikro', 'IHS_LAC_110M', 'OCI2323', 'IHS', 'IHS', NULL, NULL, NULL, '-5.35185', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.108133', 'En service', NULL, 'ATHENA2017', NULL),
(21277, NULL, NULL, NULL, 'Yakasse', 'IHS_SBD_093M', 'OCI2324', 'IHS', 'IHS', NULL, NULL, NULL, '-5.63667', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.43417', 'En service', NULL, 'ATHENA2017', NULL),
(21278, NULL, NULL, NULL, 'YAKASSEMEAZAGUIE', 'IHS_AGN_082M', 'OCI2325', 'IHS', 'IHS', NULL, NULL, NULL, '-4.00167', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.76556', 'En service', NULL, 'ATHENA2017', NULL),
(21279, NULL, NULL, NULL, 'Yop Micao extens', 'IHS_LGN_916M', 'OCI2326', 'IHS', 'IHS', NULL, NULL, NULL, '-4.09457', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.389518', 'En service', NULL, 'ATHENA2017', NULL),
(21280, NULL, NULL, NULL, 'YopBonikroExt1', 'IHS_LGN_926M', 'OCI2327', 'IHS', 'IHS', NULL, NULL, NULL, '-4.111695', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.359491', 'En service', NULL, 'ATHENA2017', NULL),
(21281, NULL, NULL, NULL, 'YopLokouaExt', 'IHS_LGN_931M', 'OCI2328', 'IHS', 'IHS', NULL, NULL, NULL, '-4.105744', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.310892', 'En service', NULL, 'ATHENA2017', NULL),
(21282, NULL, NULL, NULL, 'YopWassakara', 'IHS_LGN_918M', 'OCI2330', 'IHS', 'IHS', NULL, NULL, NULL, '-4.068211', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.350094', 'En service', NULL, 'ATHENA2017', NULL),
(21283, NULL, NULL, NULL, 'YopZISud', 'IHS_LGN_973M', 'OCI2331', 'IHS', 'IHS', NULL, NULL, NULL, '-4.102556', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.374861', 'En service', NULL, 'ATHENA2017', NULL),
(21284, NULL, NULL, NULL, 'ZOZUOKO', 'IHS_SBD_094M', 'OCI2332', 'IHS', 'IHS', NULL, NULL, NULL, '-5.75083', 'Outdoor', 'Autostable', NULL, NULL, '5.10778', 'En service', NULL, 'ATHENA2017', NULL),
(21285, NULL, NULL, NULL, 'NPONON', 'IHS_LGN_604M', 'OCI2333', 'IHS', 'IHS', NULL, NULL, NULL, '-4.023583', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.435694', 'En service', NULL, 'ATHENA2017', NULL),
(21286, NULL, NULL, NULL, 'GRANDBASSAMHOTELMANTCHAN', 'IHS_SCE_106M', 'OCI2334', 'IHS', 'IHS', NULL, NULL, NULL, '-3.742568', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.212661', 'En service', NULL, 'ATHENA2017', NULL),
(21287, NULL, NULL, NULL, 'GuigloRteV17', 'IHS_MCY_076M', 'OCI2335', 'IHS', 'IHS', NULL, NULL, NULL, '-7.48059', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.53009', 'En service', NULL, 'ATHENA2017', NULL),
(21288, NULL, NULL, NULL, 'ManRteTouba', 'IHS_DHM_103M', 'OCI2336', 'IHS', 'IHS', NULL, NULL, NULL, '-7.56705', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.42915', 'En service', NULL, 'ATHENA2017', NULL),
(21289, NULL, NULL, NULL, 'ALLOKOIZI', 'IHS_LGN_982M', 'OCI2337', 'IHS', 'IHS', NULL, NULL, NULL, '-4.14559', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.406188', 'En service', NULL, 'ATHENA2017', NULL),
(21290, NULL, NULL, NULL, 'MichelEynard', 'IHS_LGN_087M', 'OCI2338', 'IHS', 'IHS', NULL, NULL, NULL, '-4.003056', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.334556', 'En service', NULL, 'ATHENA2017', NULL),
(21291, NULL, NULL, NULL, 'KorhogoRenfo7', 'IHS_SVN_149M', 'OCI2339', 'IHS', 'IHS', NULL, NULL, NULL, '-5.641889', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.452013', 'En service', NULL, 'ATHENA2017', NULL),
(21292, NULL, NULL, NULL, 'ITESNew', 'IHS_LGN_306M', 'OCI2340', 'IHS', 'IHS', NULL, NULL, NULL, '-4.000667', 'Outdoor', 'Rootop', NULL, NULL, '5.387639', 'En service', NULL, 'ATHENA2017', NULL),
(21293, NULL, NULL, NULL, 'TRANSUA_IHS', 'IHS_ZNZ_030M', 'OCI2341', 'IHS', 'IHS', NULL, NULL, NULL, '-3.010333', 'Outdoor', 'HAUBANNE', NULL, NULL, '7.556222', 'En service', NULL, 'ATHENA2017', NULL),
(21294, NULL, NULL, NULL, 'KIEMOU', 'Esco', 'OCI2342', 'Esco', 'OCI', NULL, NULL, NULL, '-5.54991', 'Outdoor', 'Autostable', NULL, NULL, '9.06201', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21295, NULL, NULL, NULL, 'TINHOU', 'Esco', 'OCI2349', 'Esco', 'OCI', NULL, NULL, NULL, '-8.15936', 'Outdoor', 'Autostable', NULL, NULL, '6.44141', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21296, NULL, NULL, NULL, 'MADINA_BAFING', 'Esco', 'OCI2344', 'Esco', 'OCI', NULL, NULL, NULL, '-4.13432', 'Outdoor', 'Autostable', NULL, NULL, '5.98035', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21297, NULL, NULL, NULL, 'MAMINI', 'Esco', 'OCI2345', 'Esco', 'OCI', NULL, NULL, NULL, '-4.80283', 'Outdoor', 'Autostable', NULL, NULL, '7.73063', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21298, NULL, NULL, NULL, 'KALAMON', 'Esco', 'OCI2366', 'Esco', 'OCI', NULL, NULL, NULL, '-3.16834', 'Outdoor', 'Autostable', NULL, NULL, '9.82184', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21299, NULL, NULL, NULL, 'SEILEU', 'Esco', 'OCI2381', 'Esco', 'OCI', NULL, NULL, NULL, '-8.17364', 'Outdoor', 'Autostable', NULL, NULL, '7.09767', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21300, NULL, NULL, NULL, 'TOTRODROU', 'Esco', 'OCI2348', 'Esco', 'OCI', NULL, NULL, NULL, '-7.38757', 'Outdoor', 'Autostable', NULL, NULL, '7.28833', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21301, NULL, NULL, NULL, 'SANTA_BIANKOUMA', 'Esco', 'OCI2386', 'Esco', 'OCI', NULL, NULL, NULL, '-7.8509', 'Outdoor', 'Autostable', NULL, NULL, '7.66242', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21302, NULL, NULL, NULL, 'YAKPABO-SAKASSOU', 'Esco', 'OCI2350', 'Esco', 'OCI', NULL, NULL, NULL, '-4.88573', 'Outdoor', 'Autostable', NULL, NULL, '6.92812', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21303, NULL, NULL, NULL, 'BLAPLEU', 'Esco', 'OCI2388', 'Esco', 'OCI', NULL, NULL, NULL, '-7.73834', 'Outdoor', 'Autostable', NULL, NULL, '7.63924', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21304, NULL, NULL, NULL, 'GOGO', 'Esco', 'OCI2352', 'Esco', 'OCI', NULL, NULL, NULL, '-3.53126', 'Outdoor', 'Autostable', NULL, NULL, '9.76951', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21305, NULL, NULL, NULL, 'GOPLEU', 'Esco', 'OCI2391', 'Esco', 'OCI', NULL, NULL, NULL, '-8.10563999999999', 'Outdoor', 'Autostable', NULL, NULL, '7.51105', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21306, NULL, NULL, NULL, 'NIEDIEKAHA', 'Esco', 'OCI2356', 'Esco', 'OCI', NULL, NULL, NULL, '-5.17552', 'Outdoor', 'Autostable', NULL, NULL, '8.93515', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21307, NULL, NULL, NULL, 'KATIALI', 'Esco', 'OCI2357', 'Esco', 'OCI', NULL, NULL, NULL, '-5.93391', 'Outdoor', 'Autostable', NULL, NULL, '9.8236', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21308, NULL, NULL, NULL, 'NGOLOBLASSO (CHEWALA)', 'Esco', 'OCI2358', 'Esco', 'OCI', NULL, NULL, NULL, '-7.22381', 'Outdoor', 'Autostable', NULL, NULL, '9.68538', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21309, NULL, NULL, NULL, 'WEHOU', 'Esco', 'OCI2393', 'Esco', 'OCI', NULL, NULL, NULL, '-3.44226', 'Outdoor', 'Autostable', NULL, NULL, '5.52772', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21310, NULL, NULL, NULL, 'KORO_TINASSO', 'Esco', 'OCI2395', 'Esco', 'OCI', NULL, NULL, NULL, '-6.59778', 'Outdoor', NULL, NULL, NULL, '9.88554', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21311, NULL, NULL, NULL, 'YEPLEU', 'Esco', 'OCI2407', 'Esco', 'OCI', NULL, NULL, NULL, '-7.81412', 'Outdoor', 'Autostable', NULL, NULL, '7.69395', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21312, NULL, NULL, NULL, 'PAGNEBLY', 'Esco', 'OCI2796', 'Esco', 'OCI', NULL, NULL, NULL, '-7.13369', 'Outdoor', 'Autostable', NULL, NULL, '7.2488', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21313, NULL, NULL, NULL, 'NOFOU', 'Esco', 'OCI2364', 'Esco', 'OCI', NULL, NULL, NULL, '-4.7039', 'Outdoor', 'Autostable', NULL, NULL, '6.83415', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21314, NULL, NULL, NULL, 'ZONNEU', 'Esco', 'OCI2797', 'Esco', 'OCI', NULL, NULL, NULL, '-8.06049', 'Outdoor', 'Autostable', NULL, NULL, '7.17449', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21315, NULL, NULL, NULL, 'OLODIO', 'Esco', 'OCI2801', 'Esco', 'OCI', NULL, NULL, NULL, '-7.46828', 'Outdoor', 'Autostable', NULL, NULL, '4.71213', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21316, NULL, NULL, NULL, 'KROZIALE', 'Esco', 'OCI2122', 'Esco', 'OCI', NULL, NULL, NULL, '-8.15014', 'Outdoor', 'Autostable', NULL, NULL, '6.85336', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21317, NULL, NULL, NULL, 'NAFANA', 'Esco', 'OCI2368', 'Esco', 'OCI', NULL, NULL, NULL, '-3.73065', 'Outdoor', 'Autostable', NULL, NULL, '7.60543', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21318, NULL, NULL, NULL, 'PINDA_BOROKO', 'Esco', 'OCI2371', 'Esco', 'OCI', NULL, NULL, NULL, '-2.8382', 'Outdoor', 'Autostable', NULL, NULL, '7.90048', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21319, NULL, NULL, NULL, 'BOCASSI', 'Esco', 'OCI2343', 'Esco', 'OCI', NULL, NULL, NULL, '-4.20092', 'Outdoor', 'Autostable', NULL, NULL, '6.61578', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21320, NULL, NULL, NULL, 'KIMBIRILA NORD', 'Esco', 'OCI2373', 'Esco', 'OCI', NULL, NULL, NULL, '-7.51947', 'Outdoor', 'Autostable', NULL, NULL, '10.3545', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21321, NULL, NULL, NULL, 'MEO', 'Esco', 'OCI2346', 'Esco', 'OCI', NULL, NULL, NULL, '-8.29585999999999', 'Outdoor', 'Autostable', NULL, NULL, '6.51973', 'En service', NULL, 'ATHENA 112 SITES', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(21322, NULL, NULL, NULL, 'KROFOINSOU', 'Esco', 'OCI2351', 'Esco', 'OCI', NULL, NULL, NULL, '-5.24161', 'Outdoor', 'Autostable', NULL, NULL, '7.94303', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21323, NULL, NULL, NULL, 'KONDOSSOU', 'Esco', 'OCI2353', 'Esco', 'OCI', NULL, NULL, NULL, '-4.50608', 'Outdoor', 'Autostable', NULL, NULL, '7.7169', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21324, NULL, NULL, NULL, 'KOUA', 'Esco', 'OCI2359', 'Esco', 'OCI', NULL, NULL, NULL, '-7.2702', 'Outdoor', 'Autostable', NULL, NULL, '7.50488', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21325, NULL, NULL, NULL, 'SAMANZA', 'Esco', 'OCI2380', 'Esco', 'OCI', NULL, NULL, NULL, '-3.5739', 'Outdoor', 'Autostable', NULL, NULL, '7.49879', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21326, NULL, NULL, NULL, 'YAPLEU', 'Esco', 'OCI2361', 'Esco', 'OCI', NULL, NULL, NULL, '-7.71051', 'Outdoor', 'Autostable', NULL, NULL, '7.09137', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21327, NULL, NULL, NULL, 'BOUGOUSSO', 'Esco', 'OCI2362', 'Esco', 'OCI', NULL, NULL, NULL, '-7.82357', 'Outdoor', 'Autostable', NULL, NULL, '9.25709999999999', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21328, NULL, NULL, NULL, 'EBOUNOU', 'Esco', 'OCI2383', 'Esco', 'OCI', NULL, NULL, NULL, '-5.34454', 'Outdoor', 'Autostable', NULL, NULL, '5.12353', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21329, NULL, NULL, NULL, 'ASSAHARA', 'Esco', 'OCI2384', 'Esco', 'OCI', NULL, NULL, NULL, '-4.49858', 'Outdoor', 'Autostable', NULL, NULL, '6.66726', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21330, NULL, NULL, NULL, 'SOKORO', 'Esco', 'OCI2363', 'Esco', 'OCI', NULL, NULL, NULL, '-7.83589', 'Outdoor', 'Autostable', NULL, NULL, '10.2042', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21331, NULL, NULL, NULL, 'NIOKOSSO', 'Esco', 'OCI2365', 'Esco', 'OCI', NULL, NULL, NULL, '-7.67287', 'Outdoor', 'Autostable', NULL, NULL, '8.68826', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21332, NULL, NULL, NULL, 'GBON-HOUYE', 'Esco', 'OCI2389', 'Esco', 'OCI', NULL, NULL, NULL, '-8.34094', 'Outdoor', 'Autostable', NULL, NULL, '7.42087', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21333, NULL, NULL, NULL, 'ZAGOUE=GBOAPEULOULE', 'Esco', 'OCI2390', 'Esco', 'OCI', NULL, NULL, NULL, '-7.49795', 'Outdoor', 'Autostable', NULL, NULL, '7.47945', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21334, NULL, NULL, NULL, 'ANIANOU', 'Esco', 'OCI2367', 'Esco', 'OCI', NULL, NULL, NULL, '-3.75782', 'Outdoor', 'Autostable', NULL, NULL, '7.68703', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21335, NULL, NULL, NULL, 'GBELO', 'Esco', 'OCI2372', 'Esco', 'OCI', NULL, NULL, NULL, '-7.7604', 'Outdoor', 'Autostable', NULL, NULL, '8.14822', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21336, NULL, NULL, NULL, 'NANGAKAHA', 'Esco', 'OCI2394', 'Esco', 'OCI', NULL, NULL, NULL, '-5.50473', 'Outdoor', 'Autostable', NULL, NULL, '9.58305', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21337, NULL, NULL, NULL, 'DIOMAN', 'Esco', 'OCI2374', 'Esco', 'OCI', NULL, NULL, NULL, '-7.54566', 'Outdoor', 'Autostable', NULL, NULL, '8.13325', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21338, NULL, NULL, NULL, 'GOUEKAN', 'Esco', 'OCI2375', 'Esco', 'OCI', NULL, NULL, NULL, '-7.84432', 'Outdoor', 'Autostable', NULL, NULL, '8.03659', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21339, NULL, NULL, NULL, 'GODIEKO', 'Esco', 'OCI2377', 'Esco', 'OCI', NULL, NULL, NULL, '-5.69209', 'Outdoor', 'Autostable', NULL, NULL, '6.15143', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21340, NULL, NULL, NULL, 'KOITIENKRO', 'Esco', 'OCI2398', 'Esco', 'OCI', NULL, NULL, NULL, '-3.61398', 'Outdoor', 'Autostable', NULL, NULL, '6.89359', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21341, NULL, NULL, NULL, 'BODUASSO', 'Esco', 'OCI2399', 'Esco', 'OCI', NULL, NULL, NULL, '-6.3959', 'Outdoor', 'Autostable', NULL, NULL, '7.70611', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21342, NULL, NULL, NULL, 'SASSAOUKRO', 'Esco', 'OCI2400', 'Esco', 'OCI', NULL, NULL, NULL, '-4.62525', 'Outdoor', 'Autostable', NULL, NULL, '7.17027', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21343, NULL, NULL, NULL, 'MAMINIGUI', 'Esco', 'OCI2379', 'Esco', 'OCI', NULL, NULL, NULL, '-5.84247', 'Outdoor', 'Autostable', NULL, NULL, '7.40332', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21344, NULL, NULL, NULL, 'GOUELEU', 'Esco', 'OCI2405', 'Esco', 'OCI', NULL, NULL, NULL, '-8.30743', 'Outdoor', 'Autostable', NULL, NULL, '7.39987', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21345, NULL, NULL, NULL, 'KONDROBO_FOUTOUNOU', 'Esco', 'OCI2382', 'Esco', 'OCI', NULL, NULL, NULL, '-5.74705', 'Outdoor', 'Autostable', NULL, NULL, '7.83363', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21346, NULL, NULL, NULL, 'YopPayBasExt', 'IHS_LGN_917M', 'OCI2408', 'IHS', 'IHS', NULL, NULL, NULL, '-4.113722', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.333139', 'En service', NULL, 'ATHENA2017', NULL),
(21347, NULL, NULL, NULL, 'GAROUBRE', 'IHS_BSD_218O', 'OCI2409', 'IHS', 'IHS', NULL, NULL, NULL, '-6.23532500', 'Outdoor', NULL, NULL, NULL, '5.28011900', 'En service', NULL, 'HIRONDELLE', NULL),
(21348, NULL, NULL, NULL, 'ABOISSO_CENTRE', 'IHS_SCE_105M', 'OCI2411', 'IHS', 'IHS', NULL, NULL, NULL, '-3.208748', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.472322', 'En service', NULL, 'HIRONDELLE', NULL),
(21349, NULL, NULL, NULL, 'BOUNANTINFLA', 'YAM017', 'OCI2415', 'Esco', 'OCI', NULL, NULL, NULL, '-5.91637', 'Outdoor', 'Haubané', NULL, NULL, '6.75689', 'En service', NULL, 'HIRONDELLE', NULL),
(21350, NULL, NULL, NULL, 'GUIRAUD', 'ABJ015', 'OCI2417', 'Esco', 'OCI', NULL, NULL, NULL, '-5.95677778', 'Outdoor', 'Haubané sur batiment', NULL, NULL, '5.37291667', 'En service', NULL, 'HIRONDELLE', NULL),
(21351, NULL, NULL, NULL, 'BATIA', 'DAL001', 'OCI2428', 'Esco', 'OCI', NULL, NULL, NULL, '-4.84927778', 'Outdoor', 'Autostable', NULL, NULL, '5.81450001', 'En service', NULL, 'HIRONDELLE', NULL),
(21352, NULL, NULL, NULL, 'CHOCOLAT_SOLEIL', 'ABJ012', 'OCI2435', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97880556', 'Outdoor', NULL, NULL, NULL, '5.38936112', 'En service', NULL, 'HIRONDELLE', NULL),
(21353, NULL, NULL, NULL, 'AEROPORT_ODIENNE', 'MAN015', 'OCI2436', 'Esco', 'OCI', NULL, NULL, NULL, '-7.56586111', 'Outdoor', 'Autostable', NULL, NULL, '9.54055557', 'En service', NULL, 'HIRONDELLE', NULL),
(21354, NULL, NULL, NULL, 'LAMANDOUGOU', 'IHS_WRD_027O', 'OCI2438', 'Esco', 'OCI', NULL, NULL, NULL, '-5.93388889', 'Outdoor', 'Haubané', NULL, NULL, '8.14500001', 'En service', NULL, 'HIRONDELLE', NULL),
(21355, NULL, NULL, NULL, 'ADZOPE FH', 'ABG004', 'OCI2443', 'Esco', 'OCI', NULL, NULL, NULL, '-3.887972', 'Outdoor', 'Haubané', NULL, NULL, '6.116112', 'relais', NULL, NULL, NULL),
(21356, NULL, NULL, NULL, 'BANIA_RELAIS', 'ABG006', 'OCI2446', 'Esco', 'OCI', NULL, NULL, NULL, '-3.174722', 'Outdoor', 'Haubané', NULL, NULL, '9.013056', 'relais', NULL, NULL, NULL),
(21357, NULL, NULL, NULL, 'DEBLABLE', 'IHS_BSD_101O', 'OCI2448', 'IHS', 'OCI', NULL, NULL, NULL, '-7.47672223', 'Outdoor', 'Haubané', NULL, NULL, '4.83483334', 'En service', NULL, NULL, NULL),
(21358, NULL, NULL, NULL, 'GLOPLOU', 'DAL020', 'OCI2453', 'Esco', 'OCI', NULL, NULL, NULL, '-5.58026975', 'Outdoor', 'Haubané', NULL, NULL, '7.58087853', 'En service', NULL, 'EXTENSION 2017', NULL),
(21359, NULL, NULL, NULL, 'GUDIS', 'Esco', 'OCI2454', 'OCI en propre', 'OCI_Stratégie', NULL, NULL, NULL, '-3.980556', 'Outdoor', 'MAT', NULL, NULL, '5.293611', 'relais', NULL, NULL, NULL),
(21360, NULL, NULL, NULL, 'IMPROBOIS_NEW', 'ABJ013', 'OCI2455', 'Esco', 'Moov', NULL, NULL, NULL, '-3.84927453', 'Outdoor', 'Autostable', NULL, NULL, '6.12777976', 'En service', NULL, NULL, NULL),
(21361, NULL, NULL, NULL, 'KALAKALA_RELAIS', 'IHS_SVN_058O', 'OCI2456', 'IHS', 'OCI', NULL, NULL, NULL, '-4.913889', 'Outdoor', 'Haubané', NULL, NULL, '9.460833', 'relais', NULL, NULL, NULL),
(21362, NULL, NULL, NULL, 'KONGOTI_VILLAGE', 'ABG021', 'OCI2458', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95002778', 'Outdoor', 'Autostable', NULL, NULL, '7.14625000', 'En service', NULL, 'DENSIF 2017', NULL),
(21363, NULL, NULL, NULL, 'KRA_NEW', 'MOOV AC463', 'OCI2459', 'Moov', 'Moov', NULL, NULL, NULL, '-4.39677', 'Outdoor', 'Autostable', NULL, NULL, '5.33063', 'En service', NULL, 'DENSIF 2017', NULL),
(21364, NULL, NULL, NULL, 'LATOURGO', 'IHS_ZNZ_066O', 'OCI2460', 'IHS', 'OCI', NULL, NULL, NULL, '-3.243611', 'Outdoor', 'Haubané', NULL, NULL, '9.579166', 'relais', NULL, NULL, NULL),
(21365, NULL, NULL, NULL, 'NIOLONGO', 'IHS_ZNZ_063O', 'OCI2464', 'IHS', 'OCI', NULL, NULL, NULL, '-3.097499', 'Outdoor', 'Haubané', NULL, NULL, '9.298332', 'relais', NULL, NULL, NULL),
(21366, NULL, NULL, NULL, 'PAULEOULA', 'IHS_MCY_050O', 'OCI2465', 'IHS', 'OCI', NULL, NULL, NULL, '-7.40211112', 'Outdoor', 'Haubané', NULL, NULL, '5.80908334', 'relais', NULL, NULL, NULL),
(21367, NULL, NULL, NULL, 'PONA_relais', 'IHS_MCY_010O', 'OCI2466', 'IHS', 'OCI', NULL, NULL, NULL, '-7.548055', 'Outdoor', 'Haubané', NULL, NULL, '6.421111', 'relais', NULL, NULL, NULL),
(21368, NULL, NULL, NULL, 'RELAIS COMPLEXE (SUCAF BOROTOU)', 'IHS_BAF_020O', 'OCI2468', 'IHS', 'OCI', NULL, NULL, NULL, '-7.217883', 'Outdoor', 'Haubané', NULL, NULL, '8.488580', 'relais', NULL, NULL, NULL),
(21369, NULL, NULL, NULL, 'REP SENKORO', 'IHS_BAF_021O', 'OCI2469', 'IHS', 'OCI', NULL, NULL, NULL, '-7.901389', 'Outdoor', 'Haubané', NULL, NULL, '8.280833', 'relais', NULL, '', NULL),
(21370, NULL, NULL, NULL, 'SCIAM_MICRO_MBO', 'OCI_Indoor_030', 'OCI2471', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.018126', 'Outdoor', 'MAT', NULL, NULL, '5.325647', 'En service', NULL, NULL, NULL),
(21371, NULL, NULL, NULL, 'THE', 'IHS_DHM_018O', 'OCI2473', 'IHS', 'OCI', NULL, NULL, NULL, '-7.572639', 'Outdoor', 'Haubané', NULL, NULL, '7.678723', 'relais', NULL, NULL, NULL),
(21372, NULL, NULL, NULL, 'VARALE_relais', 'IHS_ZNZ_068M', 'OCI2474', 'IHS', 'OCI', NULL, NULL, NULL, '-3.279139', 'Outdoor', 'Haubané', NULL, NULL, '9.656527', 'relais', NULL, NULL, NULL),
(21373, NULL, NULL, NULL, 'PRUNELLE', 'ABJ121', 'OCI2500', 'Esco', 'OCI', NULL, NULL, NULL, '-4.3962', 'Outdoor', 'Autostable', NULL, NULL, '5.2058', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21374, NULL, NULL, NULL, 'YOP_COMPLEXE', 'IHS_LGN_186M', 'OCI2504', 'IHS', 'IHS', NULL, NULL, NULL, '-4.063111', 'Outdoor', 'MATS', NULL, NULL, '5.340639', 'En service', NULL, 'ATHENA2017', NULL),
(21375, NULL, NULL, NULL, 'ABATA_SICTA', 'Moov', 'OCI2506', 'Moov', 'Moov', NULL, NULL, NULL, '-3.91711000', 'Outdoor', 'Autostable', NULL, NULL, '5.33722000', 'En service', NULL, 'ANNEXE2017', NULL),
(21376, NULL, NULL, NULL, 'SALONKOURANI', 'MAN024', 'OCI2509', 'Esco', 'OCI', NULL, NULL, NULL, '-7.80216000', 'Outdoor', NULL, NULL, NULL, '9.72171000', 'En service', NULL, 'BOUCLIER', NULL),
(21377, NULL, NULL, NULL, 'BOUNDIALI', 'IHS_SVN_151M', 'OCI2516', 'IHS', 'IHS', NULL, NULL, NULL, '-6.46964', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.51479', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21378, NULL, NULL, NULL, 'BOUNDIALI IVOIRE COTON', 'IHS_SVN_152M', 'OCI2517', 'IHS', 'IHS', NULL, NULL, NULL, '-6.48953', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.51807', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21379, NULL, NULL, NULL, 'BOUNDIALI RTE KGO', 'IHS_SVN_153M', 'OCI2518', 'IHS', 'IHS', NULL, NULL, NULL, '-6.46691', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.52907', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21380, NULL, NULL, NULL, 'GBETEGUELA', 'IHS_WRD_014M', 'OCI2531', 'IHS', 'IHS', NULL, NULL, NULL, '-6.64806', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.45631', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21381, NULL, NULL, NULL, 'KORHOGO ZONE', 'IHS_SVN_161M', 'OCI2533', 'IHS', 'IHS', NULL, NULL, NULL, '-5.62762', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.48683', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21382, NULL, NULL, NULL, 'KORHOGO_NEW1', 'IHS_SVN_162M', 'OCI2534', 'IHS', 'IHS', NULL, NULL, NULL, '-5.6581', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.4547', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21383, NULL, NULL, NULL, 'KORHOGO3', 'IHS_SVN_164M', 'OCI2535', 'IHS', 'IHS', NULL, NULL, NULL, '-5.65781', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.47091', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21384, NULL, NULL, NULL, 'MAN_NEW2', 'IHS_DHM_105M', 'OCI2540', 'IHS', 'IHS', NULL, NULL, NULL, '-7.54617', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.40285', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21385, NULL, NULL, NULL, 'MANRENFO', 'IHS_DHM_108M', 'OCI2541', 'IHS', 'IHS', NULL, NULL, NULL, '-7.5325', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.39958', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21386, NULL, NULL, NULL, 'ODIENNELYCEEMODERNE', 'IHS_DNG_053M', 'OCI2546', 'IHS', 'IHS', NULL, NULL, NULL, '-7.55321', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.48726', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21387, NULL, NULL, NULL, 'ODIENNERTEAEROPORT', 'IHS_DNG_054M', 'OCI2547', 'IHS', 'IHS', NULL, NULL, NULL, '-7.55857', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.51613', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21388, NULL, NULL, NULL, 'SAN-PEDRO_NEW2', 'IHS_BSD_243M', 'OCI2552', 'IHS', 'IHS', NULL, NULL, NULL, '-6.65551', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.77698', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21389, NULL, NULL, NULL, 'SANPEDROPORO', 'IHS_BSD_246M', 'OCI2553', 'IHS', 'IHS', NULL, NULL, NULL, '-6.62945', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.78164', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21390, NULL, NULL, NULL, 'M\'BATO BOUAKE PERIPHERIE DE BINGERVILLE', 'IHS_LGN_1003M', 'OCI2572', 'IHS', 'IHS', NULL, NULL, NULL, '-3.7914', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.35184', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21391, NULL, NULL, NULL, 'AGBAN AKOUAI PERIPHERIE DE BINGERVILLE', 'IHS_LGN_988M', 'OCI2573', 'IHS', 'IHS', NULL, NULL, NULL, '-3.85452', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.31085', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21392, NULL, NULL, NULL, 'PBABOUABOU', 'IHS_LGN_1006M', 'OCI2574', 'IHS', 'IHS', NULL, NULL, NULL, '-3.89293', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.27769', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21393, NULL, NULL, NULL, 'GONZAQVILLELYCEE', 'IHS_LGN_1001M', 'OCI2575', 'IHS', 'IHS', NULL, NULL, NULL, '-3.89657', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.25483', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21394, NULL, NULL, NULL, 'KOUMASSIMARCHÉPOULET', 'IHS_LGN_1002M', 'OCI2576', 'IHS', 'IHS', NULL, NULL, NULL, '-3.95766', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.30049', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21395, NULL, NULL, NULL, 'ABATTAVILLAGE', 'IHS_LGN_984M', 'OCI2577', 'IHS', 'IHS', NULL, NULL, NULL, '-3.91476', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.32838', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21396, NULL, NULL, NULL, 'BAGBA_MARCHE', 'IHS_LGN_993M', 'OCI2578', 'IHS', 'IHS', NULL, NULL, NULL, '-3.88307', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.34401', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21397, NULL, NULL, NULL, 'KOFAKOI PERIPHERIE DE BINGERVILLE', 'IHS_LGN_999M', 'OCI2579', 'IHS', 'IHS', NULL, NULL, NULL, '-3.89163', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.35273', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21398, NULL, NULL, NULL, 'BINGERVILLEANADER', 'IHS_LGN_992M', 'OCI2580', 'IHS', 'IHS', NULL, NULL, NULL, '-3.87337', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.36886', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21399, NULL, NULL, NULL, 'YOPIRCA', 'IHS_LGN_1009M', 'OCI2583', 'IHS', 'IHS', NULL, NULL, NULL, '-4.14878', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.3518', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21400, NULL, NULL, NULL, 'DABOURTEABJ', 'IHS_LGN_998M', 'OCI2584', 'IHS', 'IHS', NULL, NULL, NULL, '-4.35884', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.32206', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21401, NULL, NULL, NULL, 'COCODYLAURIERNEW', 'IHS_LGN_996M', 'OCI2585', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96665', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.37704', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21402, NULL, NULL, NULL, 'KOUBA', 'IHS_LGN_986M', 'OCI2587', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02901', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.43563', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21403, NULL, NULL, NULL, 'DIVOMILLIONNAIRE', 'IHS_SBD_106M', 'OCI2593', 'IHS', 'IHS', NULL, NULL, NULL, '-5.3395', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.83988', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21404, NULL, NULL, NULL, 'DIVO_NEW4', 'IHS_SBD_103M', 'OCI2594', 'IHS', 'IHS', NULL, NULL, NULL, '-5.34789', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.8281', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21405, NULL, NULL, NULL, 'DIVO_NEW3', 'IHS_SBD_102M', 'OCI2595', 'IHS', 'IHS', NULL, NULL, NULL, '-5.36683', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.82852', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21406, NULL, NULL, NULL, 'DIVORTEGUITRY', 'IHS_SBD_107M', 'OCI2596', 'IHS', 'IHS', NULL, NULL, NULL, '-5.34655', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.81853', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21407, NULL, NULL, NULL, 'DIVOGNEHIRI', 'IHS_SBD_105M', 'OCI2597', 'IHS', 'IHS', NULL, NULL, NULL, '-5.36638', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.80336', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21408, NULL, NULL, NULL, 'ABENGOUROUCORRIDOR', 'IHS_MCE_070M', 'OCI2600', 'IHS', 'IHS', NULL, NULL, NULL, '-3.53398', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.72333', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21409, NULL, NULL, NULL, 'ADZOPE2018', 'IHS_AGN_090M', 'OCI2602', 'IHS', 'IHS', NULL, NULL, NULL, '-3.85029', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.09923', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21410, NULL, NULL, NULL, 'ADZOPEROAD', 'IHS_AGN_092M', 'OCI2603', 'IHS', 'IHS', NULL, NULL, NULL, '-3.83585', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.11861', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21411, NULL, NULL, NULL, 'BOUAKE_NEW4', 'IHS_VDB_140M', 'OCI2612', 'IHS', 'IHS', NULL, NULL, NULL, '-5.02264', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.71025', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21412, NULL, NULL, NULL, 'AGNIBILEKROLYCEE', 'IHS_MCE_073M', 'OCI2613', 'IHS', 'IHS', NULL, NULL, NULL, '-3.19604', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.13654', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21413, NULL, NULL, NULL, 'AGNIBILEKRORESIDENTIEL', 'IHS_MCE_075M', 'OCI2614', 'IHS', 'IHS', NULL, NULL, NULL, '-3.20144', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.11717', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21414, NULL, NULL, NULL, 'KAOUARA', 'IHS_SVN_159M', 'OCI2615', 'IHS', 'IHS', NULL, NULL, NULL, '-5.1964', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '10.0939', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21415, NULL, NULL, NULL, 'KATIOLANORD', 'IHS_VDB_145M', 'OCI2616', 'IHS', 'IHS', NULL, NULL, NULL, '-5.09878', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.15385', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21416, NULL, NULL, NULL, 'FERKE-2(SUCAFVILLAGE)', 'IHS_SVN_157M', 'OCI2617', 'IHS', 'IHS', NULL, NULL, NULL, '-5.2716', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.296', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21417, NULL, NULL, NULL, 'AHOUE', 'IHS_SCE_107M', 'OCI2628', 'IHS', 'IHS', NULL, NULL, NULL, '-3.94718', NULL, NULL, NULL, NULL, '5.49534', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21418, NULL, NULL, NULL, 'BONDOUKOU_SUD', 'IHS_ZNZ_097M', 'OCI2632', 'IHS', 'IHS', NULL, NULL, NULL, '-2.81298', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.02051', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21419, NULL, NULL, NULL, 'BOUAFLEMILLIONNAIRE', 'IHS_MRH_078M', 'OCI2633', 'IHS', 'IHS', NULL, NULL, NULL, '-5.74326', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.00376', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21420, NULL, NULL, NULL, 'BOUAKE_NEW2', 'IHS_VDB_139M', 'OCI2634', 'IHS', 'IHS', NULL, NULL, NULL, '-5.03388', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.72482', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21421, NULL, NULL, NULL, 'DUEKOUENEWQUARTER', 'IHS_MCY_080M', 'OCI2635', 'IHS', 'IHS', NULL, NULL, NULL, '-7.33404', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.7502', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21422, NULL, NULL, NULL, 'DUEKOUERENFO3', 'IHS_MCY_081M', 'OCI2636', 'IHS', 'IHS', NULL, NULL, NULL, '-7.33363', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.72841', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21423, NULL, NULL, NULL, 'LAKOTANQ', 'IHS_SBD_111M', 'OCI2637', 'IHS', 'IHS', NULL, NULL, NULL, '-5.67406', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.83897', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21424, NULL, NULL, NULL, 'MEAGUINORTH', 'IHS_BSD_231M', 'OCI2638', 'IHS', 'IHS', NULL, NULL, NULL, '-6.56163', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.42713', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21425, NULL, NULL, NULL, 'SANPEDRORTEBEREBY', 'IHS_BSD_247M', 'OCI2639', 'IHS', 'IHS', NULL, NULL, NULL, '-6.69626', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '4.75915', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21426, NULL, NULL, NULL, 'KATIOLASUD', 'IHS_VDB_146M', 'OCI2640', 'IHS', 'IHS', NULL, NULL, NULL, '-5.09949', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.12384', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21427, NULL, NULL, NULL, 'AKOUPE_ZEUDJI', 'IHS_LGN_1020O', 'OCI2652', 'IHS', 'IHS', NULL, NULL, NULL, '-4.15572', NULL, NULL, NULL, NULL, '5.4785', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21428, NULL, NULL, NULL, 'LUCIOLE', 'Esco', 'OCI2689', 'Esco', 'OCI', NULL, NULL, NULL, '-4.154519', 'Outdoor', NULL, NULL, NULL, '5.342269', 'En service', NULL, 'HUB', NULL),
(21429, NULL, NULL, NULL, 'CITE_ADO', NULL, 'OCI2691', 'Esco', 'OCI', NULL, NULL, NULL, '-4.089714', 'Outdoor', NULL, NULL, NULL, '5.399283', 'En service', NULL, 'HUB', NULL),
(21430, NULL, NULL, NULL, 'GREEN VALLEY', 'Esco', 'OCI2694', 'Esco', 'OCI', NULL, NULL, NULL, '-3.92682', 'Outdoor', 'Autostable', NULL, NULL, '5.54233', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21431, NULL, NULL, NULL, 'ATTEKRO', 'YAM024', 'OCI2698', 'Esco', 'OCI', NULL, NULL, NULL, '-4.80395', 'Outdoor', 'Autostable', NULL, NULL, '7.16684', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21432, NULL, NULL, NULL, 'TOUMANGUIE_PALMCI', 'Esco', 'OCI2699', 'Esco', 'OCI', NULL, NULL, NULL, '-3.37885', 'Outdoor', 'Autostable', NULL, NULL, '5.36483', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21433, NULL, NULL, NULL, 'AMOROKI', 'Esco', 'OCI2701', 'Esco', 'OCI', NULL, NULL, NULL, '-4.16236', 'Outdoor', 'Autostable', NULL, NULL, '7.08853', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21434, NULL, NULL, NULL, 'PRITI1', 'Esco', 'OCI2702', 'Esco', 'OCI', NULL, NULL, NULL, '-3.11654', 'Outdoor', 'Autostable', NULL, NULL, '7.57348', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21435, NULL, NULL, NULL, 'MARINE_IHS', 'IHS_SCE_054M', 'OCI2703', 'IHS', 'IHS', NULL, NULL, NULL, '-3.40723119', 'Outdoor', 'Autostable', NULL, NULL, '5.15423818', 'En service', NULL, NULL, NULL),
(21436, NULL, NULL, NULL, 'NAKARA', 'Esco', 'OCI2396', 'Esco', 'OCI', NULL, NULL, NULL, '-5.63691', 'Outdoor', 'Autostable', NULL, NULL, '8.25895', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21437, NULL, NULL, NULL, 'ENA_MICRO', 'Indoor', 'OCI2716', 'Esco', 'OCI', NULL, NULL, NULL, '-3.99808333', 'Indoor', NULL, NULL, NULL, '5.36077778', 'En service', NULL, NULL, NULL),
(21438, NULL, NULL, NULL, 'ODIENNE STADE', 'IHS_DNG_040M', 'OCI2717', 'IHS', 'IHS', NULL, NULL, NULL, '-7.57316667', 'Outdoor', NULL, NULL, NULL, '9.5015', 'En service', NULL, 'PLASMA 2016', NULL),
(21439, NULL, NULL, NULL, 'POSTEL_MICRO', NULL, 'OCI2718', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.017396', 'Outdoor', 'Indoor', NULL, NULL, '5.325678', 'En service', NULL, 'DEPLOIEMENT CLASSIC AVANT 2008', NULL),
(21440, NULL, NULL, NULL, 'LAHOU_STADE', 'Esco', 'OCI2719', 'Esco', 'OCI', NULL, NULL, NULL, '-4.99043', 'Outdoor', 'Autostable', NULL, NULL, '5.24395', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21441, NULL, NULL, NULL, 'BANGOLO_IHS', 'IHS_DHM_032M', 'OCI2720', 'IHS', 'IHS', NULL, NULL, NULL, '-7.48411112', 'Indoor', 'Autostable', NULL, NULL, '7.00852778', 'En service', NULL, NULL, NULL),
(21442, NULL, NULL, NULL, 'GALIENI', 'IHS_LGN_854O', 'OCI2721', 'IHS', 'IHS', NULL, NULL, NULL, '-4.02424', 'Outdoor', 'Autostable', NULL, NULL, '5.338318', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21443, NULL, NULL, NULL, 'TCHOKONOU', NULL, 'OCI2722', 'Esco', 'OCI', NULL, NULL, NULL, '-3.925164', 'Indoor', 'Indoor', NULL, NULL, '7.424161', 'En service', NULL, NULL, NULL),
(21444, NULL, NULL, NULL, 'BOULEY_MOBILE', 'ABJ120', 'OCI2724', 'Esco', 'OCI', NULL, NULL, NULL, '-4.10651', 'Outdoor', 'Autostable Mobile', NULL, NULL, '5.26522', 'En service', NULL, NULL, NULL),
(21445, NULL, NULL, NULL, 'ITY_CAMP_MOBILE', 'IHS_XXXXXXXX', 'OCI2725', 'IHS', 'IHS', NULL, NULL, NULL, '-8.118875', 'Indoor', 'Autostable Mobile', NULL, NULL, '6.891556', 'En service', NULL, NULL, NULL),
(21446, NULL, NULL, NULL, 'SIPPEC_MOBILE', 'ABJ122', 'OCI2726', 'Esco', 'OCI', NULL, NULL, NULL, '-4.08271', 'Outdoor', 'Autostable Mobile', NULL, NULL, '5.41067', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21447, NULL, NULL, NULL, 'N\'GUYAKRO', 'Esco', 'OCI2727', 'Esco', 'OCI', NULL, NULL, NULL, '-4.99172', 'Outdoor', 'Autostable', NULL, NULL, '7.31447', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21448, NULL, NULL, NULL, 'ADIKRO', 'Esco', 'OCI2397', 'Esco', 'OCI', NULL, NULL, NULL, '-3.94434', 'Outdoor', 'Autostable', NULL, NULL, '7.52417', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21449, NULL, NULL, NULL, 'NV_SUCAF_FERKE 2', 'KOR021', 'OCI2729', 'Esco', 'OCI', NULL, NULL, NULL, '-5.35827', 'Outdoor', 'Autostable', NULL, NULL, '9.24558', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21450, NULL, NULL, NULL, 'ALLEKRO', 'Esco', 'OCI2401', 'Esco', 'OCI', NULL, NULL, NULL, '-5.53849', 'Outdoor', 'Autostable', NULL, NULL, '7.96783', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21451, NULL, NULL, NULL, 'MAHANDOUGOU_BAKO', 'Esco', 'OCI2733', 'Esco', 'OCI', NULL, NULL, NULL, '-7.8301', 'Outdoor', 'Autostable', NULL, NULL, '9.03588', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21452, NULL, NULL, NULL, 'MADINA', 'Esco', 'OCI2734', 'Esco', 'OCI', NULL, NULL, NULL, '-7.41491', 'Outdoor', 'Autostable', NULL, NULL, '8.28927', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21453, NULL, NULL, NULL, 'KOWEIT_EXT', 'IHS_LGN_1000M', 'OCI2738', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05637', 'Outdoor', NULL, NULL, NULL, '5.31082', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21454, NULL, NULL, NULL, 'BKE_KONANKANKRO', 'IHS_VDB_138M', 'OCI2739', 'IHS', 'IHS', NULL, NULL, NULL, '-5.0716', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.7196', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21455, NULL, NULL, NULL, 'ADZOPEMARCHE', 'IHS_AGN_091M', 'OCI2740', 'IHS', 'IHS', NULL, NULL, NULL, '-3.86433', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.10595', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21456, NULL, NULL, NULL, 'DALOAMARCHÉ', 'IHS_HSD_143M', 'OCI2742', 'IHS', 'IHS', NULL, NULL, NULL, '-6.42157', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.86041', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21457, NULL, NULL, NULL, 'DIMBOKRO_NORD', NULL, 'OCI2743', 'IHS', 'IHS', NULL, NULL, NULL, '-4.71055276', 'Outdoor', 'Autostable', NULL, NULL, '6.66332976', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21458, NULL, NULL, NULL, 'DIVO_NEW5', 'IHS_SBD_104M', 'OCI2744', 'IHS', 'IHS', NULL, NULL, NULL, '-5.35738', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.8215', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21459, NULL, NULL, NULL, 'DIVO_NEW1', 'IHS_SBD_101M', 'OCI2745', 'IHS', 'IHS', NULL, NULL, NULL, '-5.37163', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.84499', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21460, NULL, NULL, NULL, 'DUEKOUE_NEW1', 'IHS_MCY_078M', 'OCI2746', 'IHS', 'IHS', NULL, NULL, NULL, '-7.36629', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.74339', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21461, NULL, NULL, NULL, 'DUEKOUE2NEW', 'IHS_MCY_079M', 'OCI2747', 'IHS', 'IHS', NULL, NULL, NULL, '-7.36984', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.73447', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21462, NULL, NULL, NULL, 'FERKE MARCHÉ', 'IHS_SVN_156M', 'OCI2749', 'IHS', 'IHS', NULL, NULL, NULL, '-5.19365', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.59863', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21463, NULL, NULL, NULL, 'FERKESSEDOUGOU1', 'IHS_SVN_158M', 'OCI2750', 'IHS', 'IHS', NULL, NULL, NULL, '-5.19698', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.57906', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21464, NULL, NULL, NULL, 'GAGNOA_NEW2', 'IHS_FMG_107M', 'OCI2751', 'IHS', 'IHS', NULL, NULL, NULL, '-5.95042', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.13821', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21465, NULL, NULL, NULL, 'GAGNOA_NEW3', 'IHS_FMG_108M', 'OCI2752', 'IHS', 'IHS', NULL, NULL, NULL, '-5.96016', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.17692', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21466, NULL, NULL, NULL, 'GAGNOA_NEW1', 'IHS_FMG_106M', 'OCI2753', 'IHS', 'IHS', NULL, NULL, NULL, '-5.96613', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.13438', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21467, NULL, NULL, NULL, 'KORHOGO_NEW3', 'IHS_SVN_163M', 'OCI2754', 'IHS', 'IHS', NULL, NULL, NULL, '-5.62225', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '9.4326', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21468, NULL, NULL, NULL, 'LAKOTA1', 'IHS_SBD_109M', 'OCI2755', 'IHS', 'IHS', NULL, NULL, NULL, '-5.68875', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.84854', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21469, NULL, NULL, NULL, 'LAKOTA4', 'IHS_SBD_110M', 'OCI2756', 'IHS', 'IHS', NULL, NULL, NULL, '-5.67579', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.84938', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21470, NULL, NULL, NULL, 'MANOUEST', 'IHS_DHM_107M', 'OCI2757', 'IHS', 'IHS', NULL, NULL, NULL, '-7.57395', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.41372', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21471, NULL, NULL, NULL, 'MEAGUISOUTH', 'IHS_BSD_232M', 'OCI2758', 'IHS', 'IHS', NULL, NULL, NULL, '-6.55026', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.39108', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21472, NULL, NULL, NULL, 'SEGUELA_EXT', 'IHS_WRD_059M', 'OCI2761', 'IHS', 'IHS', NULL, NULL, NULL, '-6.67643', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.97082', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21473, NULL, NULL, NULL, 'SOUBREGABONEXT', 'IHS_BSD_233M', 'OCI2762', 'IHS', 'IHS', NULL, NULL, NULL, '-6.58777', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.76621', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21474, NULL, NULL, NULL, 'SOUBREGABONEXT1', 'IHS_BSD_234M', 'OCI2763', 'IHS', 'IHS', NULL, NULL, NULL, '-6.57755', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.7743', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21475, NULL, NULL, NULL, 'TOUMODI_NORD', 'IHS_LAC_119M', 'OCI2764', 'IHS', 'IHS', NULL, NULL, NULL, '-5.25886', 'Outdoor', 'Haubané', NULL, NULL, '6.56742', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21476, NULL, NULL, NULL, 'YAMOUSSOUKRO2', 'IHS_LAC_121M', 'OCI2765', 'IHS', 'IHS', NULL, NULL, NULL, '-5.01046', 'Outdoor', NULL, NULL, NULL, '6.81556', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21477, NULL, NULL, NULL, 'BOUAKE2', 'IHS_VDB_143M', 'OCI2766', 'IHS', 'IHS', NULL, NULL, NULL, '-4.9869', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.72578', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21478, NULL, NULL, NULL, 'ANYAMA_NEW2', 'IHS_LGN_983M', 'OCI2767', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05879', 'Outdoor', NULL, NULL, NULL, '5.4911', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21479, NULL, NULL, NULL, 'BOUAKE_NEW8', 'IHS_VDB_142M', 'OCI2768', 'IHS', 'IHS', NULL, NULL, NULL, '-5.04238', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '7.675155', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21480, NULL, NULL, NULL, 'GAGNOARTELAKOTA', 'IHS_FMG_109M', 'OCI2771', 'IHS', 'IHS', NULL, NULL, NULL, '-5.917316', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '6.105861', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21481, NULL, NULL, NULL, 'CocodyLemania', 'IHS_LGN_1034M', 'OCI2775', 'IHS', 'IHS', NULL, NULL, NULL, '-3.985195', 'Outdoor', NULL, NULL, NULL, '5.360513', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21482, NULL, NULL, NULL, 'ATTOBROU', 'IHS_AGN_025M', 'OCI2785', 'IHS', 'IHS', NULL, NULL, NULL, '-4.05974861', 'Outdoor', 'Autostable', NULL, NULL, '6.08991457', 'En service', NULL, 'RAP', NULL),
(21483, NULL, NULL, NULL, 'FREFREDOU', 'Esco', 'OCI2787', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-6.05041700', 'Outdoor', 'Autostable', NULL, NULL, '6.93572200', 'En service', NULL, 'HIRONDELLE', NULL),
(21484, NULL, NULL, NULL, 'DEAMAN', 'MAN011', 'OCI2788', 'Esco', 'OCI', NULL, NULL, NULL, '-8.14898', 'Outdoor', 'Autostable', NULL, NULL, '7.27389', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21485, NULL, NULL, NULL, 'SOUBRE_BARRAGE', 'Esco', 'OCI2789', 'Esco', 'OCI', NULL, NULL, NULL, '-6.63125', 'Outdoor', 'Autostable', NULL, NULL, '5.78341', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21486, NULL, NULL, NULL, 'KORHOGO STADE', 'KOR004', 'OCI2790', 'Esco', 'OCI', NULL, NULL, NULL, '-5.62526', 'Outdoor', 'Autostable', NULL, NULL, '9.44133', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21487, NULL, NULL, NULL, 'BOUAKE AVENIR', 'BKE011', 'OCI2791', 'Esco', 'OCI', NULL, NULL, NULL, '-5.03242', 'Outdoor', 'Autostable', NULL, NULL, '7.69317', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21488, NULL, NULL, NULL, 'EXAT_MEAGUI', 'Esco', 'OCI2792', 'Esco', 'OCI', NULL, NULL, NULL, '-6.55672', 'Outdoor', 'Autostable', NULL, NULL, '5.18086', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21489, NULL, NULL, NULL, 'VONONLOHO', 'Esco', 'OCI2715', 'Esco', 'OCI', NULL, NULL, NULL, '-6.00146', 'Outdoor', 'Autostable', NULL, NULL, '10.1217', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21490, NULL, NULL, NULL, 'DANANGORO', 'Esco', 'OCI2728', 'Esco', 'OCI', NULL, NULL, NULL, '-5.92675', 'Outdoor', 'Autostable', NULL, NULL, '7.1768', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21491, NULL, NULL, NULL, 'MAHOUNOUouKOFFIKRO MAHOUNOU', 'Esco', 'OCI2795', 'Esco', 'OCI', NULL, NULL, NULL, '-4.33451', 'Outdoor', 'Autostable', NULL, NULL, '7.0195', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21492, NULL, NULL, NULL, 'GUIBOBLY', 'Esco', 'OCI2730', 'Esco', 'OCI', NULL, NULL, NULL, '-8.21244', 'Outdoor', 'Autostable', NULL, NULL, '6.61242', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21493, NULL, NULL, NULL, 'DIOUROUZON', 'Esco', 'OCI2793', 'Esco', 'OCI', NULL, NULL, NULL, '-7.521', 'Outdoor', 'Autostable', NULL, NULL, '6.88887', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21494, NULL, NULL, NULL, 'KOUAN HOULE', 'Esco', 'OCI2798', 'Esco', 'OCI', NULL, NULL, NULL, '-8.26301999999999', 'Outdoor', 'Autostable', NULL, NULL, '7.39267', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21495, NULL, NULL, NULL, 'TEGUELA', 'DAL005', 'OCI2799', 'Esco', 'OCI', NULL, NULL, NULL, '-6.62594', 'Outdoor', 'Autostable', NULL, NULL, '7.84469', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21496, NULL, NULL, NULL, 'ABIGUI', 'Esco', 'OCI2800', 'Esco', 'OCI', NULL, NULL, NULL, '-4.83283', 'Outdoor', 'Autostable', NULL, NULL, '6.69683', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21497, NULL, NULL, NULL, 'LIGROHOIN', 'Esco', 'OCI2794', 'Esco', 'OCI', NULL, NULL, NULL, '-5.81549', 'Outdoor', 'Autostable', NULL, NULL, '5.85875', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21498, NULL, NULL, NULL, 'ASSOUBA', 'Esco', 'OCI2802', 'Esco', 'OCI', NULL, NULL, NULL, '-3.25623', 'Outdoor', 'Autostable', NULL, NULL, '5.45885', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21499, NULL, NULL, NULL, 'DJAMANDIOKE', 'Esco', 'OCI2803', 'Esco', 'OCI', NULL, NULL, NULL, '-7.51089', 'Outdoor', 'Autostable', NULL, NULL, '4.41514', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21500, NULL, NULL, NULL, 'KEKERENI', 'Esco', 'OCI2804', 'Esco', 'OCI', NULL, NULL, NULL, '-3.01034', 'Outdoor', 'Autostable', NULL, NULL, '7.76101', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21501, NULL, NULL, NULL, 'YOBOUAKRO', 'Esco', 'OCI2805', 'Esco', 'OCI', NULL, NULL, NULL, '-3.31543', 'Outdoor', 'Autostable', NULL, NULL, '7.23809', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21502, NULL, NULL, NULL, 'BAYA', 'Esco', 'OCI2806', 'Esco', 'OCI', NULL, NULL, NULL, '-6.2449', 'Outdoor', 'Autostable', NULL, NULL, '9.90892', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21503, NULL, NULL, NULL, 'DENGBE-PEPRESSOU', 'Esco', 'OCI2809', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01444', 'Outdoor', 'Autostable', NULL, NULL, '7.11552', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21504, NULL, NULL, NULL, 'LATRILLE_SMALLCELL', 'Indoor', 'OCI2810', 'Esco', 'OCI', NULL, NULL, NULL, '-3.995998', 'Outdoor', 'Small cell', NULL, NULL, '5.378008', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21505, NULL, NULL, NULL, 'CIAD PRIMO', 'Esco', 'OCI2811', 'Esco', 'OCI', NULL, NULL, NULL, '-3.94799', 'Outdoor', 'site paysager', NULL, NULL, '5.32584', 'En service', NULL, 'HUB', NULL),
(21506, NULL, NULL, NULL, 'CITE HIBISCUS', 'Esco', 'OCI2812', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98213', 'Outdoor', 'site paysager', NULL, NULL, '5.29993', 'En service', NULL, 'HUB', NULL),
(21507, NULL, NULL, NULL, 'MAROC MATI', 'Esco', 'OCI2814', 'Esco', 'OCI', NULL, NULL, NULL, '-4.10376', 'Outdoor', 'site paysager', NULL, NULL, '5.33172', 'En service', NULL, 'HUB', NULL),
(21508, NULL, NULL, NULL, 'AZITO PALACE', 'Esco', 'OCI2816', 'Esco', 'OCI', NULL, NULL, NULL, '-4.08126', 'Outdoor', 'site paysager', NULL, NULL, '5.30073', 'En service', NULL, 'HUB', NULL),
(21509, NULL, NULL, NULL, 'ZONE MILLENIUM', 'Esco', 'OCI2817', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95527', 'Outdoor', 'site paysager', NULL, NULL, '5.3303', 'En service', NULL, 'HUB', NULL),
(21510, NULL, NULL, NULL, 'COCODY AMBASSADE', 'Esco', 'OCI2818', 'Esco', 'OCI', NULL, NULL, NULL, '-3.99396', 'Outdoor', 'site paysager', NULL, NULL, '5.33329', 'En service', NULL, 'HUB', NULL),
(21511, NULL, NULL, NULL, 'COCODY75', 'Esco', 'OCI2819', 'Esco', 'OCI', NULL, NULL, NULL, '-3.94365', 'Outdoor', 'site paysager', NULL, NULL, '5.3751', 'En service', NULL, 'HUB', NULL),
(21512, NULL, NULL, NULL, 'COCODY78', 'Esco', 'OCI2820', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97253', 'Outdoor', 'site paysager', NULL, NULL, '5.35757', 'En service', NULL, 'HUB', NULL),
(21513, NULL, NULL, NULL, 'YOPOUGON142', 'Esco', 'OCI2821', 'Esco', 'OCI', NULL, NULL, NULL, '-4.08731', 'Outdoor', 'site paysager', NULL, NULL, '5.33897', 'En service', NULL, 'HUB', NULL),
(21514, NULL, NULL, NULL, 'NV_SUP_MANAG', 'Esco', 'OCI2822', 'Esco', 'OCI', NULL, NULL, NULL, '-3.99141', 'Outdoor', 'site paysager', NULL, NULL, '5.35425', 'En service', NULL, 'HUB', NULL),
(21515, NULL, NULL, NULL, 'BONOUMIN DANHO', 'Esco', 'OCI2824', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97279', 'Outdoor', 'site paysager', NULL, NULL, '5.37005', 'En service', NULL, 'HUB', NULL),
(21516, NULL, NULL, NULL, 'DESCENTE UNIVERSITE', 'Esco', 'OCI2825', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98595', 'Outdoor', 'site paysager', NULL, NULL, '5.33628', 'En service', NULL, 'HUB', NULL),
(21517, NULL, NULL, NULL, 'ESPACE COCA COLA', 'Esco', 'OCI2826', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01558', 'Outdoor', 'site paysager', NULL, NULL, '5.31535', 'En service', NULL, 'HUB', NULL),
(21518, NULL, NULL, NULL, 'LYCEE CLASSIQUE', 'Esco', 'OCI2827', 'Esco', 'OCI', NULL, NULL, NULL, '-4.00617', 'Outdoor', 'site paysager', NULL, NULL, '5.33421', 'En service', NULL, 'HUB', NULL),
(21519, NULL, NULL, NULL, 'MOSQUEE_RIVIERA', 'Esco', 'OCI2828', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97614', 'Outdoor', 'site paysager', NULL, NULL, '5.3381', 'En service', NULL, 'HUB', NULL),
(21520, NULL, NULL, NULL, 'OFAB', 'Esco', 'OCI2829', 'Esco', 'OCI', NULL, NULL, NULL, '-3.99148', 'Outdoor', 'site paysager', NULL, NULL, '5.36768', 'En service', NULL, 'HUB', NULL),
(21521, NULL, NULL, NULL, 'HENRI_CARTAN', 'Esco', 'OCI2830', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98704', 'Outdoor', 'site paysager', NULL, NULL, '5.28723', 'En service', NULL, 'HUB', NULL),
(21522, NULL, NULL, NULL, 'BONOUMIN CENTRE', 'Esco', 'OCI2835', 'Esco', 'OCI', NULL, NULL, NULL, '-3.96968', 'Outdoor', 'site paysager', NULL, NULL, '5.36611', 'En service', NULL, 'HUB', NULL),
(21523, NULL, NULL, NULL, 'RESIDENCE MARIAM', 'Esco', 'OCI2837', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95701', 'Outdoor', 'site paysager', NULL, NULL, '5.36194', 'En service', NULL, 'HUB', NULL),
(21524, NULL, NULL, NULL, 'SPATULE', 'Esco', 'OCI2838', 'Esco', 'OCI', NULL, NULL, NULL, '-3.93593', 'Outdoor', 'site paysager', NULL, NULL, '5.37686', 'En service', NULL, 'HUB', NULL),
(21525, NULL, NULL, NULL, 'QUAI DOUANE', 'Esco', 'OCI2839', 'Esco', 'OCI', NULL, NULL, NULL, '-4.02244', 'Outdoor', 'site paysager', NULL, NULL, '5.31644', 'En service', NULL, 'HUB', NULL),
(21526, NULL, NULL, NULL, 'PAILLET NITO', 'Esco', 'OCI2840', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01227', 'Outdoor', 'site paysager', NULL, NULL, '5.37787', 'En service', NULL, 'HUB', NULL),
(21527, NULL, NULL, NULL, 'VISION 2000', 'Esco', 'OCI2841', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97414', 'Outdoor', 'site paysager', NULL, NULL, '5.38627', 'En service', NULL, 'HUB', NULL),
(21528, NULL, NULL, NULL, 'VILLA01_Site_3', 'Esco', 'OCI2843', 'Esco', 'OCI', NULL, NULL, NULL, '-3.881', 'Outdoor', 'site paysager', NULL, NULL, '5.350349', 'En service', NULL, 'HUB', NULL),
(21529, NULL, NULL, NULL, 'VILLA03_Site_3', 'Esco', 'OCI2844', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98646', 'Outdoor', 'site paysager', NULL, NULL, '5.38133', 'En service', NULL, 'HUB', NULL),
(21530, NULL, NULL, NULL, 'VILLA03_Site_4', 'Esco', 'OCI2845', 'Esco', 'OCI', NULL, NULL, NULL, '-4.00283', 'Outdoor', 'site paysager', NULL, NULL, '5.370928', 'En service', NULL, 'HUB', NULL),
(21531, NULL, NULL, NULL, 'VILLA04_Site_1', 'Esco', 'OCI2846', 'Esco', 'OCI', NULL, NULL, NULL, '-3.974264', 'Outdoor', 'site paysager', NULL, NULL, '5.347171', 'En service', NULL, 'HUB', NULL),
(21532, NULL, NULL, NULL, 'VILLA21_Site_1', 'Esco', 'OCI2847', 'Esco', 'OCI', NULL, NULL, NULL, '-4.025012', 'Outdoor', 'site paysager', NULL, NULL, '5.37108', 'En service', NULL, 'HUB', NULL),
(21533, NULL, NULL, NULL, 'CAF03_Site_2', 'Esco', 'OCI2849', 'Esco', 'OCI', NULL, NULL, NULL, '-3.97996', 'Outdoor', 'site paysager', NULL, NULL, '5.4141', 'En service', NULL, 'HUB', NULL),
(21534, NULL, NULL, NULL, 'CAF03_Site_4', 'Esco', 'OCI2850', 'Esco', 'OCI', NULL, NULL, NULL, '-4.0124', 'Outdoor', 'site paysager', NULL, NULL, '5.3936', 'En service', NULL, 'HUB', NULL),
(21535, NULL, NULL, NULL, 'Baie cocody Golf', 'Esco', 'OCI2851', 'Esco', 'OCI', NULL, NULL, NULL, '-3.963115', 'Outdoor', 'site paysager', NULL, NULL, '5.331529', 'En service', NULL, 'HUB', NULL),
(21536, NULL, NULL, NULL, 'CHOCOLAT_CITE', 'Esco', 'OCI2852', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95798', 'Outdoor', 'site paysager', NULL, NULL, '5.34122', 'En service', NULL, 'HUB', NULL),
(21537, NULL, NULL, NULL, 'SNT27_Site_2', 'Esco', 'OCI2853', 'Esco', 'OCI', NULL, NULL, NULL, '-4.076162', 'Outdoor', 'site paysager', NULL, NULL, '5.365939', 'En service', NULL, 'HUB', NULL),
(21538, NULL, NULL, NULL, 'BLAISE_PASCAL', 'Esco', 'OCI2854', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95176', 'Outdoor', 'site paysager', NULL, NULL, '5.35506', 'En service', NULL, 'HUB', NULL),
(21539, NULL, NULL, NULL, 'YOP MALL', 'Esco', 'OCI2855', 'Esco', 'OCI', NULL, NULL, NULL, '-4.07633', 'Outdoor', 'site paysager', NULL, NULL, '5.34768', 'En service', NULL, 'HUB', NULL),
(21540, NULL, NULL, NULL, 'BRASSIVOIRE', 'Esco', 'OCI2856', 'Esco', 'OCI', NULL, NULL, NULL, '-4.158397', 'Outdoor', 'site paysager', NULL, NULL, '5.4194', 'En service', NULL, 'HUB', NULL),
(21541, NULL, NULL, NULL, 'SANCTUAIRE', 'Esco', 'OCI2858', 'Esco', 'OCI', NULL, NULL, NULL, '-4.04015', 'Outdoor', 'site paysager', NULL, NULL, '5.35932', 'En service', NULL, 'HUB', NULL),
(21542, NULL, NULL, NULL, 'MIRAJ', 'Esco', 'OCI2859', 'Esco', 'OCI', NULL, NULL, NULL, '-3.90852', 'Outdoor', 'site paysager', NULL, NULL, '5.39417', 'En service', NULL, 'HUB', NULL),
(21543, NULL, NULL, NULL, 'VISA_MCI', 'Esco', 'OCI2861', 'Esco', 'OCI', NULL, NULL, NULL, '-4.018536', 'Outdoor', NULL, NULL, NULL, '5.324408', 'En service', NULL, 'HUB', NULL),
(21544, NULL, NULL, NULL, 'ABRI_2000', 'Esco', 'OCI2862', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98242', 'Outdoor', NULL, NULL, NULL, '5.371004', 'En service', NULL, 'HUB', NULL),
(21545, NULL, NULL, NULL, 'OSER', 'Esco', 'OCI2863', 'Esco', 'OCI', NULL, NULL, NULL, '-3.968496', 'Outdoor', NULL, NULL, NULL, '5.275513', 'En service', NULL, 'HUB', NULL),
(21546, NULL, NULL, NULL, 'COPA_DELIO', 'Esco', 'OCI2864', 'Esco', 'OCI', NULL, NULL, NULL, '-3.975457', 'Outdoor', NULL, NULL, NULL, '5.273761', 'En service', NULL, 'HUB', NULL),
(21547, NULL, NULL, NULL, 'AWI_SMALL_CELL', 'Indoor', 'OCI2865', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.987106', 'Indoor', 'Small cell', NULL, NULL, '5.358799', 'En service', NULL, NULL, NULL),
(21548, NULL, NULL, NULL, 'CULTURE_SMALLCELL', 'Indoor', 'OCI2867', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.0122177', 'Indoor', 'Small cell', NULL, NULL, '5.3106143', 'En service', NULL, NULL, NULL),
(21549, NULL, NULL, NULL, 'DANGA_SMALL_CELL', 'Indoor', 'OCI2868', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.00427778', 'Indoor', 'Small cell', NULL, NULL, '5.33966667', 'En service', NULL, NULL, NULL),
(21550, NULL, NULL, NULL, 'AKOUEDO_MOBILE', 'temporaire', 'OCI2869', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-3.950254', 'Outdoor', 'Autostable Mobile', NULL, NULL, '5.354202', 'En service', NULL, NULL, NULL),
(21551, NULL, NULL, NULL, 'BIMA_PALMIER', NULL, 'OCI2870', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95253626', 'Outdoor', 'Autostable Mobile', NULL, NULL, '5.25331678', 'En service', NULL, NULL, NULL),
(21552, NULL, NULL, NULL, 'KORO_OULE', 'Esco', 'OCI2871', 'Esco', 'OCI', NULL, NULL, NULL, '-7.482279', 'Outdoor', 'Autostable Mobile', NULL, NULL, '9.738454', 'En service', NULL, NULL, NULL),
(21553, NULL, NULL, NULL, 'CITE_CNPS', 'Esco', 'OCI2874', 'Esco', 'OCI', NULL, NULL, NULL, '-3.977714', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.393848', 'En service', NULL, 'HUB', NULL),
(21554, NULL, NULL, NULL, 'YOP_CENACLE', 'Esco', 'OCI2875', 'Esco', 'OCI', NULL, NULL, NULL, '-4.083874', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.393848', 'En service', NULL, 'HUB', NULL),
(21555, NULL, NULL, NULL, 'AngreFingoudron2', 'IHS_LGN_886M', 'OCI2876', 'IHS', 'IHS', NULL, NULL, NULL, '-3.96361', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.41417', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21556, NULL, NULL, NULL, 'Anokoua3', 'IHS_LGN_586M', 'OCI2877', 'IHS', 'IHS', NULL, NULL, NULL, '-4.030667', 'Outdoor', 'Autostable', NULL, NULL, '5.431333', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21557, NULL, NULL, NULL, 'AnoumaboDjebidje', 'IHS_LGN_397M', 'OCI2878', 'IHS', 'IHS', NULL, NULL, NULL, '-3.960222', 'Outdoor', 'Autostable', NULL, NULL, '5.308917', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21558, NULL, NULL, NULL, 'CiteSir', 'IHS_LGN_622M', 'OCI2879', 'IHS', 'IHS', NULL, NULL, NULL, '-3.929265', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.385197', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21559, NULL, NULL, NULL, 'CocodyExt1', 'IHS_LGN_966M', 'OCI2880', 'IHS', 'IHS', NULL, NULL, NULL, '-3.94741', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.40013', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21560, NULL, NULL, NULL, 'LMKOUMASSI', 'IHS_LGN_811M', 'OCI2881', 'IHS', 'IHS', NULL, NULL, NULL, '-3.945306', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.312444', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21561, NULL, NULL, NULL, 'PK18Assonmin', 'IHS_LGN_621M', 'OCI2882', 'IHS', 'IHS', NULL, NULL, NULL, '-4.057056', 'Outdoor', 'Autostable', NULL, NULL, '5.438333', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21562, NULL, NULL, NULL, 'YopBonikroNord', 'IHS_LGN_971M', 'OCI2883', 'IHS', 'IHS', NULL, NULL, NULL, '-4.117483', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.362631', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21563, NULL, NULL, NULL, 'YopNiangonRteDabou', 'IHS_LGN_927M', 'OCI2884', 'IHS', 'IHS', NULL, NULL, NULL, '-4.11787', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.340765', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21564, NULL, NULL, NULL, 'GBEMAZO', 'to be defined', 'OCI2885', 'Esco', 'OCI', NULL, NULL, NULL, '-6.940348', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '8.513303', 'En service', NULL, 'ATHENA 112 SITES', NULL),
(21565, NULL, NULL, NULL, 'GNOC', 'Indoor', 'OCI2889', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-3.973137', 'Indoor', 'Indoor', NULL, NULL, '5.287404', 'En service', NULL, NULL, NULL),
(21566, NULL, NULL, NULL, 'HOTEL MARLY', 'OCI_indoor', 'OCI2891', 'Esco', 'OCI', NULL, NULL, NULL, '-3.969625', 'Indoor', 'Small cell', NULL, NULL, '5.272173', 'En service', NULL, 'Extra_Annexe', NULL),
(21567, NULL, NULL, NULL, 'CIC_GMN', NULL, 'OCI2892', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.99699621', 'Indoor', 'Small cell', NULL, NULL, '5.28920198', 'En service', NULL, 'INDOOR', NULL),
(21568, NULL, NULL, NULL, 'COSMOS', 'OCI_indooe', 'OCI2894', 'Esco', 'OCI', NULL, NULL, NULL, '-4.07399', 'Indoor', 'Indoor', NULL, NULL, '5.349028', 'En service', NULL, NULL, NULL),
(21569, NULL, NULL, NULL, 'SCIAM_SMALL_CELL', 'OCI_indoor', 'OCI2895', 'Esco', 'OCI', NULL, NULL, NULL, '-4.018191', 'Indoor', 'Indoor', NULL, NULL, '5.325978', 'En service', NULL, 'Extra_Annexe', NULL),
(21570, NULL, NULL, NULL, 'PLAYCE_MARCORY', 'Esco', 'OCI2896', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-3.992278', 'Indoor', 'Indoor', NULL, NULL, '5.302320', 'En service', NULL, 'Extra_Annexe', NULL),
(21571, NULL, NULL, NULL, 'BIMA_MTN', 'Tiers', 'OCI2898', 'Esco', 'MTN', NULL, NULL, NULL, '-3.957924', 'Outdoor', 'AUTOSTABLE', NULL, NULL, '5.262021', 'En service', NULL, 'Extra_Annexe', NULL);
INSERT INTO `sites` (`id`, `id_quartier`, `id_type_site`, `reference`, `site`, `site_id_partners`, `site_id_oci`, `gestionnaire`, `proprietaire`, `technologie`, `area_partners`, `dimension`, `longitude`, `type_baie`, `type_pilonne`, `uir_hw`, `uir_oci`, `latitude`, `statut`, `date_creation`, `projet`, `site_type`) VALUES
(21572, NULL, NULL, NULL, 'BIABOU_SUD', 'IHS_LGN_1040M', 'OCI2899', 'IHS', 'IHS', NULL, NULL, NULL, '-3.9857', 'Outdoor', NULL, NULL, NULL, '5.44053', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21573, NULL, NULL, NULL, 'SANTE_EXT', 'IHS_LGN_1037M', 'OCI2900', 'IHS', 'IHS', NULL, NULL, NULL, '-4.046645', 'Outdoor', NULL, NULL, NULL, '5.316027', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21574, NULL, NULL, NULL, 'BONOUA_MIMBI', 'IHS_SCE_109M', 'OCI2901', 'IHS', 'IHS', NULL, NULL, NULL, '-3.58537', 'Outdoor', NULL, NULL, NULL, '5.26575', 'En service', NULL, 'ATHENA 80 SITES', NULL),
(21575, NULL, NULL, NULL, 'PONT_HKB', 'Esco', 'OCI2902', 'Esco', 'OCI', NULL, NULL, NULL, '-3.980109', 'Outdoor', 'Poteau électrique', NULL, NULL, '5.317477', 'En service', NULL, NULL, NULL),
(21576, NULL, NULL, NULL, 'ALADJEKRO', 'Esco', 'OCI2904', 'Esco', 'OCI', NULL, NULL, NULL, '-6.57025834', 'Outdoor', 'Haubané', NULL, NULL, '7.71948334', 'En service', NULL, NULL, NULL),
(21577, NULL, NULL, NULL, 'DAGOUAHIO', 'Esco', 'OCI2905', 'Esco', 'OCI', NULL, NULL, NULL, '-6.24166667', 'Outdoor', 'haubané', NULL, NULL, '5.98472222', 'En service', NULL, NULL, NULL),
(21578, NULL, NULL, NULL, 'ANANI', NULL, 'OCI2932', 'Esco', 'OCI', NULL, NULL, NULL, '-3.88105', 'Outdoor', NULL, NULL, NULL, '5.24917', 'En service', NULL, 'PROJET EHUA', NULL),
(21579, NULL, NULL, NULL, 'ANCIEN_CORRIDOR', NULL, 'OCI2933', 'Esco', 'OCI', NULL, NULL, NULL, '-3.8935', 'Outdoor', NULL, NULL, NULL, '5.23996', 'En service', NULL, 'PROJET EHUA', NULL),
(21580, NULL, NULL, NULL, 'FIESTA', NULL, 'OCI2934', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01135', 'Outdoor', NULL, NULL, NULL, '5.30457', 'En service', NULL, 'PROJET EHUA', NULL),
(21581, NULL, NULL, NULL, 'YOP_SELMER', NULL, 'OCI2935', 'Esco', 'OCI', NULL, NULL, NULL, '-4.06955', 'Outdoor', NULL, NULL, NULL, '5.34028', 'En service', NULL, 'PROJET EHUA', NULL),
(21582, NULL, NULL, NULL, 'ADJAME_RAIL', NULL, 'OCI2938', 'Esco', 'OCI', NULL, NULL, NULL, '-4.028837', 'Outdoor', NULL, NULL, NULL, '5.355339', 'En service', NULL, 'PROJET EHUA', NULL),
(21583, NULL, NULL, NULL, 'JUBILE', NULL, 'OCI2939', 'Esco', 'OCI', NULL, NULL, NULL, '-3.994421', 'Outdoor', NULL, NULL, NULL, '5.410173', 'En service', NULL, 'PROJET EHUA', NULL),
(21584, NULL, NULL, NULL, 'PALMERAIE_ZAWI', NULL, 'OCI2940', 'Esco', 'OCI', NULL, NULL, NULL, '-3.96027', 'Outdoor', NULL, NULL, NULL, '5.37043', 'En service', NULL, 'PROJET EHUA', NULL),
(21585, NULL, NULL, NULL, 'ABOBO_CASSE', NULL, 'OCI2980', 'Esco', 'OCI', NULL, NULL, NULL, '-4.020318', 'Outdoor', NULL, NULL, NULL, '5.400922', 'En service', NULL, 'PROJET EHUA', NULL),
(21586, NULL, NULL, NULL, 'KONNOR', NULL, 'OCI2942', 'Esco', 'OCI', NULL, NULL, NULL, '-3.974005', 'Outdoor', NULL, NULL, NULL, '5.413489', 'En service', NULL, 'PROJET EHUA', NULL),
(21587, NULL, NULL, NULL, 'AMARILY', NULL, 'OCI3052', 'Esco', 'OCI', NULL, NULL, NULL, '-3.845', 'Outdoor', NULL, NULL, NULL, '5.23042', 'En service', NULL, 'PROJET EHUA', NULL),
(21588, NULL, NULL, NULL, 'BASSAM_INTER', NULL, 'OCI3007', 'Esco', 'OCI', NULL, NULL, NULL, '-3.732158', 'Outdoor', NULL, NULL, NULL, '5.217595', 'En service', NULL, 'PROJET EHUA', NULL),
(21589, NULL, NULL, NULL, 'BEAGO_SUD', NULL, 'OCI3026', 'Esco', 'OCI', NULL, NULL, NULL, '-4.074433', 'Outdoor', NULL, NULL, NULL, '5.305644', 'En service', NULL, 'PROJET EHUA', NULL),
(21590, NULL, NULL, NULL, 'ABATTA_NORD', NULL, 'OCI2953', 'Esco', 'OCI', NULL, NULL, NULL, '-3.924555', 'Outdoor', NULL, NULL, NULL, '5.353339', 'En service', NULL, 'PROJET EHUA', NULL),
(21591, NULL, NULL, NULL, 'AKOUEDO_2000', NULL, 'OCI2954', 'Esco', 'OCI', NULL, NULL, NULL, '-3.931506', 'Outdoor', NULL, NULL, NULL, '5.378269', 'En service', NULL, 'PROJET EHUA', NULL),
(21592, NULL, NULL, NULL, 'BOUAKE_BELLEVILLE', NULL, 'OCI2947', 'Esco', 'OCI', NULL, NULL, NULL, '-5.0007', 'Outdoor', NULL, NULL, NULL, '7.71017', 'En service', NULL, 'PROJET EHUA', NULL),
(21593, NULL, NULL, NULL, 'MAHOU_LOSS', NULL, 'OCI2960', 'Esco', 'OCI', NULL, NULL, NULL, '-3.99823', 'Outdoor', NULL, NULL, NULL, '5.390795', 'En service', NULL, 'PROJET EHUA', NULL),
(21594, NULL, NULL, NULL, 'YOP_DAMIEN', NULL, 'OCI2961', 'Esco', 'OCI', NULL, NULL, NULL, '-4.11189', 'Outdoor', NULL, NULL, NULL, '5.31376', 'En service', NULL, 'PROJET EHUA', NULL),
(21595, NULL, NULL, NULL, 'JASMINE', NULL, 'OCI2963', 'Esco', 'OCI', NULL, NULL, NULL, '-3.991241', 'Outdoor', NULL, NULL, NULL, '5.398472', 'En service', NULL, 'PROJET EHUA', NULL),
(21596, NULL, NULL, NULL, 'KOKRENOU_EXT', NULL, 'OCI2967', 'Esco', 'OCI', NULL, NULL, NULL, '-5.264336', 'Outdoor', NULL, NULL, NULL, '6.772837', 'En service', NULL, 'PROJET EHUA', NULL),
(21597, NULL, NULL, NULL, 'CAFEIER_SIPIM', NULL, 'OCI3002', 'Esco', 'OCI', NULL, NULL, NULL, '-3.971181', 'Outdoor', NULL, NULL, NULL, '5.400534', 'En service', NULL, 'PROJET EHUA', NULL),
(21598, NULL, NULL, NULL, 'CARREFOUR_SORBONNE', NULL, 'OCI2958', 'Esco', 'OCI', NULL, NULL, NULL, '-4.09946', 'Outdoor', NULL, NULL, NULL, '5.35149', 'En service', NULL, 'PROJET EHUA', NULL),
(21599, NULL, NULL, NULL, 'SAINTE_THERESE', NULL, 'OCI2970', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98844', 'Outdoor', NULL, NULL, NULL, '5.30497', 'En service', NULL, 'PROJET EHUA', NULL),
(21600, NULL, NULL, NULL, 'NGOMA', NULL, 'OCI2971', 'Esco', 'OCI', NULL, NULL, NULL, '-3.502431', 'Outdoor', NULL, NULL, NULL, '6.720944', 'En service', NULL, 'PROJET EHUA', NULL),
(21601, NULL, NULL, NULL, 'BAIE_GONZAGUE', NULL, 'OCI2973', 'Esco', 'OCI', NULL, NULL, NULL, '-3.940180', 'Outdoor', NULL, NULL, NULL, '5.27413', 'En service', NULL, 'PROJET EHUA', NULL),
(21602, NULL, NULL, NULL, 'PERLES_HOTEL', NULL, 'OCI2974', 'Esco', 'OCI', NULL, NULL, NULL, '-3.991980', 'Outdoor', NULL, NULL, NULL, '5.38634', 'En service', NULL, 'PROJET EHUA', NULL),
(21603, NULL, NULL, NULL, 'DAPOOIN', NULL, 'OCI2968', 'Esco', 'OCI', NULL, NULL, NULL, '-4.089451', 'Outdoor', NULL, NULL, NULL, '5.324574', 'En service', NULL, 'PROJET EHUA', NULL),
(21604, NULL, NULL, NULL, 'NANKOKO', NULL, 'OCI2976', 'Esco', 'OCI', NULL, NULL, NULL, '-4.062993', 'Outdoor', NULL, NULL, NULL, '5.328204', 'En service', NULL, 'PROJET EHUA', NULL),
(21605, NULL, NULL, NULL, 'ANGRE_MOSQUEE', NULL, 'OCI2977', 'Esco', 'OCI', NULL, NULL, NULL, '-3.982807', 'Outdoor', NULL, NULL, NULL, '5.40584', 'En service', NULL, 'PROJET EHUA', NULL),
(21606, NULL, NULL, NULL, 'PALMERAIE_KIBIO', NULL, 'OCI2978', 'Esco', 'OCI', NULL, NULL, NULL, '-3.96271', 'Outdoor', NULL, NULL, NULL, '5.38574', 'En service', NULL, 'PROJET EHUA', NULL),
(21607, NULL, NULL, NULL, 'ABOBO_DIABY', NULL, 'OCI2979', 'Esco', 'OCI', NULL, NULL, NULL, '-4.03053', 'Outdoor', NULL, NULL, NULL, '5.4191', 'En service', NULL, 'PROJET EHUA', NULL),
(21608, NULL, NULL, NULL, 'DOKUI_MONIQUE', NULL, 'OCI2951', 'Esco', 'OCI', NULL, NULL, NULL, '-4.00104', 'Outdoor', NULL, NULL, NULL, '5.40155', 'En service', NULL, 'PROJET EHUA', NULL),
(21609, NULL, NULL, NULL, 'ABOBO_MARCHE', NULL, 'OCI2981', 'Esco', 'OCI', NULL, NULL, NULL, '-4.01654', 'Outdoor', NULL, NULL, NULL, '5.42681', 'En service', NULL, 'PROJET EHUA', NULL),
(21610, NULL, NULL, NULL, 'YOP_RESIDENTIEL', NULL, 'OCI2982', 'Esco', 'OCI', NULL, NULL, NULL, '-4.04914', 'Outdoor', NULL, NULL, NULL, '5.35034', 'En service', NULL, 'PROJET EHUA', NULL),
(21611, NULL, NULL, NULL, 'YOP_ARSTM', NULL, 'OCI2983', 'Esco', 'OCI', NULL, NULL, NULL, '-4.114591', 'Outdoor', NULL, NULL, NULL, '5.319346', 'En service', NULL, 'PROJET EHUA', NULL),
(21612, NULL, NULL, NULL, 'PERLDIA', NULL, 'OCI2985', 'Esco', 'OCI', NULL, NULL, NULL, '-3.99879', 'Outdoor', NULL, NULL, NULL, '5.38394', 'En service', NULL, 'PROJET EHUA', NULL),
(21613, NULL, NULL, NULL, 'YAMOUSSO', NULL, 'OCI2986', 'Esco', 'OCI', NULL, NULL, NULL, '-4.005744', 'Outdoor', NULL, NULL, NULL, '5.308357', 'En service', NULL, 'PROJET EHUA', NULL),
(21614, NULL, NULL, NULL, 'JOALU', NULL, 'OCI3012', 'Esco', 'OCI', NULL, NULL, NULL, '-4.09152', 'Outdoor', NULL, NULL, NULL, '5.34708', 'En service', NULL, 'PROJET EHUA', NULL),
(21615, NULL, NULL, NULL, 'HOTEL_A7', NULL, 'OCI2989', 'Esco', 'OCI', NULL, NULL, NULL, '-4.052257', 'Outdoor', NULL, NULL, NULL, '5.341483', 'En service', NULL, 'PROJET EHUA', NULL),
(21616, NULL, NULL, NULL, 'MADY', NULL, 'OCI2946', 'Esco', 'OCI', NULL, NULL, NULL, '-3.961870', 'Outdoor', NULL, NULL, NULL, '5.30166', 'En service', NULL, 'PROJET EHUA', NULL),
(21617, NULL, NULL, NULL, 'BKE_HYPODROME', NULL, 'OCI2991', 'Esco', 'OCI', NULL, NULL, NULL, '-5.044098', 'Outdoor', NULL, NULL, NULL, '7.708407', 'En service', NULL, 'PROJET EHUA', NULL),
(21618, NULL, NULL, NULL, 'BARA', NULL, 'OCI2993', 'Esco', 'OCI', NULL, NULL, NULL, '-3.975023', 'Outdoor', NULL, NULL, NULL, '5.422122', 'En service', NULL, 'PROJET EHUA', NULL),
(21619, NULL, NULL, NULL, 'BOUAKE_AF3', NULL, 'OCI2994', 'Esco', 'OCI', NULL, NULL, NULL, '-5.013645', 'Outdoor', NULL, NULL, NULL, '7.668869', 'En service', NULL, 'PROJET EHUA', NULL),
(21620, NULL, NULL, NULL, 'ANAEL', NULL, 'OCI2995', 'Esco', 'OCI', NULL, NULL, NULL, '-4.093335', 'Outdoor', NULL, NULL, NULL, '5.315377', 'En service', NULL, 'PROJET EHUA', NULL),
(21621, NULL, NULL, NULL, 'ENA_PALMIER', NULL, 'OCI2997', 'Esco', 'OCI', NULL, NULL, NULL, '-3.997124', 'Outdoor', NULL, NULL, NULL, '5.362802', 'En service', NULL, 'PROJET EHUA', NULL),
(21622, NULL, NULL, NULL, 'YOP_BAGNON', NULL, 'OCI2998', 'Esco', 'OCI', NULL, NULL, NULL, '-4.10841', 'Outdoor', NULL, NULL, NULL, '5.33953', 'En service', NULL, 'PROJET EHUA', NULL),
(21623, NULL, NULL, NULL, 'ADJIN', NULL, 'OCI3000', 'Esco', 'OCI', NULL, NULL, NULL, '-3.87638', 'Outdoor', NULL, NULL, NULL, '5.35584', 'En service', NULL, 'PROJET EHUA', NULL),
(21624, NULL, NULL, NULL, 'MOROFE_KAMI', NULL, 'OCI2941', 'Esco', 'OCI', NULL, NULL, NULL, '-5.28737', 'Outdoor', NULL, NULL, NULL, '6.85551', 'En service', NULL, 'PROJET EHUA', NULL),
(21625, NULL, NULL, NULL, 'VIPNET_ATTOBAN', NULL, 'OCI3003', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98494', 'Outdoor', NULL, NULL, NULL, '5.37126', 'En service', NULL, 'PROJET EHUA', NULL),
(21626, NULL, NULL, NULL, 'ADJAME_HASSAN', NULL, 'OCI3006', 'Esco', 'OCI', NULL, NULL, NULL, '-4.017188', 'Outdoor', NULL, NULL, NULL, '5.352816', 'En service', NULL, 'PROJET EHUA', NULL),
(21627, NULL, NULL, NULL, 'PAUL_MBADON', NULL, 'OCI2975', 'Esco', 'OCI', NULL, NULL, NULL, '-3.94117', 'Outdoor', NULL, NULL, NULL, '5.33262', 'En service', NULL, 'PROJET EHUA', NULL),
(21628, NULL, NULL, NULL, 'SAGBE_RAIL', NULL, 'OCI3009', 'Esco', 'OCI', NULL, NULL, NULL, '-4.040187', 'Outdoor', NULL, NULL, NULL, '5.415014', 'En service', NULL, 'PROJET EHUA', NULL),
(21629, NULL, NULL, NULL, 'NV JACQUEVILLE', NULL, 'OCI3046', 'Esco', 'OCI', NULL, NULL, NULL, '-4.426748', 'Outdoor', NULL, NULL, NULL, '5.201241', 'En service', NULL, 'PROJET EHUA', NULL),
(21630, NULL, NULL, NULL, 'BANTOU', NULL, 'OCI3013', 'Esco', 'OCI', NULL, NULL, NULL, '-3.98580', 'Outdoor', NULL, NULL, NULL, '5.36483', 'En service', NULL, 'PROJET EHUA', NULL),
(21631, NULL, NULL, NULL, 'YOP_IPES', NULL, 'OCI3015', 'Esco', 'OCI', NULL, NULL, NULL, '-4.07716', 'Outdoor', NULL, NULL, NULL, '5.35509', 'En service', NULL, 'PROJET EHUA', NULL),
(21632, NULL, NULL, NULL, 'ROSIERS_6', NULL, 'OCI3016', 'Esco', 'OCI', NULL, NULL, NULL, '-3.972629', 'Outdoor', NULL, NULL, NULL, '5.393371', 'En service', NULL, 'PROJET EHUA', NULL),
(21633, NULL, NULL, NULL, 'ASSONVON', NULL, 'OCI3019', 'Esco', 'OCI', NULL, NULL, NULL, '-4.06919', 'Outdoor', NULL, NULL, NULL, '5.33131', 'En service', NULL, 'PROJET EHUA', NULL),
(21634, NULL, NULL, NULL, 'SONITRA', NULL, 'OCI3021', 'Esco', 'OCI', NULL, NULL, NULL, '-4.020631', 'Outdoor', NULL, NULL, NULL, '5.380114', 'En service', NULL, 'PROJET EHUA', NULL),
(21635, NULL, NULL, NULL, 'YOP_MAHINDA', NULL, 'OCI3022', 'Esco', 'OCI', NULL, NULL, NULL, '-4.105362', 'Outdoor', NULL, NULL, NULL, '5.317201', 'En service', NULL, 'PROJET EHUA', NULL),
(21636, NULL, NULL, NULL, 'IXORA', NULL, 'OCI3024', 'Esco', 'OCI', NULL, NULL, NULL, '-6.638742', 'Outdoor', NULL, NULL, NULL, '4.726349', 'En service', NULL, 'PROJET EHUA', NULL),
(21637, NULL, NULL, NULL, 'SONGON_SOSSOU', NULL, 'OCI3047', 'Esco', 'OCI', NULL, NULL, NULL, '-4.246853', 'Outdoor', NULL, NULL, NULL, '5.299421', 'En service', NULL, 'PROJET EHUA', NULL),
(21638, NULL, NULL, NULL, 'YOP_GSRAMA', NULL, 'OCI3028', 'Esco', 'OCI', NULL, NULL, NULL, '-4.114579', 'Outdoor', NULL, NULL, NULL, '5.345687', 'En service', NULL, 'PROJET EHUA', NULL),
(21639, NULL, NULL, NULL, 'DJOROBITE_EXT', NULL, 'OCI3029', 'Esco', 'OCI', NULL, NULL, NULL, '-3.9527', 'Outdoor', NULL, NULL, NULL, '5.38853', 'En service', NULL, 'PROJET EHUA', NULL),
(21640, NULL, NULL, NULL, 'RIVIERA_NORD', NULL, 'OCI3030', 'Esco', 'OCI', NULL, NULL, NULL, '-3.968632', 'Outdoor', NULL, NULL, NULL, '5.352743', 'En service', NULL, 'PROJET EHUA', NULL),
(21641, NULL, NULL, NULL, 'NIANGON_CSM', NULL, 'OCI3031', 'Esco', 'OCI', NULL, NULL, NULL, '-4.097502', 'Outdoor', NULL, NULL, NULL, '5.324329', 'En service', NULL, 'PROJET EHUA', NULL),
(21642, NULL, NULL, NULL, 'AKOUEDO_ANVO', NULL, 'OCI3032', 'Esco', 'OCI', NULL, NULL, NULL, '-3.94660', 'Outdoor', NULL, NULL, NULL, '5.36943', 'En service', NULL, 'PROJET EHUA', NULL),
(21643, NULL, NULL, NULL, 'YOP_LEM', NULL, 'OCI3033', 'Esco', 'OCI', NULL, NULL, NULL, '-4.0815', 'Outdoor', NULL, NULL, NULL, '5.32824', 'En service', NULL, 'PROJET EHUA', NULL),
(21644, NULL, NULL, NULL, 'HIRE_NORD', NULL, 'OCI3036', 'Esco', 'OCI', NULL, NULL, NULL, '-5.303334', 'Outdoor', NULL, NULL, NULL, '6.203498', 'En service', NULL, 'PROJET EHUA', NULL),
(21645, NULL, NULL, NULL, 'YOP_MICAO', NULL, 'OCI3037', 'Esco', 'OCI', NULL, NULL, NULL, '-4.09255', 'Outdoor', NULL, NULL, NULL, '5.38357', 'En service', NULL, 'PROJET EHUA', NULL),
(21646, NULL, NULL, NULL, 'AGOUETO_18', NULL, 'OCI3040', 'Esco', 'OCI', NULL, NULL, NULL, '-4.060258', 'Outdoor', NULL, NULL, NULL, '5.443801', 'En service', NULL, 'PROJET EHUA', NULL),
(21647, NULL, NULL, NULL, 'NDOTRE_BANCO', NULL, 'OCI3041', 'Esco', 'OCI', NULL, NULL, NULL, '-4.069427', 'Outdoor', NULL, NULL, NULL, '5.427026', 'En service', NULL, 'PROJET EHUA', NULL),
(21648, NULL, NULL, NULL, 'YAKRO_39', NULL, 'OCI3044', 'Esco', 'OCI', NULL, NULL, NULL, '-5.24165', 'Outdoor', NULL, NULL, NULL, '6.830003', 'En service', NULL, 'PROJET EHUA', NULL),
(21649, NULL, NULL, NULL, 'ABADJIN_AUDE', NULL, 'OCI3043', 'Esco', 'OCI', NULL, NULL, NULL, '-4.141718', NULL, NULL, NULL, NULL, '5.326476', 'En service', NULL, 'PROJET EHUA', NULL),
(21650, NULL, NULL, NULL, 'YOP_FONTAINE', NULL, 'OCI2990', 'Esco', 'OCI', NULL, NULL, NULL, '-4.08059', 'Outdoor', NULL, NULL, NULL, '5.34012', 'En service', NULL, 'PROJET EHUA', NULL),
(21651, NULL, NULL, NULL, 'YOP_INDUSTRIELLE', NULL, 'OCI3042', 'Esco', 'OCI', NULL, NULL, NULL, '-4.087196', 'Outdoor', NULL, NULL, NULL, '5.387008', 'En service', NULL, 'PROJET EHUA', NULL),
(21652, NULL, NULL, NULL, 'YOP_MEVAL', NULL, 'OCI2988', 'Esco', 'OCI', NULL, NULL, NULL, '-4.064259', 'Outdoor', NULL, NULL, NULL, '5.3582', 'En service', NULL, 'PROJET EHUA', NULL),
(21653, NULL, NULL, NULL, 'GAMAN', NULL, 'OCI3049', 'Esco', 'OCI', NULL, NULL, NULL, '-7.997376', 'Outdoor', NULL, NULL, NULL, '6.568692', 'En service', NULL, 'PROJET EHUA', NULL),
(21654, NULL, NULL, NULL, 'HABITAT_ARRAH', NULL, 'OCI3051', 'Esco', 'OCI', NULL, NULL, NULL, '-3.978593', 'Outdoor', NULL, NULL, NULL, '6.67051', 'En service', NULL, 'PROJET EHUA', NULL),
(21655, NULL, NULL, NULL, 'YOP_PALAIS', NULL, 'OCI3027', 'Esco', 'OCI', NULL, NULL, NULL, '-4.07745', 'Outdoor', NULL, NULL, NULL, '5.32638', 'En service', NULL, 'PROJET EHUA', NULL),
(21656, NULL, NULL, NULL, 'ATTECOUBE_ROBOTH', NULL, 'OCI3057', 'Esco', 'OCI', NULL, NULL, NULL, '-4.035874', 'Outdoor', NULL, NULL, NULL, '5.352536', 'En service', NULL, 'PROJET EHUA', NULL),
(21657, NULL, NULL, NULL, 'ABATTA_ANAN', NULL, 'OCI3059', 'Esco', 'OCI', NULL, NULL, NULL, '-3.908245', 'Outdoor', NULL, NULL, NULL, '5.330716', 'En service', NULL, 'PROJET EHUA', NULL),
(21658, NULL, NULL, NULL, 'FAYATCI', NULL, 'OCI3060', 'Esco', 'OCI', NULL, NULL, NULL, '-3.938597', 'Outdoor', NULL, NULL, NULL, '5.364264', 'En service', NULL, 'PROJET EHUA', NULL),
(21659, NULL, NULL, NULL, 'EDS', NULL, 'OCI3119', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.02522731', 'Indoor', 'Small cell', NULL, NULL, '5.35248069', 'En service', NULL, 'INDOOR', NULL),
(21660, NULL, NULL, NULL, 'VIPNET_ENA', NULL, 'OCI3120', 'Esco', 'OCI', NULL, NULL, NULL, '-3.99903154', 'Indoor', 'Autostable', NULL, NULL, '5.35939828', 'En service', NULL, 'TRAVAUX ANNEXES', NULL),
(21661, NULL, NULL, NULL, 'NGOLODOUGOU_TAFIRE', NULL, 'OCI3126', 'Esco', 'OCI', NULL, NULL, NULL, '-5.16313', NULL, NULL, NULL, NULL, '9.131857', 'En service', NULL, NULL, NULL),
(21662, NULL, NULL, NULL, 'MICRO_AKOUEDO', NULL, 'OCI3127', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3.946425', 'Indoor', 'Small cell', NULL, NULL, '5.357761', 'En service', NULL, 'INDOOR', NULL),
(21663, NULL, NULL, NULL, 'SIVOP_COMMERCIAL', NULL, 'OCI3136', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.082984', 'Indoor', 'Indoor', NULL, NULL, '5.366456', 'En service', NULL, 'INDOOR', NULL),
(21664, NULL, NULL, NULL, 'SIPROCHIM', NULL, 'OCI3137', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4.086649', 'Indoor', 'Indoor', NULL, NULL, '5.369696', 'En service', NULL, 'INDOOR', NULL),
(21665, NULL, NULL, NULL, 'LOGOUALE_RELAIS', NULL, 'OCI3165', 'IHS', 'OCI', NULL, NULL, NULL, '-7.5497741', 'Outdoor', 'Haubané', NULL, NULL, '7.11519892', 'relais', NULL, NULL, NULL),
(21666, NULL, NULL, NULL, 'KATO', NULL, 'OCI2530', 'IHS', 'IHS', NULL, NULL, NULL, '-6,82834', 'Outdoor', NULL, NULL, NULL, '8,48428', 'En service', NULL, NULL, NULL),
(21667, NULL, NULL, NULL, 'COCAN', NULL, 'OCI3118', 'OCI en propre', 'OCI', NULL, NULL, NULL, '-3,99416667', 'Indoor', NULL, NULL, NULL, '5,31333334', 'En service', NULL, NULL, NULL),
(21668, NULL, NULL, NULL, 'BESSIKOI_KAMA', NULL, 'OCI2999', 'Esco', 'OCI', NULL, NULL, NULL, '-3,96061', 'Outdoor', 'MATS', NULL, NULL, '5,40528', 'En service', NULL, 'EHUA', NULL),
(21669, NULL, NULL, NULL, 'NOFOUN', NULL, 'OCI2916', 'Esco', 'OCI', NULL, NULL, NULL, '-5,8208333', NULL, NULL, NULL, NULL, '9,77194444', 'En service', NULL, NULL, NULL),
(21670, NULL, NULL, NULL, 'EPP_SAGBE', NULL, 'OCI3174', 'IHS', 'IHS', NULL, NULL, NULL, '-4,032305', NULL, NULL, NULL, NULL, '5,419694', 'En service', NULL, 'COLOC_IHS', NULL),
(21671, NULL, NULL, NULL, 'COBAKRO_AKOUE', NULL, 'OCI3176', 'IHS', 'IHS', NULL, NULL, NULL, '-4,11553', NULL, NULL, NULL, NULL, '5,45735', 'En service', NULL, NULL, NULL),
(21672, NULL, NULL, NULL, 'RTE_AKANDJE', NULL, 'OCI3177', 'IHS', 'IHS', NULL, NULL, NULL, '-3,89584', NULL, NULL, NULL, NULL, '5,39369', 'En service', NULL, NULL, NULL),
(21673, NULL, NULL, NULL, 'BKE_BVLE4', NULL, 'OCI2770', 'IHS', 'IHS', NULL, NULL, NULL, '-4,982083', NULL, NULL, NULL, NULL, '7,709', 'En service', NULL, NULL, NULL),
(21674, NULL, NULL, NULL, 'VASSO', NULL, 'OCI2784', 'IHS', 'IHS', NULL, NULL, NULL, '-7,56775', NULL, NULL, NULL, NULL, '9,51062', 'En service', NULL, NULL, NULL),
(21675, NULL, NULL, NULL, 'OUME_NORD', NULL, 'OCI3182', 'IHS', 'IHS', NULL, NULL, NULL, '-5,41575', NULL, NULL, NULL, NULL, '6,38852', 'En service', NULL, NULL, NULL),
(21676, NULL, NULL, NULL, 'GUIGLO_RTEBLOL', NULL, 'OCI3183', 'IHS', 'IHS', NULL, NULL, NULL, '-7,51038', NULL, NULL, NULL, NULL, '6,54467', 'En service', NULL, NULL, NULL),
(21677, NULL, NULL, NULL, 'AGNIBILEKRO_NQ', NULL, 'OCI2736', 'IHS', 'IHS', NULL, NULL, NULL, '-3,21607', NULL, NULL, NULL, NULL, '7,13117', 'En service', NULL, NULL, NULL),
(21678, NULL, NULL, NULL, 'HOTEL_AEROPORT', NULL, 'OCI3170', 'IHS', 'IHS', NULL, NULL, NULL, '-3,941293', NULL, NULL, NULL, NULL, '5,260199', 'En service', NULL, NULL, NULL),
(21679, NULL, NULL, NULL, 'ASSUEFRY_BIS', 'IHS_ZNZ_021M', 'OCI2404', 'IHS', 'IHS', NULL, NULL, NULL, '-2,975334', NULL, NULL, NULL, NULL, '7,710689', 'En service', NULL, 'Coloc 2019', NULL),
(21680, NULL, NULL, NULL, 'GESCO_DOH', NULL, 'OCI3034', 'Esco', 'OCI', NULL, NULL, NULL, '-4,097389', NULL, NULL, NULL, NULL, '5,358778', 'En service', NULL, 'PROJET EHUA', NULL),
(21681, NULL, NULL, NULL, 'GBEULYVILLE', NULL, 'OCI3053', 'Esco', 'OCI', NULL, NULL, NULL, '-6,458', NULL, NULL, NULL, NULL, '6,878417', 'En service', NULL, 'PROJET EHUA', NULL),
(21682, NULL, NULL, NULL, 'ANYAMA_GENDARMERIE', NULL, 'OCI2955', 'Esco', 'OCI', NULL, NULL, NULL, '-4.046926', 'Outdoor', NULL, NULL, NULL, '5.461479', 'En service', NULL, 'PROJET EHUA', NULL),
(21683, NULL, NULL, NULL, 'KERE', NULL, 'OCI3061', 'Esco', 'OCI', NULL, NULL, NULL, '-3,92516', NULL, NULL, NULL, NULL, '5,36172', 'En service', NULL, 'PROJET EHUA', NULL),
(21684, NULL, NULL, NULL, 'ALIZEES', NULL, 'OCI3001', 'Esco', 'OCI', NULL, NULL, NULL, '-3,979026', NULL, NULL, NULL, NULL, '5,278259', 'En service', NULL, 'PROJET EHUA', NULL),
(21685, NULL, NULL, NULL, 'KOUM_ESPOIR', NULL, 'OCI2962', 'Esco', 'OCI', NULL, NULL, NULL, '-3.95131', 'Outdoor', NULL, NULL, NULL, '5.30376', 'En service', NULL, 'PROJET EHUA', NULL),
(21686, NULL, NULL, NULL, 'HKB_PALMIER', NULL, 'OCI2987', 'Esco', 'OCI', NULL, NULL, NULL, '-3.979883', 'Outdoor', NULL, NULL, NULL, '5.307919', 'En service', NULL, 'PROJET EHUA', NULL),
(21687, NULL, NULL, NULL, 'ISATECH', NULL, 'OCI3010', 'Esco', 'OCI', NULL, NULL, NULL, '-3,969908', NULL, 'MATS', NULL, NULL, '5,292682', 'En service', NULL, 'PROJET EHUA', NULL),
(21688, NULL, NULL, NULL, 'AZITO_PANAM', NULL, 'OCI2936', 'Esco', 'OCI', NULL, NULL, NULL, '-3,995272', NULL, 'MATS', NULL, NULL, '5,308936', 'En service', NULL, 'PROJET EHUA', NULL),
(21689, NULL, NULL, NULL, 'MOUGNINI', NULL, 'OCI2545', 'IHS', 'IHS', NULL, NULL, NULL, '-6,663306', NULL, NULL, NULL, NULL, '10,010036', 'En service', NULL, NULL, NULL),
(21690, NULL, NULL, NULL, 'TOURO', NULL, 'OCI2921', 'Esco', 'OCI', NULL, NULL, NULL, '-5,06972222', NULL, NULL, NULL, NULL, '7,99777778', 'En service', NULL, NULL, NULL),
(21691, NULL, NULL, NULL, 'TIEMOROKAHA', NULL, 'OCI2919', 'Esco', 'OCI', NULL, NULL, NULL, '-5,20194', NULL, NULL, NULL, NULL, '8,5022', 'En service', NULL, NULL, NULL),
(21692, NULL, NULL, NULL, 'BOTANIQUE', NULL, 'OCI3178', 'IHS', 'IHS', NULL, NULL, NULL, '-3,882393', NULL, NULL, NULL, NULL, '5,361585', 'En service', NULL, NULL, NULL),
(21693, NULL, NULL, NULL, 'NITORO2', NULL, 'OCI3186', 'IHS', 'IHS', NULL, NULL, NULL, '-6,63116', NULL, NULL, NULL, NULL, '4,73946', 'En service', NULL, NULL, NULL),
(21694, NULL, NULL, NULL, 'BDKOU_STADE', NULL, 'OCI2737', 'IHS', 'IHS', NULL, NULL, NULL, '-2,78581', NULL, NULL, NULL, NULL, '8,02466', 'En service', NULL, NULL, NULL),
(21695, NULL, NULL, NULL, 'DIMBOKRO_CENTRE', NULL, 'OCI2777', 'IHS', 'IHS', NULL, NULL, NULL, '-4,71482', NULL, NULL, NULL, NULL, '6,65072', 'En service', NULL, NULL, NULL),
(21696, NULL, NULL, NULL, 'LANVIARA_OUEST', NULL, 'OCI2748', 'IHS', 'IHS', NULL, NULL, NULL, '-5,22001', NULL, NULL, NULL, NULL, '9,58667', 'En service', NULL, NULL, NULL),
(21697, NULL, NULL, NULL, 'GONZAK_CENTRE', NULL, 'OCI2944', 'Esco', 'OCI', NULL, NULL, NULL, '-3,900428', NULL, NULL, NULL, NULL, '5,256032', 'En service', NULL, NULL, NULL),
(21698, NULL, NULL, NULL, 'BASSAM_EXCEL', NULL, 'OCI2937', 'Esco', 'OCI', NULL, NULL, NULL, '-3,7701', NULL, NULL, NULL, NULL, '5,22928', 'En service', NULL, NULL, NULL),
(21699, NULL, NULL, NULL, 'JMN_PALMIER', NULL, 'OCI3025', 'Esco', 'OCI', NULL, NULL, NULL, '-3,99668', NULL, NULL, NULL, NULL, '5,28863', 'En service', NULL, NULL, NULL),
(21700, NULL, NULL, NULL, 'DALOA_ABATNEW', NULL, 'OCI3203', 'IHS', 'IHS', NULL, NULL, NULL, '-6,43001', NULL, NULL, NULL, NULL, '6,85517', 'En service', NULL, NULL, NULL),
(21701, NULL, NULL, NULL, 'ANGRE_RGK', NULL, 'OCI2972', 'Esco', 'OCI', NULL, NULL, NULL, '-3.995597', 'Outdoor', NULL, NULL, NULL, '5.378035', 'En service', NULL, 'PROJET EHUA', NULL),
(21702, NULL, NULL, NULL, 'FIDELIS', NULL, 'OCI3189', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4,012911', NULL, NULL, NULL, NULL, '5,342935', 'En service', NULL, NULL, NULL),
(21703, NULL, NULL, NULL, 'GREGBEU', NULL, 'OCI2527', 'IHS', 'IHS', NULL, NULL, NULL, '-6,73593', NULL, NULL, NULL, NULL, '6,7979', 'En service', NULL, NULL, NULL),
(21704, NULL, NULL, NULL, 'HOPITAL_ANGRE', NULL, 'OCI3179', 'IHS', 'IHS', NULL, NULL, NULL, '-3,955722', NULL, NULL, NULL, NULL, '5,400722', 'En service', NULL, NULL, NULL),
(21705, NULL, NULL, NULL, 'THELEN_SMALL_CELL', NULL, 'OCI3198', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-3,945643', NULL, NULL, NULL, NULL, '5,291424', 'En service', NULL, NULL, NULL),
(21706, NULL, NULL, NULL, 'ZAMBO', NULL, 'OCI2780', 'IHS', 'IHS', NULL, NULL, NULL, '-5,21717', NULL, NULL, NULL, NULL, '7,15521', 'En service', NULL, NULL, NULL),
(21707, NULL, NULL, NULL, 'DALOA_FADIGA', NULL, 'OCI3202', 'IHS', 'IHS', NULL, NULL, NULL, '-6,4344', NULL, NULL, NULL, NULL, '6,87154', 'En service', NULL, NULL, NULL),
(21708, NULL, NULL, NULL, 'ABOISSO_FO', NULL, 'OCI3201', 'IHS', 'IHS', NULL, NULL, NULL, '-3,22055556', NULL, NULL, NULL, NULL, '5,46466667', 'En service', NULL, NULL, NULL),
(21709, NULL, NULL, NULL, 'SINEMATIALI_CENTRE', NULL, 'OCI2782', 'IHS', 'IHS', NULL, NULL, NULL, '-5,38846', NULL, NULL, NULL, NULL, '9,58872', 'En service', NULL, NULL, NULL),
(21710, NULL, NULL, NULL, 'SINZIBO', NULL, 'OCI3184', 'IHS', 'IHS', NULL, NULL, NULL, '-5,25075', NULL, NULL, NULL, NULL, '6,853556', 'En service', NULL, NULL, NULL),
(21711, NULL, NULL, NULL, 'KENNEDY_EXT', NULL, 'OCI3187', 'IHS', 'IHS', NULL, NULL, NULL, '-4,994222', NULL, NULL, NULL, NULL, '7,67804', 'En service', NULL, NULL, NULL),
(21712, NULL, NULL, NULL, 'KOLATIER_NEW', NULL, 'OCI3171', 'IHS', 'IHS', NULL, NULL, NULL, '-4,012066', NULL, NULL, NULL, NULL, '5,440747', 'En service', NULL, NULL, NULL),
(21713, NULL, NULL, NULL, 'MARCORY3_NEW', NULL, 'OCI3173', 'IHS', 'IHS', NULL, NULL, NULL, '-3,98613', NULL, NULL, NULL, NULL, '5,30239', 'En service', NULL, NULL, NULL),
(21714, NULL, NULL, NULL, 'ADJIN_VILLAGE', NULL, 'OCI3175', 'IHS', 'IHS', NULL, NULL, NULL, '-3,854111', NULL, NULL, NULL, NULL, '5,39581', 'En service', NULL, NULL, NULL),
(21715, NULL, NULL, NULL, 'BKE_RENFO1', NULL, 'OCI3181', 'IHS', 'IHS', NULL, NULL, NULL, '-5,05187', NULL, NULL, NULL, NULL, '7,71388', 'En service', NULL, NULL, NULL),
(21716, NULL, NULL, NULL, 'TOUMANGUIE_VILLAGE', NULL, 'OCI2031', 'Esco', 'OCI', NULL, NULL, NULL, '-3,322939', NULL, NULL, NULL, NULL, '5,326366', 'En service', NULL, NULL, NULL),
(21717, NULL, NULL, NULL, 'PFO_MICRO', NULL, 'OCI3163', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4,002235', NULL, NULL, NULL, NULL, '5,345908', 'En service', NULL, NULL, NULL),
(21718, NULL, NULL, NULL, 'SMALL_CELL_TOUR_A', NULL, 'OCI3185', 'OCI en propre', 'OCI_Indoor', NULL, NULL, NULL, '-4,022445', NULL, NULL, NULL, NULL, '5,334373', 'En service', NULL, NULL, NULL),
(21719, NULL, NULL, NULL, 'BLV_MARSEILLE', NULL, 'OCI3167', 'Esco', 'OCI', NULL, NULL, NULL, '-3,98661', NULL, NULL, NULL, NULL, '5,287919', 'En service', NULL, NULL, NULL),
(21720, NULL, NULL, NULL, 'BOULAY_NEW', NULL, 'OCI3169', 'Esco', 'OCI', NULL, NULL, NULL, '-4,093238', NULL, NULL, NULL, NULL, '5,267323', 'En service', NULL, NULL, NULL),
(21721, NULL, NULL, NULL, 'SIVOP_PALMIER', NULL, 'OCI3168', 'Esco', 'OCI', NULL, NULL, NULL, '-4,08409', NULL, NULL, NULL, NULL, '5,36486', 'En service', NULL, NULL, NULL),
(21722, NULL, NULL, NULL, 'QUARTIER_ROUGE', NULL, 'OCI3172', 'IHS', 'IHS', NULL, NULL, NULL, '-4,027762', NULL, NULL, NULL, NULL, '5,341215', 'En service', NULL, NULL, NULL),
(21723, NULL, NULL, NULL, 'KREMOUE', NULL, 'OCI2759', 'IHS', 'IHS', NULL, NULL, NULL, '-6,6775', NULL, NULL, NULL, NULL, '4,773533', 'En service', NULL, NULL, NULL),
(21724, NULL, NULL, NULL, 'SAINT_PAUL', NULL, 'OCI2950', 'Esco', 'OCI', NULL, NULL, NULL, '-4,020026', NULL, NULL, NULL, NULL, '5,334372', 'En service', NULL, NULL, NULL),
(21725, NULL, NULL, NULL, 'ABADJINDOUME', NULL, 'OCI3020', 'Esco', 'OCI', NULL, NULL, NULL, '-4,141917', NULL, NULL, NULL, NULL, '5,312972', 'En service', NULL, NULL, NULL),
(21726, NULL, NULL, NULL, 'GRAND_MORIE', NULL, 'OCI2890', 'Esco', 'OCI', NULL, NULL, NULL, '-4,138737', NULL, NULL, NULL, NULL, '5,985036', 'En service', NULL, NULL, NULL),
(21727, NULL, NULL, NULL, 'MIABLA_32', NULL, 'OCI2965', 'Esco', 'OCI', NULL, NULL, NULL, '-3,954028', NULL, NULL, NULL, NULL, '5,314334', 'En service', NULL, NULL, NULL),
(21728, NULL, NULL, NULL, 'ANCIEN_CAMP', NULL, 'OCI3005', 'Esco', 'OCI', NULL, NULL, NULL, '-3,95012', NULL, NULL, NULL, NULL, '5,354691', 'En service', NULL, NULL, NULL),
(21729, NULL, NULL, NULL, 'ST_ATHANASE', NULL, 'OCI3017', 'Esco', 'OCI', NULL, NULL, NULL, '-3,975829', NULL, NULL, NULL, NULL, '5,348057', 'En service', NULL, NULL, NULL),
(21730, NULL, NULL, NULL, 'AKEIKOI_VILLAGE', NULL, 'OCI3038', 'Esco', 'OCI', NULL, NULL, NULL, '-4,010859', NULL, NULL, NULL, NULL, '5,460304', 'En service', NULL, NULL, NULL),
(21731, NULL, NULL, NULL, 'KONGOUE', NULL, 'OCI3141', 'Esco', 'OCI', NULL, NULL, NULL, '-4,842008', NULL, NULL, NULL, NULL, '7,032083', 'En service', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sites_administrateurs`
--

DROP TABLE IF EXISTS `sites_administrateurs`;
CREATE TABLE IF NOT EXISTS `sites_administrateurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_site` int(11) DEFAULT NULL,
  `id_administrateur` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sites_tmp`
--

DROP TABLE IF EXISTS `sites_tmp`;
CREATE TABLE IF NOT EXISTS `sites_tmp` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_site` int(11) DEFAULT NULL,
  `tmp` varchar(50) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `snags`
--

DROP TABLE IF EXISTS `snags`;
CREATE TABLE IF NOT EXISTS `snags` (
  `idSnag` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(130) NOT NULL,
  `description` text NOT NULL,
  `severite` varchar(34) NOT NULL,
  `categorisation` text NOT NULL,
  `delai` varchar(100) NOT NULL,
  `reponsability` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idSnag`)
) ENGINE=MyISAM AUTO_INCREMENT=1074 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `snags`
--

INSERT INTO `snags` (`idSnag`, `type`, `description`, `severite`, `categorisation`, `delai`, `reponsability`) VALUES
(954, 'AVIATION W LIGHT(Balisage Nocturne)', 'Balisage Nocturne Hors Service', 'Major', 'Stardard', '30 Jours', NULL),
(955, 'AVIATION W LIGHT(Balisage Nocturne)', 'Balisage Nocturne mal installe or Endommage', 'Major', 'Stardard', '30 Jours', NULL),
(956, 'AVIATION W LIGHT(Balisage Nocturne)', 'Pas de Balisage Nocturne ', 'Critical', 'Stardard', '15 Jours', NULL),
(957, 'AVIATION W LIGHT(Balisage Nocturne) ', 'Autres Balisage Nocturne', 'N.A', 'N.A', '60 jours', NULL),
(958, 'BATTERIES(Batteries)', 'Autonomie batteries nulle', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(959, 'BATTERIES(Batteries)', 'Faible Autonomie Batteries', 'Major', 'QoS Impacted', '30 Jours', NULL),
(960, 'BATTERIES(Batteries)', 'Batteries Endommage', 'Major', 'Stardard', '30 Jours', NULL),
(961, 'BATTERIES(Batteries)', 'Pas de batteries ', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(962, 'BATTERIES(Batteries)', 'Batteries deconnectee', 'Minor', 'Stardard', '45 jours', NULL),
(963, 'BATTERIES(Batteries) ', 'Autres Batteries', 'N.A', 'N.A', '60 jours', NULL),
(964, 'COOLING SYSTHEM(System Refroidissement)', 'Pas de climatiseur', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(965, 'COOLING SYSTHEM(System Refroidissement)', '1/2 Climatiseur Hors Service', 'Major', 'Stardard', '30 Jours', NULL),
(966, 'COOLING SYSTHEM(System Refroidissement)', 'Plus d\'un Climatiseur Hors Service', 'Critical', 'Stardard', '15 Jours', NULL),
(967, 'COOLING SYSTHEM(System Refroidissement)', 'Tous les Climatiseurs Hors Service', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(968, 'COOLING SYSTHEM(System Refroidissement)', 'dysfonctionnement de la Climatisation', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(969, 'COOLING SYSTHEM(System Refroidissement)', 'Auto-commutation des climatisation', 'Minor', 'Stardard', '45 jours', NULL),
(970, 'COOLING SYSTHEM(System Refroidissement)', 'Temperature elevee dans la shelter /salle techq', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(971, 'COOLING SYSTHEM(System Refroidissement)', 'System de refroidissement des racks passifs', 'Major', 'Stardard', '30 Jours', NULL),
(972, 'COOLING SYSTHEM(System Refroidissement) ', 'Autres System de refroidissement', 'N.A', 'N.A', '60 jours', NULL),
(973, 'EARTHING(RCM)', 'Terre vandalisee', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(974, 'EARTHING(RCM)', 'Terre deconnectee', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(975, 'EARTHING(RCM)', 'Mauvaise valeure de Terre ≥ 10 mΩ', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(976, 'EARTHING(RCM)', 'Des elements pas mis a la Terre', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(977, 'EARTHING(RCM)', 'Boulonneries des terre rouillees', 'Major', 'Stardard', '30 Jours', NULL),
(978, 'EARTHING(RCM)', 'Boulonneries des terre desserrees', 'Major', 'Stardard', '30 Jours', NULL),
(979, 'EARTHING(RCM)', 'Pylone pas a la Terre', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(980, 'EARTHING(RCM)', 'Atelier d\'energie pas a la Terre', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(981, 'EARTHING(RCM)', 'Rack Batteries pas a la Terre', 'Major', 'Stardard', '30 Jours', NULL),
(982, 'EARTHING(RCM)', 'Coffret / Armoire electrique pas a la Terre', 'Critical', 'Stardard', '15 Jours', NULL),
(983, 'EARTHING(RCM)', 'Equipements actives pas a la Terre', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(984, 'EARTHING(RCM)', 'DDF & ODF pas a la Terre', 'Major', 'QoS Impacted', '30 Jours', NULL),
(985, 'EARTHING(RCM)', 'System Parafoudre Deffectueux', 'Major', 'QoS Impacted', '30 Jours', NULL),
(986, 'EARTHING(RCM) ', 'Autres RCM', 'N.A', 'N.A', '60 jours', NULL),
(987, 'ELECTRICAL(Electricite)', 'Coffret / Armoire electrique avec probleme de fermeture', 'Minor', 'Stardard', '45 jours', NULL),
(988, 'ELECTRICAL(Electricite)', 'Mauvaise installation de Coffret / Armoire electrique ', 'Minor', 'Stardard', '45 jours', NULL),
(989, 'ELECTRICAL(Electricite)', 'Eclairages et prises', 'Major', 'Stardard', '30 Jours', NULL),
(990, 'ELECTRICAL(Electricite)', 'Coffret / Armoire electrique endommage', 'Minor', 'Stardard', '45 jours', NULL),
(991, 'ELECTRICAL(Electricite)', 'Mauvais passage de cables electriques', 'Minor', 'Stardard', '45 jours', NULL),
(992, 'ELECTRICAL(Electricite)', 'Presence de cables electriques non utilises', 'Minor', 'Stardard', '45 jours', NULL),
(993, 'ELECTRICAL(Electricite) ', 'Autres Electricite', 'N.A', 'N.A', '60 jours', NULL),
(994, 'EVIRONMENTAL(Environnement)', 'Site Sale', 'Major', 'Stardard', '30 Jours', NULL),
(995, 'EVIRONMENTAL(Environnement)', 'Site herbeux', 'Major', 'Stardard', '30 Jours', NULL),
(996, 'EVIRONMENTAL(Environnement)', 'Cloture endommagee', 'Major', 'Stardard', '30 Jours', NULL),
(997, 'EVIRONMENTAL(Environnement)', 'Portail endommage', 'Major', 'Stardard', '30 Jours', NULL),
(998, 'EVIRONMENTAL(Environnement)', 'Planche du shelter endommage', 'Critical', 'Stardard', '15 Jours', NULL),
(999, 'EVIRONMENTAL(Environnement)', 'Toiture du shelter endommage', 'Critical', 'Stardard', '15 Jours', NULL),
(1000, 'EVIRONMENTAL(Environnement)', 'Porte du shelter endommage', 'Major', 'Stardard', '30 Jours', NULL),
(1001, 'EVIRONMENTAL(Environnement)', 'Sol du site endommage', 'Major', 'Stardard', '30 Jours', NULL),
(1002, 'EVIRONMENTAL(Environnement)', 'Hangar de l\'hangar des equipements', 'Critical', 'Stardard', '15 Jours', NULL),
(1003, 'EVIRONMENTAL(Environnement)', 'Sites a deratiser', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1004, 'EVIRONMENTAL(Environnement)', 'Cadenas et cle endommage', 'Major', 'Stardard', '30 Jours', NULL),
(1005, 'EVIRONMENTAL(Environnement)', 'Portes des equipements passifs endommage', 'Major', 'Stardard', '30 Jours', NULL),
(1006, 'EVIRONMENTAL(Environnement)', 'Portes des equipements actifs endommage', 'Major', 'Stardard', '30 Jours', NULL),
(1007, 'EVIRONMENTAL(Environnement)', 'Materiel et autres elements abandonnes sur site', 'Minor', 'Stardard', '45 jours', NULL),
(1008, 'EVIRONMENTAL(Environnement)', 'System de ventilation defectueux sur les passifs', 'Major', 'Stardard', '30 Jours', NULL),
(1009, 'EVIRONMENTAL(Environnement)', 'System de ventilation defectueux sur les actifs', 'Major', 'QoS Impacted', '30 Jours', NULL),
(1010, 'EVIRONMENTAL(Environnement)', 'Presence de rouille sur des elements du site', 'Minor', 'Stardard', '45 jours', NULL),
(1011, 'EVIRONMENTAL(Environnement)', 'Abattage d\'arbres ', 'Minor', 'Stardard', '45 jours', NULL),
(1012, 'EVIRONMENTAL(Environnement)', 'Presence de guepes et abeilles sur le site', 'Critical', 'Stardard', '15 Jours', NULL),
(1013, 'EVIRONMENTAL(Environnement)', 'Probemes de securites sur le site', 'Critical', 'Stardard', '15 Jours', NULL),
(1014, 'EVIRONMENTAL(Environnement)', 'Difficultes  de voie d\'acces', 'Major', 'Stardard', '30 Jours', NULL),
(1015, 'EVIRONMENTAL(Environnement)', 'Difficultes de procedure d\'acces', 'Major', 'Stardard', '30 Jours', NULL),
(1016, 'EVIRONMENTAL(Environnement) ', 'Autres Evironnemental', 'N.A', 'N.A', '60 jours', NULL),
(1017, 'EXTERNAL ALARMS(Alarmes Externes)', 'Alarmes non Urgente', 'Minor', 'Stardard', '45 jours', NULL),
(1018, 'EXTERNAL ALARMS(Alarmes Externes)', 'Alarmes Urgente', 'Critical', 'Stardard', '15 Jours', NULL),
(1019, 'EXTERNAL ALARMS(Alarmes Externes)', 'Feu detecte', 'Critical', 'Stardard', '15 Jours', NULL),
(1020, 'EXTERNAL ALARMS(Alarmes Externes)', 'Ouverture porte', 'Minor', 'Stardard', '45 jours', NULL),
(1021, 'EXTERNAL ALARMS(Alarmes Externes)', 'Manque Secteur', 'Critical', 'Stardard', '15 Jours', NULL),
(1022, 'EXTERNAL ALARMS(Alarmes Externes)', 'Disjonction TGBT', 'Critical', 'Stardard', '15 Jours', NULL),
(1023, 'EXTERNAL ALARMS(Alarmes Externes)', 'Climatiseur Deffectueux', 'Major', 'Stardard', '30 Jours', NULL),
(1024, 'EXTERNAL ALARMS(Alarmes Externes)', 'Temperature', 'Critical', 'Stardard', '15 Jours', NULL),
(1025, 'EXTERNAL ALARMS(Alarmes Externes)', 'Demarrage GE', 'Minor', 'Stardard', '45 jours', NULL),
(1026, 'EXTERNAL ALARMS(Alarmes Externes)', 'Defaut GE', 'Critical', 'Stardard', '15 Jours', NULL),
(1027, 'EXTERNAL ALARMS(Alarmes Externes)', 'Defaut panneaux solaire', 'Major', 'Stardard', '30 Jours', NULL),
(1028, 'EXTERNAL ALARMS(Alarmes Externes)', 'Faible Autonomie Batteries des panneaux solaire', 'Critical', 'Stardard', '15 Jours', NULL),
(1029, 'EXTERNAL ALARMS(Alarmes Externes)', 'Toutes les alarmes ext deconnectees', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1030, 'EXTERNAL ALARMS(Alarmes Externes) ', 'Autres Alarmes Externes', 'N.A', 'N.A', '60 jours', NULL),
(1031, 'FIRE EXTINGUISHER(Extincteur)', 'Pas d\'Extincteur', 'Major', 'Stardard', '30 Jours', NULL),
(1032, 'FIRE EXTINGUISHER(Extincteur)', 'Extincteur expire', 'Major', 'Stardard', '30 Jours', NULL),
(1033, 'FIRE EXTINGUISHER(Extincteur)', 'Extincteur Endommage', 'Major', 'Stardard', '30 Jours', NULL),
(1034, 'GENSET(Groupe Electrogene)', 'Groupe Electrogene Hors Service', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1035, 'GENSET(Groupe Electrogene)', 'Groupe Electrogene en mode manuelle', 'Major', 'QoS Impacted', '30 Jours', NULL),
(1036, 'GENSET(Groupe Electrogene)', 'Groupe Electrogene Obselete', 'Major', 'QoS Impacted', '30 Jours', NULL),
(1037, 'GENSET(Groupe Electrogene)', 'Mauvais Groupe Electrogene', 'Major', 'QoS Impacted', '30 Jours', NULL),
(1038, 'GENSET(Groupe Electrogene)', 'Auto-Commutation entre differents sourses d\'energies', 'Major', 'Stardard', '30 Jours', NULL),
(1039, 'GENSET(Groupe Electrogene) ', 'Autres Groupe Electrogene', 'N.A', 'N.A', '60 jours', NULL),
(1040, 'MAIN POWER (sourse principale d\'energie)', 'Instabilite de la sourse principale d\'energie', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1041, 'MAIN POWER (sourse principale d\'energie)', 'Site sans Sources CIE', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1042, 'MAIN POWER (sourse principale d\'energie) ', 'Autres sourse principale d\'energie', 'N.A', 'N.A', '60 jours', NULL),
(1043, 'POWER RACK(Rack Energie)', 'ATelier d\'energie Hors Service', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1044, 'POWER RACK(Rack Energie)', 'Atelier d\'energie obselete', 'Major', 'QoS Impacted', '30 Jours', NULL),
(1045, 'POWER RACK(Rack Energie)', 'Dysfonctionnement de l\'atelier d\'energie', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1046, 'POWER RACK(Rack Energie)', 'Capacité baie installée insuffisante pour une recharge en 10H', 'Major', '', '30 Jours', NULL),
(1047, 'POWER RACK(Rack Energie)', 'Absence de redondance au niveau de la baie d\'énergie', 'Major', '', '30 Jours', NULL),
(1048, 'POWER RACK(Rack Energie)', 'Module redresseur en faute', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1049, 'POWER RACK(Rack Energie)', 'Alarmes sur l\'atelier d\'energie', 'Critical', 'Stardard', '15 Jours', NULL),
(1050, 'POWER RACK(Rack Energie) ', 'Autres Atelier d\'energie', 'N.A', 'N.A', '60 jours', NULL),
(1051, 'SOLAR SYSTEM(System Solaire)', 'System Solaire Hors Service', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1052, 'SOLAR SYSTEM(System Solaire)', 'System Solaire en mode manuelle', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1053, 'SOLAR SYSTEM(System Solaire)', 'Dysfonctionnement du System Solaire', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1054, 'SOLAR SYSTEM(System Solaire)', 'Absence d\'hybridage sur le système solaire (PS-GE-CIE)', 'Minor', '', '45 jours', NULL),
(1055, 'SOLAR SYSTEM(System Solaire)', 'Dysfonctionnement du System Solaire hybride', 'Critical', '', '15 Jours', NULL),
(1056, 'SOLAR SYSTEM(System Solaire)', 'Absence d\'entretien des équipements solaires', 'Major', '', '30 Jours', NULL),
(1057, 'SOLAR SYSTEM(System Solaire)', 'Alarmes sur le System Solaire', 'Major', 'Stardard', '30 Jours', NULL),
(1058, 'SOLAR SYSTEM(System Solaire) ', 'Autres System Solaire', 'N.A', 'N.A', '60 jours', NULL),
(1059, 'TOWER(Pylone)', 'Pylone instable', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1060, 'TOWER(Pylone)', 'Pylone rouille', 'Critical', 'Stardard', '15 Jours', NULL),
(1061, 'TOWER(Pylone)', 'Boulonneries du pylone rouillees', 'Critical', 'Stardard', '15 Jours', NULL),
(1062, 'TOWER(Pylone)', 'Boulonneries du pylone desserrees', 'Critical', 'Stardard', '15 Jours', NULL),
(1063, 'TOWER(Pylone)', 'Haubants detendus', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1064, 'TOWER(Pylone)', 'Haubants rouilles', 'Critical', 'Stardard', '15 Jours', NULL),
(1065, 'TOWER(Pylone)', 'Pylone incline', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1066, 'TOWER(Pylone)', 'Degradation de l\'embase de pylone', 'Critical', 'QoS Impacted', '15 Jours', NULL),
(1067, 'TOWER(Pylone)', 'Degradation de la peinture du pylone (balisasege diurne)', 'Minor', 'Stardard', '45 jours', NULL),
(1068, 'TOWER(Pylone)', 'Degagement des haubants', 'Minor', 'Stardard', '45 jours', NULL),
(1069, 'TOWER(Pylone)', 'Points d\'encrage des haubans defectueux', 'Critical', '', '15 Jours', NULL),
(1070, 'TOWER(Pylone)', 'Absence de plaque d\'identification du pylône', 'Minor', '', '45 jours', NULL),
(1071, 'TOWER(Pylone)', 'Surcharge de pylone ', 'Major', 'QoS Impacted', '30 Jours', NULL),
(1072, 'TOWER(Pylone)', 'Presence de guepes, abeilles et de nids de corbeaux sur le pylone', 'Critical', 'Stardard', '15 Jours', NULL),
(1073, 'TOWER(Pylone) ', 'Autres Pylone', 'N.A', 'N.A', '60 jours', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `types_batiments`
--

DROP TABLE IF EXISTS `types_batiments`;
CREATE TABLE IF NOT EXISTS `types_batiments` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_batiment` varchar(50) DEFAULT NULL,
  `niveau` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types_batiments`
--

INSERT INTO `types_batiments` (`id`, `type_batiment`, `niveau`) VALUES
(1, 'EGLISE', 3),
(2, 'IMMEUBLE', 10),
(3, 'VILLA BASSE', 1),
(4, 'VILLA DUPLEX', 2),
(5, 'VILLA TRIPLEX', 3);

-- --------------------------------------------------------

--
-- Structure de la table `types_equipements`
--

DROP TABLE IF EXISTS `types_equipements`;
CREATE TABLE IF NOT EXISTS `types_equipements` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_equipement` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `types_interventions`
--

DROP TABLE IF EXISTS `types_interventions`;
CREATE TABLE IF NOT EXISTS `types_interventions` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_intervention` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types_interventions`
--

INSERT INTO `types_interventions` (`id`, `type_intervention`) VALUES
(1, 'MAINTENANCE'),
(2, 'REPARATION'),
(3, 'DEPANNAGE');

-- --------------------------------------------------------

--
-- Structure de la table `types_salles`
--

DROP TABLE IF EXISTS `types_salles`;
CREATE TABLE IF NOT EXISTS `types_salles` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_salle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types_salles`
--

INSERT INTO `types_salles` (`id`, `type_salle`) VALUES
(1, 'SALLE DE REUNION'),
(2, 'BUREAU DU PERSONNEL'),
(3, 'SALLE D\'ATTENTE'),
(4, 'SALLE SERVEUR'),
(5, 'ENTREPOT DE STOCKAGE'),
(6, 'SALLE DE CONFESSIONNAT'),
(7, 'TEMPLE DE PRIERE');

-- --------------------------------------------------------

--
-- Structure de la table `types_salles_elements`
--

DROP TABLE IF EXISTS `types_salles_elements`;
CREATE TABLE IF NOT EXISTS `types_salles_elements` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_type_salle` int(11) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types_salles_elements`
--

INSERT INTO `types_salles_elements` (`id`, `id_type_salle`, `id_element`) VALUES
(1, 7, 5),
(2, 7, 6),
(3, 7, 7),
(7, 3, 8),
(8, 2, 9),
(9, 2, 1),
(10, 2, 3),
(13, 4, 9),
(14, 4, 11),
(17, 7, 2),
(24, 2, 2),
(25, 2, 6),
(33, 2, 10),
(35, 5, 5),
(36, 5, 10),
(38, 2, 5),
(40, 5, 6),
(41, 5, 2),
(42, 5, 11),
(43, 7, 12),
(44, 4, 12),
(45, 2, 7),
(46, 3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `types_services`
--

DROP TABLE IF EXISTS `types_services`;
CREATE TABLE IF NOT EXISTS `types_services` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_service` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `types_sites`
--

DROP TABLE IF EXISTS `types_sites`;
CREATE TABLE IF NOT EXISTS `types_sites` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_site` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types_sites`
--

INSERT INTO `types_sites` (`id`, `type_site`) VALUES
(1, 'PAROISSE'),
(2, 'SITE ADMINISTRATIF'),
(3, 'SITE TECHNIQUE');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_site` int(11) DEFAULT NULL,
  `reference` varchar(20) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `tmp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `id_site`, `reference`, `nom`, `prenom`, `telephone`, `mail`, `tmp`) VALUES
(1, 1, '1111', 'KOUAME', 'MAXIM', '0988888', NULL, NULL),
(2, 1, '1112', 'KOUAKOU', 'FRANCK', '0977777', NULL, NULL),
(3, 1, '1113', 'YAO', 'TIMOTHEE', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `villages`
--

DROP TABLE IF EXISTS `villages`;
CREATE TABLE IF NOT EXISTS `villages` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_ville` int(11) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

DROP TABLE IF EXISTS `villes`;
CREATE TABLE IF NOT EXISTS `villes` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_region` int(11) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `id_region`, `ville`) VALUES
(1, 1, 'ABIDJAN');

-- --------------------------------------------------------

--
-- Structure de la table `__utilisateurs`
--

DROP TABLE IF EXISTS `__utilisateurs`;
CREATE TABLE IF NOT EXISTS `__utilisateurs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `utilisateur` varchar(100) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `tmp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
