-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2016 at 10:37 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orbital`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`name`, `details`) VALUES
('Business Analytics', 'The Bachelor of Science (Business Analytics) degree programme is an inter-disciplinary undergraduate degree programme offered by the School of Computing with participation from the Business School, Faculty of Engineering, Faculty of Science, and Faculty of Arts and Social Sciences. This is a four-year direct honours programme which offers a common two-year broad-based inter-disciplinary curriculum where all students will read modules in Mathematics, Statistics, Economics, Accounting, Marketing, Decision Science, Industrial and Systems Engineering, Computer Science and Information Systems. Students in their third and fourth years of study may choose elective modules from two lists of either functional or methodological elective modules. Functional elective modules span business functions or sectors of marketing, retailing, logistics, healthcare, etc. Methodological elective modules include those related to big data techniques, statistics, text mining, data mining, social network analysis, econometrics, forecasting, operations research, etc. In sum, these elective modules span the most exciting and challenging areas of business analytics practice in the industry today.'),
('Computer Engineering', 'The Computer Engineering programme (CEG) at NUS prepares its graduates to embark on a lifelong journey in designing computing systems for a smarter world – hence our theme “Designing Intelligence”.\r\n\r\nA sophisticated piece of hardware is useless without the software that brings it to life. Computer engineers introduce intelligence into every conceivable device --- from the smart phone that you cannot live without, to massive industrial control systems that power economies. They create the electronic systems in a modern car containing dozens of computing systems communicating through a network. They connect the physical world with cyberspace to enhance everything from entertainment to healthcare and the environment. CEG gives you the skills and knowledge to engineer exciting solutions that move as well as change the world.\r\n\r\nA uniquely multi-disciplinary programme, CEG transcends the traditional boundary of computer science and electrical engineering. You will enjoy the resources and opportunities offered by both the host departments: Computer Science and Electrical & Computer Engineering. The curriculum aims to bring real-world problems, solutions, and experiences into the university environment. You will have the opportunity to consolidate your knowledge through a unique Full-Year industrial attachment, and through overseas work or learning experience. With the solid fundamentals that the NUS Computer Engineering degree will give you, only imagination and ambition will be your limits.'),
('Computer Science', 'The Bachelor of Computing (Honours) in Computer Science or BComp (CS) programme aims to nurture students for a rewarding computing career in various industry sectors. Suitable for those who love hands-on work and keen to apply computing technologies to solve real-world problems, the programme will equip students with the critical knowledge and capacity to take on the world with confidence.'),
('Information Security', 'The Bachelor of Computing in Information Security aims to:\r\n\r\nTo provide a broad-based, inter-disciplinary information security undergraduate programme within NUS.\r\n\r\nTo contribute to the national focus on growing the pool of cyber security professionals in Singapore.\r\n\r\nTo produce graduates who are able to understand information security issues and practices from both technical and organisational points of view.\r\n'),
('Information System', 'The four-year IS programme provides a stimulating education that equips students with the ability to integrate infocomm technology fundamentals with domain expertise to develop innovative solutions for organisations. Through projects and case studies that are aligned with industry best practices, students will develop an in-depth understanding of the strategic exploitation of infocomm technology in emerging organisational forms. Students become proficient in the design and development of infocomm solutions and the management of infocomm projects. Such skills are vital in helping students develop careers that are being emphasised in the iN2015 plan, such as techno-strategist, solution architect, and infocomm project manager.\r\n\r\nStudents can also take a specialisation in Electronic Commerce.');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL,
  `prerequisite` text,
  `preclusion` varchar(255) DEFAULT NULL,
  `semAvailability` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`code`, `title`, `credit`, `prerequisite`, `preclusion`, `semAvailability`) VALUES
('ACC1002X', 'Financial Accounting', 4, NULL, 'Students who have passed CS1304 or EC3212 or BK1003 or BZ1002 or BH1002 or BZ1002E or BH1002E or FNA1002E or FNA1002X are not allowed to take ACC1002X.', '1, 2'),
('BSP4513', 'Econometrics: Theory And Practical Business Application', 4, 'BSP1005 or IS3240', 'EC3304', '1'),
('BT1101', 'Introduction to Business Analytics', 4, NULL, NULL, '1'),
('BT2101', 'IT and Decision Making', 4, '(CS1010 or its equivalents) and IS1112 and (MA1521 or MA1102R)', NULL, '1'),
('BT2102', 'Data Management and Visualisation', 4, NULL, NULL, ''),
('BT3101', 'Business Analytics Capstone Project', 4, 'Completed 64 MCs and ST3131 and IS2101', NULL, '1, 2'),
('BT3102', 'Computational Methods for Business Analytics', 4, 'Completed 64 MCs and CS1020 and (MA1521 or MA1102R)', NULL, '1'),
('BT3103', 'Application Systems Development for Business Analytics', 4, NULL, NULL, ''),
('BT4211', 'Data-Driven Marketing', 4, NULL, NULL, ''),
('BT4212', 'Search Engine Optimization and Analytics', 4, NULL, NULL, ''),
('BT4221', 'Big Data Techniques and Technologies', 4, NULL, NULL, ''),
('BT4222', 'Mining Web Data for Business Insights', 4, NULL, NULL, ''),
('CS1010S', 'Programming Methodology', 4, NULL, 'CG1101, CS1010, CS1010E, CS1010FC, CS1101, CS1101C, CS1101S', '1, 2'),
('CS1020', 'Data Structures and Algorithms I', 4, 'CS1010 Programming Methodology', 'CG1102, CG1103, CS1020E, CS1102, CS1102C, CS1102S, CS2020', '1, 2'),
('CS2010', 'Data Structures and Algorithms II', 4, 'CS1020 or CS1020E or CG1103 Data Structures and Algorithms I', 'CG1102, CS1102, CS1102C, CS1102S, CS2020', '1, 2'),
('CS3244', 'Machine Learning', 4, '(CS2010 or its equivalent) and (ST1232 or ST2131 or ST2132 or ST2334)', NULL, '1'),
('DSC3214', 'Introduction To Optimisation', 4, 'DSC1007 or [(MA1101R or MA1311) and (MA1521 or MA1102R)]', 'IE2110', '1'),
('DSC3216', 'Forecasting For Managerial Decisions', 4, 'ST1131A/ST1131/ST1232/MA2216/ST2131/ST2334/EE2003/ME2491', 'BH3216 or BZ3405 or BK3509 or BK3519. All Industrial &amp; Systems Engineering (ISE) students', '2'),
('DSC3224', 'Dynamic Pricing & Revenue Management', 4, 'DSC1007 or IE2110 or DSC3214', NULL, '2'),
('DSC4213', 'Analytical Tools for Consulting', 4, 'DSC1007 or IE2110 or DSC3214', NULL, '1'),
('EC1301', 'Principles of Economics', 4, NULL, 'EC1101E, BH1005/BSP1005, USE2301. All BBA, BAC, BBA(Hons) and BAC(Hons) students are not allowed to take EC1301.', '1, 2'),
('ES2660', 'Communicating in the Information Age', 4, NULL, NULL, ''),
('IE2110', 'Operations Research I', 4, '(MA1102R or MA1505 or MA1521) and (MA1101R or MA1311 or MA1506)', 'DSC3214, MA2215, MA3236', '1'),
('IE3120', 'Manufacturing Logistics', 4, 'IE2100 and (IE2100 or DSC3215', NULL, '1'),
('IE4210', 'Operations Research II', 4, 'IE2110', NULL, '1'),
('IS1103', 'Computing and Society', 4, NULL, 'CS1105/A', '1, 2'),
('IS1105', 'Strategic IT Applications', 4, NULL, 'CS2250', '1, 2'),
('IS2101', 'Business and Technical Communication', 4, 'Students who are required to read ES1000 and/or ES1102 must pass it/them before taking IS2101.', 'ES2002, ES2007D, ES2007S, CS2101, CG1413, CS2103T and ES1601.', '1, 2'),
('IS3240', 'Economics of E-Business', 4, 'Pass 60 MCs and [EC1101 or EC1101E or EC1301 or EC1310 or EC1311 or GCE ‘A’ Level Economics or BSP1005', 'CS3265', '2'),
('IS4010', 'Industry Internship Programme', 12, '(i) At least 80 MCs fulfilled, and (ii) IS2101 Business and Technical Communication, and (iii) IS2103 Enterprise Systems Development Concepts for Information System degree programme student,or IS2150 E-Business Design and Implementation for Electronic Commerce degree programme student, or BT2101 IT and Decision Making for Business Analytics degree programme student', NULL, ''),
('IS4241', 'Social Media Network Analysis', 4, 'Students must have completed 80 MCs and CS1020 or its equivalent.', NULL, '1, 2'),
('IS4250', 'Healthcare Analytics', 4, 'Completed 80 MCs and (IS1105 and (ST1131 or ST2334 or ST2132', NULL, '2'),
('MA1101R', 'Linear Algebra I', 4, 'GCE ''A'' LEVEL MATHEMATICS OR H2 MATHEMATICS OR MA1301 OR MA1301FC OR MA1301X', 'EG1401, EG1402, MA1101, MA1311, MA1506, MA1508, FOE students', '1, 2'),
('MA1102R', 'Calculus', 4, 'GCE ''A'' LEVEL MATHEMATICS OR H2 MATHEMATICS OR MA1301 OR MA1301FC OR MA1301X', 'EE1401, EE1461, EG1401, EG1402, CE1402, MA1102, MA1312, MA1505, MA1505C, MA1507, MA1521, CEC students, COM students who matriculated on and after 2002 (including poly 2002 intake),FoE students.', '1, 2'),
('MA1311', 'Matrix Algebra', 4, 'AO-LEVEL MATHEMATICS OR H1 MATHEMATICS OR MA1301 OR MA1301FC or MA1301X', 'MA1101R, MA1506, MA1508, FoE students.', '1'),
('MA1521', 'Calculus for Computing', 4, 'GCE ''A'' LEVEL MATHEMATICS OR H2 MATHEMATICS OR MA1301 OR MA1301FC OR MA1301X', 'MA1102R, MA1312, MA1505, MA1507, MA2501, FoE students.', '1, 2'),
('MKT1003X', 'Marketing', 4, NULL, 'Students who have taken EC3230/(EC2210) or CS3261/(IC3243) or PR4201 or BK2003 or BZ1003 or BH1003 are not allowed to take MKT1003.', '1, 2'),
('MKT4415C', 'SIM: Marketing Analytics', 4, 'MKT2401 Asian Markets and Marketing Management', NULL, '1, 2'),
('NA', 'Unrestricted Electives', 0, NULL, NULL, ''),
('ST2334', 'Probability and Statistics', 4, 'MA1306 or MA1102 or MA1102R or MA1505 or MA1505C or MA1521 or MA1312 or MA1507', 'ST1131, ST1131A, ST1232, ST2131, MA2216, CE2407, EC2231, EC2303, PR2103, DSC2008. ME students taking or having taken ME4273. All ISE students.', '1, 2'),
('ST3131', 'Regression Analysis', 4, 'ST2131 or MA2216 or ST2334', 'ST2335, EC3231, EC3303', '1, 2'),
('ST4240', 'Data Mining', 4, 'ST3131', NULL, '2'),
('ST4245', 'Statistical Methods for Finance', 4, 'ST3131 or QF3101', NULL, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`code`,`title`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
