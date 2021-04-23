-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 08:35 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodshala`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customernumber` varchar(10) NOT NULL,
  `restaurantnumber` varchar(10) NOT NULL,
  `itemname` varchar(30) NOT NULL,
  `restaurantaddress` varchar(30) NOT NULL,
  `restaurantname` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `nooforders` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customernumber`, `restaurantnumber`, `itemname`, `restaurantaddress`, `restaurantname`, `status`, `nooforders`) VALUES
('7898765432', '7418520963', 'Matar Panner', '0', '0', '0', '0'),
('7898765432', '9876543210', 'Veg Roll', '0', '0', '0', '0'),
('7898765432', '9870965465', 'Chana Kulcha', '0', '0', '0', '0'),
('7898765432', '9870965465', 'Chana Kulcha', '0', '0', '0', '0'),
('7898765432', '9886754389', 'CHICKEN KORMA', '0', '0', '0', '0'),
('7898765432', '7418520963', 'Matar Panner', '0', '0', '0', '0'),
('7898765432', '{', '{', '{', '{', 'Booked', '{'),
('7898765432', '7418520963', 'Matar Panner', 'Bus Stand Mehre, Una Highway, ', 'Top and Town', 'Booked', '1'),
('7898765432', '9876543210', 'Veg Roll', 'Gandhi Chowk, Hamirpur H O, Ha', 'Salt and Papt', 'Booked', '1'),
('7898765432', '9870965465', 'Chana Kulcha', 'una hamirpur national highway ', 'Kirzi Fast Food', 'Booked', '1'),
('7898765432', '9886754389', 'CHICKEN KORMA', 'Bus Stand Mehre, Mehre Chowk, ', 'Durga Resturant', 'Booked', '1'),
('6644454545', '9886754389', 'CHICKEN KORMA', 'Bus Stand Mehre, Mehre Chowk, ', 'Durga Resturant', 'Booked', '1'),
('6644454545', '9876543210', 'Veg Roll', 'Gandhi Chowk, Hamirpur H O, Ha', 'Salt and Papt', 'Booked', '1'),
('8987876545', '7418520963', 'Matar Panner', 'Bus Stand Mehre, Una Highway, ', 'Top and Town', 'Booked', '1'),
('8987876545', '9870965465', 'Chana Kulcha', 'una hamirpur national highway ', 'Kirzi Fast Food', 'Booked', '1');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `itemname` varchar(30) NOT NULL,
  `restaurantname` varchar(40) NOT NULL,
  `restaurantaddress` varchar(50) NOT NULL,
  `restaurantnumber` varchar(10) NOT NULL,
  `images` varchar(50) NOT NULL,
  `vernonveg` varchar(5) NOT NULL,
  `1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`itemname`, `restaurantname`, `restaurantaddress`, `restaurantnumber`, `images`, `vernonveg`, `1`) VALUES
('Matar Panner', 'Top and Town', 'Bus Stand Mehre, Una Highway, Mehre, Hamirpur-Hima', '7418520963', 'Capture.PNG', 'veg', 1),
('Veg Roll', 'Salt and Papt', 'Gandhi Chowk, Hamirpur H O, Hamirpur-Himachal Prad', '9876543210', 'CATURE.PNG', 'veg', 2),
('Chana Kulcha', 'Kirzi Fast Food', 'una hamirpur national highway near thakur hospital', '9870965465', 'captures.PNG', 'veg', 3),
('Chicken Korma', 'Durga Resturant', 'Bus Stand Mehre, Mehre Chowk, Mehre, Hamirpur-Hima', '9886754389', 'capture1.png', 'Nonve', 4),
('Veg Sandwitch', 'Sharma Dhaba', 'Una Aghar Mandi Highway, Hamirpur Una Road, Shukka', '9809090909', 'bread.png', 'veg', 5),
('Chicken BBQ Pizza', 'Hot Spot', 'Mehre 174305 Hamirpur, Himachal Pradesh, India', '8987654543', 'bowl.jpeg', 'Nonve', 6),
('Tandoori Chicken', 'Agnihotri Dhaba', 'Una - Hamirpur Rd, Barsar, Himachal Pradesh 174305', '9876512345', 'korma.jpg', 'Nonve', 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurantlogin`
--

CREATE TABLE `restaurantlogin` (
  `name` varchar(30) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurantlogin`
--

INSERT INTO `restaurantlogin` (`name`, `phoneno`, `emailid`, `address`, `password`) VALUES
('Top and Town', '7418520963', 'asd@sa.as', 'Bus Stand Mehre, Una Highway, Mehre, Hamirpur-Hima', '2131312312313'),
('Hot Spot', '8987654541', 'abc@aa.aa', 'Mehre 174305 Hamirpur, Himachal Pradesh, India', 'asd'),
('Hot Spot', '8987654542', 'asd@ads.sad', 'Mehre 174305 Hamirpur, Himachal Pradesh, India', 'asddsda'),
('Hot Spot', '8987654543', 'asd', 'Mehre 174305 Hamirpur, Himachal Pradesh, India', 'ad'),
('Sharma Dhaba', '9809090909', 'asd@asd', 'Una Aghar Mandi Highway, Hamirpur Una Road, Shukka', 'asdasd'),
('Kirzi Fast Food', '9870965465', 'aa@aa.aa', 'una hamirpur national highway near thakur hospital', 'asd'),
('Agnihotri Dhaba', '9876512341', 'a@b.c', 'Una - Hamirpur Rd, Barsar, Himachal Pradesh 174305', '1234'),
('Agnihotri Dhaba', '9876512342', 'aap@aa.aa', 'Una - Hamirpur Rd, Barsar, Himachal Pradesh 174305', 'asd'),
('Agnihotri Dhaba', '9876512345', 'sd', 'Una - Hamirpur Rd, Barsar, Himachal Pradesh 174305', 'ddsd'),
('Salt and Papt', '9876543210', 'ab@aa.aa', 'Gandhi Chowk, Hamirpur H O, Hamirpur-Himachal Prad', 'asd'),
('Durga Resturant', '9886754389', 'rest@g.c', 'Bus Stand Mehre, Mehre Chowk, Mehre, Hamirpur-Hima', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `name` varchar(40) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`name`, `emailid`, `address`, `number`, `password`) VALUES
('wses', 'a@a.a', 'xa', '6644454545', '1234'),
('Avin', 'a@gmail.com', 'asdfghjkldfghjkfgh', '7898765432', '1234'),
('cds', 'as@a', 'fghjkl', '567890', 'asd'),
('dsa', 'as@as.as', 'qwe', '5678567856', 'asd'),
('rte', 'b@b.b', '3434', '8987876545', '1234'),
('sdadsdf', 'dsasd@asd.asd', 'sssddsfd', '8976456346', 'ssdsdfdasdf'),
('ooiujnhi', 'op@op.op', 'opop', '9897656545', '1234567'),
('qaz', 'zxc@a.a', 'poki', '8986757564', 'asd'),
('qseswd', 'zxsc@as.as', 'ytituyi', '9898765654', 'asdfghj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`1`);

--
-- Indexes for table `restaurantlogin`
--
ALTER TABLE `restaurantlogin`
  ADD UNIQUE KEY `phoneno` (`phoneno`),
  ADD UNIQUE KEY `emailid` (`emailid`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD UNIQUE KEY `emailid` (`emailid`),
  ADD UNIQUE KEY `number` (`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
