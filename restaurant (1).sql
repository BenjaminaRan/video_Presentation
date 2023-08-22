-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 21 août 2023 à 14:27
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `caissier`
--

CREATE TABLE `caissier` (
  `id` int(11) NOT NULL,
  `Nom` varchar(52) NOT NULL,
  `Prenom` varchar(65) NOT NULL,
  `email` varchar(152) NOT NULL,
  `mot_de_passe` varchar(100) NOT NULL,
  `photo` varchar(125) NOT NULL,
  `phone` varchar(35) NOT NULL,
  `salaire` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caissier`
--

INSERT INTO `caissier` (`id`, `Nom`, `Prenom`, `email`, `mot_de_passe`, `photo`, `phone`, `salaire`) VALUES
(1, 'Raharimanana', 'Melanie', 'Melanie.m@gmail.com', '1234', 'melanie.jpg', '038 25 475 26', 450000),
(2, 'Ramiarinivo', 'Rebecca', 'Rebecca.m@gmail.com', '1122', 'rebecca.jpg', '034 52 878 59', 450000),
(3, 'Randriantsoa', 'kanto', 'kanto.k@gmail.com', '2214', 'kanto.jpg', '038 25 475 26', 450000),
(4, 'Ramiarinivo', 'jaojoby', 'jaojoby.j@gmail.com', '1234', 'jaojoby.jpg', '034 52 878 59', 450000);

-- --------------------------------------------------------

--
-- Structure de la table `chaise`
--

CREATE TABLE `chaise` (
  `id` int(11) NOT NULL,
  `nom` varchar(156) NOT NULL,
  `occupee` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chaise`
--

INSERT INTO `chaise` (`id`, `nom`, `occupee`) VALUES
(1, 'Table N°1', 0),
(2, 'Table N°2', 0),
(3, 'Table N°3', 0),
(4, 'Table N°4', 0),
(5, 'Table N°5', 0),
(6, 'Table N°6', 0),
(7, 'Table N°7', 0),
(8, 'Table N°8', 0);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `motDePasse` varchar(100) NOT NULL,
  `Adresse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `email`, `motDePasse`, `Adresse`) VALUES
(1, 'Randriantsoa', 'Erika', 'Erika.i@gmail.com', '0000', 'Mahamasina'),
(2, 'Rakotovao', 'Valeria', 'Vale.h@gmail.com', '1111', 'Fenoarivo'),
(10, 'Rabary', 'Ricardo', 'Ricardo.r@gmail.com', '1234', 'Miarinarivo'),
(11, 'Mihaja', 'Paulin', 'Mihaja.p@gmail.com', '3333', '67Ha'),
(13, 'Fameno', 'Nandrianina', 'Fameno@gmail.com', 'fameno', 'Ambohijanaka');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `id_client` int(10) NOT NULL,
  `id_produit` int(10) NOT NULL,
  `nom_produit` varchar(255) DEFAULT NULL,
  `nom_client` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `id_client`, `id_produit`, `nom_produit`, `nom_client`) VALUES
(18, 2, 6, 'Riz et chou', 'Rakotovao Valeria'),
(19, 1, 1, 'Pain spécial ', 'Randriantsoa Erika'),
(20, 1, 12, 'Jus ', 'Randriantsoa Erika');

-- --------------------------------------------------------

--
-- Structure de la table `lignecommande`
--

CREATE TABLE `lignecommande` (
  `id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_unitaire` decimal(10,2) NOT NULL,
  `montant_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

CREATE TABLE `livreur` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(152) NOT NULL,
  `Prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(100) NOT NULL,
  `Photo` varchar(25) NOT NULL,
  `Salaire` int(120) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livreur`
--

INSERT INTO `livreur` (`Id`, `Nom`, `Prenom`, `email`, `mot_de_passe`, `Photo`, `Salaire`, `phone`) VALUES
(1, 'Rakotomanana', 'Narindra', 'Narindra.R@gmail.com', '1234', 'borba.jpg', 15000, '038 25 458 56'),
(2, 'Mitsinjo', 'Ny aina', 'Mitsinjo@gmail.com', 'mitsinjo', 'image.jpg', 15000, '034 52 565 25');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `image` varchar(152) NOT NULL,
  `description` text DEFAULT NULL,
  `prix` int(11) NOT NULL,
  `quantite` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `image`, `description`, `prix`, `quantite`, `date`) VALUES
