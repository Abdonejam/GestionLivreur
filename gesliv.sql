-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 04:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gesliv`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ID_Client` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telephone` varchar(255) NOT NULL,
  `Addresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID_Client`, `Nom`, `Prenom`, `Email`, `Telephone`, `Addresse`) VALUES
(1, 'Jean', 'Jacquelines', 'Yahoo@yahoo.fr', '0612345678', 'Rue Stromae Rue 455'),
(3, 'Ficsit', 'Inc', 'Stupendium@Inc.com', '06598716', 'Planet 45');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `ID_Commande` int(11) NOT NULL,
  `Prix` varchar(255) NOT NULL,
  `Statut` varchar(255) NOT NULL,
  `Date_Commande` varchar(255) NOT NULL,
  `Addresse_Livraison` varchar(255) NOT NULL,
  `Details_Commande` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`ID_Commande`, `Prix`, `Statut`, `Date_Commande`, `Addresse_Livraison`, `Details_Commande`) VALUES
(2, '61dh', 'En Preparation', '09/11/2001', 'Rue Stromae Rue Paris 15B', '1x Frite2x Cheese'),
(3, '58dh', 'Livree', '07/85/1777', 'Rue Test 2b', '1x Entite Test');

-- --------------------------------------------------------

--
-- Table structure for table `livreur`
--

CREATE TABLE `livreur` (
  `ID_Liv` int(11) NOT NULL,
  `Nom_Liv` varchar(255) NOT NULL,
  `Prenom_Liv` varchar(255) NOT NULL,
  `Telephone` varchar(255) NOT NULL,
  `Matricule` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livreur`
--

INSERT INTO `livreur` (`ID_Liv`, `Nom_Liv`, `Prenom_Liv`, `Telephone`, `Matricule`) VALUES
(1, 'Karim', 'Doukanna', '0612345678', 'K57GE5'),
(3, 'CHAABI', 'Youssef', '0658595726', 'A25B47'),
(5, 'Hossam', 'Morabiti', '05689789', 'NMF454'),
(6, 'MBappe', 'Kudor', '0666666', 'A25B47'),
(8, 'Ankara', 'Messi', '000000', 'GOAL848');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `ID_Restaurant` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Addresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`ID_Restaurant`, `Nom`, `Addresse`) VALUES
(1, 'Hatanaka', 'Rue Kasbah'),
(2, 'Caravigio', 'Boulevard'),
(3, 'Enzo', 'Rue Batouta 58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_Client`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`ID_Commande`);

--
-- Indexes for table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`ID_Liv`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`ID_Restaurant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ID_Client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `ID_Commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `livreur`
--
ALTER TABLE `livreur`
  MODIFY `ID_Liv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `ID_Restaurant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
