-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 05:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karmakitchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `FoodID` int(11) NOT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`FoodID`, `Category`, `FoodName`, `Description`, `Image`) VALUES
(8, 'Khai vị', 'Xuân quyện', 'Món khai vị tinh tế, kết hợp hương vị tươi mát của các loại rau mùa xuân cùng với gia vị đặc trưng, mang đến sự khởi đầu tuyệt vời cho bữa ăn của bạn', '1716280292472-XuÃ¢n quyá»n.jfif'),
(9, 'Khai vị', 'Cháo thanh lọc', 'Món cháo thanh đạm, được nấu từ các nguyên liệu tươi ngon và gia vị tinh khiết, giúp thanh lọc cơ thể và mang lại cảm giác dễ chịu', '1716280344175-chÃ¡o thanh lá»c.jpg'),
(10, 'Món chính', 'Đậu tẩm hành', 'Món ăn nhẹ với hương vị đậm đà, từ những miếng đậu tươi giòn được tẩm ướp cùng hành phi thơm lừng, mang lại cảm giác ngon miệng và hấp dẫn', '1716280378726-Äáº­u táº©m hÃ nh.jfif'),
(11, 'Món chính', 'Súp bí đỏ và bánh mỳ nướng', 'Món súp mịn màng, ngọt ngào từ bí đỏ tươi, kết hợp với hương vị đậm đà của kem và gia vị, tạo nên một món ăn ấm áp và bổ dưỡng', '1716280412479-sÃºp bÃ­ Äá».jpg'),
(12, 'Món chính', 'Rau củ mùa xuân', 'Sự kết hợp hoàn hảo của các loại rau củ tươi ngon theo mùa, được chế biến tinh tế để giữ nguyên hương vị tự nhiên và dinh dưỡng', '1716280462965-rau cá»§ mÃ¹a xuÃ¢n.jfif'),
(13, 'Tráng miệng', 'Mía chưng hoa bưởi', 'Món tráng miệng độc đáo, với mía chưng ngọt ngào kết hợp hương thơm thanh khiết của hoa bưởi, mang đến sự tươi mát và thanh khiết', '1716280524981-mÃ­a chÆ°ng hoa bÆ°á»i.jpg'),
(14, 'Đồ uống', 'Sữa hạt điều', 'Thức uống béo ngậy và bổ dưỡng, từ hạt điều tươi ngon, mang đến hương vị thơm ngon tự nhiên và nhiều lợi ích cho sức khỏe', '1716280563884-sauwx háº¡t ÄiÃ¨u.jfif'),
(15, 'Đồ uống', 'Trà nghệ mật ong', 'Thức uống bổ dưỡng, kết hợp nghệ tươi và mật ong nguyên chất, giúp tăng cường sức khỏe và mang lại cảm giác thư giãn', '1716280596211-TrÃ  nghá» máº­t ong.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `TableID` int(11) DEFAULT NULL,
  `FoodID` int(11) DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Status` enum('New','Prepared','Served') DEFAULT 'New',
  `Note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `TableID`, `FoodID`, `TableName`, `FoodName`, `Quantity`, `Status`, `Note`) VALUES
(57, 2, NULL, 'A2', 'Xuân quyện', 1, 'Served', ''),
(58, 12, NULL, 'B7', 'Cháo thanh lọc', 1, 'Served', ''),
(59, 1, NULL, 'A1', 'Đậu tẩm hành', 1, 'Served', ''),
(60, 3, NULL, 'A3', 'Súp bí đỏ và bánh mỳ nướng', 1, 'Served', ''),
(61, 2, NULL, 'A2', 'Rau củ mùa xuân', 1, 'Prepared', ''),
(62, 3, NULL, 'A3', 'Rau củ mùa xuân', 1, 'Prepared', ''),
(63, 2, NULL, 'A2', 'Mía chưng hoa bưởi', 1, 'Prepared', ''),
(64, 1, NULL, 'A1', 'Súp bí đỏ và bánh mỳ nướng', 1, 'New', ''),
(65, 4, NULL, 'A4', 'Rau củ mùa xuân', 1, 'New', ''),
(66, 5, NULL, 'A5', 'Đậu tẩm hành', 1, 'New', '');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `TableID` int(11) NOT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Floor` enum('1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`TableID`, `TableName`, `Description`, `Floor`) VALUES
(1, 'A1', 'Biết ơn - Gratitude', '1'),
(2, 'A2', 'Bình an - Peace', '1'),
(3, 'A3', 'Giấc ngủ - Sleep', '1'),
(4, 'A4', 'Tỉnh giấc - Mindfulness', '1'),
(5, 'A5', 'Hạnh phúc - Happiness', '1'),
(6, 'B1', 'Niềm tin - Trust', '2'),
(7, 'B2', 'Yêu thương - Love', '2'),
(8, 'B3', 'Chú tâm - Attention', '2'),
(9, 'B4', 'Cơn mưa - Rain', '2'),
(10, 'B5', 'Hoa loa kèn - Lily', '2'),
(11, 'B6', 'Ý nghĩa - Meaningful', '2'),
(12, 'B7', 'Ấm áp - Warmth', '2'),
(13, 'C1', 'Cơn gió mát - Wind', '2'),
(14, 'C2', 'Chén trà - A Cup of Tea', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`FoodID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `TableID` (`TableID`),
  ADD KEY `FoodID` (`FoodID`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`TableID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `FoodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `TableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`TableID`) REFERENCES `table` (`TableID`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`FoodID`) REFERENCES `food` (`FoodID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
