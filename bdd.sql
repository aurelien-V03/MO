
--
-- Base de données : `mo`
--

CREATE DATABASE IF NOT EXISTS mo;
USE mo;

-- --------------------------------------------------------

--
-- Structure de la table `devise`
--

DROP TABLE IF EXISTS `devise`;
CREATE TABLE IF NOT EXISTS `devise` (
  `id` int(11) NOT NULL,
  `devise_type` varchar(10) NOT NULL,
  `to_euros` float NOT NULL,
  `to_dollars` float NOT NULL,
  `to_yen` float NOT NULL,
  `to_sterling` float NOT NULL,
  `to_aust_dollars` float NOT NULL,
  `to_can_dollar` float NOT NULL,
  `to_franc_suisse` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `magasin`
--

DROP TABLE IF EXISTS `magasin`;
CREATE TABLE IF NOT EXISTS `magasin` (
  `ville` varchar(10) NOT NULL,
  `enseigne` enum('Darty','Leroy_merlin','Boulanger') NOT NULL,
  `region` enum('Nord_Ouest','Nord_Est','Sud_Ouest','Sud_Est','Region_Parisienne') NOT NULL,
  `emplacement` enum('Centre_ville','ZAC') NOT NULL,
  PRIMARY KEY (`ville`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `periode`
--

DROP TABLE IF EXISTS `periode`;
CREATE TABLE IF NOT EXISTS `periode` (
  `id` varchar(10) NOT NULL,
  `annee` int(11) NOT NULL,
  `mois` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` varchar(10) NOT NULL,
  `type` enum('FOUR','HIFI','MAGNETO','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `resultats`
--

DROP TABLE IF EXISTS `resultats`;
CREATE TABLE IF NOT EXISTS `resultats` (
  `id_produit` varchar(10) NOT NULL,
  `ville_magasin` varchar(10) NOT NULL,
  `id_periode` varchar(10) NOT NULL,
  `id_devise` int(11) NOT NULL,
  `objectif_vente` float NOT NULL,
  `realise_vente` float NOT NULL,
  `objectif_ca` float NOT NULL,
  `realise_ca` float NOT NULL,
  `objectif_mb` float NOT NULL,
  `realise_mb` int(11) NOT NULL,
  PRIMARY KEY (`id_produit`,`ville_magasin`,`id_periode`,`id_devise`),
  FOREIGN KEY (id_produit) REFERENCES Produit(id),
  FOREIGN KEY (ville_magasin) REFERENCES Magasin(ville),
  FOREIGN KEY (id_periode) REFERENCES Periode(id),
  FOREIGN KEY (id_devise) REFERENCES Devise(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `devise`(`id`, `devise_type`, `to_euros`, `to_dollars`, `to_yen`, `to_sterling`, `to_aust_dollars`, `to_can_dollar`, `to_franc_suisse`) VALUES (1,"euros",1,1.09,127.98,0.84,1.5,1.39,1.02);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (1,2021,1);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (2,2021,2);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (3,2021,3);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (4,2021,4);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (5,2021,5);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (6,2021,6);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (7,2021,7);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (8,2021,8);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (9,2021,9);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (10,2021,10);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (11,2021,11);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (12,2021,12);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (13,2022,1);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (14,2022,2);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (15,2022,3);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (16,2022,4);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (17,2022,5);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (18,2022,6);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (19,2022,7);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (20,2022,8);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (21,2022,9);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (22,2022,10);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (23,2022,11);
INSERT INTO `periode`(`id`, `annee`, `mois`) VALUES (24,2022,12);