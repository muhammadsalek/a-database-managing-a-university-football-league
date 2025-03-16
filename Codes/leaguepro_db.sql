-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 08:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaguepro_db`
--

--
-- Dumping data for table `tbldept`
--

INSERT INTO `tbldept` (`deptCode`, `deptName`, `deptShortName`) VALUES
(101, 'Computer Science', 'CSE'),
(102, 'Electrical Engg', 'EEE'),
(103, 'Mechanical Engg', 'ME'),
(104, 'Civil Engg', 'CE');

--
-- Dumping data for table `tblmatch`
--

INSERT INTO `tblmatch` (`matchID`, `matchDate`, `team1_deptCode`, `team2_deptCode`, `team1_goal_number`, `team2_goal_number`, `matchRefereeID`, `matchLinesman1ID`, `matchLinesman2ID`, `matchFourthRefereeID`) VALUES
(1, '2024-02-01', 101, 102, 3, 2, 1, 2, 3, 4),
(2, '2024-02-02', 103, 104, 1, 1, 2, 1, 3, 4);

--
-- Dumping data for table `tblplayer`
--

INSERT INTO `tblplayer` (`playerRegNo`, `playerSession`, `playerSemester`, `playerName`, `playerDeptCode`) VALUES
(1001, '2023-2024', 5, 'John Doe', 101),
(1002, '2023-2024', 5, 'Jane Doe', 101),
(2001, '2022-2023', 4, 'Mike Ross', 102),
(2002, '2022-2023', 4, 'Rachel Green', 102);

--
-- Dumping data for table `tblpunishment`
--

INSERT INTO `tblpunishment` (`matchID`, `playerRegNo`, `punishmentType`) VALUES
(1, 1001, 'Yellow Car'),
(1, 2001, 'Red Card');

--
-- Dumping data for table `tblreferee`
--

INSERT INTO `tblreferee` (`refereeID`, `refName`, `refInstitute`) VALUES
(1, 'John Smith', 'Institute A'),
(2, 'Sarah Johnson', 'Institute B'),
(3, 'David Brown', 'Institute C'),
(4, 'Emily Davis', 'Institute D');

--
-- Dumping data for table `tblscore`
--

INSERT INTO `tblscore` (`matchID`, `playerRegNo`, `team_deptCode`) VALUES
(1, 1001, 101),
(2, 1002, 101),
(1, 2001, 102),
(2, 2002, 102);

--
-- Dumping data for table `tblteam`
--

INSERT INTO `tblteam` (`teamSubmissionDate`, `deptCode`, `deptHead`, `teamManager`, `teamCaptainRegID`, `player1RegNo`, `player2RegNo`, `player3RegNo`, `player4RegNo`, `player5RegNo`, `player6RegNo`, `player7RegNo`) VALUES
('2024-01-01', 101, 'Dr. Alice', 'Bob Martin', 1001, 1001, 1002, 1003, 1004, 1005, 1006, 1007),
('2024-01-02', 102, 'Dr. Chris', 'Kelly Brown', 2001, 2001, 2002, 2003, 2004, 2005, 2006, 2007);

--
-- Dumping data for table `tbltiebreaker`
--

INSERT INTO `tbltiebreaker` (`matchID`, `team1_deptCode`, `team2_deptCode`, `team1_penalty_1`, `team1_penalty_2`, `team1_penalty_3`, `team1_penalty_4`, `team1_penalty_5`, `team2_penalty_1`, `team2_penalty_2`, `team2_penalty_3`, `team2_penalty_4`, `team2_penalty_5`, `tieBreakerScore`) VALUES
(2, 103, 104, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, '5-4');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
