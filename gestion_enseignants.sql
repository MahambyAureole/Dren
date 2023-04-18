-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 10 août 2022 à 17:09
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_enseignants`
--

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `afficheClasse`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `afficheClasse` (
`matricule` varchar(10)
,`nom` varchar(250)
,`prenom` varchar(250)
,`fonction` varchar(100)
,`niveau` varchar(15)
,`matiere` varchar(50)
,`heure` int(2)
,`cin` varchar(12)
);

-- --------------------------------------------------------

--
-- Structure de la table `classe_tenue`
--

CREATE TABLE `classe_tenue` (
  `niveau` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe_tenue`
--

INSERT INTO `classe_tenue` (`niveau`) VALUES
('1ère A ou L'),
('1ère C'),
('1ère D'),
('1ère S'),
('2nde'),
('Tle A'),
('Tle C'),
('Tle D'),
('Tle S');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL,
  `matricule_ens` varchar(10) DEFAULT NULL,
  `nom_ens` varchar(250) NOT NULL,
  `prenom_ens` varchar(250) NOT NULL,
  `sexe_ens` varchar(10) NOT NULL,
  `cin_ens` varchar(12) NOT NULL,
  `statut_ens` varchar(100) NOT NULL,
  `fonction_ens` varchar(100) NOT NULL,
  `corps_fonctionnaire` varchar(10) DEFAULT NULL,
  `grade_ens` varchar(10) DEFAULT NULL,
  `diplome_ac_plus_elevee` varchar(20) NOT NULL,
  `diplome_ped_pro_plus_elevee` varchar(50) DEFAULT NULL,
  `domaine_formation_ens` varchar(30) DEFAULT NULL,
  `duree_formation_ens` varchar(20) DEFAULT NULL,
  `organisme_formation_ens` varchar(10) DEFAULT NULL,
  `specialite_ens` varchar(50) DEFAULT NULL,
  `num_phone_ens` varchar(10) NOT NULL,
  `code_etab` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `matricule_ens`, `nom_ens`, `prenom_ens`, `sexe_ens`, `cin_ens`, `statut_ens`, `fonction_ens`, `corps_fonctionnaire`, `grade_ens`, `diplome_ac_plus_elevee`, `diplome_ped_pro_plus_elevee`, `domaine_formation_ens`, `duree_formation_ens`, `organisme_formation_ens`, `specialite_ens`, `num_phone_ens`, `code_etab`) VALUES
(1, '257183', 'RAVAO', 'Georgine', 'FEMININ', '201992039241', 'FONCTIONNAIRE', 'PROVISEUR', 'A88U', 'EX4E', 'MAITRISE', 'CAE', '', '', '', '', '0343886752', '301010040'),
(2, '291081', 'RALAINANDRASANA', 'Faralahikoa Deraindraibe', 'MASCULIN', '211011005013', 'FONCTIONNAIRE', 'PROVISEUR', 'A88U', '1C3E', 'LICENCE', 'CAPEN', '', '', '', 'MATHEMATIQUES', '0341234556', '301010043'),
(3, '292541', 'RAHAJANDRAINY', 'Fernand Auguste', 'MASCULIN', '201031001750', 'FONCTIONNAIRE', 'PROVISEUR', 'A88U', '1C1E', 'DOCTORAT', 'CAPEN', '', '', '', '', '0344655914', '301010031'),
(4, '328647', 'SOANARIMALALA', 'Bakoly', 'FEMININ', '220252001185', 'FONCTIONNAIRE', 'PROVISEUR', 'A88U', '2C2E', 'BACC', 'CAPEN', 'FGB', 'ENS', '10 MOIS', 'PHYSIQUES-CHIMIE', '0347124214', '302010014'),
(5, '411660', 'RANDRIANARIVONY', 'Miora Eva', 'FEMININ', '103152009145', 'CONTRACTUEL PAYE PAR L ETAT', 'PROVISEUR', 'A18A', '2C1E', 'DEA', '', '', '', '', 'MATHEMATIQUES', '0343108819', '302040011'),
(8, '336786', 'DERANDRAY', 'Rabenjaravahatra', 'MASCULIN', '220351005385', 'CONTRACTUEL PAYE PAR L ETAT', 'PROVISEUR', 'A88U', '2C3E', 'BACC', 'CAPEN', '', '', '', 'PRODUCTION', '0346050025', '302430011'),
(9, '301053', 'ANDRIANIRINA', 'Dieu Donné', 'MASCULIN', '205991012154', 'FONCTIONNAIRE', 'PROVISEUR', 'J06B', '1C3E', 'MAITRISE', '', '', '', '', 'SVT', '0342144934', '303130016'),
(10, '', 'RAVAONASOLO', 'Elodie', 'FEMININ', '204012008677', 'FRAM NON SUBVENTIONNE', 'PROVISEUR', '', '', 'LICENCE', '', '', '', '', 'HISTO-GEO', '0348904254', '301010031'),
(11, '', 'RAZANAJATOVO', 'Delphin', 'MASCULIN', '201011013926', 'FRAM NON SUBVENTIONNE', 'PROVISEUR', '', '', 'LICENCE', '', '', '', '', 'ANGLAIS', '0347695085', '302380006');

