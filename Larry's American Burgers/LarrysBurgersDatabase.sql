-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 11:17 PM
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
-- Database: `larrytables`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(11) NOT NULL,
  `contactName` varchar(45) NOT NULL,
  `contactPhone` varchar(14) NOT NULL,
  `contactMail` varchar(45) NOT NULL,
  `contactMessage` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `contactName`, `contactPhone`, `contactMail`, `contactMessage`) VALUES
(1, 'John Smith', '(208) 523-7852', 'jsmith@gmail.com', 'Really liked my food when I ate there!'),
(2, 'Jacob Mathews', '(208) 423-5235', 'jmathews@gmail.com', 'Good food! Will come back another time!'),
(3, 'Steve Williams', '(208) 785-8523', 'stevew@gmail.com', 'Hope business goes well! I will be coming back for more food!'),
(4, 'Phillip Stevens', '(208) 314-1592', 'pstevens23@gmail.com', 'My wife and I really enjoyed our food there! Will hopefully be back soon!'),
(5, 'Karen Stevens', '(208) 653-4856', 'karenstevens@gmail.com', 'An employee tripped and dropped my food! I will never come back here again!'),
(6, 'Martin Martinez', '(208) 795-3587', 'martinez46@gmail.com', 'My kids really enjoy eating here.'),
(7, 'Sally Clark', '(208) 347-8462', 'SClark72@gmail.com', 'Really enjoyed my time here!'),
(8, 'John Baker', '(208) 258-3214', 'JBaker@gmail.com', 'Thank you for the gluten free options'),
(9, 'John Nelson', '(208) 123-4567', 'jnelson98@gmail.com', 'Great place to bring the kids'),
(10, 'Eric Adams', '(208) 891-0111', 'EAdams@gmail.com', 'Thanks for the meal'),
(11, 'Troy Scott', '(208) 212-2562', 'Scottinator@gmail.com', 'Food was cool, but I have had better'),
(12, 'Jaime Rodriguez', '(208) 647-6258', 'JaimeR97@gmail.com', 'My burger was burnt'),
(13, 'Jeff Hill', '(208) 475-6952', 'JH2251@gmail.com', 'Really fun time here! Hopefully will come back!'),
(14, 'Laura Taylor', '(208) 368-6541', 'LTaylor34@gmail.com', 'Really enjoyed my time. I am currently looking for a job and hope to be able to work here.'),
(15, 'Steven Lee', '(208) 321-6543', 'SteveLee54@gmail.com', 'As a new employee, I would just like to say everyone who works here is amazing!'),
(16, 'Kat Davis', '(208) 987-6543', 'KDavis@gmail.com', 'I only wish there were more options to decide from on the menu'),
(17, 'David Jones', '(208) 210-3654', 'DJones93@gmail.com', 'I wish you guys did delivery.'),
(18, 'Jackson Moore', '(208) 945-2543', 'Moore62@gmail.com', 'Really had a good time'),
(19, 'Emilia Walker', '(208) 478-7852', 'EWalker23@gmail.com', 'Had a fun time with the family here!'),
(20, 'Nathan Young', '(208) 752-6547', 'Young256@gmail.com', 'Will probably come back once a week!');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(11) NOT NULL,
  `employeeName` varchar(45) NOT NULL,
  `employeeNumber` varchar(14) NOT NULL,
  `employeeMail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `employeeName`, `employeeNumber`, `employeeMail`) VALUES
(1, 'Larry Jones', '(208) 546-7324', 'Larrysburgers@gmail.com'),
(2, 'Mary Jones', '(208) 452-3245', 'MJones@gmail.com'),
(3, 'Cameron Lee', '(208) 785-1354', 'CLee@gmail.com'),
(4, 'Dustin Stevens', '(208) 125-3542', 'DStevens32@gmail.com'),
(5, 'Eric Nelson', '(208) 653-5413', 'EricNelson@gmail.com'),
(6, 'Alex Mill', '(208) 795-1324', 'AlexM23@gmail.com'),
(7, 'Jaime Flores', '(208) 134-4258', 'JFlores0417@gmail.com'),
(8, 'Jeff Carl', '(208) 365-8563', 'JCarl@gmail.com'),
(9, 'Alex Schlosser', '(208) 321-6521', 'AlexS76@gmail.com'),
(10, 'Karen Jones', '(208) 853-5430', 'KarenJ345@gmail.com'),
(11, 'Matt Watson', '(208) 132-1354', 'Mattew23@gmail.com'),
(12, 'John Scott', '(208) 647-3451', 'JScott5432@gmail.com'),
(13, 'Jacob Walker', '(208) 231-6952', 'JW2341@gmail.com'),
(14, 'Sally Smith', '(208) 366-6565', 'SSmith2345@gmail.com'),
(15, 'Nathan Taylor', '(208) 361-6343', 'NathanT2367@gmail.com'),
(16, 'Laura Davis', '(208) 998-6565', 'LDavis1684@gmail.com'),
(17, 'Connor Hecklesten', '(208) 352-7452', 'ConnorH21356@gmail.com'),
(18, 'Steven Young', '(208) 965-2652', 'YoungS9586@gmail.com'),
(19, 'Steven Lee', '(208) 321-6543', 'SteveLee54@gmail.com'),
(20, 'Laura Taylor', '(208) 368-6541', 'LTaylor34@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`),
  ADD UNIQUE KEY `contactPhone` (`contactPhone`),
  ADD UNIQUE KEY `contactMail` (`contactMail`),
  ADD KEY `contactID` (`contactID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
