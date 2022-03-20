-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 20 Μαρ 2022 στις 20:34:44
-- Έκδοση διακομιστή: 10.4.22-MariaDB
-- Έκδοση PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `database`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `type` text NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `login`
--

INSERT INTO `login` (`email`, `password`, `first_name`, `last_name`, `type`) VALUES
('administrator', 'passsword', '-', '-', 'admin'),
('user', 'user', 'test', 'test', 'user'),
('', '', ' ', ' ', ''),
('usertest', 'password', ' usertest', ' usertest', 'user');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `vacations`
--

CREATE TABLE `vacations` (
  `name` varchar(100) NOT NULL,
  `date_submited` date NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `vacations`
--

INSERT INTO `vacations` (`name`, `date_submited`, `date_start`, `date_end`, `status`) VALUES
(' IRAKLIS', '0000-00-00', '2022-03-20', '0000-00-00', 'pending'),
(' ', '0000-00-00', '0000-00-00', '0000-00-00', 'pending'),
(' ', '0000-00-00', '0000-00-00', '0000-00-00', 'pending'),
(' IRAKLIS', '2022-04-03', '2022-03-27', '2022-03-20', 'pending'),
(' IRAKLIS', '2022-04-03', '2022-03-27', '2022-03-20', 'pending'),
(' IRAKLIS', '2022-03-20', '2022-03-27', '2022-04-03', 'pending');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