-- --------------------------------------------------------

--
-- Structure de la table `enseigner`
--

CREATE TABLE `enseigner` (
  `niveau` varchar(15) NOT NULL,
  `id` int(11) NOT NULL,
  `matiere_tenu` varchar(50) NOT NULL,
  `heure_tenu_semaine` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseigner`
--

INSERT INTO `enseigner` (`niveau`, `id`, `matiere_tenu`, `heure_tenu_semaine`) VALUES
('2nde', 10, 'HISTOGEO', 5),
('1ère D', 10, 'HISTOGEO', 5),
('2nde', 11, 'ANGLAIS', 10),
('1ère A ou L', 11, 'ANGLAIS', 8),
('Tle A', 11, 'ANGLAIS', 4);

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `code_etab` varchar(9) NOT NULL,
  `dren` varchar(15) NOT NULL,
  `cisco` varchar(100) NOT NULL,
  `commune` varchar(100) NOT NULL,
  `zap` varchar(100) NOT NULL,
  `fokontany` varchar(100) NOT NULL,
  `nom_etab` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etablissement`
--

INSERT INTO `etablissement` (`code_etab`, `dren`, `cisco`, `commune`, `zap`, `fokontany`, `nom_etab`) VALUES
('301010031', 'HAUTE MATSIATRA', 'FIANARANTSOA', 'CU FIANARANTSOA', 'VILLE HAUTE', 'ISAHA', 'LYCEE RAHERIVELO RAMAMONJY'),
('301010040', 'HAUTE MATSIATRA', 'FIANARANTSOA', 'CU FIANARANTSOA', 'ANDRAINJATO', 'BERAVINA', 'SEKOLY MIARAMILAM-PIRENENA'),
('301010043', 'HAUTE MATSIATRA', 'FIANARANTSOA', 'CU FIANARANTSOA', 'LALAZANA', 'MAHAZENGY', 'LYCEE MAHAZENGY'),
('302010014', 'HAUTE MATSIATRA', 'LALANGINA', 'ALAKAMISY', 'ALAKAMISY', 'VATOFOTSY', 'LYCEE ALAKAMISY AMBOHIMAHA'),
('302040011', 'HAUTE MATSIATRA', 'LALANGINA', 'AMBALAKELY', 'AMBALAKELY', 'AMBALAKELY', 'LYCEE AMBALAKELY'),
('302380006', 'HAUTE MATSIATRA', 'LALANGINA', 'ANDRAINJATO EST', 'ANDRAINJATO EST', 'TAMBOHONIENJANINA', 'LYCEE ANDRAINJATO-EST'),
('302410008', 'HAUTE MATSIATRA', 'LALANGINA', 'VINANINORO ANDREFANA', 'VINANINORO ANDREFANA', 'AMONTANA', 'LYCEE JEAN RALAIMONGO'),
('302410011', 'HAUTE MATSIATRA', 'LALANGINA', 'IVOAMBA', 'IVOAMBA', 'IVOAMBA', 'LYCEE COMMUNAUTAIRE IVOAMBA'),
('302430011', 'HAUTE MATSIATRA', 'LALANGINA', 'SAHAMBAVY', 'SAHAMBAVY', 'ANTOTOHAZO', 'LYCEE LALANGINA EST'),
('302450008', 'HAUTE MATSIATRA', 'LALANGINA', 'IALANANINDRO', 'IALANANINDRO', 'SENDRINALINA', 'LYCEE COMMUNAUTAIRE IALANANINDRO'),
('303010022', 'HAUTE MATSIATRA', 'AMBALAVAO', 'AMBALAVAO', 'AMBALAVAO', 'AMBALALOVA NORD', 'LYCEE JOEL SYLVAIN'),
('303020016', 'HAUTE MATSIATRA', 'AMBALAVAO', 'AMBINANINDOVOKA', 'AMBINANINDOVOKA', 'MIARAMANDROSO', 'LYCEE COMMUNAUTAIRE AMBINANINDOVOKA'),
('303030025', 'HAUTE MATSIATRA', 'AMBALAVAO', 'AMBINANIROA', 'AMBINANIROA', 'AMBINANIROA', 'LYCEE AMBINANIROA'),
('303040025', 'HAUTE MATSIATRA', 'AMBALAVAO', 'AMBOHIMAHAMASINA', 'AMBOHIMAHAMASINA', 'AMBOHIMAHAMSINA', 'LYCEE MANANJARA AMBOHIMAHAMASINA'),
('303050013', 'HAUTE MATSIATRA', 'AMBALAVAO', 'AMBOHIMANDROSO', 'AMBOHIMANDROSO', 'VOHITRARIVO OUEST', 'LYCEE MATAVY'),
('303060008', 'HAUTE MATSIATRA', 'AMBALAVAO', 'ANDRAINJATO', 'ANDRAINJATO', 'MAHATSINJONY', 'LYCEE ANDRAINJATO KIRIRIOKA'),
('303070022', 'HAUTE MATSIATRA', 'AMBALAVAO', 'ANJOMA', 'ANJOMA', 'AMBOHIMIADANA', 'LYCEE ANJOMA'),
('303080016', 'HAUTE MATSIATRA', 'AMBALAVAO', 'ANKARAMENA', 'ANKARAMENA', 'ANKARAMENA', 'LYCEE ANKARAMENA'),
('303090018', 'HAUTE MATSIATRA', 'AMBALAVAO', 'BESOA', 'BESOA', 'BESOA', 'LYCEE COMMUNAUTAIRE BESOA'),
('303130016', 'HAUTE MATSIATRA', 'AMBALAVAO', 'MAHAZONY', 'MAHAZONY', 'ALATSINAINY', 'LYCEE MAHAZONY'),
('303160028', 'HAUTE MATSIATRA', 'AMBALAVAO', 'SENDRISOA', 'SENDRISOA', 'BEANANA CENTRE', 'SENDRISOA'),
('303170058', 'HAUTE MATSIATRA', 'AMBALAVAO', 'VOHITSAOKA', 'VOHITSAOKA', 'SOAMIARADIA', 'LYCEE COMMUNAUTAIRE VOHITSAOKA'),
('305010018', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'AMBALAKINDRESY', 'AMBALAKINDRESY', 'ANTSIHO', 'LYCEE AMBALAKINDRESY'),
('305020008', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'AMBATASOA', 'AMBATOSOA', 'SAHANIMIRA', 'LYCEE AMBATOSOA'),
('305030010', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'AMBOHIMASOA', 'AMBOHIMAHASOA', 'ANDONDONA', 'LYCEE RANDRIANASOLO GERVAIS PROTAIS'),
('305060012', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'ANKAFINA', 'ANKAFINA', 'AMBOHIMANORO', 'LYCEE ANKAFINA TSARAFIDY'),
('305080013', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'BEFETA', 'BEFETA', 'TSIMANAVAKAVAKA', 'LYCEE BEFETA'),
('305090010', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'CAMP ROBIN', 'CAMP ROBIN', 'CAMP ROBIN', 'LYCEE CAMP ROBIN'),
('305140013', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'MORAFENO', 'MORAFENO', 'TSARAFIDIFOTOTRA I', 'LYCEE MORAFENO'),
('305150015', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'SAHAVE', 'SAHAVE', 'AMOBIBOAHANGY', 'LYCEE SAHAVE AMBOHIMAHASOA'),
('305170020', 'HAUTE MATSIATRA', 'AMBOHIMAHASOA', 'VOHIPOSA', 'VOHIPOSA', 'VOHIPOSA', 'LYCEE VOHIPOSA'),
('314030027', 'HAUTE MATSIATRA', 'IKALAMAVONY', 'IKALAMAVONY', 'IKALAMAVONY', 'AMBODIVOHITRA', 'LYCEE IKALAMAVONY'),
('314040024', 'HAUTE MATSIATRA', 'IKALAMAVONY', 'MANGIDY', 'MANGIDY', 'MANGIDY', 'LYCEE MANGIDY'),
('314060027', 'HAUTE MATSIATRA', 'IKALAMAVONY', 'SOLILA', 'SOLILA', 'SOLILA', 'LYCEE COMMUNAUTAIRE SOLILA'),
('325030032', 'HAUTE MATSIATRA', 'ISANDRA', 'ANDOHARANOMAITSO', 'ANDOHARANOMAITSO', 'AMBOHITRASOAVINA', 'LYCEE ANDOHARANOMAITSO'),
('325040009', 'HAUTE MATSIATRA', 'ISANDRA', 'ANJOMA ITSARA', 'ANJOMA ITSARA', 'BENANGANA', 'LYCEE COMMUNAUTAIRE ANJOMA-ITSARA'),
('325060023', 'HAUTE MATSIATRA', 'ISANDRA', 'FANJAKANA', 'FANJAKANA', 'FANJAKANA', 'LYCEE COMMUNAUTAIRE FANJAKANA'),
('325070009', 'HAUTE MATSIATRA', 'ISANDRA', 'IAVINOMBY VOHIBOLA', 'IAVINOMBY VOHIBOLA', 'MANANTENASOAHANDROSO', 'LYCEE COMMUNAUTAIRE IAVINOMBY-VOHIBOLA'),
('325080012', 'HAUTE MATSIATRA', 'ISANDRA', 'ISORANA', 'ISORANA', 'ISORANA', 'LYCEE RANDRIAMITSIRY'),
('325100010', 'HAUTE MATSIATRA', 'ISANDRA', 'NASANDRATRONY', 'NASANDRATRONY', 'NASANDRATRONY', 'LYCEE NASANDRATRONY'),
('325110010', 'HAUTE MATSIATRA', 'ISANDRA', 'SOATANANA', 'SOATANANA', 'AMBALATSILEO', 'LYCEE COMMUNAUTAIRE SOATANANA'),
('326010017', 'HAUTE MATSIATRA', 'VOHIBATO', 'ALAKAMISY ITENINA', 'ALAKAMISY ITENINA', 'ALAKAMISY ITENINA', 'LYCEE ALAKAMISY-ITENINA'),
('326020022', 'HAUTE MATSIATRA', 'VOHIBATO', 'ANDRANOMIDITRA', 'ANDRANOMIDITRA', 'MANANTENASOA I', 'LYCEE ANDRANOMIDITRA'),
('326030027', 'HAUTE MATSIATRA', 'VOHIBATO', 'ANDRANOVORIVATO', 'ANDRANOVORIVATO', 'AMBATOSOA I', 'LYCEE ANDRANOVORIVATO'),
('326060018', 'HAUTE MATSIATRA', 'VOHIBATO', 'MAHADITRA', 'MAHADITRA', 'ASABOTSY MORALINA', 'LYCEE MAHADITRA'),
('326070020', 'HAUTE MATSIATRA', 'VOHIBATO', 'MAHASOABE', 'MAHASOABE', 'MANAMISOA', 'LYCEE MAHASOABE'),
('326100018', 'HAUTE MATSIATRA', 'VOHIBATO', 'TALATA AMPANO', 'TALATA AMPANO', 'TALATA CENTRALE', 'LYCEE TALATA AMPANO'),
('326110024', 'HAUTE MATSIATRA', 'VOHIBATO', 'VINANITELO', 'VINANITELO', 'VINANITELO OUEST', 'LYCEE COMMUNAUTAIRE VINANITELO'),
('326130034', 'HAUTE MATSIATRA', 'VOHIBATO', 'VOHIMARINA', 'VOHIMARINA', 'SOAROHONENANA', 'LYCEE COMMUNAUTAIRE VOHIMARINA'),
('326140016', 'HAUTE MATSIATRA', 'VOHIBATO', 'VOHITRAFENO', 'VOHITRAFENO', 'VOHITRAFENO CENTRE', 'LYCEE COMMUNAUTAIRE VOHITRAFENO'),
('326150001', 'HAUTE MATSIATRA', 'VOHIBATO', 'ANJANOMANANA TSIMIAVAKA', 'ANJANOMANANA TSIMIAVAKA', 'ANDASY ANJANOMANANA', 'LYCEE COMMUNAUTAIRE ANJANOMANANA');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `infoEnseignant`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `infoEnseignant` (
`matricule_ens` varchar(10)
,`nom_ens` varchar(250)
,`prenom_ens` varchar(250)
,`sexe_ens` varchar(10)
,`cin_ens` varchar(12)
,`statut_ens` varchar(100)
,`fonction_ens` varchar(100)
,`corps_fonctionnaire` varchar(10)
,`grade_ens` varchar(10)
,`diplome_ac_plus_elevee` varchar(20)
,`diplome_ped_pro_plus_elevee` varchar(50)
,`domaine_formation_ens` varchar(30)
,`duree_formation_ens` varchar(20)
,`organisme_formation_ens` varchar(10)
,`specialite_ens` varchar(50)
,`num_phone_ens` varchar(10)
,`nom_etab` varchar(200)
);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `utilisateur` varchar(100) NOT NULL,
  `motPasse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`utilisateur`, `motPasse`) VALUES
('Auréole Rm', '123456');

-- --------------------------------------------------------

--
-- Structure de la vue `afficheClasse`
--
DROP TABLE IF EXISTS `afficheClasse`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `afficheClasse`  AS SELECT `enseignant`.`matricule_ens` AS `matricule`, `enseignant`.`nom_ens` AS `nom`, `enseignant`.`prenom_ens` AS `prenom`, `enseignant`.`fonction_ens` AS `fonction`, `enseigner`.`niveau` AS `niveau`, `enseigner`.`matiere_tenu` AS `matiere`, `enseigner`.`heure_tenu_semaine` AS `heure`, `enseignant`.`cin_ens` AS `cin` FROM (`enseignant` join `enseigner` on(`enseignant`.`id` = `enseigner`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure de la vue `infoEnseignant`
--
DROP TABLE IF EXISTS `infoEnseignant`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `infoEnseignant`  AS SELECT `enseignant`.`matricule_ens` AS `matricule_ens`, `enseignant`.`nom_ens` AS `nom_ens`, `enseignant`.`prenom_ens` AS `prenom_ens`, `enseignant`.`sexe_ens` AS `sexe_ens`, `enseignant`.`cin_ens` AS `cin_ens`, `enseignant`.`statut_ens` AS `statut_ens`, `enseignant`.`fonction_ens` AS `fonction_ens`, `enseignant`.`corps_fonctionnaire` AS `corps_fonctionnaire`, `enseignant`.`grade_ens` AS `grade_ens`, `enseignant`.`diplome_ac_plus_elevee` AS `diplome_ac_plus_elevee`, `enseignant`.`diplome_ped_pro_plus_elevee` AS `diplome_ped_pro_plus_elevee`, `enseignant`.`domaine_formation_ens` AS `domaine_formation_ens`, `enseignant`.`duree_formation_ens` AS `duree_formation_ens`, `enseignant`.`organisme_formation_ens` AS `organisme_formation_ens`, `enseignant`.`specialite_ens` AS `specialite_ens`, `enseignant`.`num_phone_ens` AS `num_phone_ens`, `etablissement`.`nom_etab` AS `nom_etab` FROM (`enseignant` join `etablissement` on(`enseignant`.`code_etab` = `etablissement`.`code_etab`))  ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe_tenue`
--
ALTER TABLE `classe_tenue`
  ADD PRIMARY KEY (`niveau`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code_etab` (`code_etab`);

--
-- Index pour la table `enseigner`
--
ALTER TABLE `enseigner`
  ADD KEY `niveau` (`niveau`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`code_etab`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`code_etab`) REFERENCES `etablissement` (`code_etab`);

--
-- Contraintes pour la table `enseigner`
--
ALTER TABLE `enseigner`
  ADD CONSTRAINT `enseigner_ibfk_1` FOREIGN KEY (`niveau`) REFERENCES `classe_tenue` (`niveau`),
  ADD CONSTRAINT `enseigner_ibfk_2` FOREIGN KEY (`id`) REFERENCES `enseignant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
