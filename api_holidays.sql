-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 18, 2023 at 05:21 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebalafpv_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_holidays`
--

DROP TABLE IF EXISTS `api_holidays`;
CREATE TABLE IF NOT EXISTS `api_holidays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `date_year` varchar(255) NOT NULL,
  `date_month` varchar(255) NOT NULL,
  `date_day` varchar(255) NOT NULL,
  `week_day` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `api_holidays`
--

INSERT INTO `api_holidays` (`id`, `name`, `country`, `location`, `date`, `date_year`, `date_month`, `date_day`, `week_day`) VALUES
(1, 'Day After New Year’s Day', 'CA', 'Canada - Quebec', '01/02/2020', '2020', '01', '02', 'Thursday'),
(2, 'Epiphany', 'CA', 'Canada', '01/06/2020', '2020', '01', '06', 'Monday'),
(3, 'Orthodox Christmas Day', 'CA', 'Canada', '01/07/2020', '2020', '01', '07', 'Tuesday'),
(4, 'Orthodox New Year', 'CA', 'Canada', '01/14/2020', '2020', '01', '14', 'Tuesday'),
(5, 'Chinese New Year', 'CA', 'Canada', '01/25/2020', '2020', '01', '25', 'Saturday'),
(6, 'Groundhog Day', 'CA', 'Canada', '02/02/2020', '2020', '02', '02', 'Sunday'),
(7, 'National Flag of Canada Day', 'CA', 'Canada', '02/15/2020', '2020', '02', '15', 'Saturday'),
(8, 'Family Day', 'CA', 'Canada - Alberta, Ontario, Saskatchewan, New Brunswick', '02/17/2020', '2020', '02', '17', 'Monday'),
(9, 'Islander Day', 'CA', 'Canada - Prince Edward Island', '02/17/2020', '2020', '02', '17', 'Monday'),
(10, 'Family Day', 'CA', 'Canada - British Columbia', '02/17/2020', '2020', '02', '17', 'Monday'),
(11, 'Nova Scotia Heritage Day', 'CA', 'Canada - Nova Scotia', '02/17/2020', '2020', '02', '17', 'Monday'),
(12, 'Louis Riel Day', 'CA', 'Canada - Manitoba', '02/17/2020', '2020', '02', '17', 'Monday'),
(13, 'Yukon Heritage Day', 'CA', 'Canada - Yukon', '02/21/2020', '2020', '02', '21', 'Friday'),
(14, 'Carnival / Shrove Tuesday', 'CA', 'Canada', '02/25/2020', '2020', '02', '25', 'Tuesday'),
(15, 'Ash Wednesday', 'CA', 'Canada', '02/26/2020', '2020', '02', '26', 'Wednesday'),
(16, 'Daylight Saving Time starts', 'CA', 'Canada', '03/08/2020', '2020', '03', '08', 'Sunday'),
(17, 'Commonwealth Day', 'CA', 'Canada', '03/09/2020', '2020', '03', '09', 'Monday'),
(18, 'Purim', 'CA', 'Canada', '03/10/2020', '2020', '03', '10', 'Tuesday'),
(19, 'March Equinox', 'CA', 'Canada', '03/19/2020', '2020', '03', '19', 'Thursday'),
(20, 'Palm Sunday', 'CA', 'Canada', '04/05/2020', '2020', '04', '05', 'Sunday'),
(21, 'National Tartan Day', 'CA', 'Canada', '04/06/2020', '2020', '04', '06', 'Monday'),
(22, 'First day of Passover', 'CA', 'Canada', '04/09/2020', '2020', '04', '09', 'Thursday'),
(23, 'Maundy Thursday', 'CA', 'Canada', '04/09/2020', '2020', '04', '09', 'Thursday'),
(24, 'Vimy Ridge Day', 'CA', 'Canada', '04/09/2020', '2020', '04', '09', 'Thursday'),
(25, 'Good Friday', 'CA', 'Canada', '04/10/2020', '2020', '04', '10', 'Friday'),
(26, 'Holy Saturday', 'CA', 'Canada', '04/11/2020', '2020', '04', '11', 'Saturday'),
(27, 'Easter Sunday', 'CA', 'Canada - Nova Scotia', '04/12/2020', '2020', '04', '12', 'Sunday'),
(28, 'Easter Sunday', 'CA', 'Canada', '04/12/2020', '2020', '04', '12', 'Sunday'),
(29, 'Easter Monday', 'CA', 'Canada - Alberta', '04/13/2020', '2020', '04', '13', 'Monday'),
(30, 'Easter Monday', 'CA', 'Canada - New Brunswick, Northwest Territories, Nunavut, Quebec', '04/13/2020', '2020', '04', '13', 'Monday'),
(31, 'Easter Monday', 'CA', 'Canada - Yukon', '04/13/2020', '2020', '04', '13', 'Monday'),
(32, 'Last day of Passover', 'CA', 'Canada', '04/16/2020', '2020', '04', '16', 'Thursday'),
(33, 'Orthodox Good Friday', 'CA', 'Canada', '04/17/2020', '2020', '04', '17', 'Friday'),
(34, 'Orthodox Holy Saturday', 'CA', 'Canada', '04/18/2020', '2020', '04', '18', 'Saturday'),
(35, 'Orthodox Easter', 'CA', 'Canada', '04/19/2020', '2020', '04', '19', 'Sunday'),
(36, 'Orthodox Easter Monday', 'CA', 'Canada', '04/20/2020', '2020', '04', '20', 'Monday'),
(37, 'Yom HaShoah', 'CA', 'Canada', '04/21/2020', '2020', '04', '21', 'Tuesday'),
(38, 'Ramadan Start', 'CA', 'Canada', '04/24/2020', '2020', '04', '24', 'Friday'),
(39, 'Yom HaAtzmaut', 'CA', 'Canada', '04/29/2020', '2020', '04', '29', 'Wednesday'),
(40, 'Victoria Day', 'CA', 'Canada - Alberta, British Columbia, Manitoba, New Brunswick, Newfoundland and Labrador, Northwest Territories, Nunavut, Ontario, Saskatchewan, Yukon', '05/18/2020', '2020', '05', '18', 'Monday'),
(41, 'Laylatul Qadr (Night of Power)', 'CA', 'Canada', '05/19/2020', '2020', '05', '19', 'Tuesday'),
(42, 'Ascension Day', 'CA', 'Canada', '05/21/2020', '2020', '05', '21', 'Thursday'),
(43, 'Eid ul Fitr', 'CA', 'Canada', '05/24/2020', '2020', '05', '24', 'Sunday'),
(44, 'Shavuot', 'CA', 'Canada', '05/29/2020', '2020', '05', '29', 'Friday'),
(45, 'Pentecost', 'CA', 'Canada', '05/31/2020', '2020', '05', '31', 'Sunday'),
(46, 'Whit Monday', 'CA', 'Canada', '06/01/2020', '2020', '06', '01', 'Monday'),
(47, 'Trinity Sunday', 'CA', 'Canada', '06/07/2020', '2020', '06', '07', 'Sunday'),
(48, 'Corpus Christi', 'CA', 'Canada', '06/11/2020', '2020', '06', '11', 'Thursday'),
(49, 'June Solstice', 'CA', 'Canada', '06/20/2020', '2020', '06', '20', 'Saturday'),
(50, 'National Indigenous Peoples Day', 'CA', 'Canada - Northwest Territories, Yukon', '06/21/2020', '2020', '06', '21', 'Sunday'),
(51, 'National Indigenous Peoples Day', 'CA', 'Canada', '06/21/2020', '2020', '06', '21', 'Sunday'),
(52, 'Discovery Day', 'CA', 'Canada - Newfoundland and Labrador', '06/22/2020', '2020', '06', '22', 'Monday'),
(53, 'St. Jean Baptiste Day', 'CA', 'Canada - Quebec', '06/24/2020', '2020', '06', '24', 'Wednesday'),
(54, 'Memorial Day', 'CA', 'Canada - Newfoundland and Labrador', '07/01/2020', '2020', '07', '01', 'Wednesday'),
(55, 'Canada Day', 'CA', 'Canada', '07/01/2020', '2020', '07', '01', 'Wednesday'),
(56, 'Nunavut Day', 'CA', 'Canada - Nunavut', '07/09/2020', '2020', '07', '09', 'Thursday'),
(57, 'Eid ul Adha', 'CA', 'Canada', '07/31/2020', '2020', '07', '31', 'Friday'),
(58, 'Civic/Provincial Day', 'CA', 'Canada - Ontario', '08/03/2020', '2020', '08', '03', 'Monday'),
(59, 'Saskatchewan Day', 'CA', 'Canada - Saskatchewan', '08/03/2020', '2020', '08', '03', 'Monday'),
(60, 'Terry Fox Day', 'CA', 'Canada - Manitoba', '08/03/2020', '2020', '08', '03', 'Monday'),
(61, 'Natal Day', 'CA', 'Canada - Nova Scotia', '08/03/2020', '2020', '08', '03', 'Monday'),
(62, 'British Columbia Day', 'CA', 'Canada - British Columbia', '08/03/2020', '2020', '08', '03', 'Monday'),
(63, 'New Brunswick Day', 'CA', 'Canada - New Brunswick', '08/03/2020', '2020', '08', '03', 'Monday'),
(64, 'Heritage Day', 'CA', 'Canada - Alberta', '08/03/2020', '2020', '08', '03', 'Monday'),
(65, 'Civic/Provincial Day', 'CA', 'Canada - Northwest Territories, Nunavut', '08/03/2020', '2020', '08', '03', 'Monday'),
(66, 'Assumption of Mary', 'CA', 'Canada', '08/15/2020', '2020', '08', '15', 'Saturday'),
(67, 'Discovery Day', 'CA', 'Canada - Yukon', '08/17/2020', '2020', '08', '17', 'Monday'),
(68, 'Muharram/Islamic New Year', 'CA', 'Canada', '08/20/2020', '2020', '08', '20', 'Thursday'),
(69, 'Gold Cup Parade', 'CA', 'Canada - Prince Edward Island', '08/21/2020', '2020', '08', '21', 'Friday'),
(70, 'Labour Day', 'CA', 'Canada', '09/07/2020', '2020', '09', '07', 'Monday'),
(71, 'Rosh Hashana', 'CA', 'Canada', '09/19/2020', '2020', '09', '19', 'Saturday'),
(72, 'September Equinox', 'CA', 'Canada', '09/22/2020', '2020', '09', '22', 'Tuesday'),
(73, 'Yom Kippur', 'CA', 'Canada', '09/28/2020', '2020', '09', '28', 'Monday'),
(74, 'First day of Sukkot', 'CA', 'Canada', '10/03/2020', '2020', '10', '03', 'Saturday'),
(75, 'Feast of St Francis of Assisi', 'CA', 'Canada', '10/04/2020', '2020', '10', '04', 'Sunday'),
(76, 'Hoshana Rabbah', 'CA', 'Canada', '10/09/2020', '2020', '10', '09', 'Friday'),
(77, 'Shemini Atzeret', 'CA', 'Canada', '10/10/2020', '2020', '10', '10', 'Saturday'),
(78, 'Simchat Torah', 'CA', 'Canada', '10/11/2020', '2020', '10', '11', 'Sunday'),
(79, 'Thanksgiving Day', 'CA', 'Canada - Nova Scotia', '10/12/2020', '2020', '10', '12', 'Monday'),
(80, 'Thanksgiving Day', 'CA', 'Canada - New Brunswick', '10/12/2020', '2020', '10', '12', 'Monday'),
(81, 'Thanksgiving Day', 'CA', 'Canada - Alberta, British Columbia, Manitoba, Newfoundland and Labrador, Northwest Territories, Nunavut, Ontario, Quebec, Saskatchewan, Yukon', '10/12/2020', '2020', '10', '12', 'Monday'),
(82, 'Healthcare Aide Day', 'CA', 'Canada - British Columbia, Manitoba', '10/18/2020', '2020', '10', '18', 'Sunday'),
(83, 'Milad un Nabi (Mawlid)', 'CA', 'Canada', '10/29/2020', '2020', '10', '29', 'Thursday'),
(84, 'Halloween', 'CA', 'Canada', '10/31/2020', '2020', '10', '31', 'Saturday'),
(85, 'Daylight Saving Time ends', 'CA', 'Canada', '11/01/2020', '2020', '11', '01', 'Sunday'),
(86, 'Remembrance Day', 'CA', 'Canada - Alberta, British Columbia, New Brunswick, Newfoundland and Labrador, Northwest Territories, Nunavut, Prince Edward Island, Saskatchewan, Yukon', '11/11/2020', '2020', '11', '11', 'Wednesday'),
(87, 'Remembrance Day', 'CA', 'Canada - Ontario, Nova Scotia, Manitoba', '11/11/2020', '2020', '11', '11', 'Wednesday'),
(88, 'Diwali/Deepavali', 'CA', 'Canada', '11/14/2020', '2020', '11', '14', 'Saturday'),
(89, 'First Sunday of Advent', 'CA', 'Canada', '11/29/2020', '2020', '11', '29', 'Sunday'),
(90, 'Feast of the Immaculate Conception', 'CA', 'Canada', '12/08/2020', '2020', '12', '08', 'Tuesday'),
(91, 'Anniversary of the Statute of Westminster', 'CA', 'Canada', '12/11/2020', '2020', '12', '11', 'Friday'),
(92, 'First Day of Hanukkah', 'CA', 'Canada', '12/11/2020', '2020', '12', '11', 'Friday'),
(93, 'Last day of Hanukkah', 'CA', 'Canada', '12/18/2020', '2020', '12', '18', 'Friday'),
(94, 'December Solstice', 'CA', 'Canada', '12/21/2020', '2020', '12', '21', 'Monday'),
(95, 'Christmas Eve', 'CA', 'Canada', '12/24/2020', '2020', '12', '24', 'Thursday'),
(96, 'Christmas Day', 'CA', 'Canada', '12/25/2020', '2020', '12', '25', 'Friday'),
(97, 'Boxing Day', 'CA', 'Canada - Yukon', '12/26/2020', '2020', '12', '26', 'Saturday'),
(98, 'Boxing Day', 'CA', 'Canada - Alberta', '12/26/2020', '2020', '12', '26', 'Saturday'),
(99, 'Boxing Day', 'CA', 'Canada - Nova Scotia', '12/26/2020', '2020', '12', '26', 'Saturday'),
(100, 'Boxing Day', 'CA', 'Canada - New Brunswick, Newfoundland and Labrador, Northwest Territories, Nunavut, Ontario', '12/26/2020', '2020', '12', '26', 'Saturday'),
(101, 'Guru Govind Singh Jayanti', 'IN', 'India', '01/02/2020', '2020', '01', '02', 'Thursday'),
(102, 'Lohri', 'IN', 'India', '01/14/2020', '2020', '01', '14', 'Tuesday'),
(103, 'Pongal', 'IN', 'India', '01/15/2020', '2020', '01', '15', 'Wednesday'),
(104, 'Makar Sankranti', 'IN', 'India', '01/15/2020', '2020', '01', '15', 'Wednesday'),
(105, 'Chinese New Year', 'IN', 'India', '01/25/2020', '2020', '01', '25', 'Saturday'),
(106, 'Republic Day', 'IN', 'India', '01/26/2020', '2020', '01', '26', 'Sunday'),
(107, 'Vasant Panchami', 'IN', 'India', '01/30/2020', '2020', '01', '30', 'Thursday'),
(108, 'Guru Ravidas Jayanti', 'IN', 'India', '02/09/2020', '2020', '02', '09', 'Sunday'),
(109, 'Maharishi Dayanand Saraswati Jayanti', 'IN', 'India', '02/18/2020', '2020', '02', '18', 'Tuesday'),
(110, 'Shivaji Jayanti', 'IN', 'India', '02/19/2020', '2020', '02', '19', 'Wednesday'),
(111, 'Maha Shivaratri/Shivaratri', 'IN', 'India', '02/21/2020', '2020', '02', '21', 'Friday'),
(112, 'Holika Dahana', 'IN', 'India', '03/09/2020', '2020', '03', '09', 'Monday'),
(113, 'Holi', 'IN', 'India', '03/10/2020', '2020', '03', '10', 'Tuesday'),
(114, 'March Equinox', 'IN', 'India', '03/20/2020', '2020', '03', '20', 'Friday'),
(115, 'Chaitra Sukhladi', 'IN', 'India', '03/25/2020', '2020', '03', '25', 'Wednesday'),
(116, 'Rama Navami', 'IN', 'India', '04/02/2020', '2020', '04', '02', 'Thursday'),
(117, 'Mahavir Jayanti', 'IN', 'India', '04/06/2020', '2020', '04', '06', 'Monday'),
(118, 'First day of Passover', 'IN', 'India', '04/09/2020', '2020', '04', '09', 'Thursday'),
(119, 'Maundy Thursday', 'IN', 'India', '04/09/2020', '2020', '04', '09', 'Thursday'),
(120, 'Good Friday', 'IN', 'India', '04/10/2020', '2020', '04', '10', 'Friday'),
(121, 'Easter Day', 'IN', 'India', '04/12/2020', '2020', '04', '12', 'Sunday'),
(122, 'Vaisakhi', 'IN', 'India', '04/13/2020', '2020', '04', '13', 'Monday'),
(123, 'Ambedkar Jayanti', 'IN', 'India', '04/14/2020', '2020', '04', '14', 'Tuesday'),
(124, 'Mesadi/Vaisakhadi', 'IN', 'India', '04/14/2020', '2020', '04', '14', 'Tuesday'),
(125, 'May Day', 'IN', 'India', '05/01/2020', '2020', '05', '01', 'Friday'),
(126, 'Buddha Purnima/Vesak', 'IN', 'India', '05/07/2020', '2020', '05', '07', 'Thursday'),
(127, 'Birthday of Ravindranath', 'IN', 'India', '05/07/2020', '2020', '05', '07', 'Thursday'),
(128, 'Jamat Ul-Vida', 'IN', 'India', '05/22/2020', '2020', '05', '22', 'Friday'),
(129, 'Ramzan Id/Eid-ul-Fitar', 'IN', 'India', '05/25/2020', '2020', '05', '25', 'Monday'),
(130, 'June Solstice', 'IN', 'India', '06/21/2020', '2020', '06', '21', 'Sunday'),
(131, 'Rath Yatra', 'IN', 'India', '06/23/2020', '2020', '06', '23', 'Tuesday'),
(132, 'Guru Purnima', 'IN', 'India', '07/05/2020', '2020', '07', '05', 'Sunday'),
(133, 'Bakr Id/Eid ul-Adha', 'IN', 'India', '07/31/2020', '2020', '07', '31', 'Friday'),
(134, 'Friendship Day', 'IN', 'India', '08/02/2020', '2020', '08', '02', 'Sunday'),
(135, 'Raksha Bandhan (Rakhi)', 'IN', 'India', '08/03/2020', '2020', '08', '03', 'Monday'),
(136, 'Janmashtami (Smarta)', 'IN', 'India', '08/11/2020', '2020', '08', '11', 'Tuesday'),
(137, 'Janmashtami', 'IN', 'India', '08/12/2020', '2020', '08', '12', 'Wednesday'),
(138, 'Independence Day', 'IN', 'India', '08/15/2020', '2020', '08', '15', 'Saturday'),
(139, 'Parsi New Year', 'IN', 'India', '08/16/2020', '2020', '08', '16', 'Sunday'),
(140, 'Ganesh Chaturthi/Vinayaka Chaturthi', 'IN', 'India', '08/22/2020', '2020', '08', '22', 'Saturday'),
(141, 'Muharram/Ashura', 'IN', 'India', '08/29/2020', '2020', '08', '29', 'Saturday'),
(142, 'Onam', 'IN', 'India', '08/31/2020', '2020', '08', '31', 'Monday'),
(143, 'September Equinox', 'IN', 'India', '09/22/2020', '2020', '09', '22', 'Tuesday'),
(144, 'Mahatma Gandhi Jayanti', 'IN', 'India', '10/02/2020', '2020', '10', '02', 'Friday'),
(145, 'Maha Saptami', 'IN', 'India', '10/22/2020', '2020', '10', '22', 'Thursday'),
(146, 'Maha Ashtami', 'IN', 'India', '10/23/2020', '2020', '10', '23', 'Friday'),
(147, 'Maha Navami', 'IN', 'India', '10/24/2020', '2020', '10', '24', 'Saturday'),
(148, 'Dussehra', 'IN', 'India', '10/25/2020', '2020', '10', '25', 'Sunday'),
(149, 'Milad un-Nabi/Id-e-Milad', 'IN', 'India', '10/29/2020', '2020', '10', '29', 'Thursday'),
(150, 'Halloween', 'IN', 'India', '10/31/2020', '2020', '10', '31', 'Saturday'),
(151, 'Maharishi Valmiki Jayanti', 'IN', 'India', '10/31/2020', '2020', '10', '31', 'Saturday'),
(152, 'Karaka Chaturthi (Karva Chauth)', 'IN', 'India', '11/04/2020', '2020', '11', '04', 'Wednesday'),
(153, 'Diwali/Deepavali', 'IN', 'India', '11/14/2020', '2020', '11', '14', 'Saturday'),
(154, 'Naraka Chaturdasi', 'IN', 'India', '11/14/2020', '2020', '11', '14', 'Saturday'),
(155, 'Govardhan Puja', 'IN', 'India', '11/15/2020', '2020', '11', '15', 'Sunday'),
(156, 'Bhai Duj', 'IN', 'India', '11/16/2020', '2020', '11', '16', 'Monday'),
(157, 'Chhat Puja (Pratihar Sashthi/Surya Sashthi)', 'IN', 'India', '11/20/2020', '2020', '11', '20', 'Friday'),
(158, 'Guru Nanak Jayanti', 'IN', 'India', '11/30/2020', '2020', '11', '30', 'Monday'),
(159, 'First Day of Hanukkah', 'IN', 'India', '12/11/2020', '2020', '12', '11', 'Friday'),
(160, 'Last day of Hanukkah', 'IN', 'India', '12/18/2020', '2020', '12', '18', 'Friday'),
(161, 'December Solstice', 'IN', 'India', '12/21/2020', '2020', '12', '21', 'Monday'),
(162, 'Christmas Eve', 'IN', 'India', '12/24/2020', '2020', '12', '24', 'Thursday'),
(163, 'Christmas', 'IN', 'India', '12/25/2020', '2020', '12', '25', 'Friday');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
