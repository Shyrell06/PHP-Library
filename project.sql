-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 07:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `id` int(10) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(5000) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(10) NOT NULL,
  `books_quantity` varchar(20) NOT NULL,
  `books_availability` varchar(20) NOT NULL,
  `librarian_username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_quantity`, `books_availability`, `librarian_username`) VALUES
(9, 'CONTEMPORARY', 'books-image/1670225806.JPG', 'Stephen King', 'C&E Publishing Inc.', 'January 04, 2022', '695', '10', '8', 'admin01'),
(10, 'FILIPINO', 'books-image/1670226063.JPG', 'Jose Rizal', 'Bookware Publication Corporation', 'January 04, 2022', '300', '20', '15', 'admin01'),
(11, 'NSTP', 'books-image/1670226194.JPG', 'Andres Delos Santos', 'C&E Publishing Inc.', 'January 04, 2022', '500', '30', '25', 'admin01'),
(17, 'PANITIKANG PANLIPUNAN', 'books-image/1670315270.JPG', 'Bienvenido Lumbera', 'Rex Bookstore Inc.', 'January 04, 2022', '350', '20', '17', 'admin01');

-- --------------------------------------------------------

--
-- Table structure for table `finezone`
--

CREATE TABLE `finezone` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

  CREATE TABLE `issue_book` (
    `id` int(10) NOT NULL,
    `utype` varchar(10) NOT NULL,
    `regno` varchar(20) NOT NULL,
    `name` varchar(50) NOT NULL,
    `sem` varchar(10) NOT NULL,
    `dept` varchar(10) NOT NULL,
    `phone` varchar(20) NOT NULL,
    `email` varchar(20) NOT NULL,
    `booksname` varchar(50) NOT NULL,
    `booksissuedate` varchar(10) NOT NULL,
    `booksreturndate` varchar(10) NOT NULL,
    `username` varchar(20) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lib_registration`
--

CREATE TABLE `lib_registration` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_registration`
--

INSERT INTO `lib_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `address`, `photo`, `status`) VALUES
(1, 'ADMIN', 'admin01', '123456', 'admin01@gmail.com', '01721585268', 'San Bartolome Novaliches', 'upload/1668440111.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `rusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `read1` varchar(10) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `susername`, `rusername`, `title`, `msg`, `read1`, `time`) VALUES
(10, 'admin', 'mamun22', 'test', 'good afternoon\r\n', 'y', '2019-09-07 11:49:45am'),
(11, 'admin', 'mamun22', 'testing message', 'Hi mamun ! Whats up?', 'y', '2019-09-07 03:53:07pm'),
(12, 'admin', 'mamun22', 'last', 'dfsdf', 'y', '2019-09-07 03:56:15pm'),
(13, 'admin', 'nahid22', 'test', 'Hi nahid!', 'y', '2019-09-10 06:35:04pm'),
(14, 'admin', 'nahid22', 'check', 'is it ok', 'y', '2019-09-10 06:38:07pm'),
(15, 'admin', 'mamun22', 'ttttt', 'mmnbvvv', 'y', '2019-09-14 10:51:44am'),
(16, 'pompously', 'mamun22', 'Request', 'hello', 'y', '2022-11-14 09:02:48pm'),
(17, 'admin01', 'shyrell30', 'Request', 'your request is granted', 'y', '2022-12-05 01:22:36pm');

-- --------------------------------------------------------

--
-- Table structure for table `request_books`
--

