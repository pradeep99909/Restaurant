-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2019 at 05:25 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `name` varchar(32) DEFAULT NULL,
  `price` int(4) DEFAULT NULL,
  `type` varchar(7) DEFAULT NULL,
  `food` varchar(15) DEFAULT NULL,
  `no` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`name`, `price`, `type`, `food`, `no`) VALUES
('Tandoori Roti', 15, 'Veg', 'Roti', 1),
('Tandoori Butter Roti', 20, 'Veg', 'Roti', 2),
('Chapati', 12, 'Veg', 'Roti', 3),
('Butter Chapati', 15, 'Veg', 'Roti', 4),
('Bhakri', 17, 'Veg', 'Roti', 5),
('Naan', 25, 'Veg', 'Roti', 6),
('Bade(4 pic)', 55, 'Veg', 'Roti', 7),
('Butter Naan', 35, 'Veg', 'Roti', 8),
('Garlic Naan', 45, 'Veg', 'Roti', 9),
('Kulcha', 25, 'Veg', 'Roti', 10),
('Butter Kulcha', 35, 'Veg', 'Roti', 11),
('Paratha', 30, 'Veg', 'Roti', 12),
('Butter Paratha', 35, 'Veg', 'Roti', 13),
('Misi Paratha', 35, 'Veg', 'Roti', 14),
('Misi Roti', 30, 'Veg', 'Roti', 15),
('Cheese Naan', 55, 'Veg', 'Roti', 16),
('Cheese Garlic Naan', 60, 'Veg', 'Roti', 17),
('Cheese Garlic Naan', 60, 'Veg', 'Roti', 18),
('Methinks Paratha', 55, 'Veg', 'Roti', 19),
('Alu Paratha', 50, 'Veg', 'Roti', 20),
('Paneer Paratha', 70, 'Veg', 'Roti', 21),
('Steam Rice Basmati', 70, 'Veg', 'Rice', 22),
('Jeera Rice', 90, 'Veg', 'Rice', 23),
('Dal Khichadi', 110, 'Veg', 'Rice', 24),
('Dal Khichadi Tadka', 120, 'Veg', 'Rice', 25),
('Palak Khichadi', 110, 'Veg', 'Rice', 26),
('Curd Rice', 100, 'Veg', 'Rice', 27),
('Biryani Rice', 100, 'Veg', 'Biryani', 28),
('Veg Pulav', 130, 'Veg', 'Biryani', 29),
('Veg Tawa Pulav', 150, 'Veg', 'Biryani', 30),
('Veg Biryani', 130, 'Veg', 'Biryani', 31),
('Paneer Biryani', 170, 'Veg', 'Biryani', 32),
('Mushroom Biryani', 170, 'Veg', 'Biryani', 33),
('Veg Kashmiri Biryani', 160, 'Veg', 'Biryani', 34),
('Green Peas Pulav', 130, 'Veg', 'Biryani', 35),
('Egg Biryani', 130, 'Non-Veg', 'Biryani', 36),
('Chicken Biryani', 150, 'Non-Veg', 'Biryani', 37),
('Chicken Dum Biryani', 160, 'Non-Veg', 'Biryani', 38),
('Chicken Tikka Biryani', 180, 'Non-Veg', 'Biryani', 39),
('Chicken Hyderabadi Biryani', 170, 'Non-Veg', 'Biryani', 40),
('Mutton Biryani', 200, 'Non-Veg', 'Biryani', 41),
('Mutton Dum Biryani', 210, 'Non-Veg', 'Biryani', 42),
('Prawns Biryani', 230, 'Non-Veg', 'Biryani', 43),
('Kolmbi Bhat', 210, 'Non-Veg', 'Biryani', 44),
('Veg Fried Rice', 130, 'Veg', 'Chinese Rice', 45),
('Veg Schezwan Fried Rice', 140, 'Veg', 'Chinese Rice', 46),
('Veg Triple Schezwan Rice', 160, 'Veg', 'Chinese Rice', 47),
('Veg Combination Rice', 150, 'Veg', 'Chinese Rice', 48),
('Veg Manchurian Rice', 160, 'Veg', 'Chinese Rice', 49),
('Veg Singapore Rice', 150, 'Veg', 'Chinese Rice', 50),
('Mushroom Fried Rice', 150, 'Veg', 'Chinese Rice', 51),
('Veg Chilli Rice', 170, 'Veg', 'Chinese Rice', 52),
('Veg Born Garlic Rice', 140, 'Veg', 'Chinese Rice', 53),
('Chicken Fried Rice', 140, 'Non-Veg', 'Chinese Rice', 54),
('Chicken Born Garlic Rice', 160, 'Non-Veg', 'Chinese Rice', 55),
('Chicken Schezwan Rice', 160, 'Non-Veg', 'Chinese Rice', 56),
('Chicken Chilli Rice', 180, 'Non-Veg', 'Chinese Rice', 57),
('Chicken Hong Kong Rice', 160, 'Non-Veg', 'Chinese Rice', 58),
('Chicken Singapore Rice', 160, 'Non-Veg', 'Chinese Rice', 59),
('Chicken Manchurian Rice', 180, 'Non-Veg', 'Chinese Rice', 60),
('Chicken Triple Schezwan Rice', 180, 'Non-Veg', 'Chinese Rice', 61),
('Chicken Combination Rice', 170, 'Non-Veg', 'Chinese Rice', 62),
('Egg Fried Rice', 120, 'Non-Veg', 'Chinese Rice', 63),
('Egg Schezwan Rice', 130, 'Non-Veg', 'Chinese Rice', 64),
('Egg Triple Fried Rice', 160, 'Non-Veg', 'Chinese Rice', 65),
('Prawns Fried Rice', 170, 'Non-Veg', 'Chinese Rice', 66),
('Prawns Schezwan Fried Rice', 180, 'Non-Veg', 'Chinese Rice', 67),
('Vanilla', 20, 'Veg', 'Ice- Cream', 68),
('Butter Scotch ice cream', 60, 'Veg', 'Ice- Cream', 69),
('Veg Biryani(1 kg)', 650, 'Veg', 'Biryani', 70),
('Chicken Dum Biryani(1 kg)', 908, 'Non-Veg', 'Biryani', 71),
('Chicken Tikka Biryani(1 kg)', 1200, 'Non-Veg', 'Biryani', 72),
('Dahi', 50, 'Veg', 'Salad', 73),
('Salad', 60, 'Veg', 'Salad', 74),
('Bundi Raita', 60, 'Veg', 'Salad', 75),
('Raita', 60, 'Veg', 'Salad', 76),
('Fry Papad', 20, 'Veg', 'Salad', 77),
('Masala Papad', 30, 'Veg', 'Salad', 78),
('Roasted Papad', 15, 'Veg', 'Salad', 79),
('Boil Eggs', 15, 'Non-Veg', 'Salad', 80),
('Russian Salad', 70, 'Veg', 'Salad', 81),
('Veg Manchurian Noodles', 160, 'Veg', 'Chinese Noodles', 82),
('Veg Hakka Noodles', 130, 'Veg', 'Chinese Noodles', 83),
('Veg Singapore', 150, 'Veg', 'Chinese Noodles', 84),
('Veg Hong Kong', 150, 'Veg', 'Chinese Noodles', 85),
('Veg Shezwan', 140, 'Veg', 'Chinese Noodles', 86),
('Veg Shezwan Tripple', 170, 'Veg', 'Chinese Noodles', 87),
('Chicken Hakka Noodles', 140, 'Non-Veg', 'Chinese Noodles', 88),
('Prawns Hakka Noodles', 190, 'Non-Veg', 'Chinese Noodles', 89),
('Prawns Schezwan Hakka Noodles', 200, 'Non-Veg', 'Chinese Noodles', 90),
('Chicken Singapore Noodles', 160, 'Non-Veg', 'Chinese Noodles', 91),
('Chicken Hong Kong Noodles', 170, 'Non-Veg', 'Chinese Noodles', 92),
('Chicken Schezwan Noodles', 150, 'Non-Veg', 'Chinese Noodles', 93),
('Chicken Schezwan Tripple Noodles', 180, 'Non-Veg', 'Chinese Noodles', 94),
('Chicken Manchurian Noodles', 180, 'Non-Veg', 'Chinese Noodles', 95);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
