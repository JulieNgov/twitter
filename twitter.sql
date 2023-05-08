-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2023 at 04:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter`
--

-- --------------------------------------------------------

--
-- Table structure for table `tweet`
--

CREATE TABLE `tweet` (
  `id` int NOT NULL,
  `user_id` int DEFAULT '1',
  `contenu` varchar(280) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tweet`
--

INSERT INTO `tweet` (`id`, `user_id`, `contenu`, `publish_date`) VALUES
(1, 1, 'hello', '2023-05-06 12:14:32'),
(3, 1, 'hi', '2023-05-06 14:38:41'),
(4, 1, 'La musique [...] est la vapeur de l\'art. Elle est à la poésie ce que la rêverie est à la pensée, ce que le fluide est au liquide, ce que l\'océan des nuées est à l\'océan des ondes.', '2023-05-06 14:49:24'),
(5, 1, ' Une vie de sacrifice est le sommet suprême de l\'art. Elle est pleine d\'une véritable joie.', '2023-05-06 15:08:13'),
(6, 1, 'ugh', '2023-05-06 17:10:20'),
(7, 1, 'ddrfdskjfngvscx', '2023-05-08 16:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int NOT NULL,
  `pseudo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `utilisateur` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `utilisateur`, `email`, `password`, `photo`) VALUES
(1, 'Sayu', 'sayuri', 'julie1480@hotmail.fr', 'kjqdsqs', 'https://fastly.picsum.photos/id/1064/200/200.jpg?hmac=xUH-ovzKEHg51S8vchfOZNAOcHB6b1TI_HzthmqvcWU'),
(9, 'Julie', 'juliengov', 'julie1480@hotmail.fr', 'hjgdfcfrg', 'https://fastly.picsum.photos/id/1064/200/200.jpg?hmac=xUH-ovzKEHg51S8vchfOZNAOcHB6b1TI_HzthmqvcWU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tweet`
--
ALTER TABLE `tweet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