(1, 'Pain spécial ', 'borba.jpg', 'Pain avec des mélanges sans précédent...', 4000, 5, '2023-07-18'),
(2, 'Crêpe', 'saucice.jpg', 'Crêpe avec crapaud et mayonnaises... ', 6000, 5, '2023-07-18'),
(3, 'Embourgueurs', 'sauce.jpg', 'Embourgueur avec Fromage et Mortadelle...', 7000, 3, '2023-07-20'),
(4, 'Jus', 'jus_orange.jpg', 'Cocktail de citron et fraise bien glacée...', 3000, 2, '2023-07-20'),
(5, 'Gateau', 'Gateau.jpg', 'Gateau avec chocolat, resin, fraise, crème... ', 60000, 4, '2023-07-11'),
(6, 'Riz et chou', 'vary.jpg', 'Riz avec des viandes grasses...+ lassie..', 10000, 3, '2023-07-11'),
(12, 'Jus ', 'Glace.jpg', 'Jus glacé riche en vitamine et calcium', 3000, 0, '2023-08-21'),
(16, 'Jus ', 'Glace.jpg', 'Jus glacé riche en vitamine et calcium', 3000, 0, '2023-08-21'),
(17, 'Jus ', 'Glace.jpg', 'Jus glacé riche en vitamine et calcium', 3000, 0, '2023-08-21'),
(18, 'Jus ', 'Glace.jpg', 'Jus glacé riche en vitamine et calcium', 3000, 0, '2023-08-21'),
(19, 'Riz et chou', 'vary.jpg', 'Riz avec des viandes grasses...+ lassie..', 10000, 0, '2023-07-11'),
(20, 'Riz et chou', 'vary.jpg', 'Riz avec des viandes grasses...+ lassie..', 10000, 0, '2023-07-11'),
(21, 'Riz et chou', 'vary.jpg', 'Riz avec des viandes grasses...+ lassie..', 10000, 0, '2023-07-11');

-- --------------------------------------------------------

--
-- Structure de la table `receptionniste`
--

CREATE TABLE `receptionniste` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(150) NOT NULL,
  `Prenom` varchar(150) NOT NULL,
  `photo` varchar(152) NOT NULL,
  `Salaire` int(150) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `receptionniste`
--

INSERT INTO `receptionniste` (`Id`, `Nom`, `Prenom`, `photo`, `Salaire`, `phone`) VALUES
(1, 'Rakotomanana', 'Nafefy', 'tsin.jpg', 10000, '032 25 125 25'),
(2, 'Mananarivo', 'Melanie', 'caissier.jpg', 10000, '034 65 254 25');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  `date_reservation` date NOT NULL,
  `heure_reservation` time NOT NULL,
  `nombre_personnes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `produit_id` int(11) NOT NULL,
  `quantite_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `mot_de_passe`) VALUES
(1, 'Randriantsoa', 'benjamina', 'benjamina@gmail.com', '1234'),
(2, 'Mendrika', 'Fitia', 'fitia@gmail.com', 'mimi'),
(3, 'Manjato', 'Sitraka', 'Sitraka@gmail.com', '1212');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `id` int(150) NOT NULL,
  `argent` int(152) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`id`, `argent`, `date`) VALUES
(7, 7000, '2023-08-07'),
(8, 5000, '2023-08-08'),
(9, 60000, '2023-08-09'),
(10, 3000, '2023-08-11'),
(11, 10000, '2023-08-14'),
(12, 3000, '2023-08-15'),
(13, 15000, '2023-08-16'),
(14, 15000, '2023-08-16'),
(15, 15000, '2023-08-16'),
(16, 6000, '2023-08-19'),
(17, 60000, '2023-08-19'),
(18, 7000, '2023-08-19'),
(19, 3000, '2023-08-19'),
(20, 3000, '2023-08-19'),
(21, 4000, '2023-08-19'),
(22, 60000, '2023-08-19'),
(23, 7000, '2023-08-19'),
(24, 7000, '2023-08-19'),
(25, 60000, '2023-08-19'),
(26, 6000, '2023-08-20'),
(27, 7000, '2023-08-21');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `caissier`
--
ALTER TABLE `caissier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chaise`
--
ALTER TABLE `chaise`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_nom_produit` (`id_produit`);

--
-- Index pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_id` (`commande_id`),
  ADD KEY `produit_id` (`produit_id`);

--
-- Index pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `receptionniste`
--
ALTER TABLE `receptionniste`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`produit_id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `caissier`
--
ALTER TABLE `caissier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `chaise`
--
ALTER TABLE `chaise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livreur`
--
ALTER TABLE `livreur`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `receptionniste`
--
ALTER TABLE `receptionniste`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `vente`
--
ALTER TABLE `vente`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_nom_produit` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  ADD CONSTRAINT `lignecommande_ibfk_2` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
