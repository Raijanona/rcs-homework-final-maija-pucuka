-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 07:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_homework`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

CREATE TABLE `blogposts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `picture` text NOT NULL,
  `gallery` mediumtext NOT NULL DEFAULT '[]',
  `text` text NOT NULL,
  `date_published` datetime NOT NULL,
  `user_id` int(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogposts`
--

INSERT INTO `blogposts` (`id`, `title`, `excerpt`, `picture`, `gallery`, `text`, `date_published`, `user_id`, `is_deleted`) VALUES
(13, 'Gallery test', 'Gallery test', 'A0F5.tmp.png', '[\'A106.tmp.png\',\'A107.tmp.png\',\'A108.tmp.png\']', 'Gallery test Gallery test Gallery test', '2022-11-16 13:56:16', 3, 0),
(14, 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum', 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum', '7FD2.tmp.png', '[\'7FD3.tmp.png\',\'7FD4.tmp.png\',\'7FD5.tmp.png\',\'7FD6.tmp.png\']', 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum', '2022-11-17 19:50:43', 21, 0),
(15, '18 november', '18 november', '956F.tmp.png', '[\'9580.tmp.png\',\'9581.tmp.png\',\'9582.tmp.png\',\'9583.tmp.png\']', '18 november', '2022-11-18 15:49:01', 1, 0),
(18, 'error test 3', 'error test 3', 'EA6F.tmp.png', '[\'EA70.tmp.png\',\'EA71.tmp.png\']', 'error test 3', '2022-11-20 14:05:29', 2, 0),
(19, 'London', 'London is the capital and largest city of England and the United Kingdom, with a population of just under 9 million.', '6FDE.tmp.png', '[\'6FDF.tmp.png\',\'6FF0.tmp.png\']', 'London is the capital and largest city of England and the United Kingdom, with a population of just under 9 million. It stands on the River Thames in south-east England at the head of a 50-mile (80 km) estuary down to the North Sea, and has been a major settlement for two millennia. The City of London, its ancient core and financial centre, was founded by the Romans as Londinium and retains its medieval boundaries. The City of Westminster, to the west of the City of London, has for centuries hosted the national government and parliament. Since the 19th century, the name \"London\" has also referred to the metropolis around this core, historically split between the counties of Middlesex, Essex, Surrey, Kent, and Hertfordshire, which largely comprises Greater London, governed by the Greater London Authority.\r\nAs one of the world\'s major global cities, London exerts a strong influence on its arts, entertainment, fashion, commerce and finance, education, health care, media, science and technology, tourism, and transport and communications. Its GDP (€801.66 billion in 2017) makes it the largest urban economy in Europe, and it is one of the major financial centres in the world. With Europe\'s largest concentration of higher education institutions, it is home to some of the highest-ranked academic institutions in the world—Imperial College London in natural and applied sciences, the London School of Economics in social sciences, and the comprehensive University College London. London is the most visited city in Europe and has the busiest city airport system in the world. The London Underground is the oldest rapid transit system in the world. London is home to the most 5-star hotels of any city.', '2022-11-21 11:42:34', 1, 0),
(20, 'Seville', 'Sevilla, conventional Seville, ancient Hispalis, city, capital of the provincia (province) of Sevilla, in the Andalusia comunidad autónoma (autonomous community) of southern Spain.', '181B.tmp.png', '[\'182C.tmp.png\',\'182D.tmp.png\',\'182E.tmp.png\']', 'Sevilla, conventional Seville, ancient Hispalis, city, capital of the provincia (province) of Sevilla, in the Andalusia comunidad autónoma (autonomous community) of southern Spain. Sevilla lies on the left (east) bank of the Guadalquivir River at a point about 54 miles (87 km) north of the Atlantic Ocean and about 340 miles (550 km) southwest of Madrid. An inland port, it is the chief city of Andalusia and the fourth largest in Spain. Sevilla was important in history as a cultural centre, as a capital of Muslim Spain, and as a centre for Spanish exploration of the New World.', '2022-11-21 16:52:24', 1, 0),
(21, 'New York', 'New York, often called New York City or NYC, is the most populous city in the United States.', 'C73D.tmp.png', '[\'C73E.tmp.png\',\'C73F.tmp.png\',\'C750.tmp.png\']', 'New York, often called New York City or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is also the most densely populated major city in the United States.\r\nThe city is within the southern tip of New York State, and constitutes the geographical and demographic center of both the Northeast megalopolis and the New York metropolitan area – the largest metropolitan area in the world by urban landmass. With over 20.1 million people in its metropolitan statistical area and 23.5 million in its combined statistical area as of 2020, New York is one of the world\'s most populous megacities, and over 58 million people live within 250 mi (400 km) of the city. New York City is a global cultural, financial, and media center with a significant influence on commerce, health care and life sciences, entertainment, research, technology, education, politics, tourism, dining, art, fashion, and sports. New York is the most photographed city in the world. Home to the headquarters of the United Nations, New York is an important center for international diplomacy, an established safe haven for global investors, and is sometimes described as the capital of the world.', '2022-11-21 16:59:42', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `followers` longtext NOT NULL DEFAULT '[]',
  `following` longtext NOT NULL DEFAULT '[]',
  `blocked` longtext NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `followers`, `following`, `blocked`) VALUES
(1, 'test@gmail.com', 'test', '$2y$10$ZGlRjdnBKiuWmC4OsPF2WuLDGx96rbhDUSeO9RcHuVQctgeZx/bfu', '[\'21\']', '[\'21\']', '[\'3\']'),
(2, 'test1@gmail.com', 'Raijanona', '$2y$10$ntrdxxdg5BsWFKbeve3Bj.ZdSII1.FNm0vKE7HFe9ICvamazi07Em', '[]', '[\'3\',\'1\',\'21\']', '[\'21\']'),
(3, 'deimons@test.lv', 'Deimons', '$2y$10$E4AgC6SI.I.3oyxw8B2/gODHskRF0ZOs4RetowgP2ZvWuLCX8sqqy', '[\'2\']', '[]', '[\'21\']'),
(4, 'tuesday@gmail.com', 'Tuesday', '$2y$10$kWUeuczClM2GpL65SWF9ZOmVS.oSDpebk7b6/Ra37yknj287SWPFm', '[]', '[]', '[]'),
(16, 'test2@gmail.com', 'test2', '$2y$10$VViDPOeLE3OESlJnfBXDQuqmBj7DyWDAYYFs6veaq73hQHd15jXKK', '[]', '[]', '[]'),
(17, 'test3@gmail.com', 'test3', '$2y$10$yCPAI1ZhttM/nrkQCkh0Y.GQOXUGlDcYjpOqwjbYgAQPuI3hCbgSK', '[]', '[]', '[]'),
(19, 'test9@gmail.com', 'test8', '$2y$10$DyOv17XnUiVj2XlgDM/lheS2IF7CA8ZJTSISHzy3tyNtKqRpwgbb6', '[]', '[]', '[]'),
(20, 'test7@gmail.com', 'test7', '$2y$10$BjYH2etvy3Ag94DEKWJ5jeoUu1SgJ6nJ/uHvjuSUdKm1E1QbpID2y', '[]', '[]', '[]'),
(21, 'unigunda@test.lv', 'Unigunda', '$2y$10$O73cOq.3Aq0879G/OyM25u78Z8NEu8Rogw.p17abw8vCdiwTBXBi2', '[\'1\',\'2\']', '[\'1\']', '[]'),
(22, 'test10@gmail.com', 'test10', '$2y$10$4oSUih9ej8qwicuLJpdFZ.7wSbMaksCr7xNMDjt3Rccr2MBF5VcZy', '[]', '[]', '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profilename` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogposts`
--
ALTER TABLE `blogposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
