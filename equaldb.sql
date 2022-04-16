-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 09:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `equaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`ID`, `name`) VALUES
(1, 'aktivitet-e.mp4'),
(2, 'akullore.mp4'),
(3, 'anije.mp4'),
(4, 'banane-ja.mp4'),
(5, 'fletore.mp4'),
(6, 'forma e dores.mp4'),
(7, 'forma e dores.mp4'),
(8, 'Sandra dhe rosa e eger.mp4'),
(9, 'Gezuar Krishtlindjet.mp4'),
(10, 'cizme.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `mbiemri` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `mbiemri`, `email`, `password`) VALUES
(1, 'klinti', 'xhebrahimi', 'klinti.xhebrahimi@gmail.com', '12345\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(2, 'alan', 'Smith', 'alan1@gmail.com', '11112222\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(3, 'john', 'doe', 'johndoe1@gmail.com', 'johndoe1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(4, 'ruben', 'neves', 'ruben1@gmail.com', 'ruben1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(5, 'Allison', 'Bell', 'allison55@gmail.com', 'allison12345\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(6, 'Dylan', 'Bell', 'd.bell@gmail.com', 'dylan12345\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(7, 'Julia', 'Roberts', 'julia555@gmail.com', 'julia555\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(8, 'joanne', 'bond', 'joanne01@hotmail.com', 'joanne12345\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(9, 'neil', 'clark', 'neil.clark@yahoo.com', 'neil12345\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(10, 'anna', 'brown', 'annabrown1@gmail.com', 'anna12345\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(11, 'Arnold', 'Blake', 'arnold1@yahoo.com', '$2y$10$m6kyVXn5p4tXi20MpBvy8uQPLUj1LUMv8a7kEPJ/W9j2ztY6qA7ki'),
(12, 'matt', 'johnson', 'matt1@hotmail.com', '$2y$10$yUmtizvIFztFA9liLMBxj.kRWVg8dGlrBrjkhB1nsXhYiYxRzRYcK'),
(13, 'justin', 'clark', 'justin001@gmail.com', '$2y$10$8QJP.DcdU4ai40qKpaCe6OX/JcqzSVVdIvUlb5UDVoje8/4KofmGC'),
(14, 'keith', 'nodway', 'keith_1@gmail.com', '$2y$10$XsqFWCVsgGpDyAt.Pn4fuepaR74b39RQ3geUHutyx6nQjbUWpC2Pe'),
(15, 'joe', 'rasel', 'joe2@gmail.com', '$2y$10$u3urMiyKcFs/uwGrEffEM.6kXZB5XnaUDeiCrdG1S2u6Bowf9bfau'),
(16, 'Arsen', 'Nali', 'arsen2@gmail.com', '$2y$10$UlSk1BlG0Z87ofrqX9GanOn2BrGgTidCNaubWR7UbIAZNFrQCgFtC'),
(17, 'Liver', 'Pool', 'liver2@gmail.com', 'liver12345'),
(18, '', '', '', ''),
(19, 'Van', 'Persie', 'van2@gmail.com', 'van12345'),
(20, 'Renis', 'harxhi', 'renis11@gmail.com', 'renis12345'),
(21, 'Norm', 'Sean', 'norm2@gmail.com', 'norm12345'),
(22, 'Norm', 'Sean', 'norm1@gmail.com', 'norm12345'),
(23, 'Ella', 'Frank', 'ella2@gmail.com', 'ella12345'),
(24, 'Diana', 'Jack', 'dianna2@gmail.com', 'diann12345'),
(25, 'Amanda', 'Davies', 'armanda2@gmail.com', 'armanda12345'),
(26, 'Mateo', 'Kovacic', 'mateo2@gmail.com', 'mateo12345'),
(27, 'Gill', 'Ferguson', 'gill1@gmail.com', 'gill12345'),
(28, 'Alteo', 'James', 'alteo2@gmail.com', 'alteo12345'),
(29, 'klinti', 'xhebrahimi', 'klinti.xhebrahim@gmail.com', '12345'),
(30, 'ernes', 'muci', 'ernes2@gmail.com', 'ernes12345'),
(31, 'idriz', 'batha', 'idrizbatha@gmail.com', 'idi12345'),
(32, 'arlind', 'majko', 'arlind5@gmail.com', 'arlind12345'),
(33, 'justin', 'herbert', 'justin555@gmail.com', 'justin12345'),
(34, 'jenny', 'smart', 'jenny01@gmail.com', 'jenny12345'),
(35, 'klest', 'harton', 'klest7@gmail.com', 'klest12345'),
(36, 'username', 'lastname', 'sample@gmail.com', 'username12345'),
(37, 'Boris', 'Hill', 'boris07@gmail.com', 'boris12345'),
(38, 'Grant', 'hodges', 'grant.hodges@gmail.com', 'grant12345'),
(39, 'grant', 'hodges', 'grant.hldges@gmail.com', 'grant12345'),
(40, 'asfsaf', 'asasfsf', 'asfsffaf@gmail.com', '12345'),
(41, 'asf', 'asfsf', 'asfsf@gmail.com', 'asfsfa'),
(42, 'aas', 'sssss', 'as@gmail.com', 'as12345'),
(43, 'bbccbcb', 'axaxaxa', 'axaxa@gmail.com', '12345'),
(44, 'mmmmnnm', 'lljljljjljl', 'mmms@gmail.com', '1111'),
(45, 'aaaaa', 'nbbbbb', 'aaabbb@gmail.com', 'aaaa'),
(46, 'ffffffss', 'ssssffff', 'fff@gmail.com', 'qwerty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
