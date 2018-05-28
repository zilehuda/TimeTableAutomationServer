-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2017 at 02:30 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `code` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL,
  `short` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`code`, `title`, `batch`, `short`) VALUES
('CL101', 'Introduction to Computing Lab', 2017, 'ITC-Lab'),
('CL103', 'Computer Programming Lab', 2016, 'CP-Lab'),
('CL201', 'Data Structures Lab', 2016, 'DS-Lab'),
('CL203', 'Database Systems Lab', 2015, 'DB-Lab'),
('CL205', 'Operating Systems Lab', 2015, 'OS-Lab'),
('CL307', 'Computer Networks Lab', 2014, 'CN-Lab'),
('CL309', 'Object Oriented Analysis & Design Lab', 2015, 'OOAD-Lab'),
('CS101', 'Introduction to Computing', 2017, 'ITC'),
('CS103', 'Computer Programming ', 2016, 'CP'),
('CS201', 'Data Structures', 2016, 'DS'),
('CS203', 'Database Systems', 2015, 'DB'),
('CS205', 'Operating Systems', 2015, 'OS'),
('CS211', 'Discrete Structures', 2016, 'Discrete '),
('CS301', 'Theory of Automata', 2015, 'TOA'),
('CS302', 'Design & Analysis of Algorithms', 2015, 'Algo'),
('CS303', 'Software Engineering', 2014, 'SE'),
('CS307', 'Computer Networks ', 2014, 'CN'),
('CS309', 'Object Oriented Analysis & Design', 2015, 'OOAD'),
('CS401', 'Artifical Intelligence ', 2014, 'AI'),
('CS404', 'Network Programming ', 2014, 'NP'),
('CS406', 'Web Programming', 2014, 'WP'),
('CS411', 'Network Security', 2014, 'NS'),
('CS422', 'Human Computer Interaction ', 2014, 'HCI'),
('CS423', 'Information Processing Techniques (CITY CAMPUS COURSE) Timings: Friday (3pm-6pm) ', 2014, 'IPT'),
('CS440', 'Software for Mobile Devices ', 2014, 'SMD '),
('CS449', 'Professional Issues in IT', 2013, 'PIT'),
('CS450', 'Introduction to Software project Management', 2014, 'IPM'),
('CS481', 'Data Sciences', 2014, 'Dsci'),
('CS491', 'Project-I', 2014, 'FYP-I'),
('CS492', 'Project-II', 2013, 'FYP-II'),
('CS499', 'Introdution to Cloud Computing (Big Data)', 2014, 'BD'),
('CS508', 'Bioinformatics', 2014, 'Bioinfo'),
('CS540', 'Design Pattern ', 2014, 'DP'),
('CS547', 'Special Topics in CS', 2014, 'DP'),
('CS567', 'Information Retrieval and Text Mining', 2014, 'IRTM'),
('EE182', 'Basic Electronics', 2017, 'BE'),
('EE204', 'Computer Architecture', 2015, 'CA'),
('EE213', 'Comp. Organization & Assembly Language.', 2016, 'COAL'),
('EE227', 'Digital Logic Design', 2016, 'DLD'),
('EL213', 'Comp. Organization & Assembly Language Lab', 2016, 'COAL-Lab'),
('EL227', 'Digital Logic Design Lab', 2016, 'DLD-Lab'),
('MG220', 'Marketing Management', 2016, 'MM'),
('MG335', 'Communication for managers', 2015, 'CM'),
('MG414', 'Entrepreneurship ', 2014, 'EP'),
('MG448', 'Accounting and Inforamtion Systems', 2015, 'AIS'),
('MT101', 'Calculus - I', 2017, 'CALI'),
('MT104', 'Linear Algebra', 2016, 'LA'),
('MT115', 'Calculus-II', 2016, 'Cal-II'),
('MT206', 'Probability & Statistics ', 2015, 'Prob '),
('MT303', 'Operation Research', 2015, 'OR'),
('SS102', 'English Language', 2017, 'Eng'),
('SS103', 'Arabic Language', 2015, 'AL'),
('SS111', 'Islamic and Religious Studies', 2017, 'IRS'),
('SS113', 'Pakistan Studies', 2017, 'pst.'),
('SS118', 'Psychology', 2016, 'Psych'),
('SS122', 'English Composition', 2016, 'EngComp'),
('SS127', 'Sociology', 2015, 'Socio'),
('SS135', 'Micro Ecnomics', 2015, 'ME'),
('SS203', 'Professional Ethics (For Non-Muslims)', 2017, 'Ethics'),
('SS223', 'Bussiness Communication-I', 2016, 'Bcomm');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_code` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachercourses`
--

