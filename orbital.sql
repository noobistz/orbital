-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2016 at 07:45 AM
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
  `preclusion` text,
  `corequisite` text,
  `semAvailability` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`code`, `title`, `credit`, `prerequisite`, `preclusion`, `corequisite`, `semAvailability`) VALUES
('ACC1002X', 'Financial Accounting', 4, NULL, 'Students who have passed CS1304 or EC3212 or BK1003 or BZ1002 or BH1002 or BZ1002E or BH1002E or FNA1002E or FNA1002X are not allowed to take ACC1002X.', NULL, '1, 2'),
('BSP4513', 'Econometrics: Theory And Practical Business Application', 4, 'BSP1005 or IS3240', 'EC3304', NULL, '1'),
('BT1101', 'Introduction to Business Analytics', 4, NULL, NULL, NULL, '1'),
('BT2101', 'IT and Decision Making', 4, '(CS1010 or its equivalents) and IS1112 and (MA1521 or MA1102R)', NULL, NULL, '1'),
('BT2102', 'Data Management and Visualisation', 4, NULL, NULL, NULL, ''),
('BT3101', 'Business Analytics Capstone Project', 4, 'Completed 64 MCs and ST3131 and IS2101', NULL, NULL, '1, 2'),
('BT3102', 'Computational Methods for Business Analytics', 4, 'Completed 64 MCs and CS1020 and (MA1521 or MA1102R)', NULL, NULL, '1'),
('BT3103', 'Application Systems Development for Business Analytics', 4, NULL, NULL, NULL, ''),
('BT4211', 'Data-Driven Marketing', 4, NULL, NULL, NULL, ''),
('BT4212', 'Search Engine Optimization and Analytics', 4, NULL, NULL, NULL, ''),
('BT4221', 'Big Data Techniques and Technologies', 4, NULL, NULL, NULL, ''),
('BT4222', 'Mining Web Data for Business Insights', 4, NULL, NULL, NULL, ''),
('CG1001', 'Introduction to Computer Engineering', 2, NULL, NULL, NULL, '1'),
('CG1108', 'Electrical Engineering', 4, 'H1 Physics or H2 Physics or ‘A’ Level Physics or PC1222 Fundamentals of Physics II', 'EG1108/EE1002', NULL, '2'),
('CG2023', 'Signals and Systems', 4, 'MA1506 Mathematics II', 'EE2009 Signals, EE2010 Systems and Control and EE2023 Signals and Systems', NULL, '1, 2'),
('CG2271', 'Real-Time Operating Systems', 4, 'CS1020/E Data Structures and Algorithms I', 'CS2106 Introduction to Operating Systems', NULL, '2'),
('CG3002', 'Embedded Systems Design Project', 6, 'EE2024 Programming for Computer Interfaces, CG2271 Real Time Operating Systems and CS2103 Software Engineering', 'EE3032 Innovation & Enterprise II EE3208 Embedded Computer Systems Design', NULL, '1'),
('CG3207', 'Computer Architecture', 4, 'CG2007/ EE2024', 'EE3207', NULL, '1'),
('CG4001', 'B. Eng. Dissertation', 12, 'Level 4 standing', 'EE4001 B.Eng. Dissertation CP4101 B.Comp. Dissertation', NULL, '1, 2'),
('CM1101', 'PRINCIPLES OF MODERN CHEMISTRY ', 4, NULL, NULL, NULL, ''),
('CM1111', 'Inorganic Chemistry 1', 4, '''A'' level or H2 pass in Chemistry or equivalent', NULL, NULL, '1'),
('CM1121', 'Organic Chemistry 1', 4, '''A'' level or H2 pass in Chemistry or equivalent or CM1417/CM1417X', 'CM1501 or CM1503', NULL, '2'),
('CM1131', 'Physical Chemistry 1', 4, '''A'' level or H2 pass in Chemistry or equivalent', NULL, NULL, '1'),
('CM1161', 'PRINCIPLES OF CHEMICAL PROCESS I', 4, NULL, NULL, NULL, ''),
('CM1191', 'Experiments in Chemistry 1', 4, 'H2/A-level Chemistry or its equivalent or by permission', NULL, NULL, '1, 2'),
('CM1401', 'Chemistry for Life Sciences', 4, 'GCE ''A'' level or H2 pass in Chemistry or equivalent or CM1417', NULL, NULL, '1, 2'),
('CM1402', 'General Chemistry', 4, 'GCE ''A'' level or H2 pass in Chemistry or equivalent or CM1417 /CM1417X', 'CM1401 – Chemistry for Life Sciences', NULL, '2'),
('CM1417', 'Fundamentals of Chemistry', 4, '''O'' Level pass in Chemistry or equivalent', 'A level or H2 Chemistry or equivalent', NULL, '1'),
('CM1501', 'Organic Chemistry for Engineers', 4, '''A'' level or H2 pass in Chemistry, or equivalent or CM1417', 'CM1121, CM1503', NULL, '1'),
('CM1502', 'General and Physical Chemistry for Engineers', 4, '''A'' level or H2 pass in Chemistry or equivalent or CM1417 /CM1417X', 'Chemistry majors, CM1502FC or CM1502X', NULL, '2'),
('CP3880', 'Advanced Technology Attachment Programme', 12, '(IS2101 Business and Technical Communication or CS2101 Effective Communication for Computing Professionals or their equivalents) and (CS2103/CS2103T Software Engineering or IS2103 Enterprise Systems Development Concepts or IS2150 E-Business Design and Implementation or BT2101 IT and Decision Making)', 'EG3601', NULL, '1, 2'),
('CP4101', 'B.Comp. Dissertation', 12, 'Attain at least 70% of the MC requirement for the respective degree', 'CS4101', NULL, '1, 2'),
('CS1010', 'Programming Methodology', 4, NULL, 'CG1101, CS1010E, CS1010FC, CS1010S, CS1101, CS1101C, CS1101S. Engineering and Science students who require this module for their majors/minors are not allowed to read it as ULR-Breadth.', NULL, '1, 2'),
('CS1010J', 'Programming Methodology', 4, NULL, 'CS1010 and its equivalents', NULL, '1'),
('CS1010S', 'Programming Methodology', 4, NULL, 'CG1101, CS1010, CS1010E, CS1010FC, CS1101, CS1101C, CS1101S', NULL, '1, 2'),
('CS1020', 'Data Structures and Algorithms I', 4, 'CS1010 Programming Methodology', 'CG1102, CG1103, CS1020E, CS1102, CS1102C, CS1102S, CS2020', NULL, '1, 2'),
('CS1101S', 'Programming Methodology', 5, 'No programming or computer science experience is required. A-level Mathematics or H2 Mathematics MA1301 or MA1301FC or MA1301X', 'CG1101, CS1010, CS1010E, CS1010FC, CS1010S, CS1010X, CS1101, CS1101C, Engineering students', NULL, '1'),
('CS1231', 'Discrete Structures', 4, 'A-level Mathematics or H2 Mathematics or MA1301 or MA1301FC or MA1301X', 'MA1100', NULL, '1, 2'),
('CS2010', 'Data Structures and Algorithms II', 4, 'CS1020 or CS1020E or CG1103 Data Structures and Algorithms I', 'CG1102, CS1102, CS1102C, CS1102S, CS2020', NULL, '1, 2'),
('CS2020', 'Data Structures and Algorithms Accelerated', 6, 'Obtain a grade of at least A- in either CS1010 or CS1101S or CS1010S or CS1010FC or their equivalents', 'CG1102, CG1103, CS1020, CS1020E, CS2010, CS1102, CS1102C, CS1102S', 'Obtain a grade of at least A- in either CS1010 or CS1101S Programming Methodology', '2'),
('CS2100', 'Computer Organisation', 4, 'CS1010 or its equivalent', 'CS1104 or Students from Department of ECE', NULL, '1, 2'),
('CS2101', 'Effective Communication for Computing Professionals', 4, 'Students have to complete ES1000 and/or ES1102 (if required to take the module/s) before reading this module.', 'CS2103 Software Engineering, IS2101 Business Technical Communication or its equivalent, ES2002, ES2007S, ES2007D, CG1413, EG1413 and ES1601.', 'Students have to read CS2103T Software Engineering at the same time as this module.', '1, 2'),
('CS2102', 'Database Systems', 4, '(CS1020 or its equivalent) and (CS1231 or MA1100)', 'CS2102S, IT2002', NULL, '1, 2'),
('CS2103', 'Software Engineering', 4, '(CS1020 or its equivalent)', 'Science students majoring in Computational Finance, are not allowed to read it as CFM/Breadth. EEE and CPE students can only take this module as a technical elective to satisfy the program requirements or UEM but not CFM/ULR-Breadth.', NULL, '1, 2'),
('CS2103T', 'Software Engineering', 4, 'For SoC students only. CS1020 or its equivalent.', 'CS2103 Software Engineering, IS2101 Business Technical Communication or its equivalent.', 'Students have to read CS2101 Effective Communication for Computing Professionals at the same time as this module', '1, 2'),
('CS2104', 'Programming Language Concepts', 4, 'CS1020 or its equivalent', NULL, NULL, '1'),
('CS2105', 'Introduction to Computer Networks', 4, 'CS1020 or equivalent', 'IT2001, EE3204/E, EE4210. CEG, CPE and EEE students are not allowed to take this module.', NULL, '1, 2'),
('CS2106', 'Introduction to Operating Systems', 4, 'CS2100 or EE2007 or EE2024', 'CG2271 or EE4214. CEG students are not allowed to take this module.', NULL, '1, 2'),
('CS2107', 'Introduction to Information Security', 4, 'CS1010 or its equivalence', NULL, NULL, '1, 2'),
('CS2108', 'Introduction to Media Computing', 4, 'CS1020 or its equivalents.', 'CS3246', NULL, '1'),
('CS3103', 'Computer Networks Practice', 4, 'CS2105 Introduction to Computer Networks or EE3204/E Computer Communication Networks I', 'EE4210 Computer Communication Networks II', NULL, '1'),
('CS3201', 'Software Engineering Project I', 4, 'CS2103 Software Engineering or its equivalent.', 'CS3215', 'CS3202 Software Engineering Project II', '1, 2'),
('CS3202', 'Software Engineering Project II', 4, 'CS2103 Software Engineering or its equivalent.', 'CS3215 Software Engineering Project', 'CS3201 Software Engineering Project I', '1, 2'),
('CS3205', 'Information Security Capstone Project', 8, NULL, NULL, NULL, ''),
('CS3210', 'Parallel Computing', 4, 'CS2100 Computer Organisation or CG2007 Microprocessor Systems or EE2024 Programming for Computer Interfaces', NULL, NULL, '1'),
('CS3211', 'Parallel and Concurrent Programming', 4, 'CS2106 or CG2271', NULL, NULL, '2'),
('CS3213', 'Software Systems Design', 4, NULL, NULL, NULL, ''),
('CS3216', 'Software Development on Evolving Platforms', 5, 'CS2103/CS2103T or with special approval from instructor. Students will submit personal statements to apply for a place in the course instead of bidding through the CORS system.', NULL, NULL, '1'),
('CS3217', 'Software Engineering on Modern Application Platforms', 5, 'CS2103 or with special approval from instructor. Students will submit personal statements to apply for a place in the course instead of bidding through the CORS system.', NULL, NULL, '2'),
('CS3218', 'Multimodal Processing in Mobile Platforms', 4, '(MA1521 Calculus for Computing or MA1505 Mathematics I or MA1102R Calculus) and (MA1101R Linear Algebra I or MA1506 Mathematics II) and CS2108 Introduction to Media Computing.', NULL, NULL, '2'),
('CS3219', 'Software Engineering Principles and Patterns', 4, 'CS2103/T', 'CS3213 Software Systems Design', NULL, '1'),
('CS3221', 'Operating Systems Design and Pragmatics', 4, NULL, NULL, NULL, ''),
('CS3223', 'Database Systems Implementation', 4, '(CS2010 or its equivalent) and (CS2102 or CS2102S)', NULL, NULL, '2'),
('CS3226', 'Web Programming and Applications', 4, 'CS1020 or its equivalent', 'CP3101B', NULL, '2'),
('CS3230', 'Design and Analysis of Algorithms', 4, '(CS2010 or its equivalent) and (CS1231 or MA1100)', 'EEE and CPE students can only take this module as a technical elective to satisfy the program requirements or UEM but not CFM/ULR-Breadth.', NULL, '1, 2'),
('CS3233', 'Competitive Programming', 4, 'At least grade ''A-'' in (CS2010 or its equivalent) or special permission.', NULL, NULL, '2'),
('CS3234', 'Logic and Formal Systems', 4, 'CS1231 or MA1100; Programming experience is preferred.', NULL, NULL, '2'),
('CS3235', 'Computer Security', 4, '(CS2105 Introduction to Computer Networks or EE3204 Computer Communications and Networks I) and (CS2106 Introduction to Operating Systems or CG2271 Realtime Operating Systems) and CS2107 Introduction to Information & System Security.', NULL, NULL, '1, 2'),
('CS3236', 'Introduction to Information Theory', 4, NULL, NULL, NULL, ''),
('CS3240', 'Interaction Design', 4, 'SOC students: CS1020 or its equivalent; Other students:NM2217 or NM3209 or the prerequisites for SoC students', NULL, NULL, '2'),
('CS3241', 'Computer Graphics', 4, 'CS1020 or its equivalent', 'EEE and CPE students can only take this module as a technical elective to satisfy the program requirements or UEM but not CFM/ULR-Breadth.', NULL, '1, 2'),
('CS3242', '3D Modeling and Animation', 4, 'CS3241, PC1221, MA1521and MA1101R', 'CS4342', NULL, '2'),
('CS3243', 'Introduction to Artificial Intelligence', 4, '(CS2010 or its equivalent) and (CS1231 or MA1100).', 'EEE and CPE students can only take this module as a technical elective to satisfy the program requirements or UEM but not CFM/ULR-Breadth.', NULL, '2'),
('CS3244', 'Machine Learning', 4, '(CS2010 or its equivalent) and (ST1232 or ST2131 or ST2132 or ST2334)', NULL, NULL, '1'),
('CS3245', 'Information Retrieval', 4, 'CS2010 Data Structures and Algorithms II or its equivalent', NULL, NULL, '2'),
('CS3247', 'Game Development', 4, 'CS3241 and PC1221', 'CS4213', NULL, '2'),
('CS3249', 'User Interface Development', 4, 'CS2103 or CS2103T Software Engineering', NULL, NULL, '2'),
('CS3281', 'Thematic Systems Project I', 4, 'CS2103 and have passed at least one primary module in a CS focus area. Student selection process will be enforced.', NULL, NULL, '2'),
('CS3282', 'Thematic Systems Project II', 4, 'CS3281 and have passed at least two primary modules in a CS focus area. Student selection process will be enforced.', NULL, NULL, '2'),
('CS3283', 'Media Technology Project I', 4, 'SoC students: (CS2103 or CS2103T) and (CS3218 or CS3240 or CS3241 or CS3242 or CS3245 or CS3246 or CS3247 or CS3249 or module approved by Department of Computer Science); Other students: NM3216 or NM3221 or NM3226 or NM3227 or NM3231 or the prerequisites for SoC students', 'CS4201, CS4202, CS4203, CS4204.', NULL, '1'),
('CS3284', 'Media Technology Project II', 4, 'CS3283 Media Technology Project I', 'CS4201, CS4202, CS4203, CS4204.', NULL, '1, 2'),
('CS3343', 'Digital Media Production', 4, NULL, NULL, NULL, ''),
('CS3882', 'Breakthrough Ideas for Digital Markets', 4, NULL, NULL, NULL, ''),
('CS4211', 'Formal Methods for Software Engineering', 4, 'CS2103 Software Engineering.', NULL, NULL, '1'),
('CS4212', 'Compiler Design', 4, 'CS2104 Programming Language', NULL, NULL, '1'),
('CS4215', 'Programming Language Implementation', 4, '(CS2010 Data Structures and Algorithms II or its equivalent) and CS2104 Programming Language Concepts', NULL, NULL, '2'),
('CS4216', 'Constraint Logic Programming', 4, NULL, NULL, NULL, ''),
('CS4217', 'Software Development Technologies', 4, NULL, NULL, NULL, ''),
('CS4218', 'Software Testing', 4, 'CS3219 Software Engineering Principles and Patterns.', NULL, NULL, '2'),
('CS4220', 'Knowledge Discovery Methods in Bioinformatics', 4, 'CS2220 or LSM2104', NULL, NULL, '2'),
('CS4221', 'Database Applications Design and Tuning', 4, 'CS3223', NULL, NULL, '2'),
('CS4222', 'Wireless Networking', 4, '(CS2105 Introduction to Computer Networks or EE3204/E Computer Communication Networks I) and (ST2334 Probability and Statistics or ST2131 Probability)', NULL, NULL, '2'),
('CS4223', 'Multi-core Architectures', 4, '(CS2106 Operating Systems or CG2271 Realtime Operating Systems) and (CS3210 Parallel Computing or CS3220 Computer Architecture or CG3207 Computer Architecture).', NULL, NULL, '1'),
('CS4224', 'Distributed Databases', 4, 'CS3223', NULL, NULL, '1'),
('CS4225', 'Massive Data Processing Techniques in Data Science', 4, 'CS3223 Database Systems Implementation', NULL, NULL, '2'),
('CS4226', 'Internet Architecture', 4, '(CS2105 Introduction to Computer Networks or EE3204 Computer Communication Networks I) and (ST2334 Probability & Statistics or ST2131 Probability)', NULL, NULL, '1'),
('CS4231', 'Parallel and Distributed Algorithms', 4, 'CS3230 Design and Analysis of Algorithms or CS3210 Parallel Computing', NULL, NULL, '2'),
('CS4232', 'Theory of Computation', 4, 'CS1231 or CS1231S or any level-2 MA module', NULL, NULL, '1'),
('CS4234', 'Optimisation Algorithms', 4, 'MA1101R Linear Algebra I and CS3230 Design and Analysis of Algorithms', NULL, NULL, '1'),
('CS4236', 'Cryptography Theory and Practice', 4, 'CS2107 Introduction to Information & System Security and CS3230 Design and Analysis of Algorithm.', NULL, NULL, '1'),
('CS4237', 'Systems Modelling and Simulation', 4, NULL, NULL, NULL, ''),
('CS4238', 'Computer Security Practice', 4, 'CS3235 Computer Security', NULL, NULL, '2'),
('CS4239', 'Software Security', 4, 'CS3235 Computer Security and (CS2103T Software Engineering or CS2103 Software Engineering)', NULL, NULL, '1'),
('CS4242', 'Social Media Computing', 4, 'CS2108 Introduction to Media Computing and CS3245 Information Retrieval.', NULL, NULL, '2'),
('CS4243', 'Computer Vision and Pattern Recognition', 4, '(CS1020 or its equivalent), (MA1101R or MA1506), (MA1102R or MA1505C or MA1505 or MA1521), and (ST1232 or ST2131 or ST2334)', NULL, NULL, '1'),
('CS4244', 'Knowledge-Based Systems', 4, 'CS3243', NULL, NULL, '2'),
('CS4246', 'AI Planning and Decision Making', 4, '(MA2216 Probability or ST2131 Probability or ST2334 Probability and Statistics) and CS3243 Foundations of Artificial Intelligence', NULL, NULL, '1'),
('CS4247', 'Graphics Rendering Techniques', 4, 'CS3241', NULL, NULL, '2'),
('CS4248', 'Natural Language Processing', 4, '(CS3243 Introduction to Artificial Intelligence or CS3245 Information Retrieval) and (ST1232 Statistics for Life Sciences, or ST2131 Probability, or ST2334 Probability and Statistics)', NULL, NULL, '1'),
('CS4249', 'Phenomena and Theories of Human-Computer Interaction', 4, 'CS3240 or NM2213 or NM2216', NULL, NULL, '1'),
('CS4271', 'Critical Systems and Their Verification', 4, NULL, NULL, NULL, ''),
('CS4274', 'Mobile and Multimedia Networking', 4, NULL, NULL, NULL, ''),
('CS4340', 'Digital Special Effects', 4, 'CS3343 and (CS4243 or CS4247 or CS4342)', 'CS5245 (old code)', NULL, '2'),
('CS4344', 'Network and Mobile Gaming', 4, NULL, NULL, NULL, ''),
('CS4344', 'Networked and Mobile Gaming', 4, NULL, NULL, NULL, ''),
('CS4345', 'General-Purpose Computation on GPU', 4, 'CS3241', NULL, NULL, '1'),
('CS4347', 'Sound and Music Computing', 4, NULL, NULL, NULL, ''),
('CS4350', 'Game Development Project', 4, 'CS3247. Priority is given to students who have not completed game development projects in CS3283 +CS3284 Media Technology Project I/II.', 'CS4203, CS4204', NULL, '1'),
('CS4880', 'Digital Entrepreneurship', 4, NULL, NULL, NULL, ''),
('CS5205', 'Foundation in Programming Languages', 4, NULL, NULL, NULL, ''),
('CS5207', 'Foundation in Operating Systems', 4, NULL, NULL, NULL, ''),
('CS5209', 'Foundation in Logic & AI', 4, NULL, NULL, NULL, ''),
('CS5214', 'Design of Optimising Compilers', 4, 'CS3212 or CS4212', NULL, NULL, '2'),
('CS5215', 'Constrained Programming', 4, NULL, NULL, NULL, ''),
('CS5218', 'Principles of Program Analysis', 4, 'CS4212 Compiler Design or CS4215 Programming Language Implementation', NULL, NULL, '2'),
('CS5219', 'Automatic Software Validation', 4, NULL, NULL, NULL, ''),
('CS5222', 'Advanced Computer Architecture', 4, 'CS3220 Computer Architecture or CS4223 Multi-core Architecture', NULL, NULL, '1'),
('CS5223', 'Distributed Systems', 4, 'CS3211 Parallel and Concurrent Programming', NULL, NULL, '1'),
('CS5226', 'Database Tuning', 4, 'CS3223', NULL, NULL, '1'),
('CS5228', 'Knowledge Discovery and Data Mining', 4, 'CS2102 Database Systems and (ST1232 Statistics for Life Sciences or ST2131 Probability or ST2334 Probability and Statistics) and CS3243 Introduction to Artificial Intelligence', NULL, NULL, '1'),
('CS5229', 'Advanced Computer Networks', 4, 'CS4226 Internet Architecture or EE4210 Computer Communications Networks II', NULL, NULL, '1'),
('CS5230', 'Computational Complexity', 4, 'CS4232 Theory of Computation', 'CS4230', NULL, '2'),
('CS5231', 'Systems Security', 4, 'CS3235 Computer Security', NULL, NULL, '1'),
('CS5232', 'Formal Specification and Design Techniques', 4, '(CS1231 Discrete Structures or MA1100 Fundamental Concepts of Mathematics) and CS2103 Software Engineering', NULL, NULL, '2'),
('CS5234', 'Combinatorial and Graph Algorithms', 4, NULL, NULL, NULL, ''),
('CS5237', 'Computational Geometry and Applications', 4, NULL, NULL, NULL, ''),
('CS5238', 'Advanced Combinatorial Methods in Bioinformatics', 4, NULL, NULL, NULL, ''),
('CS5239', 'Computer System Performance Analysis', 4, NULL, NULL, NULL, ''),
('CS5240', 'Theoretical Foundations in MultiMedia', 4, '(CS1020 or its equivalent) and (MA1102R or MA1505 or MA1505C or MA1521) and (MA1101R or MA1506) and (ST1232 or ST2131 or ST2334)', NULL, NULL, '1'),
('CS5241', 'Speech Processing', 4, NULL, NULL, NULL, ''),
('CS5246', 'Text Processing on the Web', 4, NULL, NULL, NULL, ''),
('CS5247', 'Motion Planning and Applications', 4, NULL, NULL, NULL, ''),
('CS5248', 'Systems Support for Continuous Media', 4, 'CS2106 Introduction to Operating Systems and CS4226 Internet Architecture', NULL, NULL, '1'),
('CS5272', 'Embedded Software Design', 4, NULL, NULL, NULL, ''),
('CS5321', 'Network Security', 4, 'CS3235 Computer Security', NULL, NULL, '2'),
('CS5322', 'Database Security', 4, NULL, NULL, NULL, ''),
('CS5331', 'Web Security', 4, 'CS3235 Computer Security', NULL, NULL, '2'),
('CS5340', 'Uncertainty Modelling in AI', 4, '(ST1232 Statistics for Life Sciences or ST2131 Probability or ST2334 Probability and Statistics) and CS3243 Introduction to Artificial Intelligence', NULL, NULL, '1'),
('CS5342', 'Multimedia Computing and Applications', 4, 'CS4341 or CS3246', NULL, NULL, '2'),
('CS6242', 'Digital Libraries', 4, 'CS3245 and CS3246 or their equivalent', NULL, NULL, '1'),
('CS6243', 'Computational Photography', 4, NULL, NULL, NULL, ''),
('DSC3214', 'Introduction To Optimisation', 4, 'DSC1007 or [(MA1101R or MA1311) and (MA1521 or MA1102R)]', 'IE2110', NULL, '1'),
('DSC3216', 'Forecasting For Managerial Decisions', 4, 'ST1131A/ST1131/ST1232/MA2216/ST2131/ST2334/EE2003/ME2491', 'BH3216 or BZ3405 or BK3509 or BK3519. All Industrial &amp; Systems Engineering (ISE) students', NULL, '2'),
('DSC3224', 'Dynamic Pricing & Revenue Management', 4, 'DSC1007 or IE2110 or DSC3214', NULL, NULL, '2'),
('DSC4213', 'Analytical Tools for Consulting', 4, 'DSC1007 or IE2110 or DSC3214', NULL, NULL, '1'),
('EC1301', 'Principles of Economics', 4, NULL, 'EC1101E, BH1005/BSP1005, USE2301. All BBA, BAC, BBA(Hons) and BAC(Hons) students are not allowed to take EC1301.', NULL, '1, 2'),
('EE2020', 'Digital Fundamentals","Department":"Electrical & Computer Engineering', 5, 'EE1002 or CG1108 or EG1108', NULL, 'CS1010E', '1, 2'),
('EE2021', 'Devices and Circuits', 4, 'EE1002/EG1108 /CG1108', 'EE2004 and EE2005', NULL, '1, 2'),
('EE2024', 'Programming for Computer Interfaces', 5, 'EE2020 and CS1010E', NULL, NULL, '1, 2'),
('EE3031', 'Innovation & Enterprise I', 4, NULL, 'TR3001 New Product Development EE3001 Project MT4003 Engineering Product Development', NULL, '1, 2'),
('EE3131C', 'Communication Systems', 4, 'EE2023 Signals & Systems', 'EE3103 Communications', NULL, '1, 2'),
('EE3204', 'Computer Communication Networks I', 4, NULL, 'CS2105', 'EE2023', '1'),
('EE3206', 'Intro To Comp Vision & Image Processing', 4, 'EE2023', 'CS4243', NULL, '1'),
('EE3331C', 'Feedback Control Systems', 4, 'EE2023 Signals and Systems', 'EE2010 Systems & Control', NULL, '1, 2'),
('EE3407', 'Analog Electronics', 4, 'EE2021', NULL, NULL, '2'),
('EE3408C', 'Integrated Analog Design', 4, 'EE2005 Electronics or EE2021 Devices and Circuits', 'EE3408', NULL, '1'),
('EE3701', 'Digital Media Technologies', 4, 'CS1010FC/CS1010E/CG1101', NULL, NULL, '3'),
('EE3731C', 'Signal Processing Methods', 4, '(EE2012 or ST2334) and EE2023', NULL, NULL, '1'),
('EE4113', 'Digital Communications & Coding', 4, 'EE2012/ST2334 & EE3131C', 'EE4102 or EE4103', NULL, '1'),
('EE4114', 'Optical Communications', 4, NULL, NULL, NULL, ''),
('EE4210', 'Computer Communication Networks II', 4, 'EE3204 or CS2105', 'CS3103', NULL, '2'),
('EE4212', 'Computer Vision', 4, 'EE3206 or EE3731C', 'CS4243', NULL, '2'),
('EE4213', 'Image & Video Processing', 4, NULL, NULL, NULL, ''),
('EE4214', 'Real-Time Embedded Systems', 4, 'CG2007/EE2024', NULL, NULL, '2'),
('EE4218', 'Embedded Hardware System Design', 4, 'EE2020', NULL, NULL, '1'),
('EE4305', 'Introduction To Fuzzy / Neural Systems', 4, 'EE2023', NULL, NULL, '1'),
('EE4306', 'Distributed Autonomous Robotic Systems', 4, 'EE3331C', NULL, NULL, '2'),
('EE4307', 'Control Systems Design And Simulation', 4, 'EE3331C', NULL, NULL, '2'),
('EE4415', 'Integrated Digital Design', 4, 'EE2020', NULL, NULL, '2'),
('EE4505', 'Power Semiconductor Devices & ICs', 4, 'EE2021 or equivalent', NULL, NULL, '1'),
('EE4604', 'Biological Perception in Digital Media', 4, 'EE3731C/EE3206', NULL, NULL, '1'),
('EG2401', 'Engineering Professionalism', 3, 'ES1501A, ES1501B, ES1501C, EG1413/ES1531 and Year 2 status', NULL, NULL, '1, 2'),
('EG3601', 'Industrial Attachment Programme', 12, NULL, NULL, NULL, '1, 2'),
('ES2660', 'Communicating in the Information Age', 4, NULL, NULL, NULL, ''),
('HR2002', 'Human Capital in Organizations', 3, 'For Engineering students only', 'Students who have passed or are reading HR2001 or HR2101 or HR3111 are not allowed to take HR2002', NULL, '1, 2'),
('IE2110', 'Operations Research I', 4, '(MA1102R or MA1505 or MA1521) and (MA1101R or MA1311 or MA1506)', 'DSC3214, MA2215, MA3236', NULL, '1'),
('IE3120', 'Manufacturing Logistics', 4, 'IE2100 and (IE2100 or DSC3215', NULL, NULL, '1'),
('IE4210', 'Operations Research II', 4, 'IE2110', NULL, NULL, '1'),
('IER', 'Industrial Experience Requirement', 12, NULL, NULL, NULL, ''),
('IFS4101', 'Legal Aspects of Information Security', 4, '(CS2107 or IS3230) and passed 80 MCs.', NULL, NULL, '2'),
('IS1103', 'Computing and Society', 4, NULL, 'CS1105/A', NULL, '1, 2'),
('IS1103FC', 'Computing and Society', 4, NULL, 'CS1105 Computing and Society IS1103 Computing and Society', NULL, '2'),
('IS1103X', 'Computing and Society', 4, NULL, 'CS1105 Computing and Society IS1103 Computing and Society IS1103FC Computing and Society', NULL, '2'),
('IS1105', 'Strategic IT Applications', 4, NULL, 'CS2250', NULL, '1, 2'),
('IS2101', 'Business and Technical Communication', 4, 'Students who are required to read ES1000 and/or ES1102 must pass it/them before taking IS2101.', 'ES2002, ES2007D, ES2007S, CS2101, CG1413, CS2103T and ES1601.', NULL, '1, 2'),
('IS2102', 'Requirements Analysis and Design', 4, 'CS1010 or its equivalents', NULL, NULL, '1, 2'),
('IS2103', 'Enterprise Systems Development Concepts', 4, 'CS1020 or CS1102 or CS1102C or CS1102S', 'CS2261', NULL, '1, 2'),
('IS2104', 'Software Team Dynamics', 4, 'Students can only take this module after completing 40 MCs', NULL, NULL, '1, 2'),
('IS3101', 'Management of Information Systems', 4, 'CS2250 or (IS1103 and IS1105)', 'CS3253', NULL, '1, 2'),
('IS3102', 'Enterprise Systems Development Project', 8, 'CS2261 or IS2103 (applicable to intakes from AY2005/06 to AY2007/08) or [(CS2261 or IS2103) and (CS2301 or IS2101)] (applicable to intakes from AY2008/09 onwards)', 'CS3214', NULL, '1, 2'),
('IS3150', 'Digital and New Media Marketing', 4, 'Pass 60 MCs and [IS1105 and IS1112]', NULL, NULL, '1'),
('IS3220', 'Service Design and Innovation', 4, 'Pass 60 MCs and (IS1103 or IS1103FC) and IS1105', NULL, NULL, '1, 2'),
('IS3221', 'Enterprise Resource Planning Systems', 4, '(IS1103 or IS1103FC) and IS1105', NULL, NULL, '2'),
('IS3222', 'IT and Customer Relationship Management', 4, 'Pass 60 MCs and [CS2250 or (IS1103 and IS1105)]', 'CS4266', NULL, '2'),
('IS3223', 'IT and Supply Chain Management', 4, 'Pass 60 MCs and [CS2250 or (IS1103 and IS1105)]', 'CS4267', NULL, '1'),
('IS3230', 'Principles of Information Security', 4, NULL, NULL, NULL, ''),
('IS3240', 'Economics of E-Business', 4, 'Pass 60 MCs and [EC1101 or EC1101E or EC1301 or EC1310 or EC1311 or GCE ‘A’ Level Economics or BSP1005', 'CS3265', NULL, '2'),
('IS3241', 'Enterprise Social Systems', 4, NULL, NULL, NULL, ''),
('IS3242', 'Software Quality Management', 4, 'Pass 60 MCs and [CS2250 or IS1105]', NULL, NULL, '2'),
('IS3243', 'Technology Strategy and Management', 4, 'Pass 60 MCs and [CS2250 or IS1105]', 'CS3251', NULL, '1'),
('IS3250', 'Health Informatics', 4, 'Students must have completed 60 MCs.', NULL, NULL, '2'),
('IS3251', 'Principles of Technology Entrepreneurship', 4, 'Pass 40 MCs', NULL, NULL, '2'),
('IS3260', 'Gamification for Organisations and Individuals', 4, NULL, NULL, NULL, ''),
('IS3261', 'Mobile Apps Development for Enterprise', 4, 'CS1020 Data Structures and Algorithms I or CS2020 Data Structures and Algorithms Accelerated or their equivalent.', NULL, NULL, '1'),
('IS4010', 'Industry Internship Programme', 12, '(i) At least 80 MCs fulfilled, and (ii) IS2101 Business and Technical Communication, and (iii) IS2103 Enterprise Systems Development Concepts for Information System degree programme student,or IS2150 E-Business Design and Implementation for Electronic Commerce degree programme student, or BT2101 IT and Decision Making for Business Analytics degree programme student', NULL, NULL, ''),
('IS4100', 'IT Project Management', 4, 'Pass 80 MCs and [CS2250 or (IS1103 and IS1105)] and (CS2261 or IS2103)', 'IS5110 and CS5212(old code for IS5110)', NULL, '1, 2'),
('IS4150', 'Mobile and Ubiquitous Commerce', 4, 'Pass 80 MCs and IS2150', NULL, NULL, '2'),
('IS4202', 'Global Virtual Project', 4, NULL, NULL, NULL, ''),
('IS4203', 'IT Adoption and Change Management', 4, NULL, NULL, NULL, ''),
('IS4204', 'IT Governance', 4, 'Completed 80 MCs', NULL, NULL, '1'),
('IS4224', 'Service Systems', 4, 'Pass 80 MCs and [CS3361 or IS3220]', 'CS4361', NULL, '1'),
('IS4225', 'Strategic IS Planning', 4, 'Pass 80 MCs and [CS2250 or (IS1103 and IS1105)]', 'CS4251; Arts and social sciences students reading CNM as a subjec/concentration are not allowed to read this module as CFM/ULR-Breadth', NULL, '1'),
('IS4226', 'IT Outsourcing and Offshoring Management', 4, 'Pass 80 MCs and [CS2250 or (IS1103 and IS1105)]', 'CS4255', NULL, '2'),
('IS4227', 'Enterprise Service-Oriented Architecture', 4, 'Pass 80 MCs and [CS3361 of IS3220]', 'CS4258', NULL, '2'),
('IS4228', 'Information Technologies in Financial Services', 4, 'At least 80 MCs', NULL, NULL, '1'),
('IS4231', 'Information Security Management', 4, 'Pass 80 MCs and (CS2107 Introduction to Information Security or IS3230 Principles of Information Security)', NULL, NULL, '1'),
('IS4232', 'Topics in Information Security', 4, NULL, NULL, NULL, ''),
('IS4232', 'Topics in Information Security Management', 4, NULL, NULL, NULL, ''),
('IS4233', 'Legal Aspects of Information Technology', 4, 'Pass 80 MCs and [CS2250 or (IS1103 and IS1105)]', 'CS4259', NULL, '2'),
('IS4234', 'Control and Audit of Information Systems', 4, 'Pass 80 MCs and [CS3254 or IS4231]', 'CS4252', NULL, '2'),
('IS4240', 'Business Intelligence Systems', 4, 'Pass 80 MCs and [(IS1112 or IS1112FC or CS2102) and (IS1103 or IS1103FC) and IS1105 and (ST1131 or ST2334 or ST2132)]', NULL, NULL, '1'),
('IS4241', 'Social Media Network Analysis', 4, 'Students must have completed 80 MCs and CS1020 or its equivalent.', NULL, NULL, '1, 2'),
('IS4243', 'Information Systems Consulting', 4, 'Pass 80 MCs and [CS2250 or (IS1103 and IS1105)]', 'CS4253', NULL, '2'),
('IS4250', 'Healthcare Analytics', 4, 'Completed 80 MCs and (IS1105 and (ST1131 or ST2334 or ST2132', NULL, NULL, '2'),
('IS4260', 'E-Commerce Business Models', 4, 'Pass 80 MCs and [CS2250 or (IS1103 and IS1105)]', 'CS4260', NULL, '2'),
('LSM1301', 'General Biology', 4, NULL, 'MUST NOT HAVE GCE ‘A’ LEVEL OR H2 BIOLOGY OR EQUIVALENT. CANNOT READ CONCURRENTLY WITH LSM1101, LSM1102, LSM1103, LSM1104 AND LSM1202. STUDENT MUST NOT HAVE PASSED LSM1301FC or LSM1301X.', NULL, '1, 2'),
('LSM1302', 'Genes and Society', 4, NULL, 'Not for Life Sciences major/minor or Food Sciences & Technology or Pharmacy majors or Bioengineering programmes.', NULL, '2'),
('LSM1303', 'Animal Behaviour', 4, NULL, 'Life Sciences major/minor and student from Bachelor of Environmental Studies Programme', NULL, '2'),
('MA1101R', 'Linear Algebra I', 4, 'GCE ''A'' LEVEL MATHEMATICS OR H2 MATHEMATICS OR MA1301 OR MA1301FC OR MA1301X', 'EG1401, EG1402, MA1101, MA1311, MA1506, MA1508, FOE students', NULL, '1, 2'),
('MA1102R', 'Calculus', 4, 'GCE ''A'' LEVEL MATHEMATICS OR H2 MATHEMATICS OR MA1301 OR MA1301FC OR MA1301X', 'EE1401, EE1461, EG1401, EG1402, CE1402, MA1102, MA1312, MA1505, MA1505C, MA1507, MA1521, CEC students, COM students who matriculated on and after 2002 (including poly 2002 intake),FoE students.', NULL, '1, 2'),
('MA1104', 'Multivariable Calculus', 4, 'MA1102 or MA1102R or MA1505 or MA1505C or MA1521 or EE1401 or EE1461 or EG1402', 'MA1104S, MA2207, MA2221, MA2311, MA3208, GM2301, MQ2202, MQ2102, MQ2203, PC1134, PC2201, MA1507, MPE students.', NULL, '1, 2'),
('MA1301', 'Introductory Mathematics', 4, 'Pass in O-level Additional Mathematics or AO-level or H1 Mathematics', 'THOSE WITH A-LEVEL OR H2 PASSES IN MATHEMATICS OR WHO HAVE PASSED ANY OF THE MODULES MA1101R, MA1102R,MA1301FC, MA1301X, MA1505, MA1506, MA1507, MA1508, MA1521, MA1311, MA1312, MA1421, MPE STUDENTS.', NULL, '1, 2'),
('MA1301X', 'Introductory Mathematics', 4, 'Pass in O-level Additional Mathematics or AO-level or H1 Mathematics', 'Those with A-level or H2 passes in Mathematics. Student must not have passed MA1301 or MA1301FC', NULL, '2'),
('MA1311', 'Matrix Algebra', 4, 'AO-LEVEL MATHEMATICS OR H1 MATHEMATICS OR MA1301 OR MA1301FC or MA1301X', 'MA1101R, MA1506, MA1508, FoE students.', NULL, '1'),
('MA1312', 'Calculus with Applications', 4, 'AO-LEVEL MATHEMATICS OR H1 MATHEMATICS OR MA1301 OR MA1301FC or MA1301X', 'MA1102R, MA1505, MA1505C, MA1521, FoE students.', NULL, '2'),
('MA1505', 'Mathematics I', 4, 'GCE ''A'' LEVEL MATHEMATICS OR H2 MATHEMATICS OR MA1301 OR MA1301FC OR MA1301X', 'MA1102R, MA1312, MA1507, MA1521, MA2311, MA2501, EE1461, PC2174.', NULL, '1, 2'),
('MA1506', 'Mathematics II', 4, 'Read MA1102R or MA1505 or MA1521', 'MA1101R, MA1311, MA2312, MA1508, MA2501, EE1461, PC2174', NULL, '1, 2'),
('MA1521', 'Calculus for Computing', 4, 'GCE ''A'' LEVEL MATHEMATICS OR H2 MATHEMATICS OR MA1301 OR MA1301FC OR MA1301X', 'MA1102R, MA1312, MA1505, MA1507, MA2501, FoE students.', NULL, '1, 2'),
('MA2101', 'Linear Algebra II', 4, 'MA1101 or MA1101R or MA1506 or MA1508 or GM1302 or GM1308', 'MA2101S, MA2101H, MA2201, MA2203, MQ2201, MQ2101, MQ2203.', NULL, '1, 2'),
('MA2108', 'Mathematical Analysis I', 4, 'MA1102 or MA1102R or MA1505 or MA1505C or MA1507 or MA1521', 'MA2108S, MA2206, MA2208, MA2221, MA2311, MQ2202, MQ2102, MQ2203, CN2401, EE2401, ME2492.', NULL, '1, 2'),
('MA2213', 'Numerical Analysis I', 4, '(MA1102R or MA1312 or MA1507 or MA1505 or MA1521 or EG1402 or EE1401 or EE1461) and (MA1101R or MA1311 or MA1508 or MA1506)', 'CE2407, ME3291, CN3421, CN3411, CHE students (for breadth requirements), EVE students (for breadth requirements).', NULL, '1, 2'),
('MA2214', 'Combinatorics and Graphs I', 4, 'MA1100 or MA1101R or MA1311 or MA1506 or MA1508 or CS1231 or CS1231S', NULL, NULL, '1'),
('MA2501', 'Differential Equations and Systems', 4, 'MA1507 and MA1508', 'MA1505, MA1505C, MA1521, MA1506, MA2210, MA2312', NULL, '1'),
('ME4245', 'Robot Mechanics and Control', 4, 'MA1506/ME2142 for ME students EE2010 / EE3331C for ECE students', NULL, NULL, '1'),
('MKT1003X', 'Marketing', 4, NULL, 'Students who have taken EC3230/(EC2210) or CS3261/(IC3243) or PR4201 or BK2003 or BZ1003 or BH1003 are not allowed to take MKT1003.', NULL, '1, 2'),
('MKT4415C', 'SIM: Marketing Analytics', 4, 'MKT2401 Asian Markets and Marketing Management', NULL, NULL, '1, 2'),
('NA', 'Unrestricted Electives', 0, NULL, NULL, NULL, ''),
('PC1141', 'Introduction to Classical Mechanics', 4, 'A'' LEVEL OR H2 PASS IN PHYSICS OR PC1221/PC1221FC/ PC1221X & PC1222', 'STUDENTS WHO HAVE PASSED PC1431 OR PC1431FC or PC1431X OR PC1433 ARE NOT ALLOWED TO TAKE THIS MODULE.', NULL, '1'),
('PC1142', 'Introduction to Thermodynamics and Optics', 4, 'A'' LEVEL OR H2 PASS IN PHYSICS OR PC1221/PC1221FC/ PC1221X & PC1222', 'STUDENTS WHO HAVE PASSED PC1431 OR PC1431FC or PC1431X ARE NOT ALLOWED TO TAKE THIS MODULE.', NULL, '1'),
('PC1143', 'Introduction to Electricity & Magnetism', 4, '‘A'' level or H2 pass in Physics or PC1221/PC1221FC/PC1221X & PC1222/PC1222X', 'Students who have passed PC1432/PC1432X are not allowed to take this module.', NULL, '2'),
('PC1144', 'Introduction to Modern Physics', 4, '‘A'' level or H2 pass in Physics or PC1221/PC1221FC/PC1221X & PC1222/PC1222X', 'Students who have passed PC1432/PC1432X are not allowed to take this module.', NULL, '2'),
('PC1221', 'Fundamentals of Physics I', 4, '''O'' level pass in Physics or Combined Science (Physics & Chemistry OR Physics & Biology).', 'A'' LEVEL OR H2 PASS IN PHYSICS OR PC1141, OR PC1142 OR PC1431 OR PC1431FC or PC1431X OR PC1221FC or PC1221X', NULL, '1, 2'),
('PC1221X', 'Fundamentals of Physics 1', 4, '''O'' level pass in Physics or Combined Science (Physics & Chemistry OR Physics & Biology) or its equivalent', 'A'' level or H2 pass in Physics or PC1141, or PC1142 or PC1431 or PC1431FC or PC1431X or PC1221 or PC1221FC', NULL, '2'),
('PC1222', 'Fundamentals of Physics II', 4, '''O'' level pass in Physics or Combined Science (Physics & Chemistry OR Physics & Biology).', '''A'' level or H2 pass in Physics or PC1143, or PC1144 or PC1432', NULL, '1, 2'),
('PC1222X', 'Fundamentals of Physics II', 4, '''O'' level pass in Physics or Combined Science (Physics & Chemistry OR Physics & Biology) or its equivalent', '''A'' level or H2 pass in Physics or PC1222 or PC1143, or PC1144 or PC1432 or PC1432X', NULL, '2'),
('PC1421', 'Physics for Life Sciences', 4, 'Life-sciences majors who have at least an ‘O’ Level pass in Physics', NULL, NULL, '1'),
('PC1431', 'Physics IE', 4, 'STUDENTS FROM FOE (I.E. CIVIL ENG, ENVIRONMENTAL ENG, COMMON ENGINEERING, MECHANICAL ENG, BIOENGINEERING, INDUSTRIAL & SYSTEMS ENG AND MATERIAL SCIENCE & ENG) WITH ‘A’ LEVEL OR H2 PASS IN PHYSICS; OR ''A'' LEVEL OR H2 PASS IN PHYSICS; OR PC1221/PC1221FC/ PC1221X & PC1222', 'Students majoring in Physics or students who have passed in PC1141 or PC1142 or PC1433 or PC1431FC or PC1431X are not allowed to take this module.', NULL, '1, 2'),
('PC1432', 'Physics IIE', 4, 'STUDENTS FROM FOE ( I.E. COMPUTER ENG, COMMON ENGINEERING, BIOENGINEERING, INDUSTRIAL & SYSTEMS ENG AND MATERIAL SCIENCE & ENG) WITH ‘A’ LEVEL OR H2 PASS IN PHYSICS; OR ''A'' LEVEL OR H2 PASS IN PHYSICS; OR PC1221/PC1221FC/ PC1221X & PC1222', 'Students majoring in Physics or students who have passed in PC1143 or PC1144 are not allowed to take this module.', NULL, '1, 2'),
('PC1433', 'Mechanics and Waves', 4, 'A Level or H2 Physics. This module is only for ESP students.', 'STUDENTS WHO HAVE PASSED EITHER PC1141 OR PC1431 OR PC1431FC OR PC1431X ARE NOT ALLOWED TO TAKE THIS MODULE.', NULL, '1'),
('ST2131', 'Probability', 4, 'MA1102 or MA1102R or MA1312 or MA1507 or MA1505 or MA1505C or MA1521', 'MA2216, ST2334, CE2407', NULL, '1, 2'),
('ST2132', 'Mathematical Statistics', 4, 'MA2216 or ST2131 or ST2334', NULL, NULL, '1, 2'),
('ST2137', 'Computer Aided Data Analysis', 4, 'ST1131 or ST1131A or ST1232 or ST2334 or ST2131 or MA2216.', NULL, NULL, '1, 2'),
('ST2334', 'Probability and Statistics', 4, 'MA1306 or MA1102 or MA1102R or MA1505 or MA1505C or MA1521 or MA1312 or MA1507', 'ST1131, ST1131A, ST1232, ST2131, MA2216, CE2407, EC2231, EC2303, PR2103, DSC2008. ME students taking or having taken ME4273. All ISE students.', NULL, '1, 2'),
('ST3131', 'Regression Analysis', 4, 'ST2131 or MA2216 or ST2334', 'ST2335, EC3231, EC3303', NULL, '1, 2'),
('ST4240', 'Data Mining', 4, 'ST3131', NULL, NULL, '2'),
('ST4245', 'Statistical Methods for Finance', 4, 'ST3131 or QF3101', NULL, NULL, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`code`,`title`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
