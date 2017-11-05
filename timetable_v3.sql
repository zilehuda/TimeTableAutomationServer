-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2017 at 07:59 PM
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
('SS122', 'English Composition', 2016, 'Eng Comp.'),
('SS127', 'Sociology', 2015, 'Socio'),
('SS135', 'Micro Ecnomics', 2015, 'ME'),
('SS203', 'Professional Ethics (For Non-Muslims)', 2017, 'Ethics'),
('SS223', 'Bussiness Communication-I', 2016, 'Bcomm-I');

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
  `section` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `f_code`, `day`, `slot`, `section`, `starttime`, `endtime`, `teacher_name`) VALUES
(9, 'CL101', 'mon', 'E2', 'C', '08:00:00', '08:55:00', 'asdad');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