CREATE TABLE `teachercourses` (
  `teacher_id` int(11) NOT NULL,
  `f_code` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(10) UNSIGNED NOT NULL,
  `f_code` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slot` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `f_code`, `day`, `slot`, `section`, `starttime`, `endtime`, `teacher_name`) VALUES
(1377, 'CS401', 'Friday', 'E1', 'Gr1', '08:00:00', '08:55:00', 'Ali Naqvi '),
(1378, 'CS401', 'Friday', 'E1', 'Gr2', '09:00:00', '09:55:00', 'Ali Naqvi '),
(1379, 'CS307', 'Friday', 'E1', 'Gr1', '11:00:00', '11:55:00', 'Dr. Sufian '),
(1380, 'CS307', 'Friday', 'E1', 'Gr1', '12:00:00', '12:55:00', 'Dr. Sufian '),
(1381, 'CS401', 'Friday', 'E1', 'Gr1', '02:00:00', '02:55:00', 'Ali Naqvi '),
(1382, 'CS302', 'Friday', 'E2', 'B', '08:00:00', '08:55:00', 'Subash'),
(1383, 'CS302', 'Friday', 'E2', 'D', '10:00:00', '10:55:00', 'Subash'),
(1384, 'CS302', 'Friday', 'E2', 'E', '12:00:00', '12:55:00', 'Subash'),
(1385, 'CS309', 'Friday', 'E3', 'G', '08:00:00', '08:55:00', 'Rubab'),
(1386, 'CS303', 'Friday', 'E3', 'GR1', '09:00:00', '09:55:00', 'Abdul rehman'),
(1387, 'CS303', 'Friday', 'E3', 'GR2', '10:00:00', '10:55:00', 'Abdul rehman'),
(1388, 'CS309', 'Friday', 'E3', 'B', '11:00:00', '11:55:00', 'Rubab'),
(1389, 'CS309', 'Friday', 'E3', 'D', '12:00:00', '12:55:00', 'Rubab'),
(1390, 'EE213', 'Friday', 'E4', 'E', '08:00:00', '08:55:00', 'Danish'),
(1391, 'EE213', 'Friday', 'E4', 'H', '09:00:00', '09:55:00', 'Danish'),
(1392, 'CS302', 'Friday', 'E4', 'F', '10:00:00', '10:55:00', 'Zeeshan'),
(1393, 'CS203', 'Friday', 'E4', 'C', '11:00:00', '11:55:00', 'Dr. Zeeshan'),
(1394, 'CS302', 'Friday', 'E4', 'G', '12:00:00', '12:55:00', 'Zeeshan'),
(1395, 'EE213', 'Friday', 'E4', 'G', '02:00:00', '02:55:00', 'Danish'),
(1396, 'CS309', 'Friday', 'E5', 'A', '08:00:00', '08:55:00', 'Abdur Rehman'),
(1397, 'EE182', 'Friday', 'E5', 'A', '10:00:00', '10:55:00', 'Javaid Qureshi'),
(1398, 'EE182', 'Friday', 'E5', 'E', '12:00:00', '12:55:00', 'Javaid Qureshi'),
(1399, 'CS211', 'Friday', 'E6', 'G', '09:00:00', '09:55:00', 'Shoaib'),
(1400, 'CS211', 'Friday', 'E6', 'A', '10:00:00', '10:55:00', 'Shoaib'),
(1401, 'CS211', 'Friday', 'E6', 'H', '12:00:00', '12:55:00', 'Shoaib'),
(1402, 'CS203', 'Friday', 'R11', 'D', '08:00:00', '08:55:00', 'Ahsan'),
(1403, 'CS301', 'Friday', 'R11', 'Gr1', '09:00:00', '09:55:00', 'M. Shahzad'),
(1404, 'CS203', 'Friday', 'R11', 'G', '11:00:00', '11:55:00', 'Ahsan'),
(1405, 'CS203', 'Friday', 'R11', 'F', '12:00:00', '12:55:00', 'Ahsan'),
(1406, 'CS301', 'Friday', 'R11', 'Gr1', '02:00:00', '02:55:00', 'M. Shahzad'),
(1407, 'EE213', 'Friday', 'R12', 'A', '08:00:00', '08:55:00', 'Nadeem Kafi'),
(1408, 'EE213', 'Friday', 'R12', 'C', '11:00:00', '11:55:00', 'Nadeem Kafi'),
(1409, 'EE213', 'Friday', 'R12', 'F', '12:00:00', '12:55:00', 'Nadeem Kafi'),
(1410, 'CS309', 'Friday', 'R109', 'F', '08:00:00', '08:55:00', 'Faiza sattar'),
(1411, 'CS309', 'Friday', 'R109', 'E', '11:00:00', '11:55:00', 'Faiza sattar'),
(1412, 'CS309', 'Friday', 'R109', 'C', '12:00:00', '12:55:00', 'Faiza sattar'),
(1413, 'MG335', 'Friday', 'S1', 'Gr1', '10:00:00', '10:55:00', '(A,B,C) Tuba'),
(1414, 'SS122', 'Friday', 'S1', 'Gr1', '12:00:00', '12:55:00', 'Tuba'),
(1415, 'MG335', 'Friday', 'S1', 'Gr2', '03:00:00', '03:55:00', '(D,E,F,G) Tuba'),
(1416, 'EE182', 'Friday', 'CR-3 EE', 'B', '08:00:00', '08:55:00', 'Kanwal'),
(1417, 'EE182', 'Friday', 'CR-3 EE', 'D', '09:00:00', '09:55:00', 'Kanwal'),
(1418, 'SS203', 'Friday', 'CR-3 EE', 'Gr1', '11:00:00', '11:55:00', 'Sarmad '),
(1419, 'EE182', 'Friday', 'CR-3 EE', 'B', '12:00:00', '12:55:00', 'Kanwal'),
(1420, 'EE182', 'Friday', 'CR-3 EE', 'D', '02:00:00', '02:55:00', 'Kanwal'),
(1421, 'MG414', 'Friday', 'CR-4', 'GR1', '08:00:00', '08:55:00', 'Wamiq'),
(1422, 'SS223', 'Friday', 'CR-4', 'Gr2(E,F,G,H)', '11:00:00', '11:55:00', 'Sameera'),
(1423, 'SS223', 'Friday', 'CR-4', 'Gr1(A,B,C,D)', '12:00:00', '12:55:00', 'Sameera'),
(1424, 'MG414', 'Friday', 'CR-4', 'GR1', '02:00:00', '02:55:00', 'Wamiq'),
(1425, 'MG414', 'Friday', 'CR-4', 'GR1', '03:00:00', '03:55:00', 'Wamiq'),
(1426, 'MT104', 'Friday', 'CR-6', 'G', '10:00:00', '10:55:00', 'Dr. Faqiha'),
(1427, 'MG220', 'Friday', 'CR-7', 'Gr3(G,H)', '08:00:00', '08:55:00', 'Asiya'),
(1428, 'MT206', 'Friday', 'CR-7', 'Gr1', '09:00:00', '09:55:00', 'Abdul Basit '),
(1429, 'MG220', 'Friday', 'CR-7', 'Gr2(D,E,F)', '11:00:00', '11:55:00', 'Asiya'),
(1430, 'MG220', 'Friday', 'CR-7', 'Gr1(A,B,C)', '12:00:00', '12:55:00', 'Asiya'),
(1431, 'SS102', 'Friday', 'CR-7', 'F2', '02:00:00', '02:55:00', 'Nasir'),
(1432, 'MG220', 'Friday', 'CR-7', 'Gr3(G,H)', '03:00:00', '03:55:00', 'Asiya'),
(1433, 'MT104', 'Friday', 'CR-10', 'F', '08:00:00', '08:55:00', 'Jamil'),
(1434, 'MT104', 'Friday', 'CR-10', 'D', '02:00:00', '02:55:00', 'Jamil'),
(1435, 'SS135', 'Friday', 'CR-10', 'Gr1', '03:00:00', '03:55:00', 'Micheal '),
(1436, 'SS113', 'Friday', 'CR-16', 'G', '08:00:00', '08:55:00', 'Sarmad '),
(1437, 'SS118', 'Friday', 'CR-16', 'Gr2(E,F,G,H)', '11:00:00', '11:55:00', 'Sumaira'),
(1438, 'SS118', 'Friday', 'CR-16', 'Gr1(A,B,C,D)', '12:00:00', '12:55:00', 'Sumaira'),
(1439, 'SS127', 'Friday', 'CR-16', 'Gr1', '03:00:00', '03:55:00', 'Sumaira'),
(1440, 'SS111', 'Friday', 'CR-17', 'C', '09:00:00', '09:55:00', 'Hassan Saeed'),
(1441, 'SS111', 'Friday', 'CR-17', 'D', '11:00:00', '11:55:00', 'Hassan Saeed'),
(1442, 'SS111', 'Friday', 'CR-17', 'E', '02:00:00', '02:55:00', 'Hassan Saeed'),
(1443, 'SS103', 'Friday', 'CR-17', 'Gr1', '03:00:00', '03:55:00', 'Shahzad Sheikh'),
(1444, 'SS111', 'Friday', 'CR-18', 'A', '09:00:00', '09:55:00', 'Shahzad Sheikh'),
(1445, 'SS111', 'Friday', 'CR-18', 'B', '11:00:00', '11:55:00', 'Shahzad Sheikh'),
(1446, 'EE182', 'Friday', 'CR-18', 'G', '12:00:00', '12:55:00', 'Ahsan sunny'),
(1447, 'MT206', 'Friday', 'CR-18', 'Gr1', '02:00:00', '02:55:00', 'Abdul Basit '),
(1448, 'MT303', 'Friday', 'CR-18', 'Gr1', '03:00:00', '03:55:00', 'Abdul Basit'),
(1449, 'CS401', 'Monday', 'E1', 'Gr1', '08:00:00', '08:55:00', 'Ali Naqvi '),
(1450, 'CS401', 'Monday', 'E1', 'Gr2', '09:00:00', '09:55:00', 'Ali Naqvi '),
(1451, 'CS309', 'Monday', 'E1', 'C', '11:00:00', '11:55:00', 'Faiza sattar'),
(1452, 'CS422', 'Monday', 'E1', 'F', '12:00:00', '12:55:00', 'Behraj'),
(1453, 'CS422', 'Monday', 'E1', 'A', '01:00:00', '01:55:00', 'Behraj'),
(1454, 'CS101', 'Monday', 'E1', 'G', '02:00:00', '02:55:00', 'M. Shahzad '),
(1455, 'CS406', 'Monday', 'E1', 'GR1', '03:00:00', '03:55:00', 'Dr. Farooque'),
(1456, 'CS211', 'Monday', 'E2', 'C', '08:00:00', '08:55:00', 'Nouman Durrani'),
(1457, 'CS211', 'Monday', 'E2', 'E', '11:00:00', '11:55:00', 'Nouman Durrani'),
(1458, 'CS101', 'Monday', 'E2', 'C', '12:00:00', '12:55:00', 'Nauman Atique '),
(1459, 'CS401', 'Monday', 'E2', 'Gr2', '01:00:00', '01:55:00', 'Ali Naqvi '),
(1460, 'CS211', 'Monday', 'E2', 'F', '02:00:00', '02:55:00', 'Nouman Durrani'),
(1461, 'CS103', 'Monday', 'E3', 'A(A,G,H)', '08:00:00', '08:55:00', 'Abdul Aziz'),
(1462, 'CS103', 'Monday', 'E3', 'B(B,C)', '09:00:00', '09:55:00', 'Abdul Aziz'),
(1463, 'CS201', 'Monday', 'E3', 'E(H)', '10:00:00', '10:55:00', 'Sehrish Hina'),
(1464, 'CS422', 'Monday', 'E3', 'C', '11:00:00', '11:55:00', 'Dr. Jalaluddin'),
(1465, 'CS103', 'Monday', 'E3', 'C(D,E,F)', '12:00:00', '12:55:00', 'Abdul Aziz'),
(1466, 'EE182', 'Monday', 'E3', 'F', '02:00:00', '02:55:00', 'Adeel'),
(1467, 'EE182', 'Monday', 'E3', 'C', '03:00:00', '03:55:00', 'Adeel'),
(1468, 'CS101', 'Monday', 'E4', 'B', '08:00:00', '08:55:00', 'Javeria '),
(1469, 'CS101', 'Monday', 'E4', 'F', '09:00:00', '09:55:00', 'Javeria '),
(1470, 'EE213', 'Monday', 'E4', 'C', '10:00:00', '10:55:00', 'Nadeem Kafi'),
(1471, 'CS101', 'Monday', 'E4', 'E', '11:00:00', '11:55:00', 'M. Shahzad '),
(1472, 'CS101', 'Monday', 'E4', 'D', '12:00:00', '12:55:00', 'Javeria '),
(1473, 'EE213', 'Monday', 'E4', 'F', '01:00:00', '01:55:00', 'Nadeem Kafi'),
(1474, 'EE213', 'Monday', 'E4', 'A', '02:00:00', '02:55:00', 'Nadeem Kafi'),
(1475, 'CS201', 'Monday', 'E5', 'A(A,B)', '08:00:00', '08:55:00', 'Sehrish Hina'),
(1476, 'CS211', 'Monday', 'E5', 'B', '10:00:00', '10:55:00', 'Dr. Fahad Samad'),
(1477, 'CS211', 'Monday', 'E5', 'D', '11:00:00', '11:55:00', 'Dr. Fahad Samad'),
(1478, 'CS201', 'Monday', 'E5', 'C(E,F1)', '12:00:00', '12:55:00', 'Sehrish Hina'),
(1479, 'EE213', 'Monday', 'E5', 'D', '01:00:00', '01:55:00', 'Mahwish'),
(1480, 'EE213', 'Monday', 'E5', 'B', '02:00:00', '02:55:00', 'Mahwish'),
(1481, 'CS302', 'Monday', 'E6', 'C', '08:00:00', '08:55:00', 'Dr. Atif'),
(1482, 'CS302', 'Monday', 'E6', 'A', '09:00:00', '09:55:00', 'Dr. Atif'),
(1483, 'CS422', 'Monday', 'E6', 'B', '11:00:00', '11:55:00', 'Farrukh'),
(1484, 'CS422', 'Monday', 'E6', 'D', '12:00:00', '12:55:00', 'Farrukh'),
(1485, 'CS203', 'Monday', 'E6', 'B', '01:00:00', '01:55:00', 'Tania'),
(1486, 'CS203', 'Monday', 'E6', 'A', '02:00:00', '02:55:00', 'Tania'),
(1487, 'CS422', 'Monday', 'E6', 'E', '03:00:00', '03:55:00', 'Farrukh'),
(1488, 'CS449', 'Monday', 'R11', 'A', '11:00:00', '11:55:00', 'Khalid'),
(1489, 'CS449', 'Monday', 'R11', 'B', '01:00:00', '01:55:00', 'Khalid'),
(1490, 'CS449', 'Monday', 'R11', 'D', '03:00:00', '03:55:00', 'Khalid'),
(1491, 'CS101', 'Monday', 'R12', 'A', '08:00:00', '08:55:00', 'Nauman Atique '),
(1492, 'EE204', 'Monday', 'R12', 'Gr2(C,D)', '09:00:00', '09:55:00', 'Dr. Hasina'),
(1493, 'CS499', 'Monday', 'R12', 'GR1', '10:00:00', '10:55:00', 'Dr. Jawwad'),
(1494, 'CS449', 'Monday', 'R12', 'E', '12:00:00', '12:55:00', 'Shaharbano'),
(1495, 'CS449', 'Monday', 'R12', 'C', '01:00:00', '01:55:00', 'Shaharbano'),
(1496, 'CS440', 'Monday', 'R12', 'GR1', '02:00:00', '02:55:00', 'Nauman Atique'),
(1497, 'CS449', 'Monday', 'R12', 'F', '03:00:00', '03:55:00', 'Shaharbano'),
(1498, 'CS203', 'Monday', 'R109', 'E', '08:00:00', '08:55:00', 'Tania'),
(1499, 'EE204', 'Monday', 'R109', 'Gr1(A,B)', '11:00:00', '11:55:00', 'Faraz'),
(1500, 'EE204', 'Monday', 'R109', 'Gr3(E,F1)', '12:00:00', '12:55:00', 'Faraz'),
(1501, 'CS309', 'Monday', 'R109', 'A', '01:00:00', '01:55:00', 'Abdur Rehman'),
(1502, 'EE204', 'Monday', 'R109', 'Gr4(F2,G)', '03:00:00', '03:55:00', 'Faraz'),
(1503, 'CS303', 'Monday', 'S1', 'GR2', '08:00:00', '08:55:00', 'Abdul rehman'),
(1504, 'CS303', 'Monday', 'S1', 'GR1', '09:00:00', '09:55:00', 'Abdul rehman'),
(1505, 'CS404', 'Monday', 'S1', 'GR1', '10:00:00', '10:55:00', 'Shahbaz'),
(1506, 'MG220', 'Monday', 'S1', 'Gr3(G,H)', '11:00:00', '11:55:00', 'Asiya'),
(1507, 'EE182', 'Monday', 'S1', 'A', '12:00:00', '12:55:00', 'Javaid Qureshi'),
(1508, 'EE182', 'Monday', 'S1', 'E', '01:00:00', '01:55:00', 'Javaid Qureshi'),
(1509, 'CS309', 'Monday', 'CR-3 EE', 'G', '08:00:00', '08:55:00', 'Rubab'),
(1510, 'CS205', 'Monday', 'CR-3 EE', 'Gr2(C,D)', '09:00:00', '09:55:00', 'Nausheen'),
(1511, 'CS205', 'Monday', 'CR-3 EE', 'Gr1(A,B)', '11:00:00', '11:55:00', 'Nausheen'),
(1512, 'CS205', 'Monday', 'CR-3 EE', 'Gr3(E,F,G)', '12:00:00', '12:55:00', 'Nausheen'),
(1513, 'CS309', 'Monday', 'CR-3 EE', 'B', '02:00:00', '02:55:00', 'Rubab'),
(1514, 'CS201', 'Monday', 'CR-4', 'D(F2,G)', '08:00:00', '08:55:00', 'Anum'),
(1515, 'CS201', 'Monday', 'CR-4', 'B(C,D)', '09:00:00', '09:55:00', 'Anum'),
(1516, 'MT104', 'Monday', 'CR-4', 'G', '10:00:00', '10:55:00', 'Dr. Faqiha'),
(1517, 'CS309', 'Monday', 'CR-4', 'D', '11:00:00', '11:55:00', 'Rubab'),
(1518, 'MT104', 'Monday', 'CR-4', 'B', '12:00:00', '12:55:00', 'Dr. Faqiha'),
(1519, 'MT104', 'Monday', 'CR-4', 'H', '03:00:00', '03:55:00', 'Dr. Faqiha'),
(1520, 'MT104', 'Monday', 'CR-6', 'D', '08:00:00', '08:55:00', 'Jamil'),
(1521, 'EE213', 'Monday', 'CR-6', 'G', '09:00:00', '09:55:00', 'Danish'),
(1522, 'CS302', 'Monday', 'CR-6', 'G', '10:00:00', '10:55:00', 'Zeeshan'),
(1523, 'CS302', 'Monday', 'CR-6', 'F', '11:00:00', '11:55:00', 'Zeeshan'),
(1524, 'EE213', 'Monday', 'CR-6', 'H', '01:00:00', '01:55:00', 'Danish'),
(1525, 'EE213', 'Monday', 'CR-6', 'E', '02:00:00', '02:55:00', 'Danish'),
(1526, 'CS203', 'Monday', 'CR-7', 'D', '08:00:00', '08:55:00', 'Ahsan'),
(1527, 'MT104', 'Monday', 'CR-7', 'A', '09:00:00', '09:55:00', 'Dr . Fahad Riaz'),
(1528, 'CS203', 'Monday', 'CR-7', 'G', '11:00:00', '11:55:00', 'Ahsan'),
(1529, 'MT104', 'Monday', 'CR-7', 'C', '12:00:00', '12:55:00', 'Dr. Fahad Riaz'),
(1530, 'MT104', 'Monday', 'CR-7', 'E', '03:00:00', '03:55:00', 'Dr. Fahad Riaz'),
(1531, 'MT101', 'Monday', 'CR-10', 'D', '08:00:00', '08:55:00', 'Ashhad'),
(1532, 'MT101', 'Monday', 'CR-10', 'E', '09:00:00', '09:55:00', 'Ashhad'),
(1533, 'SS111', 'Monday', 'CR-10', 'C', '10:00:00', '10:55:00', 'Hassan Saeed'),
(1534, 'SS111', 'Monday', 'CR-10', 'D', '11:00:00', '11:55:00', 'Hassan Saeed'),
(1535, 'MT101', 'Monday', 'CR-10', 'F', '12:00:00', '12:55:00', 'Ashhad'),
(1536, 'MT101', 'Monday', 'CR-10', 'G', '01:00:00', '01:55:00', 'Abdul Basit'),
(1537, 'SS111', 'Monday', 'CR-10', 'E', '02:00:00', '02:55:00', 'Hassan Saeed'),
(1538, 'MT101', 'Monday', 'CR-16', 'C', '08:00:00', '08:55:00', 'Dr. Sadaqat'),
(1539, 'SS111', 'Monday', 'CR-16', 'B', '09:00:00', '09:55:00', 'Shahzad Sheikh'),
(1540, 'SS111', 'Monday', 'CR-16', 'A', '10:00:00', '10:55:00', 'Shahzad Sheikh'),
(1541, 'MT101', 'Monday', 'CR-16', 'B', '11:00:00', '11:55:00', 'Dr. Sadaqat'),
(1542, 'MT101', 'Monday', 'CR-16', 'A', '02:00:00', '02:55:00', 'Dr. Sadaqat'),
(1543, 'MT104', 'Monday', 'CR-16', 'F', '03:00:00', '03:55:00', 'Jamil'),
(1544, 'SS102', 'Monday', 'CR-17', 'D2', '09:00:00', '09:55:00', 'Waheed Haris'),
(1545, 'SS102', 'Monday', 'CR-17', 'A1', '11:00:00', '11:55:00', 'Nazia'),
(1546, 'SS102', 'Monday', 'CR-17', 'E1', '12:00:00', '12:55:00', 'Nazia'),
(1547, 'SS102', 'Monday', 'CR-17', 'C1', '02:00:00', '02:55:00', 'Nazia'),
(1548, 'SS102', 'Monday', 'CR-18', 'G1', '08:00:00', '08:55:00', 'Nazia'),
(1549, 'SS113', 'Monday', 'CR-18', 'G', '09:00:00', '09:55:00', 'Sarmad '),
(1550, 'SS203', 'Monday', 'CR-18', 'Gr1', '10:00:00', '10:55:00', 'Sarmad '),
(1551, 'SS113', 'Monday', 'CR-18', 'F', '01:00:00', '01:55:00', 'Sarmad '),
(1552, 'CS201', 'Tuesday', 'E1', 'D(F2,G)', '09:00:00', '09:55:00', 'Anum'),
(1553, 'CS201', 'Tuesday', 'E1', 'B(C,D)', '01:00:00', '01:55:00', 'Anum'),
(1554, 'CS101', 'Tuesday', 'E2', 'C', '08:00:00', '08:55:00', 'Nauman Atique '),
(1555, 'CS302', 'Tuesday', 'E2', 'A', '11:00:00', '11:55:00', 'Dr. Atif'),
(1556, 'CS302', 'Tuesday', 'E2', 'C', '12:00:00', '12:55:00', 'Dr. Atif'),
(1557, 'CS101', 'Tuesday', 'E2', 'A', '02:00:00', '02:55:00', 'Nauman Atique '),
(1558, 'CS203', 'Tuesday', 'E3', 'A', '08:00:00', '08:55:00', 'Tania'),
(1559, 'CS103', 'Tuesday', 'E3', 'C(D,E,F)', '09:00:00', '09:55:00', 'Abdul Aziz'),
(1560, 'CS404', 'Tuesday', 'E3', 'GR1', '10:00:00', '10:55:00', 'Shahbaz'),
(1561, 'CS103', 'Tuesday', 'E3', 'A(A,G,H)', '12:00:00', '12:55:00', 'Abdul Aziz'),
(1562, 'CS103', 'Tuesday', 'E3', 'B(B,C)', '01:00:00', '01:55:00', 'Abdul Aziz'),
(1563, 'CS101', 'Tuesday', 'E4', 'D', '08:00:00', '08:55:00', 'Javeria '),
(1564, 'EE213', 'Tuesday', 'E4', 'D', '10:00:00', '10:55:00', 'Mahwish'),
(1565, 'CS101', 'Tuesday', 'E4', 'B', '11:00:00', '11:55:00', 'Javeria '),
(1566, 'CS101', 'Tuesday', 'E4', 'F', '01:00:00', '01:55:00', 'Javeria '),
(1567, 'EE213', 'Tuesday', 'E4', 'B', '03:00:00', '03:55:00', 'Mahwish'),
(1568, 'EE227', 'Tuesday', 'E5', 'Gr1', '08:00:00', '08:55:00', 'Bahraj'),
(1569, 'EE227', 'Tuesday', 'E5', 'Gr1', '10:00:00', '10:55:00', 'Bahraj'),
(1570, 'CS211', 'Tuesday', 'E5', 'B', '11:00:00', '11:55:00', 'Dr. Fahad Samad '),
(1571, 'CS211', 'Tuesday', 'E5', 'D', '12:00:00', '12:55:00', 'Dr. Fahad Samad'),
(1572, 'CS302', 'Tuesday', 'E5', 'F', '01:00:00', '01:55:00', 'Zeeshan'),
(1573, 'CS302', 'Tuesday', 'E5', 'G', '02:00:00', '02:55:00', 'Zeeshan'),
(1574, 'EE213', 'Tuesday', 'E5', 'E', '03:00:00', '03:55:00', 'Danish'),
(1575, 'CS303', 'Tuesday', 'E6', 'GR1', '08:00:00', '08:55:00', 'Abdul rehman'),
(1576, 'CS303', 'Tuesday', 'E6', 'GR2', '09:00:00', '09:55:00', 'Abdul rehman'),
(1577, 'CS211', 'Tuesday', 'E6', 'H', '10:00:00', '10:55:00', 'Shoaib'),
(1578, 'CS211', 'Tuesday', 'E6', 'G', '11:00:00', '11:55:00', 'Shoaib'),
(1579, 'CS211', 'Tuesday', 'E6', 'A', '02:00:00', '02:55:00', 'Shoaib'),
(1580, 'CS411', 'Tuesday', 'R11', 'GR1', '02:00:00', '02:55:00', 'Dr. Sufian'),
(1581, 'CS411', 'Tuesday', 'R11', 'GR1', '03:00:00', '03:55:00', 'Dr. Sufian'),
(1582, 'CS101', 'Tuesday', 'R12', 'G', '08:00:00', '08:55:00', 'M. Shahzad '),
(1583, 'EE204', 'Tuesday', 'R12', 'Gr2(C,D)', '09:00:00', '09:55:00', 'Dr. Hasina'),
(1584, 'CS499', 'Tuesday', 'R12', 'GR1', '10:00:00', '10:55:00', 'Dr. Jawwad'),
(1585, 'CS203', 'Tuesday', 'R12', 'B', '11:00:00', '11:55:00', 'Tania'),
(1586, 'CS211', 'Tuesday', 'R12', 'C', '12:00:00', '12:55:00', 'Nouman Durrani'),
(1587, 'CS203', 'Tuesday', 'R12', 'E', '02:00:00', '02:55:00', 'Tania'),
(1588, 'CS101', 'Tuesday', 'R12', 'E', '03:00:00', '03:55:00', 'M. Shahzad '),
(1589, 'CS406', 'Tuesday', 'R109', 'GR2', '08:00:00', '08:55:00', 'Dr. Farooque'),
(1590, 'CS406', 'Tuesday', 'R109', 'GR1', '09:00:00', '09:55:00', 'Dr. Farooque'),
(1591, 'CS508', 'Tuesday', 'R109', 'GR1', '11:00:00', '11:55:00', 'M. Shahzad'),
(1592, 'CS406', 'Tuesday', 'R109', 'GR2', '01:00:00', '01:55:00', 'Dr. Farooque'),
(1593, 'CS211', 'Tuesday', 'S1', 'E', '08:00:00', '08:55:00', 'Nouman Durrani'),
(1594, 'CS211', 'Tuesday', 'S1', 'F', '10:00:00', '10:55:00', 'Nouman Durrani'),
(1595, 'CS450', 'Tuesday', 'S1', 'GR1', '11:00:00', '11:55:00', 'Ubaid'),
(1596, 'CS450', 'Tuesday', 'S1', 'GR1', '12:00:00', '12:55:00', 'Ubaid'),
(1597, 'EE182', 'Tuesday', 'S1', 'C', '02:00:00', '02:55:00', 'Adeel'),
(1598, 'EE182', 'Tuesday', 'S1', 'F', '03:00:00', '03:55:00', 'Adeel'),
(1599, 'EE213', 'Tuesday', 'CR-3 EE', 'F', '08:00:00', '08:55:00', 'Nadeem Kafi '),
(1600, 'EE213', 'Tuesday', 'CR-3 EE', 'C', '10:00:00', '10:55:00', 'Nadeem Kafi'),
(1601, 'EE182', 'Tuesday', 'CR-3 EE', 'G', '02:00:00', '02:55:00', 'Ahsan sunny'),
(1602, 'EE213', 'Tuesday', 'CR-3 EE', 'A', '03:00:00', '03:55:00', 'Nadeem Kafi'),
(1603, 'EE213', 'Tuesday', 'CR-4', 'H', '08:00:00', '08:55:00', 'Danish '),
(1604, 'CS201', 'Tuesday', 'CR-4', 'C(E,F1)', '09:00:00', '09:55:00', 'Sehrish Hina'),
(1605, 'EE213', 'Tuesday', 'CR-4', 'G', '10:00:00', '10:55:00', 'Danish'),
(1606, 'CS201', 'Tuesday', 'CR-4', 'E(H)', '11:00:00', '11:55:00', 'Sehrish Hina'),
(1607, 'CS201', 'Tuesday', 'CR-4', 'A(A,B)', '01:00:00', '01:55:00', 'Sehrish Hina'),
(1608, 'CS205', 'Tuesday', 'CR-4', 'Gr3(E,F,G)', '03:00:00', '03:55:00', 'Nausheen'),
(1609, 'MT104', 'Tuesday', 'CR-6', 'C', '09:00:00', '09:55:00', 'Dr. Fahad Riaz'),
(1610, 'MT104', 'Tuesday', 'CR-6', 'A', '11:00:00', '11:55:00', 'Dr. Fahad Riaz'),
(1611, 'MT104', 'Tuesday', 'CR-6', 'E', '02:00:00', '02:55:00', 'Dr. Fahad Riaz'),
(1612, 'CS309', 'Tuesday', 'CR-7', 'E', '08:00:00', '08:55:00', 'Faiza Sattar'),
(1613, 'CS302', 'Tuesday', 'CR-7', 'B', '09:00:00', '09:55:00', 'Subash'),
(1614, 'CS205', 'Tuesday', 'CR-7', 'Gr1(A,B)', '10:00:00', '10:55:00', 'Nausheen'),
(1615, 'CS205', 'Tuesday', 'CR-7', 'Gr2(C,D)', '11:00:00', '11:55:00', 'Nausheen'),
(1616, 'CS302', 'Tuesday', 'CR-7', 'D', '12:00:00', '12:55:00', 'Subash'),
(1617, 'CS302', 'Tuesday', 'CR-7', 'E', '01:00:00', '01:55:00', 'Subash'),
(1618, 'CS309', 'Tuesday', 'CR-7', 'F', '02:00:00', '02:55:00', 'Faiza Sattar'),
(1619, 'MT101', 'Tuesday', 'CR-10', 'F', '08:00:00', '08:55:00', 'Ashhad'),
(1620, 'SS111', 'Tuesday', 'CR-10', 'C', '09:00:00', '09:55:00', 'Hassan Saeed'),
(1621, 'MT101', 'Tuesday', 'CR-10', 'E', '10:00:00', '10:55:00', 'Ashhad'),
(1622, 'SS102', 'Tuesday', 'CR-10', 'B2', '12:00:00', '12:55:00', 'Sameera'),
(1623, 'SS111', 'Tuesday', 'CR-10', 'D', '01:00:00', '01:55:00', 'Hassan Saeed'),
(1624, 'SS111', 'Tuesday', 'CR-10', 'E', '02:00:00', '02:55:00', 'Hassan Saeed'),
(1625, 'MT101', 'Tuesday', 'CR-16', 'A', '08:00:00', '08:55:00', 'Dr. Sadaqat'),
(1626, 'MT101', 'Tuesday', 'CR-16', 'C', '12:00:00', '12:55:00', 'Dr. Sadaqat'),
(1627, 'MT101', 'Tuesday', 'CR-16', 'B', '02:00:00', '02:55:00', 'Dr. Sadaqat'),
(1628, 'SS102', 'Tuesday', 'CR-17', 'B1', '08:00:00', '08:55:00', 'Faiza Mumtaz'),
(1629, 'EE204', 'Tuesday', 'CR-17', 'Gr1(A,B)', '10:00:00', '10:55:00', 'Faraz'),
(1630, 'CS203', 'Tuesday', 'CR-17', 'F', '11:00:00', '11:55:00', 'Ahsan'),
(1631, 'EE204', 'Tuesday', 'CR-17', 'Gr3(E,F1)', '12:00:00', '12:55:00', 'Faraz'),
(1632, 'MT101', 'Tuesday', 'CR-17', 'G', '01:00:00', '01:55:00', 'Abdul Basit'),
(1633, 'MT101', 'Tuesday', 'CR-17', 'D', '02:00:00', '02:55:00', 'Ashhad'),
(1634, 'EE204', 'Tuesday', 'CR-17', 'Gr4(F2,G)', '03:00:00', '03:55:00', 'Faraz'),
(1635, 'SS102', 'Tuesday', 'CR-18', 'E2', '08:00:00', '08:55:00', 'Waheed Haris'),
(1636, 'SS203', 'Tuesday', 'CR-18', 'Gr1', '09:00:00', '09:55:00', 'Sarmad '),
(1637, 'SS102', 'Tuesday', 'CR-18', 'D1', '11:00:00', '11:55:00', 'Faiza Mumtaz'),
(1638, 'SS102', 'Tuesday', 'CR-18', 'G2', '12:00:00', '12:55:00', 'Faiza Mumtaz'),
(1639, 'SS102', 'Tuesday', 'CR-18', 'C2', '01:00:00', '01:55:00', 'Waheed Haris'),
(1640, 'SS102', 'Tuesday', 'CR-18', 'F1', '02:00:00', '02:55:00', 'Faiza Mumtaz'),
(1641, 'SS102', 'Tuesday', 'CR-18', 'A2', '03:00:00', '03:55:00', 'Waheed Haris'),
(1642, 'CS203', 'Thursday', 'E1', 'E', '08:00:00', '08:55:00', 'Tania'),
(1643, 'CS203', 'Thursday', 'E1', 'B', '10:00:00', '10:55:00', 'Tania'),
(1644, 'CS203', 'Thursday', 'E1', 'A', '12:00:00', '12:55:00', 'Tania'),
(1645, 'CS309', 'Thursday', 'E1', 'A', '01:00:00', '01:55:00', 'Abdur Rehman'),
(1646, 'CS422', 'Thursday', 'E1', 'A', '02:00:00', '02:55:00', 'Behraj'),
(1647, 'CS422', 'Thursday', 'E1', 'F', '03:00:00', '03:55:00', 'Behraj'),
(1648, 'CS302', 'Thursday', 'E2', 'C', '08:00:00', '08:55:00', 'Dr. Atif'),
(1649, 'CS449', 'Thursday', 'E2', 'A', '09:00:00', '09:55:00', 'Khalid'),
(1650, 'CS302', 'Thursday', 'E2', 'A', '11:00:00', '11:55:00', 'Dr. Atif'),
(1651, 'CS449', 'Thursday', 'E2', 'D', '02:00:00', '02:55:00', 'Khalid'),
(1652, 'CS449', 'Thursday', 'E2', 'B', '03:00:00', '03:55:00', 'Khalid'),
(1653, 'CS309', 'Thursday', 'E3', 'G', '08:00:00', '08:55:00', 'Rubab'),
(1654, 'CS309', 'Thursday', 'E3', 'B', '09:00:00', '09:55:00', 'Rubab'),
(1655, 'CS309', 'Thursday', 'E3', 'D', '11:00:00', '11:55:00', 'Rubab'),
(1656, 'CS101', 'Thursday', 'E4', 'E', '08:00:00', '08:55:00', 'M. Shahzad '),
(1657, 'CS101', 'Thursday', 'E4', 'G', '10:00:00', '10:55:00', 'M. Shahzad '),
(1658, 'SS111', 'Thursday', 'E4', 'B', '12:00:00', '12:55:00', 'Shahzad Sheikh'),
(1659, 'CS508', 'Thursday', 'E4', 'GR1', '01:00:00', '01:55:00', 'M. Shahzad'),
(1660, 'CS301', 'Thursday', 'E4', 'Gr1', '02:00:00', '02:55:00', 'M. Shahzad'),
(1661, 'CS309', 'Thursday', 'E5', 'F', '08:00:00', '08:55:00', 'Faiza sattar'),
(1662, 'CS309', 'Thursday', 'E5', 'E', '09:00:00', '09:55:00', 'Faiza sattar'),
(1663, 'CS203', 'Thursday', 'E5', 'C', '11:00:00', '11:55:00', 'Dr. Zeeshan'),
(1664, 'CS309', 'Thursday', 'E5', 'C', '12:00:00', '12:55:00', 'Faiza sattar'),
(1665, 'EE213', 'Thursday', 'E5', 'B', '01:00:00', '01:55:00', 'Mahwish '),
(1666, 'EE213', 'Thursday', 'E5', 'D', '02:00:00', '02:55:00', 'Mahwish'),
(1667, 'CS567', 'Thursday', 'E6', 'GR1', '08:00:00', '08:55:00', 'M. Rafi'),
(1668, 'CS422', 'Thursday', 'E6', 'B', '09:00:00', '09:55:00', 'Farrukh'),
(1669, 'CS440', 'Thursday', 'E6', 'GR1', '10:00:00', '10:55:00', 'Nauman Atique'),
(1670, 'SS122', 'Thursday', 'E6', 'Gr1', '11:00:00', '11:55:00', 'Tuba'),
(1671, 'MG335', 'Thursday', 'E6', 'Gr2', '12:00:00', '12:55:00', '(D,E,F,G) Tuba'),
(1672, 'CS422', 'Thursday', 'E6', 'E', '02:00:00', '02:55:00', 'Farrukh'),
(1673, 'CS422', 'Thursday', 'E6', 'D', '03:00:00', '03:55:00', 'Farrukh'),
(1674, 'CS449', 'Thursday', 'R11', 'C', '09:00:00', '09:55:00', 'Shaharbano'),
(1675, 'CS449', 'Thursday', 'R11', 'F', '02:00:00', '02:55:00', 'Shaharbano'),
(1676, 'CS449', 'Thursday', 'R11', 'E', '03:00:00', '03:55:00', 'Shaharbano'),
(1677, 'CS481', 'Thursday', 'R12', 'GR1', '08:00:00', '08:55:00', 'Dr. Zeeshan'),
(1678, 'CS540', 'Thursday', 'R12', 'GR2', '09:00:00', '09:55:00', 'Dr. Zulfiqar'),
(1679, 'CS540', 'Thursday', 'R12', 'GR1', '10:00:00', '10:55:00', 'Dr. Zulfiqar'),
(1680, 'CS540', 'Thursday', 'R12', 'GR1', '12:00:00', '12:55:00', 'Dr. Zulfiqar'),
(1681, 'CS203', 'Thursday', 'R109', 'D', '08:00:00', '08:55:00', 'Ahsan'),
(1682, 'CS203', 'Thursday', 'R109', 'G', '09:00:00', '09:55:00', 'Ahsan'),
(1683, 'CS203', 'Thursday', 'R109', 'F', '01:00:00', '01:55:00', 'Ahsan'),
(1684, 'EE182', 'Thursday', 'S1', 'E', '09:00:00', '09:55:00', 'Javaid Qureshi'),
(1685, 'EE182', 'Thursday', 'S1', 'A', '11:00:00', '11:55:00', 'Javaid Qureshi'),
(1686, 'CS450', 'Thursday', 'S1', 'GR1', '01:00:00', '01:55:00', 'Ubaid'),
(1687, 'MG335', 'Thursday', 'S1', 'Gr1', '03:00:00', '03:55:00', '(A,B,C) Tuba'),
(1688, 'EE182', 'Thursday', 'CR-3 EE', 'B', '08:00:00', '08:55:00', 'Kanwal'),
(1689, 'EE182', 'Thursday', 'CR-3 EE', 'D', '09:00:00', '09:55:00', 'Kanwal'),
(1690, 'SS223', 'Thursday', 'CR-3 EE', 'Gr1(A,B,C,D)', '11:00:00', '11:55:00', 'Sameera'),
(1691, 'SS223', 'Thursday', 'CR-3 EE', 'Gr2(E,F,G,H)', '12:00:00', '12:55:00', 'Sameera'),
(1692, 'MG448', 'Thursday', 'CR-3 EE', 'Gr1', '03:00:00', '03:55:00', 'Ahsan'),
(1693, 'MT104', 'Thursday', 'CR-4', 'H', '11:00:00', '11:55:00', 'Dr. Faqiha'),
(1694, 'MT104', 'Thursday', 'CR-4', 'B', '12:00:00', '12:55:00', 'Dr. Faqiha'),
(1695, 'MT104', 'Thursday', 'CR-6', 'C', '08:00:00', '08:55:00', 'Dr. Fahad Riaz'),
(1696, 'MT104', 'Thursday', 'CR-6', 'E', '09:00:00', '09:55:00', 'Dr. Fahad Riaz'),
(1697, 'MT104', 'Thursday', 'CR-6', 'A', '12:00:00', '12:55:00', 'Dr. Fahad Riaz'),
(1698, 'MT206', 'Thursday', 'CR-6', 'Gr1', '02:00:00', '02:55:00', 'Abdul Basit '),
(1699, 'MT303', 'Thursday', 'CR-6', 'Gr1', '03:00:00', '03:55:00', 'Abdul Basit'),
(1700, 'CS302', 'Thursday', 'CR-7', 'B', '08:00:00', '08:55:00', 'Subash'),
(1701, 'CS302', 'Thursday', 'CR-7', 'D', '09:00:00', '09:55:00', 'Subash'),
(1702, 'MG220', 'Thursday', 'CR-7', 'Gr1(A,B,C)', '11:00:00', '11:55:00', 'Asiya'),
(1703, 'MG220', 'Thursday', 'CR-7', 'Gr2(D,E,F)', '12:00:00', '12:55:00', 'Asiya'),
(1704, 'CS302', 'Thursday', 'CR-7', 'E', '01:00:00', '01:55:00', 'Subash'),
(1705, 'SS135', 'Thursday', 'CR-7', 'Gr1', '03:00:00', '03:55:00', 'Micheal '),
(1706, 'SS103', 'Thursday', 'CR-10', 'Gr1', '03:00:00', '03:55:00', 'Shahzad Sheikh'),
(1707, 'MT104', 'Thursday', 'CR-16', 'F', '09:00:00', '09:55:00', 'Jamil'),
(1708, 'SS113', 'Thursday', 'CR-16', 'F', '10:00:00', '10:55:00', 'Sarmad '),
(1709, 'SS118', 'Thursday', 'CR-16', 'Gr1(A,B,C,D)', '11:00:00', '11:55:00', 'Sumaira'),
(1710, 'SS118', 'Thursday', 'CR-16', 'Gr2(E,F,G,H)', '12:00:00', '12:55:00', 'Sumaira'),
(1711, 'SS127', 'Thursday', 'CR-16', 'Gr1', '03:00:00', '03:55:00', 'Sumaira'),
(1712, 'SS102', 'Thursday', 'CR-17', 'A1', '08:00:00', '08:55:00', 'Nazia'),
(1713, 'SS102', 'Thursday', 'CR-17', 'G1', '09:00:00', '09:55:00', 'Nazia'),
(1714, 'MT104', 'Thursday', 'CR-17', 'D', '03:00:00', '03:55:00', 'Jamil'),
(1715, 'SS102', 'Thursday', 'CR-18', 'G2', '09:00:00', '09:55:00', 'Faiza Mumtaz'),
(1716, 'SS102', 'Thursday', 'CR-18', 'D1', '10:00:00', '10:55:00', 'Faiza Mumtaz'),
(1717, 'SS102', 'Thursday', 'CR-18', 'C2', '12:00:00', '12:55:00', 'Waheed Haris'),
(1718, 'SS102', 'Thursday', 'CR-18', 'E2', '01:00:00', '01:55:00', 'Waheed Haris'),
(1719, 'SS102', 'Thursday', 'CR-18', 'F1', '02:00:00', '02:55:00', 'Faiza Mumtaz'),
(1720, 'SS102', 'Thursday', 'CR-18', 'B1', '03:00:00', '03:55:00', 'Faiza Mumtaz'),
(1721, 'CS101', 'Wednesday', 'E1', 'A', '08:00:00', '08:55:00', 'Nauman Atique '),
(1722, 'CS449', 'Wednesday', 'E1', 'A', '10:00:00', '10:55:00', 'Khalid'),
(1723, 'CS449', 'Wednesday', 'E1', 'D', '11:00:00', '11:55:00', 'Khalid'),
(1724, 'CS101', 'Wednesday', 'E1', 'C', '12:00:00', '12:55:00', 'Nauman Atique '),
(1725, 'CS201', 'Wednesday', 'E1', 'A(A,B)', '02:00:00', '02:55:00', 'Sehrish Hina'),
(1726, 'CS201', 'Wednesday', 'E2', 'E(H)', '08:00:00', '08:55:00', 'Sehrish Hina'),
(1727, 'CS201', 'Wednesday', 'E2', 'C(E,F1)', '09:00:00', '09:55:00', 'Sehrish Hina'),
(1728, 'CS422', 'Wednesday', 'E2', 'B', '10:00:00', '10:55:00', 'Farrukh'),
(1729, 'CS422', 'Wednesday', 'E2', 'E', '11:00:00', '11:55:00', 'Farrukh'),
(1730, 'CS449', 'Wednesday', 'E2', 'B', '02:00:00', '02:55:00', 'Khalid'),
(1731, 'CS422', 'Wednesday', 'E2', 'D', '03:00:00', '03:55:00', 'Farrukh'),
(1732, 'CS567', 'Wednesday', 'E3', 'GR1', '08:00:00', '08:55:00', 'M. Rafi'),
(1733, 'CS567', 'Wednesday', 'E3', 'GR1', '09:00:00', '09:55:00', 'M. Rafi'),
(1734, 'CS411', 'Wednesday', 'E3', 'GR1', '12:00:00', '12:55:00', 'Dr. Sufian'),
(1735, 'CS307', 'Wednesday', 'E3', 'Gr1', '01:00:00', '01:55:00', 'Dr. Sufian '),
(1736, 'EE204', 'Wednesday', 'E3', 'Gr3(E,F1)', '02:00:00', '02:55:00', 'Faraz'),
(1737, 'CS101', 'Wednesday', 'E4', 'B', '08:00:00', '08:55:00', 'Javeria '),
(1738, 'CS103', 'Wednesday', 'E4', 'C(D,E,F)', '09:00:00', '09:55:00', 'Abdul Aziz'),
(1739, 'CS101', 'Wednesday', 'E4', 'D', '10:00:00', '10:55:00', 'Javeria '),
(1740, 'CS101', 'Wednesday', 'E4', 'F', '12:00:00', '12:55:00', 'Javeria '),
(1741, 'CS205', 'Wednesday', 'E4', 'Gr1(A,B)', '01:00:00', '01:55:00', 'Nausheen'),
(1742, 'CS205', 'Wednesday', 'E4', 'Gr3(E,F,G)', '02:00:00', '02:55:00', 'Nausheen'),
(1743, 'CS211', 'Wednesday', 'E5', 'C', '08:00:00', '08:55:00', 'Nouman Durrani'),
(1744, 'CS205', 'Wednesday', 'E5', 'Gr2(C,D)', '09:00:00', '09:55:00', 'Nausheen'),
(1745, 'CS211', 'Wednesday', 'E5', 'E', '10:00:00', '10:55:00', 'Nouman Durrani'),
(1746, 'CS211', 'Wednesday', 'E5', 'F', '11:00:00', '11:55:00', 'Nouman Durrani'),
(1747, 'CS103', 'Wednesday', 'E5', 'B(B,C)', '01:00:00', '01:55:00', 'Abdul Aziz'),
(1748, 'CS103', 'Wednesday', 'E5', 'A(A,G,H)', '02:00:00', '02:55:00', 'Abdul Aziz'),
(1749, 'CS211', 'Wednesday', 'E6', 'A', '09:00:00', '09:55:00', 'Shoaib'),
(1750, 'CS422', 'Wednesday', 'E6', 'C', '10:00:00', '10:55:00', 'Dr. Jalaluddin'),
(1751, 'CS211', 'Wednesday', 'E6', 'H', '11:00:00', '11:55:00', 'Shoaib'),
(1752, 'CS211', 'Wednesday', 'E6', 'G', '01:00:00', '01:55:00', 'Shoaib'),
(1753, 'CS422', 'Wednesday', 'E6', 'C', '03:00:00', '03:55:00', 'Dr. Jalaluddin'),
(1754, 'CS211', 'Wednesday', 'R11', 'D', '08:00:00', '08:55:00', 'Dr. Fahad Samad'),
(1755, 'CS211', 'Wednesday', 'R11', 'B', '09:00:00', '09:55:00', 'Dr. Fahad Samad'),
(1756, 'CS449', 'Wednesday', 'R11', 'F', '11:00:00', '11:55:00', 'Shaharbano'),
(1757, 'CS449', 'Wednesday', 'R11', 'C', '02:00:00', '02:55:00', 'Shaharbano'),
(1758, 'CS449', 'Wednesday', 'R11', 'E', '03:00:00', '03:55:00', 'Shaharbano'),
(1759, 'EE204', 'Wednesday', 'R12', 'Gr2(C,D)', '09:00:00', '09:55:00', 'Dr. Hasina'),
(1760, 'CS540', 'Wednesday', 'R12', 'GR2', '10:00:00', '10:55:00', 'Dr. Zulfiqar'),
(1761, 'CS540', 'Wednesday', 'R12', 'GR1', '11:00:00', '11:55:00', 'Dr. Zulfiqar'),
(1762, 'CS540', 'Wednesday', 'R12', 'GR2', '02:00:00', '02:55:00', 'Dr. Zulfiqar'),
(1763, 'EE204', 'Wednesday', 'R109', 'Gr4(F2,G)', '08:00:00', '08:55:00', 'Faraz'),
(1764, 'CS201', 'Wednesday', 'R109', 'D(F2,G)', '09:00:00', '09:55:00', 'Anum'),
(1765, 'EE227', 'Wednesday', 'R109', 'Gr1', '10:00:00', '10:55:00', 'Bahraj'),
(1766, 'EE204', 'Wednesday', 'R109', 'Gr1(A,B)', '11:00:00', '11:55:00', 'Faraz'),
(1767, 'CS201', 'Wednesday', 'R109', 'B(C,D)', '01:00:00', '01:55:00', 'Anum'),
(1768, 'CS422', 'Wednesday', 'R109', 'A', '02:00:00', '02:55:00', 'Behraj'),
(1769, 'CS422', 'Wednesday', 'R109', 'F', '03:00:00', '03:55:00', 'Behraj'),
(1770, 'CS481', 'Wednesday', 'S1', 'GR1', '08:00:00', '08:55:00', 'Dr. Zeeshan'),
(1771, 'CS481', 'Wednesday', 'S1', 'GR1', '09:00:00', '09:55:00', 'Dr. Zeeshan'),
(1772, 'SS223', 'Wednesday', 'S1', 'I', '11:00:00', '11:55:00', 'Gr1(A,B,C,D) Sameera'),
(1773, 'SS223', 'Wednesday', 'S1', 'I', '12:00:00', '12:55:00', 'Gr1(A,B,C,D) Sameera'),
(1774, 'CS203', 'Wednesday', 'S1', 'C', '01:00:00', '01:55:00', 'Dr. Zeeshan'),
(1775, 'MG335', 'Wednesday', 'S1', 'Gr1', '02:00:00', '02:55:00', '(A,B,C) Tuba'),
(1776, 'MG335', 'Wednesday', 'S1', 'Gr2', '03:00:00', '03:55:00', '(D,E,F,G) Tuba'),
(1777, 'MT104', 'Wednesday', 'CR-3 EE', 'B', '08:00:00', '08:55:00', 'Dr. Faqiha'),
(1778, 'MT104', 'Wednesday', 'CR-3 EE', 'H', '09:00:00', '09:55:00', 'Dr. Faqiha'),
(1779, 'MG220', 'Wednesday', 'CR-3 EE', 'Gr1(A,B,C)', '11:00:00', '11:55:00', 'Asiya'),
(1780, 'MG220', 'Wednesday', 'CR-3 EE', 'Gr2(D,E,F)', '12:00:00', '12:55:00', 'Asiya'),
(1781, 'MT104', 'Wednesday', 'CR-3 EE', 'G', '03:00:00', '03:55:00', 'Dr. Faqiha'),
(1782, 'EE182', 'Wednesday', 'CR-4', 'C', '02:00:00', '02:55:00', 'Adeel'),
(1783, 'EE182', 'Wednesday', 'CR-4', 'F', '03:00:00', '03:55:00', 'Adeel'),
(1784, 'EE182', 'Wednesday', 'CR-6', 'G', '10:00:00', '10:55:00', 'Ahsan sunny'),
(1785, 'MG448', 'Wednesday', 'CR-6', 'Gr1', '03:00:00', '03:55:00', 'Ahsan'),
(1786, 'SS102', 'Wednesday', 'CR-7', 'G2', '08:00:00', '08:55:00', 'Faiza Mumtaz'),
(1787, 'SS102', 'Wednesday', 'CR-7', 'B1', '09:00:00', '09:55:00', 'Faiza Mumtaz'),
(1788, 'SS111', 'Wednesday', 'CR-7', 'A', '10:00:00', '10:55:00', 'Shahzad Sheikh'),
(1789, 'SS122', 'Wednesday', 'CR-7', 'Gr1', '11:00:00', '11:55:00', 'Tuba'),
(1790, 'SS102', 'Wednesday', 'CR-7', 'D1', '12:00:00', '12:55:00', 'Faiza Mumtaz'),
(1791, 'SS102', 'Wednesday', 'CR-7', 'F1', '02:00:00', '02:55:00', 'Faiza Mumtaz'),
(1792, 'SS103', 'Wednesday', 'CR-7', 'Gr1', '03:00:00', '03:55:00', 'Shahzad Sheikh'),
(1793, 'MT101', 'Wednesday', 'CR-10', 'D', '08:00:00', '08:55:00', 'Ashhad'),
(1794, 'SS102', 'Wednesday', 'CR-10', 'B2', '09:00:00', '09:55:00', 'Sameera'),
(1795, 'MT101', 'Wednesday', 'CR-10', 'F', '11:00:00', '11:55:00', 'Ashhad'),
(1796, 'MT101', 'Wednesday', 'CR-10', 'E', '01:00:00', '01:55:00', 'Ashhad'),
(1797, 'SS135', 'Wednesday', 'CR-10', 'Gr1', '03:00:00', '03:55:00', 'Micheal '),
(1798, 'MT206', 'Wednesday', 'CR-16', 'Gr1', '08:00:00', '08:55:00', 'Abdul Basit '),
(1799, 'MT101', 'Wednesday', 'CR-16', 'C', '09:00:00', '09:55:00', 'Dr. Sadaqat'),
(1800, 'MT101', 'Wednesday', 'CR-16', 'A', '11:00:00', '11:55:00', 'Dr. Sadaqat'),
(1801, 'MT101', 'Wednesday', 'CR-16', 'B', '12:00:00', '12:55:00', 'Dr. Sadaqat'),
(1802, 'MT101', 'Wednesday', 'CR-16', 'G', '02:00:00', '02:55:00', 'Abdul Basit'),
(1803, 'MT303', 'Wednesday', 'CR-16', 'Gr1', '03:00:00', '03:55:00', 'Abdul Basit'),
(1804, 'SS113', 'Wednesday', 'CR-17', 'F', '08:00:00', '08:55:00', 'Sarmad '),
(1805, 'SS113', 'Wednesday', 'CR-17', 'G', '09:00:00', '09:55:00', 'Sarmad '),
(1806, 'SS118', 'Wednesday', 'CR-17', 'Gr1(A,B,C,D)', '11:00:00', '11:55:00', 'Sumaira'),
(1807, 'SS118', 'Wednesday', 'CR-17', 'Gr2(E,F,G,H)', '12:00:00', '12:55:00', 'Sumaira'),
(1808, 'SS127', 'Wednesday', 'CR-17', 'Gr1', '03:00:00', '03:55:00', 'Sumaira'),
(1809, 'SS102', 'Wednesday', 'CR-18', 'G1', '08:00:00', '08:55:00', 'Nazia'),
(1810, 'SS102', 'Wednesday', 'CR-18', 'A1', '09:00:00', '09:55:00', 'Nazia'),
(1811, 'SS102', 'Wednesday', 'CR-18', 'C1', '11:00:00', '11:55:00', 'Nazia'),
(1812, 'SS102', 'Wednesday', 'CR-18', 'E1', '03:00:00', '03:55:00', 'Nazia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`,`f_code`,`section`);

--
-- Indexes for table `teachercourses`
--
ALTER TABLE `teachercourses`
  ADD PRIMARY KEY (`teacher_id`,`f_code`,`section`),
  ADD KEY `teachercourses_f_code_foreign` (`f_code`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timetable_f_code_foreign` (`f_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teachercourses`
--
ALTER TABLE `teachercourses`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1813;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `teachercourses`
--
ALTER TABLE `teachercourses`
  ADD CONSTRAINT `teachercourses_f_code_foreign` FOREIGN KEY (`f_code`) REFERENCES `courses` (`code`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `timetable_f_code_foreign` FOREIGN KEY (`f_code`) REFERENCES `courses` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
