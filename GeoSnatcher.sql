-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 02:40 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seon`
--

-- --------------------------------------------------------

--
-- Table structure for table `database`
--

CREATE TABLE `database` (
  `Id` varchar(125) NOT NULL,
  `Name` varchar(125) NOT NULL,
  `Location` varchar(125) NOT NULL,
  `IP` varchar(278) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `database`
--

INSERT INTO `database` (`Id`, `Name`, `Location`, `IP`, `Email`) VALUES
('e8f6d364-c3ed-478d-bace-dd8217f0065e', 'Agon', 'Lithuania', '17.212.22.2', 'agon@gmail.com'),
('d99b8b1b-7852-443d-87e0-04271108b232', 'Arron', 'Hungary', '208.94.116.18', 'arronpirku@gmail.com'),
('7cb7f07f-c7f5-4926-a6b9-eada5067876b', 'Rion', 'Somalia', '69.220.244.184', 'rion@gmail.com'),
('76996347-1200-47df-b50b-856a655ce238', 'Amar', 'France', '79.243.76.139', 'amar@gmail.com'),
('bfcd8489-ed83-40e4-8272-ed90a3a1544c', 'Artin', 'Kosovo', '8.61.225.13', 'artin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ip_usage`
--

CREATE TABLE `ip_usage` (
  `Id` varchar(255) NOT NULL,
  `IP` varchar(255) NOT NULL,
  `Usage` int(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Time_Of_Usage` varchar(255) NOT NULL,
  `Postalcode` int(255) NOT NULL,
  `Country_Code` varchar(255) NOT NULL,
  `Telephone_Number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ip_usage`
--

INSERT INTO `ip_usage` (`Id`, `IP`, `Usage`, `Location`, `Time_Of_Usage`, `Postalcode`, `Country_Code`, `Telephone_Number`) VALUES
('76996347-1200-47df-b50b-856a655ce238', '	\r\n79.243.76.139', 898, 'France', '17:05', 232344, '+33', 124343242),
('	\r\ne8f6d364-c3ed-478d-bace-dd8217f0065e', '17.212.22.2', 125, 'Lithuania', '12:50', 60344, '+370', 66108489),
('d99b8b1b-7852-443d-87e0-04271108b232', '208.94.116.18', 268, 'Hungary', '14:35', 4032, '+36', 306708081),
('\r\n7cb7f07f-c7f5-4926-a6b9-eada5067876b', '69.220.244.184', 693, 'Somalia', '18:00', 3000, '+252 ', 903235849),
('bfcd8489-ed83-40e4-8272-ed90a3a1544c', '8.61.225.13', 113, 'Kosovo', '13:56', 20000, '+383', 49251119);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Transaction` varchar(255) NOT NULL,
  `Old_balance` int(255) NOT NULL,
  `New_balance` int(255) NOT NULL,
  `Potential_fraud` tinyint(1) NOT NULL,
  `Id` varchar(255) NOT NULL,
  `IP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Transaction`, `Old_balance`, `New_balance`, `Potential_fraud`, `Id`, `IP`) VALUES
('fcbdqelbxfgrlbgtxtrxfcvvsclypwbj', 30000, 5000, 0, '76996347-1200-47df-b50b-856a655ce238', '79.243.76.139'),
('gsvjcbsbtvzoniqeprtfcegchiwldpvl', 100000000, 500000, 1, '7cb7f07f-c7f5-4926-a6b9-eada5067876b', '69.220.244.184'),
('hofatmstmpxucngoihsyzwkenwmgaovf\r\n', 200000, 0, 1, 'bfcd8489-ed83-40e4-8272-ed90a3a1544c', '8.61.225.13'),
('muoeyscwevnzmgrljvetlhhdrwlpknry', 124, 120, 0, 'd99b8b1b-7852-443d-87e0-04271108b232', '208.94.116.18'),
('qjrdsrsnbelrouicbffcilegwavrqhed', 2567, 2000, 0, 'e8f6d364-c3ed-478d-bace-dd8217f0065e', '17.212.22.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `database`
--
ALTER TABLE `database`
  ADD PRIMARY KEY (`IP`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `IP` (`IP`);

--
-- Indexes for table `ip_usage`
--
ALTER TABLE `ip_usage`
  ADD PRIMARY KEY (`IP`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `IP` (`IP`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `IP` (`IP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