CREATE TABLE `request_books` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `bname` varchar(50) NOT NULL,
  `read1` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_books`
--

INSERT INTO `request_books` (`id`, `name`, `username`, `email`, `utype`, `bname`, `read1`) VALUES
(7, 'Shyrell Coballes', 'shyrell30', 'shyrellcoballes@gmail.com', 'student', 'Theoretical Numerical Analysis', 'yes'),
(8, 'Shyrell Coballes', 'shyrell30', 'shyrellcoballes@gmail.com', 'student', 'Theoretical Numerical Analysis', 'yes'),
(9, 'Shyrell Coballes', 'shyrell30', 'shyrellcoballes@gmail.com', 'student', 'CONTEMPORARY', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `std_registration`
--

CREATE TABLE `std_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_registration`
--

INSERT INTO `std_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `sem`, `dept`, `regno`, `address`, `utype`, `photo`) VALUES
(4, 'Shyrell Coballes', 'shyrell30', '123456', 'shyrellcoballes@gmail.com', '09104145293', '1st', 'BSIT', '202031', 'Sauyo Quezon City', 'student', 'upload/1669902570.png'),
(5, 'Justine Earl Conol', 'Justine01', '123456', 'justineconol@gmail.com', '091234567890', '1st', 'BSIT', '202032', 'Feu Fern Fairview Quezon City', 'student', 'upload/1669903191.jpg'),
(38, 'Leslie Mainit', 'Leslie02', '123456', 'lesliemainit@gmail.com', '091234567890', '1st', 'BSIT', '202033', 'Bagong Silang Caloocan ', 'student', 'upload/1669903250.jpg'),
(39, 'Alessandra Marie Perez', 'Perez03', '123456', 'Alessandra@gmail.com', '091234567890', '1st', 'BSIT', '202034', 'Quezon City', 'student', 'upload/1669903323.jpg'),
(49, 'Jenny Alpajora', 'Jenny05', '123456', 'jennyalpajora@gmail.com', '091234567890', '1st', 'BSIT', '202035', 'Quezon City', 'student', 'upload/1669903354.jpg'),
(51, 'Nicole Dacanay', 'Nicole06', '123456', 'nicoledacanay@gmail.com', '091234567890', '1st', 'BSIT', '202036', 'Quezon City', 'student', 'upload/1669903381.jpg'),
(52, 'Carlo Jabla', 'Carlo07', '123456', 'carlojabla@gmail.com', '091234567890', '1st', 'BSIT', '202037', 'Quezon City', 'student', 'upload/1669903409.jpg'),
(53, 'Christian Santos', 'Santos08', '123456', 'christiansantos@gmail.com', '091234567890', '1st', 'BSIT', '202038', 'Quezon City', 'student', 'upload/1669903441.jpg'),
(54, 'Joshua Sabino', 'Joshua09', '123456', 'joshuasabino@gmail.com', '091234567890', '1st', 'BSIT', '202039', 'Quezon City', 'student', 'upload/1669903471.jpg'),
(57, 'Mikaela Tobiano', 'Mikaela10', '123456', 'mikaela@gmail.com', '09876543211', '1st', 'BSIT', '202041', 'Quezon City', 'student', 'upload/avatar.jpg'),
(58, 'John Christian Miniano', 'Miniano123', '123456', 'miniano@gmail.com', '0987654321', '1th', 'BBA', '202042', 'QCU', 'student', 'upload/avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `t_issuebook`
--

CREATE TABLE `t_issuebook` (
  `id` int(10) NOT NULL,
  `utype` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lecturer` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(20) NOT NULL,
  `booksreturndate` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_registration`
--

CREATE TABLE `t_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lecturer` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_registration`
--

INSERT INTO `t_registration` (`id`, `name`, `username`, `password`, `lecturer`, `email`, `phone`, `idno`, `address`, `utype`, `photo`) VALUES
(1, 'IPT102 Teacher', 'IPT102', '123456', 'BSIT', 'IPT102@gmail.com', '091234567890', '0001', 'San Bartolome Quezon City', 'teacher', 'upload/avatar.jpg'),
(2, 'SIA101', 'SIA101', '123456', 'BSIT', 'SIA101@gmail.com', '091234567890', '0002', 'San Bartolome Quezon City', 'teacher', 'upload/avatar.jpg'),
(4, 'MS101', 'MS101', '123456', 'BSIT', 'MS101@gmail.com', '091234567890', '0003', 'San Bartolome Quezon City', 'teacher', 'upload/avatar.jpg'),
(5, 'SPI101', 'SPI101', '123456', 'BSIT', 'SPI101@gmail.com', '092314567890', '0004', 'San Bartolome Quezon City', 'teacher', 'upload/avatar.jpg'),
(6, 'GE7RIZAL', 'GE7RIZAL', '123456', 'BSIT', 'GE7RIZAL@gmail.com', '1234567809', '0005', 'QCU San Bartolome', 'teacher', 'upload/avatar.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_book`
--
ALTER TABLE `add_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finezone`
--
ALTER TABLE `finezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lib_registration`
--
ALTER TABLE `lib_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_books`
--
ALTER TABLE `request_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_registration`
--
ALTER TABLE `std_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_registration`
--
ALTER TABLE `t_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_book`
--
ALTER TABLE `add_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `finezone`
--
ALTER TABLE `finezone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lib_registration`
--
ALTER TABLE `lib_registration`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `request_books`
--
ALTER TABLE `request_books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `std_registration`
--
ALTER TABLE `std_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `t_registration`
--
ALTER TABLE `t_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
