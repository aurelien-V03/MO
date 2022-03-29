CREATE DATABASE IF NOT EXISTS mo;
USE mo;


DROP TABLE IF EXISTS `faits`;
DROP TABLE IF EXISTS `produit`;
DROP TABLE IF EXISTS `magasin`;


-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `idProduit` int NOT NULL,
  `produit` varchar(10) NOT NULL,
  PRIMARY KEY (`idProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `magasin`
--

CREATE TABLE IF NOT EXISTS `magasin` (
  `ville` varchar(10) NOT NULL,
  `enseigne` varchar(10) NOT NULL,
  `region` varchar(10) NOT NULL,
  `emplacement` varchar(10) NOT NULL,
  PRIMARY KEY (`ville`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `faits`
--

CREATE TABLE IF NOT EXISTS `faits` (
  `ville` varchar(10) NOT NULL,
  `categorie` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `ca` float,
  `mb` float,
  `v` float,
  PRIMARY KEY (`ville`,`categorie`,`date`,`idProduit`),
  FOREIGN KEY (ville) REFERENCES magasin(ville),
  FOREIGN KEY (idProduit) REFERENCES produit(idProduit)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
