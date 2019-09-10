-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2018 at 08:36 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurent`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `order_details` varchar(30) NOT NULL,
  `paid_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `order_details`, `paid_to`) VALUES
(3, 'Dosa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `address` varchar(30) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`address`, `contact_no`, `branch_id`, `name`) VALUES
('Khilgaon', '01744234', 1, 'big bite'),
('dhanmondi', '01652434', 2, 'al fresco'),
('Khilgaon', '01788634', 3, 'cafe appeliano'),
('gulshan', '01654234', 4, 'sub lovers'),
('Khilgaon', '01732413', 5, 'tune and bite'),
('b', '012', 6, 'khanas');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `contact_no`) VALUES
(1, 'atiq', '01521342'),
(2, 'saiful', '01821345'),
(3, 'sami', '017634234'),
(4, 'mithila', '018342562'),
(5, 'aftab', '01132432');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_no` int(11) NOT NULL,
  `details` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_no`, `details`, `price`, `id`) VALUES
(2, 'pasta,drinks', '290', 1),
(3, 'fried rice,chicken,drinks', '180', 1),
(4, 'burger,drinks', '230', 2),
(5, 'dosa', '185', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_no` int(11) NOT NULL,
  `item_no` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_no`, `item_no`, `id`) VALUES
(2, 3, 2),
(3, 2, 2),
(4, 3, 5),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `bill_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`name`, `email`) VALUES
('al fresco', 'alfresco@gmail.com'),
('big bite', 'bigbite@yahoo.com'),
('cafe appeliano', 'appeliano@yahoo.com'),
('khanas', 'khanas@gmail.com'),
('sub lovers', 'sublovers@gmail.com'),
('tune and bite', 'tuneandbitecafe@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `staffcashier`
--

CREATE TABLE `staffcashier` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffcashier`
--

INSERT INTO `staffcashier` (`id`, `name`, `contact_no`, `branch_id`) VALUES
(1, 'Arif', '01733213', 1),
(2, 'Ashiq', '01645234', 1),
(3, 'Sakib', '01524321', 2),
(4, 'Sadab', '01637643', 3),
(5, 'Akib', '01657832', 3);

-- --------------------------------------------------------

--
-- Table structure for table `staffmanager`
--

CREATE TABLE `staffmanager` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffmanager`
--

INSERT INTO `staffmanager` (`id`, `name`, `contact_no`, `email`, `branch_id`) VALUES
(1, 'imtiyaz', '01523412', 'imti@gmail.com', 1),
(2, 'fahim', '018724352', 'fahim@yahoo.com', 3),
(3, 'shawkat', '01654326', 'shawkat@gmail.com', 2),
(4, 'shovon', '01624354', 'shovon@hotmail.com', 2),
(5, 'prince', '01764864', 'prince@yahoo.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `staffwaiter`
--

CREATE TABLE `staffwaiter` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffwaiter`
--

INSERT INTO `staffwaiter` (`id`, `name`, `contact_no`, `branch_id`) VALUES
(1, 'hisham', '01653423', 2),
(2, 'kashem', '01524364', 3),
(3, 'sajid', '01772345', 2),
(4, 'akash', '01526374', 1),
(5, 'sifat', '018734256', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`),
  ADD KEY `paid_to` (`paid_to`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_no`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_no`,`item_no`,`id`),
  ADD KEY `order_no` (`order_no`),
  ADD KEY `item_no` (`item_no`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`,`bill_no`),
  ADD KEY `id` (`id`),
  ADD KEY `bill_no` (`bill_no`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `staffcashier`
--
ALTER TABLE `staffcashier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `staffmanager`
--
ALTER TABLE `staffmanager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `staffwaiter`
--
ALTER TABLE `staffwaiter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`paid_to`) REFERENCES `staffcashier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`name`) REFERENCES `restaurant` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`id`) REFERENCES `staffwaiter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`item_no`) REFERENCES `item` (`item_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_ibfk_1` FOREIGN KEY (`bill_no`) REFERENCES `bill` (`bill_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pays_ibfk_2` FOREIGN KEY (`id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staffmanager`
--
ALTER TABLE `staffmanager`
  ADD CONSTRAINT `staffmanager_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staffwaiter`
--
ALTER TABLE `staffwaiter`
  ADD CONSTRAINT `staffwaiter_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
