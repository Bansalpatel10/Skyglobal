-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 03:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, '', '', 1),
(7, 'bansal', 'bansal', 1, 'bansalmanavadariya10102006@gmail.com', '6352541557', 1),
(8, 'daksh', 'daksh', 1, 'daksh.managukiya@gmail.com', '9328813114', 1),
(9, 'dhruv', 'dhruv', 1, 'dhruvghiniya5812@gmail.com', '9662629301', 1),
(10, 'avinesh', 'avinesh', 1, 'avinesh.vagasiya2510@gmail.com', '9712280997', 1),
(11, 'parth', 'parth', 1, 'parthsavani@gmail.com', '9925870931', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(255) NOT NULL,
  `heading2` varchar(255) NOT NULL,
  `btn_txt` varchar(255) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading1`, `heading2`, `btn_txt`, `btn_link`, `image`, `order_no`, `status`) VALUES
(3, 'Monthend special Offer', '20% OFF On Smart Watches', '', '', '984611332_2.1.jpg', 0, 1),
(4, 'Weekend special Offer', '20% Off On Men Cloths', '', '', '804933083_2.1.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Men', 1),
(2, 'Women', 1);

-- --------------------------------------------------------

--
-- Table structure for table `color_master`
--

CREATE TABLE `color_master` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_master`
--

INSERT INTO `color_master` (`id`, `color`, `status`) VALUES
(1, 'Red', 1),
(3, 'Black', 1),
(4, 'Pink', 1),
(5, 'Green', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'First50', 1000, 'Rupee', 1500, 1),
(2, 'First60', 20, 'Percentage', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(200) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(50) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`) VALUES
(1, 0, '', '', 0, 'payu', 0, 'Success', 5, '', '', '', 0, '', '', '0000-00-00 00:00:00'),
(2, 1, 'Anand Dhara Row House,A 101', 'Surat', 394101, 'instamojo', 1500, 'pending', 1, '768bfac913e185658762', '', '', 0, '', '', '2024-03-08 11:40:27'),
(3, 1, 'Anand Dhara Row House,A 101', 'Surat', 394101, 'COD', 1500, 'Success', 5, 'fb79acc1084c181ec3b0', '', '', 0, '', '', '2024-03-08 11:40:37'),
(4, 1, 'Anand Dhara Row House,A 101', 'Surat/Gujrat', 394108, 'instamojo', 1500, 'pending', 1, 'b2620f8167ee43c19b2e0e7a1cd86be6', '', '', 0, '', '', '2024-03-08 11:53:29'),
(5, 1, 'om Regency A1 1103', 'Surat', 394101, 'COD', 622200, 'pending', 1, '17750d0362f4a525b26d', '', '', 1, '1000', 'First50', '2024-03-08 11:55:19'),
(6, 4, 'Anand Dhara Row House,A 101', 'Surat/Gujrat', 394101, 'COD', 1200, 'Success', 5, 'b5b2666f5a19568ae6a1', '', '', 2, '300', 'First60', '2024-03-08 12:10:31'),
(7, 4, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat/Gujrat', 360421, 'COD', 199900, 'Success', 5, 'ee1f3ba806f6af039620', '', '', 0, '', '', '2024-03-08 12:50:21'),
(8, 4, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat/Gujrat', 394101, 'COD', 1999, 'Success', 3, 'c529a61ba4ca1b7ebba9', '', '', 0, '', '', '2024-03-08 01:31:44'),
(9, 5, 'Anand Dhara Row House,A 101', 'Surat', 394101, 'COD', 1499, 'pending', 3, '36a9c6096a35f9640f5e', '', '', 0, '', '', '2024-03-11 03:46:43'),
(10, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat/Gujrat', 394108, 'instamojo', 1799, 'pending', 1, 'c0d950e73be74ff8bcfc63a7ee678bc6', '', '', 0, '', '', '2024-03-13 04:06:17'),
(11, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat/Gujrat', 394108, 'instamojo', 1799, 'pending', 1, '3fba07efa78047df9afe917f63c971e5', '', '', 0, '', '', '2024-03-13 04:12:31'),
(12, 5, 'om Regency A1 1103', 'Surat/Gujrat', 394101, 'instamojo', 5997, 'pending', 1, '60b077aea9f2c48efe92', '', '', 0, '', '', '2024-03-13 04:16:46'),
(13, 5, 'P.P.Savani University', 'Kosamb a', 369874, 'payu', 1199, 'pending', 1, '823c5c090d9d4afc1dbe', '', '', 0, '', '', '2024-03-15 02:28:27'),
(14, 5, 'P.P.Savani University', 'Kosamb a', 394101, 'payu', 1199, 'pending', 1, '29535487d3b6e94ba5ef', '', '', 0, '', '', '2024-03-15 02:30:16'),
(15, 5, 'P.P.Savani University', 'Kosamb a', 394101, 'instamojo', 1199, 'pending', 1, 'dbd135d285908aec5ade', '', '', 0, '', '', '2024-03-15 02:49:59'),
(16, 5, 'P.P.Savani University', 'Kosamb a', 394101, 'instamojo', 1199, 'pending', 1, '034ad986562f928277b4', '', '', 0, '', '', '2024-03-15 02:50:23'),
(17, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat', 360421, 'instamojo', 1199, 'pending', 1, '7a5c953ae58381d8534e', '', '', 0, '', '', '2024-03-15 02:50:33'),
(18, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat', 360421, 'instamojo', 1199, 'pending', 1, '9e5a657e4d3c7856537e', '', '', 0, '', '', '2024-03-15 02:54:25'),
(19, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat', 360421, 'instamojo', 1199, 'pending', 1, 'fc7709129139a4885e52', '', '', 0, '', '', '2024-03-15 02:55:38'),
(20, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat', 360421, 'instamojo', 1199, 'pending', 1, 'ca41aa55a78e09a55066', '', '', 0, '', '', '2024-03-15 02:56:08'),
(21, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat', 360421, 'instamojo', 1199, 'pending', 1, '886b68964932776f3270', '', '', 0, '', '', '2024-03-15 02:56:50'),
(22, 5, 'om Regency A1 1103', 'Surat/Gujrat', 360421, 'instamojo', 6899, 'pending', 1, 'b9ec8e701994a157696e', '', '', 0, '', '', '2024-03-16 04:38:01'),
(23, 5, 'om Regency A1 1103', 'Surat/Gujrat', 360421, 'instamojo', 6899, 'pending', 1, '03fd6f97dfa4b6cae6c9', '', '', 0, '', '', '2024-03-16 04:39:07'),
(24, 5, 'Anand Dhara Row House,A 101', 'Surat/Gujrat', 394101, 'instamojo', 6899, 'pending', 2, '4284d862e4a4cd28ddbe', '', '', 0, '', '', '2024-03-16 04:39:42'),
(25, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat', 360421, 'instamojo', 6899, 'pending', 1, '9440dbd77e43cbf69514', '', '', 0, '', '', '2024-03-16 04:47:02'),
(26, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat', 360421, 'instamojo', 6899, 'pending', 1, '29e450426aeb2fe0d2db', '', '', 0, '', '', '2024-03-16 04:58:27'),
(27, 5, 'Anand Dhara Row House,A 101', 'Surat', 394101, 'instamojo', 6899, 'pending', 1, '05f6fb4d3db106db7338', '', '', 0, '', '', '2024-03-16 04:59:39'),
(28, 5, 'Anand Dhara Row House,A 101', 'Surat', 394101, 'instamojo', 6899, 'pending', 1, '4670d1489122894c40cb', '', '', 0, '', '', '2024-03-16 05:12:10'),
(29, 5, 'Anand Dhara Row House,A 101', 'Surat', 394101, 'instamojo', 6899, 'pending', 1, '6e36895133e407a0d137', '', '', 0, '', '', '2024-03-16 05:13:08'),
(30, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat/Gujrat', 360421, 'instamojo', 6899, 'Success', 5, '256230be7b46f859098d', '', '', 0, '', '', '2024-03-16 05:13:16'),
(31, 5, 'A 403 SUNDER APP.KUBER NAGAR', 'Surat/Gujrat', 360421, 'instamojo', 6899, 'pending', 1, 'ac12212a09b49aa9cc28', '', '', 0, '', '', '2024-03-16 05:21:15'),
(32, 5, 'om Regency A1 1103', 'Surat', 394101, 'instamojo', 6899, 'pending', 1, 'dafdb3bdf14262b14203', '', '', 0, '', '', '2024-03-16 05:37:30'),
(33, 5, 'Anand Dhara Row House,A 101', 'Surat', 394101, 'instamojo', 1799, 'pending', 1, '2e77323f73099086968c', '', '', 0, '', '', '2024-03-19 04:02:43'),
(34, 5, 'P.P.Savani University', 'Surat/Gujrat', 360421, 'instamojo', 1399, 'pending', 1, 'a24b07e82f270fb93484', '', '', 0, '', '', '2024-03-20 07:48:30'),
(35, 5, 'P.P.Savani University', 'Surat/Gujrat', 360421, 'instamojo', 1399, 'pending', 1, 'd311ae39f5424d655bb0', '', '', 0, '', '', '2024-03-20 08:03:45'),
(36, 5, 'P.P.Savani University', 'Surat/Gujrat', 360421, 'instamojo', 1399, 'pending', 1, '4c03fc70e451d3fa1000', '', '', 0, '', '', '2024-03-20 08:03:58'),
(37, 5, 'P.P.Savani University', 'Kosamb a', 360421, 'instamojo', 1399, 'pending', 1, '90c7caa80830108624d0', '', '', 0, '', '', '2024-03-20 08:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `product_attr_id`, `qty`, `price`) VALUES
(1, 1, 7, 5, 10, 333),
(2, 2, 6, 0, 1, 1500),
(3, 3, 6, 0, 1, 1500),
(4, 4, 6, 0, 1, 1500),
(5, 5, 2, 0, 4, 155800),
(6, 6, 6, 0, 1, 1500),
(7, 7, 21, 0, 100, 1999),
(8, 8, 23, 0, 1, 1999),
(9, 9, 54, 0, 1, 1499),
(10, 10, 151, 0, 1, 1799),
(11, 11, 151, 0, 1, 1799),
(12, 12, 107, 0, 3, 1999),
(13, 13, 264, 0, 1, 1199),
(14, 14, 264, 0, 1, 1199),
(15, 15, 264, 0, 1, 1199),
(16, 16, 264, 0, 1, 1199),
(17, 17, 264, 0, 1, 1199),
(18, 18, 264, 0, 1, 1199),
(19, 19, 264, 0, 1, 1199),
(20, 20, 264, 0, 1, 1199),
(21, 21, 264, 0, 1, 1199),
(22, 22, 37, 0, 1, 6899),
(23, 23, 37, 0, 1, 6899),
(24, 24, 37, 0, 1, 6899),
(25, 25, 37, 0, 1, 6899),
(26, 26, 37, 0, 1, 6899),
(27, 27, 37, 0, 1, 6899),
(28, 28, 37, 0, 1, 6899),
(29, 29, 37, 0, 1, 6899),
(30, 30, 37, 0, 1, 6899),
(31, 31, 37, 0, 1, 6899),
(32, 32, 37, 0, 1, 6899),
(33, 33, 151, 0, 1, 1799),
(34, 34, 95, 0, 1, 1399),
(35, 35, 95, 0, 1, 1399),
(36, 36, 95, 0, 1, 1399),
(37, 37, 95, 0, 1, 1399);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(1, 1, 1, 'Elegance In Tradition', 2199, 1999, 100, '492724350_1.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\" The T-shirt\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(2, 1, 1, 'Colorful Comfort: The PUMA Tee', 999, 849, 100, '986967449_2.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\" The T-shirt\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(3, 1, 1, 'Striped Elegance: The Green Panel', 999, 699, 100, '229292557_11.3.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\" The T-shirt\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 1, '', '', '', 7, 1),
(4, 1, 1, 'Bold Camouflage:PUMA Graphic', 899, 749, 100, '721874914_4.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\" The T-shirt\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(5, 1, 1, 'The PUMA Graphic Tee', 1999, 1899, 100, '308509575_7.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\\\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \\\"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\\\" The T-shirt\\\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(6, 1, 1, 'Sporty Contrast: The PUMA Tee', 849, 799, 100, '386066407_6.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\" The T-shirt\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(7, 1, 1, 'Classic Contrast: Black Polo Tee', 1599, 1299, 100, '936729971_5.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\\\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \\\"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\\\" The T-shirt\\\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(8, 1, 1, 'Classic Contrast: Black Polo', 999, 899, 100, '489859582_8.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\\\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \\\"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\\\" The T-shirt\\\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(9, 1, 1, 'Abstract Elegance: The Black Polo', 2199, 1999, 100, '796554137_9.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\" The T-shirt\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(10, 1, 1, 'The Striped Green Panel', 1299, 999, 100, '653918118_10..3.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\" The T-shirt\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(11, 1, 0, 'Sporty Contrast: The PUMA', 1299, 1199, 100, '675029619_12.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\\\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \\\"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\\\" The T-shirt\\\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(12, 1, 1, 'The One8 PUMA Tee', 2899, 2799, 100, '231228704_3.1.jpg', '', 'The image features an individual wearing a dark-colored T-shirt with a white graphic. The person\'s face is obscured for privacy. The graphic, centered on the shirt, depicts a polo player in action and is surrounded by the text \"GENUINE SPIRIT OF POLO 1890 U.S. POLO ASSN.\" The T-shirt\'s design exudes a casual yet stylish aesthetic. The individual stands against a neutral backdrop, ensuring the focus remains on the attire. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(13, 1, 2, 'Classic Black Dress Shirt', 999, 899, 100, '261405781_Black.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(14, 1, 2, 'Light Blue Striped Shirt', 1249, 999, 100, '533372274_4.1.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(15, 1, 2, 'Purple Checkered Shirt', 799, 699, 100, '686890126_7.1.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(16, 1, 2, 'Dark Blue Grid Pattern Shirt', 1999, 1899, 1799, '765734213_6.1.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(17, 1, 2, 'Light Blue Grid Pattern Shirt', 899, 799, 100, '520419406_5.1.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(18, 1, 2, 'Light Blue Shirt', 999, 899, 100, '897542389_3.1.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(19, 1, 2, 'White Shirt With Black Texts', 899, 799, 100, '556957709_4.1.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(20, 1, 2, 'Green And Navy Blue Plaid Shirt', 1499, 1399, 100, '682486500_8.1.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(21, 1, 2, 'Classic Light Blue Dress Shirt', 599, 499, 100, '487444891_sky blue.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(22, 1, 2, 'Classic Maroon Dress Shirt', 599, 499, 100, '122997816_Maroon.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(23, 1, 2, 'Classic Navy Blue Dress Shirt', 599, 499, 100, '129390050_Navy Blue.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(24, 1, 2, 'Classic Parrot Dress Shirt', 599, 499, 100, '792603769_Parrot.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(25, 1, 2, 'Classic Rama Dress Shirt', 599, 499, 100, '540731270_Rama.jpg', '', 'The image presents a neatly designed men’s shirt. It’s light blue, exuding professional elegance. The shirt features a standard collar, buttoned front, and long sleeves. The fabric appears smooth and slightly glossy, indicating quality material. The shirt is unbuttoned at the collar, giving it a semi-formal appearance. It’s displayed on an invisible mannequin to highlight its fit and structure. This shirt is a classic example of a dress shirt, often worn in professional settings or formal occasions. Its light blue color adds a touch of softness to its overall sophisticated look.', 0, '', '', '', 7, 1),
(26, 1, 3, 'Emerald Elegance Ensemble', 2199, 1999, 100, '805221858_1.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(27, 1, 3, 'Men’s Dapper Blue Plaid Jacket', 5999, 5599, 100, '445081263_10.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(28, 1, 3, 'Elegant Blue Velvet Men’s Blazer', 1599, 1299, 100, '944465240_11.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(29, 1, 3, 'Red Sequined Evening Jacket', 1899, 1799, 100, '410857180_12.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(30, 1, 3, 'Sleek Black Men\'s Formal Jacket', 2899, 2799, 100, '723140527_2.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(31, 1, 3, 'Elegant Light Grey Formal Blazer', 8999, 7999, 100, '913451736_3.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(32, 1, 3, 'Black Men’s Business Suit', 1999, 1549, 100, '720181954_4.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(33, 1, 3, 'Checked Pattern Formal Blaze', 1299, 1199, 100, '226289336_5.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(34, 1, 3, 'Elegant Black Men’s Formal Suit', 7899, 7799, 100, '832527551_6.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(35, 1, 3, 'Colorful Patterned Men’s Shuit', 4799, 4599, 100, '766898866_7.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(36, 1, 3, 'Elegant White And Black Tuxedo', 7899, 7799, 100, '309100331_8.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(37, 1, 3, 'Men’s Black Business Suit', 7899, 6899, 100, '169841544_9.1.jpg', '', 'The image presents an individual in a stylish ensemble, their face obscured for privacy. They\'re wearing an olive green blazer, buttoned at the center, over a light brown turtleneck sweater. The lower attire includes cream-colored trousers, held up by a dark brown leather belt with a metallic buckle. The outfit exudes a vibe of casual elegance and sophistication. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(38, 1, 4, 'Man In Stylish Casual Attire', 1999, 1899, 100, '814424542_p1 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\'s face is obscured for privacy. They\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(39, 1, 4, 'Elegant Traditional Red Ethnic Wear', 899, 799, 100, '431272272_p8 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\'s face is obscured for privacy. They\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(40, 1, 4, 'Traditional Attire, Elegance Personified Globally', 999, 899, 100, '832325867_p11 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\'s face is obscured for privacy. They\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(41, 1, 4, 'Elegant Traditional Floral Pattern Attire', 1599, 1399, 100, '180468407_p12 (3).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\'s face is obscured for privacy. They\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(42, 1, 4, 'Elegant Traditional Attire Displayed Gracefully', 1599, 1699, 100, '846982662_p2 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\'s face is obscured for privacy. They\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(43, 1, 4, 'Elegant Red Traditional Attire Displayed', 1899, 1799, 100, '485684945_p3 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\'s face is obscured for privacy. They\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(44, 1, 4, 'Elegant Traditional Multicolored Attire Displayed', 699, 599, 100, '256294804_p5 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\\\'s face is obscured for privacy. They\\\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\\\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(45, 1, 4, 'Elegant Traditional Ethnic Menswear Displayed', 1899, 1799, 100, '650289021_p6 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\'s face is obscured for privacy. They\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(46, 1, 4, 'Elegant Traditional Yellow Ethnic Wear', 2599, 2499, 100, '432693132_p7 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\'s face is obscured for privacy. They\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(47, 1, 4, 'Traditional Attire Displayed Gracefully', 1499, 1199, 100, '853175128_p8 (1).jpg', '', 'The image showcases an individual in traditional South Asian attire. The person\\\'s face is obscured for privacy. They\\\'re wearing a red kurta with intricate stitching down the front, paired with cream-colored dhoti pants. The kurta\\\'s long sleeves and mid-thigh length give it an elegant look. Light-colored traditional shoes complete the ensemble. The attire suggests formal or festive wear. The individual stands against a plain background, ensuring the focus remains on the outfit. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 7, 1),
(48, 1, 5, 'Elegance Tradition', 2599, 2499, 100, '948608327_p1 (3).jpg', '', 'The image features an individual in traditional attire, specifically a black sherwani with golden buttons and a white pocket square. The sherwani is paired with cream-colored trousers. The person\'s face is not visible, maintaining their privacy. They stand next to an elegant chair with a patterned cushion, set against a plain, light brown backdrop. This setting emphasizes the sophistication of the attire and the formal ambiance. The overall image presents a tasteful blend of tradition and style. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(49, 1, 5, 'Traditional Elegance In Men\'s Attire', 1499, 1299, 100, '223538165_p10 (2).jpg', '', 'The image features an individual in traditional attire, specifically a black sherwani with golden buttons and a white pocket square. The sherwani is paired with cream-colored trousers. The person\'s face is not visible, maintaining their privacy. They stand next to an elegant chair with a patterned cushion, set against a plain, light brown backdrop. This setting emphasizes the sophistication of the attire and the formal ambiance. The overall image presents a tasteful blend of tradition and style. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(50, 1, 5, 'Embroidered Elegance In Traditional Attire', 2599, 2399, 100, '823116912_p11 (1).jpg', '', 'The image features an individual in traditional attire, specifically a black sherwani with golden buttons and a white pocket square. The sherwani is paired with cream-colored trousers. The person\'s face is not visible, maintaining their privacy. They stand next to an elegant chair with a patterned cushion, set against a plain, light brown backdrop. This setting emphasizes the sophistication of the attire and the formal ambiance. The overall image presents a tasteful blend of tradition and style. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(51, 1, 5, 'Traditional Attire Against Elegant Backdrop', 1499, 1299, 100, '427498637_p12 (1).jpg', '', 'The image features an individual in traditional attire, specifically a black sherwani with golden buttons and a white pocket square. The sherwani is paired with cream-colored trousers. The person\'s face is not visible, maintaining their privacy. They stand next to an elegant chair with a patterned cushion, set against a plain, light brown backdrop. This setting emphasizes the sophistication of the attire and the formal ambiance. The overall image presents a tasteful blend of tradition and style. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(52, 1, 5, 'Graceful Display Of Traditional Attire', 1299, 1099, 100, '562279067_p2 (2).jpg', '', 'The image features an individual in traditional attire, specifically a black sherwani with golden buttons and a white pocket square. The sherwani is paired with cream-colored trousers. The person\'s face is not visible, maintaining their privacy. They stand next to an elegant chair with a patterned cushion, set against a plain, light brown backdrop. This setting emphasizes the sophistication of the attire and the formal ambiance. The overall image presents a tasteful blend of tradition and style. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(53, 1, 5, 'Green Ethnic Wear Displayed Elegantly', 1599, 1499, 100, '190628361_p4 (1).jpg', '', 'The image features an individual in traditional attire, specifically a black sherwani with golden buttons and a white pocket square. The sherwani is paired with cream-colored trousers. The person\'s face is not visible, maintaining their privacy. They stand next to an elegant chair with a patterned cushion, set against a plain, light brown backdrop. This setting emphasizes the sophistication of the attire and the formal ambiance. The overall image presents a tasteful blend of tradition and style. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(54, 1, 5, 'Traditional Indian Wedding Attire Displayed', 1599, 1499, 100, '735684908_p5 (2).jpg', '', 'The image features an individual in traditional attire, specifically a black sherwani with golden buttons and a white pocket square. The sherwani is paired with cream-colored trousers. The person\'s face is not visible, maintaining their privacy. They stand next to an elegant chair with a patterned cushion, set against a plain, light brown backdrop. This setting emphasizes the sophistication of the attire and the formal ambiance. The overall image presents a tasteful blend of tradition and style. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(55, 1, 5, 'Traditional Indian Men\'s Attire Displayed', 2599, 2499, 100, '416289637_p6 (1).jpg', '', 'The image features an individual in traditional attire, specifically a black sherwani with golden buttons and a white pocket square. The sherwani is paired with cream-colored trousers. The person\'s face is not visible, maintaining their privacy. They stand next to an elegant chair with a patterned cushion, set against a plain, light brown backdrop. This setting emphasizes the sophistication of the attire and the formal ambiance. The overall image presents a tasteful blend of tradition and style. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 7, 1),
(60, 1, 6, 'Stylish Ripped Blue Denim', 1599, 1499, 100, '432702858_1.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(61, 1, 6, 'Baggy Denim Cargo Pants Trend', 1499, 1299, 100, '444607532_10.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(62, 1, 6, 'Classic Dark Blue Jeans Display', 2599, 2199, 100, '940203094_11.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(63, 1, 6, 'Stylish Blue Jeans White', 2599, 2499, 100, '826363714_12.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(64, 1, 6, 'Classic Blue Denim Jeans', 4599, 3699, 100, '248198678_2.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(65, 1, 6, 'Dark Blue Jeans Casual Style', 1599, 1499, 100, '301917316_3.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(66, 1, 6, 'Bold Camouflage: PUMA Graphic', 5899, 5499, 100, '307417033_4.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(67, 1, 6, 'Eclectic Patchwork Denim Outfit', 2599, 2299, 100, '498176242_5.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(68, 1, 6, 'Distressed Denim Jeans Casual Look', 1299, 1199, 100, '669041743_6.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(69, 1, 6, 'Black Jeans Grey Sweater Combo', 999, 899, 100, '280392382_7.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(70, 1, 6, 'Dark Blue Jeans White Sneakers', 1499, 1199, 100, '379677738_8.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(71, 1, 6, 'Stylish Blue Jeans And Sneakers', 2599, 2499, 100, '379980665_9.1.jpg', '', 'These are stylish, distressed jeans with a modern look. They feature intentional rips and a faded denim fabric. The jeans have a classic five-pocket design and a slim fit cut for a flattering silhouette. The mid-rise waist provides comfort, secured with a zip fly and button closure. These jeans are versatile, perfect for casual outings or adding an edge to your evening wear. Pair them with sneakers or boots to complete the contemporary look. The image shows the jeans paired with white sneakers, enhancing the casual aesthetic. The jeans are dark blue with noticeable fading on the thighs and knees area.', 0, '', '', '', 8, 1),
(72, 1, 7, 'Stylish Light Blue Cargo Showcase', 2499, 2399, 100, '258389300_1.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(73, 1, 7, 'Floral Shirt White Pants Ensemble', 1299, 999, 100, '700488113_10.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(74, 1, 7, 'Grey Formal Pants Casual Sneakers', 1699, 1599, 100, '243388318_11.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(75, 1, 7, 'Light Blue Shirt Beige Trousers', 1299, 1199, 100, '888225968_12.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(76, 1, 7, 'Man In Khaki Cargo Pants', 2399, 2299, 100, '117553715_2.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(77, 1, 7, 'Elegant White Trousers', 1999, 1899, 100, '426885211_3.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1);
INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(78, 1, 7, 'Man With Brown Cargo Pants', 2199, 1999, 100, '830042581_4.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(79, 1, 7, 'Neatly Dressed Man, Casual Style', 1899, 1799, 100, '687147939_5.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(80, 1, 7, 'Man Showcasing Chino Pants', 1799, 1599, 100, '940275994_6.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(81, 1, 7, 'Man Green Chino Pants', 1499, 1299, 100, '851361824_7.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(82, 1, 7, 'Man With Dark Blue Trouser', 1299, 1199, 100, '614957245_8.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(83, 1, 7, 'Man Formal Grey Pants', 1599, 1699, 100, '152374181_9.1.jpg', '', 'The image features a person in light blue cargo pants and white sneakers. The pants, with multiple pockets, including a large side one, offer style and functionality. The individual is captured mid-step, emphasizing the fit and wearability of the pants. The neutral backdrop keeps the focus on the attire, highlighting its design and color. This outfit, suitable for casual outings, blends comfort with contemporary fashion trends. The upper body clothing is not fully visible but appears to be a light-colored top. The person seems to be in motion, possibly walking or posing to display the outfit.', 0, '', '', '', 8, 1),
(84, 1, 8, 'Blue Hoodie, Overlays Text', 1599, 1499, 100, '509145532_1.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(85, 1, 8, 'Blue Hoodie, OG CO', 1599, 1499, 100, '297176136_10.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(86, 1, 8, 'Man In \'OVERLAYS\' Hoodie', 2599, 2499, 100, '565980301_11.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(87, 1, 8, 'Person In Grey Hoodie', 7899, 6999, 100, '223298421_12.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(88, 1, 8, 'Adidas Grey Hooded Sweatshirt', 1499, 1399, 100, '808044676_2.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(89, 1, 8, 'New York Black Hoodie', 2599, 2399, 100, '927631641_3.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(90, 1, 8, 'Adidas Black Hoodie Displayed', 999, 899, 100, '463569714_4.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(91, 1, 8, 'Stylish Teal 23Engineer Hoodie', 1299, 1199, 100, '270448648_5.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(92, 1, 8, 'Dark Grey Puma Hoodie', 2699, 2499, 100, '826778167_6.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(93, 1, 8, 'Stormtrooper Helmet Hoodie', 1999, 1799, 100, '924300110_7.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(94, 1, 8, 'Be Yourself Green Hoodie', 1599, 1499, 100, '956235804_8.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(95, 1, 8, 'HRSIZHE Stylish Sweatshirt', 1499, 1399, 100, '294878646_9.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word \"OVERLAYS\" printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(96, 1, 10, 'Modern White Athletic Sneakers', 1999, 1799, 100, '739981750_1.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word  printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(97, 1, 10, 'Modern Athletic Running Shoe', 849, 799, 100, '577283216_2.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word  printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(98, 1, 10, 'Stylish Athletic Running Shoes', 2399, 2199, 100, '629558549_4.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word  printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(99, 1, 10, 'Black Puma Running Shoes', 1499, 1399, 100, '306534222_6.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word  printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(100, 1, 10, 'Bright Red Nike ZoomX', 2499, 2199, 100, '268000306_7.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word  printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(101, 1, 10, 'Stylish Athletic Running Shoe', 1899, 1799, 100, '586514874_9.1.jpg', '', 'The image features an individual wearing a vibrant blue hoodie with the word  printed in white across the chest. The person\'s face is obscured for privacy. The hoodie, indicative of casual wear, has a front pocket and drawstrings. The individual is posed against a gradient grey background, which accentuates the color of the hoodie. The attire suggests a blend of comfort and style, making it suitable for various casual settings. Please note that the description is based on the visible elements and does not infer any personal details about the individual.', 0, '', '', '', 8, 1),
(102, 1, 10, 'Elegant Black Leather Slip-On', 2199, 1999, 100, '343588566_1.1.jpg', '', 'The image features a men\'s formal shoe, black in color with a polished finish. It has a sleek design with minimal stitching. The shoe is a slip-on style, devoid of laces, ensuring a neat appearance. A small brand tag is visible on the upper part. It\'s designed for comfort and elegance, suitable for formal occasions or business settings. The shoe\'s streamlined design and sturdy yet comfortable sole make it an excellent choice for those seeking sophistication and comfort in their footwear.', 0, '', '', '', 8, 1),
(103, 1, 10, 'Classic Black Formal Shoe', 1999, 1899, 100, '840178817_11.1.jpg', '', 'The image features a men\'s formal shoe, black in color with a polished finish. It has a sleek design with minimal stitching. The shoe is a slip-on style, devoid of laces, ensuring a neat appearance. A small brand tag is visible on the upper part. It\'s designed for comfort and elegance, suitable for formal occasions or business settings. The shoe\'s streamlined design and sturdy yet comfortable sole make it an excellent choice for those seeking sophistication and comfort in their footwear.', 0, '', '', '', 8, 1),
(104, 1, 10, 'Matte Brown Slip-On Elegance', 1599, 1499, 100, '157659895_12.1.jpg', '', 'The image features a men\'s formal shoe, black in color with a polished finish. It has a sleek design with minimal stitching. The shoe is a slip-on style, devoid of laces, ensuring a neat appearance. A small brand tag is visible on the upper part. It\'s designed for comfort and elegance, suitable for formal occasions or business settings. The shoe\'s streamlined design and sturdy yet comfortable sole make it an excellent choice for those seeking sophistication and comfort in their footwear.', 0, '', '', '', 8, 1),
(105, 1, 10, 'Glossy Crocodile Texture', 2199, 1999, 100, '399474837_6.1.jpg', '', 'The image features a men\'s formal shoe, black in color with a polished finish. It has a sleek design with minimal stitching. The shoe is a slip-on style, devoid of laces, ensuring a neat appearance. A small brand tag is visible on the upper part. It\'s designed for comfort and elegance, suitable for formal occasions or business settings. The shoe\'s streamlined design and sturdy yet comfortable sole make it an excellent choice for those seeking sophistication and comfort in their footwear.', 0, '', '', '', 8, 1),
(106, 1, 10, 'Glossy Black Leather Elegance', 1499, 1299, 100, '967800413_7.1.jpg', '', 'The image features a men\'s formal shoe, black in color with a polished finish. It has a sleek design with minimal stitching. The shoe is a slip-on style, devoid of laces, ensuring a neat appearance. A small brand tag is visible on the upper part. It\'s designed for comfort and elegance, suitable for formal occasions or business settings. The shoe\'s streamlined design and sturdy yet comfortable sole make it an excellent choice for those seeking sophistication and comfort in their footwear.', 0, '', '', '', 8, 1),
(107, 1, 9, 'Mystery In Green Hoodie', 2199, 1999, 100, '660297662_1 (2).jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(108, 1, 9, 'Black Jacket, Green Zipper', 1899, 1799, 100, '448801726_2.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 1, '', '', '', 8, 1),
(109, 1, 9, 'Quilted Jacket, Orange Accents', 2299, 2199, 100, '723257123_3.1_.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(110, 1, 9, 'Black Hoodie, Casual Stance', 1499, 1399, 100, '281436556_4.1_.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(111, 1, 9, 'Black Sweter, Casual Style', 1999, 1899, 100, '345654720_5.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(112, 1, 9, 'Grey Hoodie, Casual Style', 2199, 1999, 100, '991306917_6.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(113, 1, 9, 'Color-Blocked Jacket, Red Pants', 2299, 2199, 100, '452866936_7.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(114, 1, 9, 'Black Puma Jacket Display', 1499, 1199, 100, '191756465_8.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(115, 1, 9, 'Two-Toned Stylish Jacket Display', 2499, 2299, 100, '588681626_9.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(116, 1, 9, 'Black Winter Fashion Statement', 1899, 1799, 100, '922603983_10.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(117, 1, 9, 'Blue Jacket, Cream Sweater', 999, 899, 100, '506702054_11.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(118, 1, 9, 'Grey Hoodie, Stylish Attire', 1899, 1699, 100, '546488744_12.1.jpg', '', 'The image features an individual in a green hoodie, standing against a white brick wall. The person\'s face is intentionally blurred, maintaining anonymity. The hoodie is zipped halfway, revealing a black inner garment. The hood is up, casting a shadow that further obscures the face. The contrast between the green hoodie and the white wall makes the person stand out. The overall mood of the image is neutral and the identity of the person remains unknown due to the obscured face. The texture of the brick wall adds depth to the image. No text is present in the image.', 0, '', '', '', 8, 1),
(119, 1, 11, 'Puma\'s White Sports Sandals', 1299, 1199, 100, '940986243_1.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(120, 1, 11, 'Grey Sports Sandals Comfort', 999, 899, 100, '498622206_10.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(121, 1, 11, 'Stylish Blue Men’s Sandal', 1299, 1199, 100, '993546351_11.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(122, 1, 11, 'Black Yellow Adventure Sandals', 799, 599, 100, '835659569_12.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(123, 1, 11, 'Puma Black Red Sandals', 999, 699, 100, '533549408_2.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(124, 1, 11, 'Campus Blue Sports Sandals', 899, 799, 100, '904387683_3.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(125, 1, 11, 'Brown Leather Sandals', 999, 899, 100, '929415698_4.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(126, 1, 11, 'Comfortable Brown Leather Sandals', 1199, 999, 100, '504274286_6.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(127, 1, 11, 'Dark Green Casual Sandals', 1299, 1199, 100, '687803387_7.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(128, 1, 11, 'Rugged Grey Outdoor Sandals', 899, 799, 100, '595303375_8.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(129, 1, 11, 'Power Blue Sports Sandals', 999, 899, 100, '180022119_9.1.jpg', '', 'The image displays a vibrant FILA basketball shoe. It has a bold design with a red toe cap, yellow upper, green ankle support, and blue heel counter. The orange laces contrast brightly against the yellow upper. The midsole features a white and orange zigzag pattern. The FILA logo is prominently displayed on the side and the tongue of the shoe. This shoe exudes a retro aesthetic while incorporating modern design elements, making it a standout piece of footwear. Its colorful design is sure to catch the eye on the basketball court.', 0, '', '', '', 8, 1),
(130, 1, 12, 'Chronograph Elegance In Black', 2599, 2499, 100, '941158870_1.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(131, 1, 12, 'Mechanical Marvel With Gemstones', 2399, 2199, 100, '267742512_10.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(132, 1, 12, 'Diamonds,Golden Elegance', 2599, 2499, 100, '709932463_11.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(133, 1, 12, 'Golden Mechanical Marvel', 1999, 1949, 100, '878507350_12.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(134, 1, 12, 'Black And Blue Elegance', 2599, 2499, 100, '564020840_2.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(135, 1, 12, 'Green Dial, Golden Elegance', 999, 799, 100, '358089795_3.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(136, 1, 12, 'Diamonds , Sapphires Brilliance', 1499, 1399, 100, '505769801_4.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(137, 1, 12, 'Blue Elegance By Titan', 1899, 1799, 100, '398350972_5.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(138, 1, 12, 'Titan’s Silver Time Precision', 199, 1888, 100, '734784650_6.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(139, 1, 12, 'Chronograph Elegance In Leather', 1799, 1899, 100, '260575018_7.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(140, 1, 12, 'Guess’s Rose Gold Luxury', 1299, 1199, 100, '559680120_8.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(141, 1, 12, 'Mystery Behind Black Elegance', 999, 799, 100, '411201981_9.1.jpg', '', 'The image displays a sophisticated black Fossil chronograph wristwatch. The watch features a dark, elegant design with a black dial, case, and bracelet. The dial is detailed, displaying white numerals and markers for easy readability. Three sub-dials are intricately placed on the main dial, indicating various measurements. The bezel is marked with numbers at intervals, enhancing its aesthetic appeal and functionality. The watch exudes a modern, sleek style while maintaining an air of classic elegance. This description is an interpretation of the image and may not capture all details.', 0, '', '', '', 10, 1),
(142, 1, 13, 'Modern Digital Health Tracker', 2599, 2499, 100, '252579835_1.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(143, 1, 13, 'Cityscape Timepiece Display', 2299, 2199, 100, '128852596_10.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(144, 1, 13, 'Digital Fitness Tracker Display', 2399, 2199, 100, '836097219_11.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(145, 1, 13, 'Animated Character Step Counter', 1999, 1899, 100, '858448809_12.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(146, 1, 13, 'Elegant Round-Faced Smartwatch', 2499, 2399, 100, '475101104_2.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(147, 1, 13, 'Luxurious Chronograph Blue Dial', 2299, 2199, 100, '349136190_4.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(148, 1, 13, 'Futuristic Digital Timepiece', 1499, 1399, 100, '829926427_5.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(149, 1, 13, 'Vibrant Titan Smartwatch Display', 2599, 2499, 100, '248042309_6.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(150, 1, 13, 'Rugged Black Digital Watch', 2299, 2399, 100, '300410614_7.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(151, 1, 13, 'Timekeeping Metallic Smartwatch', 1899, 1799, 100, '717518499_8.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 1, '', '', '', 10, 1);
INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(152, 1, 13, 'Modern Orange Digital Timepiece', 899, 799, 100, '691781180_9.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(153, 2, 14, 'Elegant Sparkling Rose Gold', 2199, 1999, 100, '260237418_p1 (2).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(154, 2, 14, 'Luxurious Golden Timepiece Elegance', 1999, 1899, 100, '539709994_p10 (2).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(155, 2, 14, 'Elegant Emporio Armani Brilliance', 899, 799, 100, '306428453_p11 (4).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(156, 2, 14, 'Golden Elegance Of Gc', 1499, 1399, 100, '222842333_p12 (2).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(157, 2, 14, 'Bulova\'s Crystal Timepiece', 1299, 1199, 100, '314342768_p2 (2).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(158, 2, 14, 'Stuhrling\'s Golden Elegance', 799, 699, 100, '158295458_p3 (2).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(159, 2, 14, 'Victorinox\'s Crystal Elegance', 1599, 1499, 100, '255596162_p4 (1).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(160, 2, 14, 'Seiko’s Solar Gradient Elegance', 899, 749, 100, '991976068_p5 (2).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(161, 2, 14, 'Di Milano’s Ultrathin Elegance', 1499, 1299, 100, '824768319_p6 (1).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(162, 2, 14, 'Seiko Golden Sophistication', 1999, 1899, 100, '391787026_p7 (2).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \"NIBOSI\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \"1985\" is inscribed below the 12 o\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(163, 2, 0, 'Michael Kors\' Golden Elegance', 2899, 2499, 100, '115551061_p9 (3).jpg', '', 'The image displays a luxurious rose gold wristwatch from the brand \\\"NIBOSI\\\". The dial features Roman numerals and a dazzling array of crystals at the center. The year \\\"1985\\\" is inscribed below the 12 o\\\'clock position, indicating a legacy of quality and craftsmanship. The bracelet, made up of intricately designed links, mirrors the opulence of the dial. This elegant and sophisticated timepiece is a perfect blend of functionality and aesthetic allure. Every detail accentuates an aura of luxury, making it a symbol of elegance.', 0, '', '', '', 10, 1),
(164, 2, 15, 'Modern Digital Health Tracker', 2599, 2499, 100, '252579835_1.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(165, 2, 15, 'Cityscape Timepiece Display', 2299, 2199, 100, '128852596_10.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(166, 2, 15, 'Digital Fitness Tracker Display', 2399, 2199, 100, '836097219_11.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(167, 2, 15, 'Animated Character Step Counter', 1999, 1899, 100, '858448809_12.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(168, 2, 15, 'Elegant Round-Faced Smartwatch', 2499, 2399, 100, '475101104_2.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(169, 2, 15, 'Luxurious Chronograph Blue Dial', 2299, 2199, 100, '349136190_4.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(170, 2, 15, 'Futuristic Digital Timepiece', 1499, 1399, 100, '829926427_5.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(171, 2, 15, 'Vibrant Titan Smartwatch Display', 2599, 2499, 100, '248042309_6.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(172, 2, 15, 'Rugged Black Digital Watch', 2299, 2399, 100, '300410614_7.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(173, 2, 15, 'Fossil Metallic Smartwatch', 1899, 1799, 100, '717518499_8.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(174, 2, 15, 'Modern Orange Digital Timepiece', 899, 799, 100, '691781180_9.1.jpg', '', 'The image displays a modern smartwatch with a beige strap. The screen is lit, showing the time as 10:09 on Wednesday 7, and the weather as snowy with a temperature of -4°C. There are icons for music, heart rate monitoring, and an unidentified app on the screen. The watch has a square design with rounded corners and a button or dial on the side. This smartwatch, which appears to be the Apple Watch SE according to the reverse image results, embodies a blend of style and functionality, catering to both aesthetic appeal and practical use.', 0, '', '', '', 10, 1),
(175, 2, 17, 'Dance Of Patterned Elegance', 1899, 1799, 100, '419100514_p1 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(176, 2, 17, 'Grace In Pink Drapes', 2199, 1999, 100, '130154213_p10 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(177, 2, 17, 'Whispers Of Pink Elegance', 3299, 2999, 100, '267873573_p11 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(178, 2, 17, 'Blue Saree, Golden Details', 3799, 3499, 100, '726249296_p12 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(179, 2, 17, 'Red Saree, Golden Elegance', 3299, 3199, 100, '369608055_p2 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(180, 2, 17, 'Blue Saree, Golden Intricacies', 2999, 2899, 100, '573625933_p3 (2).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(181, 2, 17, 'Red Saree, White Intricacies', 1999, 1899, 100, '611099603_p4 (2).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(182, 2, 17, 'Red Sari, Golden Details', 3999, 3899, 100, '133235478_p5 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(183, 2, 17, 'Green Saree, Brown Designs', 2899, 2799, 100, '446273023_p6 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(184, 2, 17, 'Red Saree, Golden Blossom', 4899, 4799, 100, '244994695_p7 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(185, 2, 17, 'Golden Saree, Radiant Elegance', 1488, 1599, 100, '648656575_p8 (2).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(186, 2, 17, 'Black Saree, Golden Geometry', 2599, 2399, 100, '357747181_p9 (1).jpg', '', 'The image showcases an individual wearing a beautifully designed sari. The sari is adorned with intricate patterns, featuring stripes and zigzag designs in hues of brown, red, black, and yellow. The person\'s face is obscured for privacy. The plain, light-colored background accentuates the vibrant colors of the attire. The individual\'s posture exudes elegance and grace, complementing the aesthetic appeal of the sari. This traditional attire is a stunning representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(187, 2, 18, 'Elegance In Traditional Attire', 8999, 8899, 100, '935801607_p1 (1).jpeg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(188, 2, 18, 'Purple Radiance In Tradition', 7899, 7499, 100, '510374566_p10 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(189, 2, 18, 'Grace In Green Lehenga', 4899, 4799, 100, '875258631_p11 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(190, 2, 18, 'Red Resplendence In Bridal', 5899, 5799, 100, '173686095_p12 (2).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(191, 2, 18, 'Ornate Orange In Tradition', 9999, 9899, 100, '466267739_p2 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(192, 2, 18, 'Green And Pink Grandeur', 7899, 7799, 100, '434178092_p3 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(193, 2, 18, 'Blue Lehenga, Antique Ambiance', 6999, 6899, 100, '621419989_p4 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(194, 2, 18, 'Pink Elegance In Silk', 2599, 2499, 100, '979952525_p5 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(195, 2, 18, 'Twirling In Blue Elegance', 7599, 7449, 100, '544639736_p6 (3).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(196, 2, 18, 'Turquoise And Pink Tradition', 7899, 7799, 100, '722297948_p7 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(197, 2, 18, 'Bridal Elegance In Embroidery', 7899, 7799, 100, '187950154_p8 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(198, 2, 18, 'Mirror Selfie In Tradition', 9999, 9299, 100, '481817403_p9 (1).jpg', '', 'The image features an individual in traditional attire, with the face obscured for privacy. The outfit is a blend of rich colors and detailed patterns. It includes a green blouse with elaborate designs and puffed sleeves, and an expansive, elegant skirt with intricate artwork. A red fabric drapes over the shoulder, adding contrast. The person is holding a small, colorful object. The plain backdrop accentuates the attire\'s vibrancy and complexity. This traditional dress is a beautiful representation of cultural heritage and craftsmanship.', 0, '', '', '', 9, 1),
(199, 2, 19, 'Elegance In Floral Ensemble', 899, 799, 100, '603761237_p1 (2).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(200, 2, 19, 'Grace In Traditional Attire', 599, 499, 100, '533795398_p10 (1).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(201, 2, 19, 'Flowing In Floral Elegance', 499, 399, 100, '661405244_p11 (1).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(202, 2, 19, 'Charm In Patterned Ensemble', 799, 749, 100, '476993964_p12 (1).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(203, 2, 19, 'Radiance In Orange Pleats', 399, 249, 100, '375286374_p2 (2).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(204, 2, 19, 'Floral Elegance In Black', 799, 599, 100, '722652041_p3 (1).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(205, 2, 19, 'Stripes In Casual Elegance', 599, 499, 100, '582060980_p4 (2).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(206, 2, 19, 'Pose In Floral Elegance', 599, 499, 100, '367921857_p5 (1).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(207, 2, 19, 'Sunshine In Floral Dress', 999, 899, 100, '304615129_p6 (1).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(208, 2, 19, 'Patterns In Elegant Attire', 799, 699, 100, '601895660_p7 (2).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(209, 2, 19, 'Vibrance In Patterned Orange', 599, 499, 100, '518110287_p8 (1).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(210, 2, 19, 'Elegance In Monochrome', 899, 799, 100, '521492070_p9 (2).jpg', '', 'The image features a person in an elegant outfit, standing next to a white pedestal. They\'re wearing a flowing dress with a soft pink base and vibrant floral patterns, evoking a sense of grace. The dress has mid-length sleeves and a full skirt. A chic handbag is held in the crook of the arm, complementing the attire. The ensemble is completed with strappy white heels, adding sophistication. The face is obscured for privacy, focusing the attention on the attire. This outfit beautifully combines color, style, and elegance.', 0, '', '', '', 9, 1),
(211, 2, 20, 'Green Blouse Fashion Statement', 1299, 1199, 100, '363602189_p1 (1).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(212, 2, 20, 'Elegant Outdoor Fashion Ensembl', 899, 799, 100, '189751779_p2 (1).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(213, 2, 20, 'Abstract Patterned Blouse Display', 1799, 1699, 100, '346596880_p3 (1).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(214, 2, 20, 'Vibrant,Patterned,Blouse Display', 699, 599, 100, '484112889_p4 (1).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(215, 2, 20, 'Vibrant Abstract Blouse Display', 899, 799, 100, '673580620_p5 (2).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 1, '', '', '', 9, 1),
(216, 2, 20, 'Striped Shirt, Chic Accessorizing', 599, 499, 100, '523464899_p6 (2).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(217, 2, 20, 'Pastel Palette Fashion Display', 699, 599, 100, '513012584_p7 (1).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(218, 2, 20, 'Elegant Green Patterned', 299, 249, 100, '743846855_p8 (2).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(219, 2, 20, 'Floral Red Top Display', 799, 699, 100, '438175012_p9 (2).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(220, 2, 20, 'Summer Outfit, Colorful Bag', 699, 599, 100, '570158268_p10 (1).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(221, 2, 20, 'Floral Purple Blouse Display', 599, 499, 100, '241881493_p11 (1).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(222, 2, 20, 'Asymmetrical T-Shirt Display', 799, 699, 100, '970265592_p12 (1).jpg', '', 'The image features a person in a stylish outfit. They\'re wearing a green blouse with a textured pattern and ruffled sleeves, paired with dark blue jeans. The blouse has a cinched waist, enhancing the silhouette. The attire suggests a casual yet fashionable look, suitable for various social settings. The background is plain, ensuring focus remains on the clothing. The person\'s identity is kept private, with their face obscured. This ensemble beautifully combines comfort and style.', 0, '', '', '', 9, 1),
(223, 2, 21, 'Model Wearing Purple T-Shirt', 1299, 1199, 100, '580910503_p1 (1).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensembleexudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(224, 2, 21, 'Colorful Camouflage,Casual Attire', 999, 899, 100, '164200255_p10 (1).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(225, 2, 21, 'Stay Groovy Outfity', 1299, 1199, 100, '994735954_p11 (2).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(226, 2, 21, 'Casual Urban Fashion Pose', 2199, 1999, 100, '973838299_71hQnTjVoJL._SY679_.jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(227, 2, 21, 'Red Shirt', 599, 499, 100, '569009840_p2 (3).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(228, 2, 21, 'Stay Groovy Attire', 1999, 1799, 100, '557592661_p3 (1).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(229, 2, 21, 'New York Green Shirt', 2199, 1899, 100, '861331357_p4 (1).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1);
INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(230, 2, 21, 'Casual Wear Displayed', 899, 799, 100, '670006334_p6 (2).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(231, 2, 21, 'Los Angeles: Casual Comfort', 599, 499, 100, '619143446_p7 (1).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(232, 2, 21, 'One With The Universe', 599, 499, 100, '679418878_p8 (1).jpg', '', 'The image features a person in a casual outfit. They\'re wearing a light purple, oversized t-shirt with the text \"STAY WEIRD\" and an abstract face design on the upper left side. The individual\'s face is obscured for privacy. Black shorts are visible beneath the t-shirt, complementing the relaxed look. Their hands are gently clasped together in front of them. The plain background highlights the attire. This ensemble exudes a laid-back and unique style, aligning with the \"STAY WEIRD\" statement on the t-shirt.', 0, '', '', '', 11, 1),
(233, 2, 22, 'Stylish Casual Denim Ensemble', 1299, 1199, 100, '350979631_p1 (1).jpg', '', 'The image presents a person in a casual outfit against a plain backdrop. They\'re wearing a cropped white\r\n                hoodie with \"EST 1986\" printed on it, and high-waisted, straight-leg denim jeans. The jeans have a\r\n                classic five-pocket design and are buttoned up. The outfit is completed with white sneakers featuring\r\n                star designs. The slightly oversized hoodie rests just above the waistline of the jeans, revealing a bit\r\n                of the midriff. This ensemble exudes a relaxed yet stylish vibe. The focus is on the attire as the\r\n                person\'s identity is kept private.', 0, '', '', '', 11, 1),
(234, 2, 22, 'Light Denim Casual Display', 1499, 1299, 100, '322509585_p2 (1).jpg', '', 'The image presents a person in a casual outfit against a plain backdrop. They\'re wearing a cropped white hoodie with \"EST 1986\" printed on it, and high-waisted, straight-leg denim jeans. The jeans have a classic five-pocket design and are buttoned up. The outfit is completed with white sneakers featuring star designs. The slightly oversized hoodie rests just above the waistline of the jeans, revealing a bit of the midriff. This ensemble exudes a relaxed yet stylish vibe. The focus is on the attire as the person\'s identity is kept private.', 0, '', '', '', 11, 1),
(235, 2, 22, 'Orange Top Denim Flare', 899, 799, 100, '587383743_p3 (1).jpg', '', 'The image presents a person in a casual outfit against a plain backdrop. They\'re wearing a cropped white hoodie with \"EST 1986\" printed on it, and high-waisted, straight-leg denim jeans. The jeans have a classic five-pocket design and are buttoned up. The outfit is completed with white sneakers featuring star designs. The slightly oversized hoodie rests just above the waistline of the jeans, revealing a bit of the midriff. This ensemble exudes a relaxed yet stylish vibe. The focus is on the attire as the person\'s identity is kept private.', 0, '', '', '', 11, 1),
(236, 2, 22, 'Love In Casual Style', 1499, 1399, 100, '612233225_p4 (1).jpg', '', 'The image presents a person in a casual outfit against a plain backdrop. They\'re wearing a cropped white hoodie with \"EST 1986\" printed on it, and high-waisted, straight-leg denim jeans. The jeans have a classic five-pocket design and are buttoned up. The outfit is completed with white sneakers featuring star designs. The slightly oversized hoodie rests just above the waistline of the jeans, revealing a bit of the midriff. This ensemble exudes a relaxed yet stylish vibe. The focus is on the attire as the person\'s identity is kept private.', 0, '', '', '', 11, 1),
(237, 2, 22, 'Classic Denim, Orange Laces', 1799, 1699, 100, '933454251_p5 (1).jpg', '', 'The image presents a person in a casual outfit against a plain backdrop. They\'re wearing a cropped white hoodie with \"EST 1986\" printed on it, and high-waisted, straight-leg denim jeans. The jeans have a classic five-pocket design and are buttoned up. The outfit is completed with white sneakers featuring star designs. The slightly oversized hoodie rests just above the waistline of the jeans, revealing a bit of the midriff. This ensemble exudes a relaxed yet stylish vibe. The focus is on the attire as the person\'s identity is kept private.', 0, '', '', '', 11, 1),
(238, 2, 25, 'Elegant Black Heeled Sandal', 2199, 1999, 100, '393037908_p1 (1).jpg', '', 'The image features a stylish sneaker by RAZ MAZ. Set against a white backdrop, the shoe sports a soft pink quilted upper, adding texture and visual appeal. The laces, matching the upper\'s color, are threaded through silver eyelets. A thick white EVA sole contrasts with the pink upper, suggesting comfort and durability. The brand name \"RAZ MAZ\" is displayed at the top, while \"EVA SOLE\" at the bottom highlights the shoe\'s comfort feature. The overall design combines style, comfort, and functionality, making it an attractive footwear option.', 0, '', '', '', 11, 1),
(239, 2, 25, 'Elegant Strappy Heeled Sandals', 999, 899, 100, '655870903_p10 (1).jpg', '', 'The image features a stylish sneaker by RAZ MAZ. Set against a white backdrop, the shoe sports a soft pink quilted upper, adding texture and visual appeal. The laces, matching the upper\'s color, are threaded through silver eyelets. A thick white EVA sole contrasts with the pink upper, suggesting comfort and durability. The brand name \"RAZ MAZ\" is displayed at the top, while \"EVA SOLE\" at the bottom highlights the shoe\'s comfort feature. The overall design combines style, comfort, and functionality, making it an attractive footwear option.', 0, '', '', '', 11, 1),
(240, 2, 25, 'Elegant Blue Heeled Shoes', 1199, 999, 100, '347808860_p11 (1).jpg', '', 'The image features a stylish sneaker by RAZ MAZ. Set against a white backdrop, the shoe sports a soft pink quilted upper, adding texture and visual appeal. The laces, matching the upper\'s color, are threaded through silver eyelets. A thick white EVA sole contrasts with the pink upper, suggesting comfort and durability. The brand name \"RAZ MAZ\" is displayed at the top, while \"EVA SOLE\" at the bottom highlights the shoe\'s comfort feature. The overall design combines style, comfort, and functionality, making it an attractive footwear option.', 0, '', '', '', 11, 1),
(241, 2, 25, 'Elegant Tan Heeled Shoe', 1299, 1199, 100, '861215293_p12 (1).jpg', '', 'The image features a stylish sneaker by RAZ MAZ. Set against a white backdrop, the shoe sports a soft pink quilted upper, adding texture and visual appeal. The laces, matching the upper\'s color, are threaded through silver eyelets. A thick white EVA sole contrasts with the pink upper, suggesting comfort and durability. The brand name \"RAZ MAZ\" is displayed at the top, while \"EVA SOLE\" at the bottom highlights the shoe\'s comfort feature. The overall design combines style, comfort, and functionality, making it an attractive footwear option.', 0, '', '', '', 11, 1),
(242, 2, 25, 'Elegant Beige Ladies Slipper', 2199, 1999, 100, '526410442_p2 (1).jpg', '', 'The image features a stylish sneaker by RAZ MAZ. Set against a white backdrop, the shoe sports a soft pink quilted upper, adding texture and visual appeal. The laces, matching the upper\'s color, are threaded through silver eyelets. A thick white EVA sole contrasts with the pink upper, suggesting comfort and durability. The brand name \"RAZ MAZ\" is displayed at the top, while \"EVA SOLE\" at the bottom highlights the shoe\'s comfort feature. The overall design combines style, comfort, and functionality, making it an attractive footwear option.', 0, '', '', '', 11, 1),
(243, 2, 25, 'Elegant White Strappy Heel', 1499, 1399, 100, '599169904_p3 (1).jpg', '', 'The image features a stylish sneaker by RAZ MAZ. Set against a white backdrop, the shoe sports a soft pink quilted upper, adding texture and visual appeal. The laces, matching the upper\'s color, are threaded through silver eyelets. A thick white EVA sole contrasts with the pink upper, suggesting comfort and durability. The brand name \"RAZ MAZ\" is displayed at the top, while \"EVA SOLE\" at the bottom highlights the shoe\'s comfort feature. The overall design combines style, comfort, and functionality, making it an attractive footwear option.', 0, '', '', '', 11, 1),
(244, 2, 25, 'Elegant Black Heeled Shoes', 599, 499, 100, '787155984_p4 (1).jpg', '', 'The image features a stylish sneaker by RAZ MAZ. Set against a white backdrop, the shoe sports a soft pink quilted upper, adding texture and visual appeal. The laces, matching the upper\'s color, are threaded through silver eyelets. A thick white EVA sole contrasts with the pink upper, suggesting comfort and durability. The brand name \"RAZ MAZ\" is displayed at the top, while \"EVA SOLE\" at the bottom highlights the shoe\'s comfort feature. The overall design combines style, comfort, and functionality, making it an attractive footwear option.', 0, '', '', '', 11, 1),
(245, 2, 25, 'Elegant Nude Strappy Heel', 1499, 1299, 100, '112426483_p5 (1).jpg', '', 'The image features a stylish sneaker by RAZ MAZ. Set against a white backdrop, the shoe sports a soft pink quilted upper, adding texture and visual appeal. The laces, matching the upper\'s color, are threaded through silver eyelets. A thick white EVA sole contrasts with the pink upper, suggesting comfort and durability. The brand name \"RAZ MAZ\" is displayed at the top, while \"EVA SOLE\" at the bottom highlights the shoe\'s comfort feature. The overall design combines style, comfort, and functionality, making it an attractive footwear option.', 0, '', '', '', 11, 1),
(249, 3, 26, 'Child In Casual Attir', 699, 599, 100, '439624196_p1 (2).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(250, 3, 26, 'Yellow Varsity Team Jersey', 699, 499, 100, '856323758_p10 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(251, 3, 26, 'Green Hoodie, New Vision', 899, 799, 100, '317697758_p11 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(252, 3, 26, 'Superheroes Themed Graphic', 1199, 999, 100, '800737834_p12 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(253, 3, 26, 'Colorful Striped Polo Shirt', 1499, 1399, 100, '889261512_p2 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(254, 3, 26, 'Red Dinosaur Cool', 899, 799, 100, '777433621_p3 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(255, 3, 26, 'Colorful Painted White Shirt', 999, 799, 100, '916432519_p4 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(256, 3, 26, 'Limitless Yellow Graphic Tee', 599, 499, 100, '118057269_p5 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(257, 3, 0, 'Colorful Striped Polo T-Shirt', 599, 499, 100, '514746021_p6 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\\\'s outfit. Notably, the individual\\\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(258, 3, 26, 'Tokyo Themed Graphic Tee', 399, 349, 100, '656077305_p7 (1).jpg', '', 'The image portrays an individual dressed in a simple, casual attire. The person is wearing a well-fitted, clean, white t-shirt paired with blue jeans. The background is neutral, drawing attention to the person\'s outfit. Notably, the individual\'s face is obscured with a brownish rectangle, ensuring privacy. The overall image emphasizes the simplicity and casualness of the attire. Please note that the description is based on the visible elements in the image. The actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(259, 3, 27, 'Black Shirt, White Stitching', 2499, 2399, 100, '690893211_p1 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(260, 3, 27, 'Casual Layered Clothing Style', 1999, 1799, 100, '714003722_p11 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(261, 3, 27, 'Blue Checked Shirt Displayed', 699, 599, 100, '687244981_p12 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(262, 3, 27, 'Black Button-Down Shirt', 999, 799, 100, '804170789_p2 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(263, 3, 27, 'Striped Shirt, Blue Background', 599, 499, 100, '636437675_p4 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(264, 3, 27, 'Child In Striped Shirt', 1299, 1199, 100, '343067781_p5 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(265, 3, 27, 'Child In Grey Shirt', 899, 799, 100, '174881558_p6 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(267, 3, 27, 'Blue Shirt, Striped Shoulders', 1499, 1399, 100, '882340797_p11 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(268, 3, 27, 'Child In Patterned Orange Shirt', 1399, 1299, 100, '269567885_p3 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(269, 3, 27, 'Floral Pattern Kids Shirt', 2399, 2199, 100, '546801666_p10 (1).jpg', '', 'The image features a stylish black long-sleeved shirt. The shirt\'s distinct white stitching outlines the collar, placket, pockets, and cuffs, giving it a contemporary look. It has a classic collar style and a button-down front with visible white buttons. Two chest pockets with flaps are present, accentuated by the white stitching. The shirt appears to be made of a smooth fabric material, exuding a casual yet polished aesthetic. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(270, 3, 28, 'Black Slim Fit Jeans', 1999, 1899, 100, '724042399_p1 (2).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(271, 3, 28, 'Youthful Casual Fashion Display', 1499, 1399, 100, '444877579_p2 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(272, 3, 28, 'Child\'s Casual Jogger Outfit', 999, 899, 100, '400538221_p3 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(273, 3, 28, 'Striped Shirt Denim Outfit', 1399, 1199, 100, '902506806_p4 (4).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(274, 3, 28, 'Casual Denim Sneaker Style', 699, 599, 100, '191720980_p5 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(275, 3, 28, 'Light Blue Denim Shorts', 1299, 1199, 100, '958440030_p6 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(276, 3, 28, 'Casual Grey Jogger Outfit', 1199, 999, 100, '987669900_p7 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(277, 3, 28, 'Stylish Brown Patched Pants', 1199, 899, 100, '351762527_p8 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(278, 3, 28, 'Child\'s Casual Denim Outfit', 1499, 1299, 100, '823089057_p9 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(279, 3, 28, 'Anime Graphic Tee Outfit', 899, 799, 100, '511581960_p11 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(280, 3, 28, 'Dark Blue Hanging Jeans', 1199, 899, 100, '197598802_p10 (1).jpg', '', 'The image features a pair of dark blue jeans displayed against a white background. The jeans are hung on a light brown wooden hanger and neatly presented, showcasing the front view. They include classic elements such as belt loops, a button, and a zipper fly. The pockets are visibly stitched, accentuating the traditional denim style. The jeans exhibit a slim fit cut, reflecting contemporary fashion trends. This description is based on the visible elements in the image, and the actual context or intent behind the image may vary.', 0, '', '', '', 1, 1),
(281, 3, 29, 'Baby\'s Chic Formal Ensemble', 1399, 1199, 100, '826235759_p1 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(282, 3, 29, 'Children\'s Formal Ensemble', 2199, 1999, 100, '402773696_p2 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(283, 3, 29, 'Elegant Black Blazer Displayed', 2699, 2499, 100, '129807149_p3 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(284, 3, 29, 'Child\'s Stylish Formal Attire', 1599, 1199, 100, '547006923_p4 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(285, 3, 29, 'Burgundy Children\'s Ensemble', 2199, 1899, 100, '880564269_p5 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(286, 3, 29, 'Elegant Casual Business Attire', 1499, 1199, 100, '256913645_p6 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(287, 3, 29, 'Stylish Toddler Formal Ensemble', 2199, 1999, 100, '599591308_p7 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(288, 3, 29, 'Child\'s Dapper Formal Attire', 2599, 2499, 100, '750373724_p8 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(289, 3, 29, 'Child\'s Elegant Formal Attire', 2899, 2799, 100, '884528287_p9 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(290, 3, 29, 'Grey School Blazer Display', 2199, 1999, 100, '865652473_p10 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(291, 3, 29, 'Children\'s Clothing Ensemble', 2299, 2199, 100, '863838333_p11 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(292, 3, 29, 'Child\'s Stylish Plaid Blazer', 1899, 1799, 100, '208417354_p12 (1).jpg', '', 'The image displays a toddler\'s formal outfit. It includes a navy-blue pinstriped blazer and matching trousers, paired with a crisp white shirt. A dark blue bow tie adds elegance. The cuffs of the shirt protrude slightly from the blazer sleeves, showing attention to detail. The trousers are tailored for comfort and style. White sneakers with grey soles complete the look, blending comfort with style. This outfit is suitable for formal occasions where both elegance and playfulness are embraced. The attire is displayed against a plain background. It\'s a perfect blend of style and comfort for a toddler.', 0, '', '', '', 1, 1),
(293, 3, 30, 'Child\'s Playful Floral Fantasy', 1899, 1799, 100, '659767719_p1 (1).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1),
(294, 3, 30, 'Polka Dots And Balloons', 1799, 1599, 100, '182507977_p2 (1).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1),
(295, 3, 30, 'Pastel Knots And Tassels', 1499, 1299, 100, '516639746_p3 (1).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1),
(296, 3, 30, 'Glittery Blue Dress Elegance', 999, 799, 100, '431451620_p4 (1).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1),
(297, 3, 30, 'Fairy-Tale Pink Dress Elegance', 1199, 999, 100, '950010530_p5 (1).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1),
(298, 3, 30, 'Shimmering Green Ruffled', 1199, 999, 100, '489835778_p6 (1).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1),
(299, 3, 30, 'Vibrant Red Floral Elegance', 1899, 1799, 100, '222634348_p7 (4).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1),
(300, 3, 30, 'Glittery Dress, Vibrant Backdrop', 2199, 1999, 100, '118950320_p8 (1).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1),
(301, 3, 30, 'Sparkling Pink Saree Elegance', 1499, 1399, 100, '208473152_p9 (1).jpg', '', 'The image features a child in a vibrant floral dress standing against a pink backdrop. The dress is adorned with colorful flowers and has a large, pink bow at the waist. The child’s white shoes, decorated with flowers, complement the attire. Balloons, partially visible in the setting, add a playful element, evoking a festive, cheerful atmosphere. The child’s face is obscured for privacy. The overall image presents a lively and joyful vibe, with the child’s floral dress being the center of attention. It seems to capture a moment of celebration or a special occasion.', 0, '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `size_id`, `color_id`, `mrp`, `price`, `qty`) VALUES
(1, 8, 5, 3, 1900, 1120, 10),
(2, 8, 4, 5, 1900, 1120, 8),
(3, 8, 2, 3, 1900, 1120, 9),
(4, 8, 4, 3, 1800, 1050, 4),
(5, 7, 0, 3, 1900, 1350, 10),
(6, 7, 0, 5, 1900, 1350, 8),
(7, 7, 0, 4, 1900, 1350, 6),
(8, 6, 5, 0, 1999, 1500, 10),
(9, 6, 4, 0, 1989, 1490, 9),
(10, 5, 0, 0, 2799, 2399, 10),
(11, 18, 0, 0, 2222, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_images` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_images`) VALUES
(4, 21, '850724114_p1 (3).jpg'),
(5, 21, '155249831_p1 (4).jpg'),
(6, 21, '957241325_p1 (6).jpg'),
(7, 21, '173944364_p1 (1).jpg'),
(41, 30, '732983913_8.1.jpg'),
(42, 30, '568942877_8.2.jpg'),
(43, 30, '350402490_8.3.jpg'),
(44, 30, '453411659_8.4.jpg'),
(48, 32, '346877690_3.1.jpg'),
(49, 32, '773503140_3.2.jpg'),
(50, 32, '935467948_3.3.jpg'),
(51, 32, '913087522_3.4.jpg'),
(119, 55, '592590536_4.1.jpg'),
(120, 55, '687649808_4.2.jpg'),
(121, 55, '215397853_4.3.jpg'),
(122, 55, '785006212_4.4.jpg'),
(123, 56, '360650797_5.1.jpg'),
(124, 56, '957600381_5.2.jpg'),
(125, 56, '750668197_5.3.jpg'),
(126, 56, '455358503_5.4.jpg'),
(143, 1, '200904160_1.1.jpg'),
(144, 1, '907351963_1.2.jpg'),
(145, 1, '430567542_1.3.jpg'),
(146, 1, '849740375_5.4.jpg'),
(147, 2, '661211334_2.1.jpg'),
(148, 2, '190798821_2.2.jpg'),
(149, 2, '375057197_2.3.jpg'),
(150, 2, '783644745_2.4.jpg'),
(151, 3, '207254770_11.3.jpg'),
(152, 3, '215447951_11.2.jpg'),
(153, 3, '419961973_11.jpg'),
(154, 3, '335495637_11.4.jpg'),
(155, 4, '844459914_4.1.jpg'),
(156, 4, '736612821_4.2.jpg'),
(157, 4, '949044933_4.3.jpg'),
(158, 4, '840333804_4.4.jpg'),
(159, 5, '950991362_7.1.jpg'),
(160, 5, '258200977_7.2.jpg'),
(161, 5, '688133015_7.3.jpg'),
(162, 5, '834497977_7.4.jpg'),
(163, 6, '507910861_6.1.jpg'),
(164, 6, '163051661_6.2.jpg'),
(165, 6, '484889655_6.3.jpg'),
(166, 6, '996086287_6.4.jpg'),
(167, 7, '484822942_5.2.jpg'),
(168, 7, '235342894_5.3.jpg'),
(169, 7, '652183083_5.1.jpg'),
(170, 7, '412794585_5.4 (2).jpg'),
(171, 8, '214562390_8.1.jpg'),
(172, 8, '859202803_8.2.jpg'),
(173, 8, '264194578_8.3.jpg'),
(174, 8, '653418903_8.4.jpg'),
(175, 9, '279545765_9.1.jpg'),
(176, 9, '170662508_9.2.jpg'),
(177, 9, '356604140_9.3.jpg'),
(178, 10, '486785441_10..3.jpg'),
(179, 10, '569532053_10.1.jpg'),
(180, 10, '650866848_10.2.jpg'),
(181, 10, '554618151_10.4.jpg'),
(182, 11, '303902323_12.1.jpg'),
(183, 11, '228206677_12.2.jpg'),
(184, 11, '300768069_12.3.jpg'),
(185, 11, '950533647_12.4.jpg'),
(186, 12, '573977145_3.1.jpg'),
(187, 12, '656179679_3.2.jpg'),
(188, 12, '286249846_3.3.jpg'),
(189, 12, '376013440_3.4.jpg'),
(190, 13, '926575164_Black.jpg'),
(191, 13, '864203538_Black Back.jpg'),
(192, 14, '666362593_4.1.jpg'),
(193, 14, '792040379_4.2.jpg'),
(194, 14, '617995919_4.3.jpg'),
(195, 14, '848616104_4.4.jpg'),
(196, 15, '298764405_7.1.jpg'),
(197, 15, '293932056_7.2.jpg'),
(198, 15, '222151380_7.3.jpg'),
(199, 15, '387178204_7.4.jpg'),
(200, 16, '251549875_6.1.jpg'),
(201, 16, '288037130_6.2.jpg'),
(202, 16, '634526635_6.3.jpg'),
(203, 16, '715439822_6.4.jpg'),
(204, 17, '829739704_5.1.jpg'),
(205, 17, '510465222_5.2.jpg'),
(206, 17, '454330875_5.3.jpg'),
(207, 17, '885416993_5.4.jpg'),
(208, 18, '907723341_3.1.jpg'),
(209, 18, '871918187_3.2.jpg'),
(210, 18, '997201650_3.3.jpg'),
(211, 18, '254227507_3.4.jpg'),
(212, 19, '301561734_4.1.jpg'),
(213, 19, '957040437_4.2.jpg'),
(214, 19, '187141519_4.3.jpg'),
(215, 19, '829717357_4.4.jpg'),
(216, 20, '234002429_8.1.jpg'),
(217, 20, '672183333_8.2.jpg'),
(218, 20, '935568288_8.3.jpg'),
(219, 20, '339327849_8.4.jpg'),
(220, 21, '921104706_sky blue.jpg'),
(221, 21, '461411528_Sky Blue Back.jpg'),
(222, 22, '298490771_Maroon.jpg'),
(223, 22, '908436476_Maroon Back.jpg'),
(224, 23, '647236142_Navy Blue.jpg'),
(225, 23, '804676476_Navy Blue Back.jpg'),
(226, 24, '735336877_Parrot.jpg'),
(227, 24, '355318423_Parrot Back.jpg'),
(228, 25, '113187274_Rama.jpg'),
(229, 25, '185874158_Rama Back.jpg'),
(230, 26, '862873758_1.2.jpg'),
(231, 26, '471181384_1.1.jpg'),
(232, 26, '654339050_1.3.jpg'),
(233, 26, '975553121_1.4.jpg'),
(234, 27, '215879403_10.1.jpg'),
(235, 27, '722454380_10.2.jpg'),
(236, 27, '684566211_10.3.jpg'),
(237, 28, '498285838_11.1.jpg'),
(238, 28, '167321175_11.2.jpg'),
(239, 28, '168709413_11.3.jpg'),
(240, 28, '545960215_11.4.jpg'),
(241, 29, '950956976_12.1.jpg'),
(242, 29, '488513464_12.2.jpg'),
(243, 29, '459031619_12.3.jpg'),
(244, 30, '185709752_2.1.jpg'),
(245, 30, '676407585_2.2.jpg'),
(246, 30, '410548097_2.3.jpg'),
(247, 30, '721527031_2.4.jpg'),
(248, 31, '353200588_3.1.jpg'),
(249, 31, '885635408_3.2.jpg'),
(250, 31, '596117129_3.3.jpg'),
(251, 31, '336506688_3.4.jpg'),
(252, 32, '356213191_4.1.jpg'),
(253, 32, '333173543_4.2.jpg'),
(254, 32, '787992423_4.3.jpg'),
(255, 32, '494581755_4.4.jpg'),
(256, 33, '474124093_5.1.jpg'),
(257, 33, '826051278_5.2.jpg'),
(258, 33, '553186671_5.3.jpg'),
(259, 33, '377982764_5.4.jpg'),
(260, 34, '404528981_6.1.jpg'),
(261, 34, '335841629_6.2.jpg'),
(262, 34, '335119212_6.3.jpg'),
(263, 34, '283621113_6.4.jpg'),
(264, 35, '634154263_7.1.jpg'),
(265, 35, '864104511_7.2.jpg'),
(266, 35, '928070481_7.3.jpg'),
(267, 35, '246341711_7.4.jpg'),
(268, 36, '262861781_8.1.jpg'),
(269, 36, '810446393_8.2.jpg'),
(270, 36, '156117748_8.3.jpg'),
(271, 36, '654102600_8.4.jpg'),
(272, 37, '608946679_9.1.jpg'),
(273, 37, '562885142_9.2.jpg'),
(274, 37, '286431807_9.3.jpg'),
(275, 37, '124201252_9.4.jpg'),
(276, 38, '538631393_p1 (1).jpg'),
(277, 38, '714278987_p1 (2).jpg'),
(278, 38, '734563440_p1 (3).jpg'),
(279, 38, '813029803_p1 (4).jpg'),
(284, 40, '166638407_p11 (1).jpg'),
(285, 40, '496925872_p11 (2).jpg'),
(286, 40, '658325991_p11 (3).jpg'),
(287, 40, '955908484_p11 (4).jpg'),
(288, 39, '765052519_p8 (1).jpg'),
(289, 39, '841585074_p8 (2).jpg'),
(290, 39, '294989794_p8 (3).jpg'),
(291, 39, '853839161_p8 (4).jpg'),
(292, 41, '988097890_p12 (1).jpg'),
(293, 41, '728387302_p12 (2).jpg'),
(294, 41, '538625113_p12 (3).jpg'),
(295, 41, '383798954_p12 (4).jpg'),
(296, 42, '862599128_p2 (1).jpg'),
(297, 42, '669818926_p2 (2).jpg'),
(298, 42, '939944083_p2 (3).jpg'),
(299, 42, '121039589_p2 (4).jpg'),
(300, 43, '156466091_p3 (1).jpg'),
(301, 43, '657548419_p3 (2).jpg'),
(302, 43, '899192190_p3 (3).jpg'),
(303, 43, '770494302_p3 (4).jpg'),
(304, 44, '275546307_p5 (1).jpg'),
(305, 44, '833923095_p5 (2).jpg'),
(306, 44, '213253634_p5 (3).jpg'),
(307, 44, '818787288_p5 (4).jpg'),
(308, 45, '291960709_p6 (1).jpg'),
(309, 45, '984051370_p6 (2).jpg'),
(310, 45, '228794076_p6 (3).jpg'),
(311, 46, '455598169_p7 (1).jpg'),
(312, 46, '907447639_p7 (2).jpg'),
(313, 46, '285284644_p7 (3).jpg'),
(314, 46, '222196641_p7 (4).jpg'),
(315, 47, '525724159_p8 (1).jpg'),
(316, 47, '139123747_p8 (2).jpg'),
(317, 47, '699601570_p8 (3).jpg'),
(318, 47, '819574006_p8 (4).jpg'),
(323, 48, '892317474_p1 (1).jpg'),
(324, 48, '654122662_p1 (2).jpg'),
(325, 48, '438267656_p1 (3).jpg'),
(326, 48, '804992507_p1 (4).jpg'),
(327, 49, '306472430_p10 (1).jpg'),
(328, 49, '274370904_p10 (2).jpg'),
(329, 49, '572365262_p10 (3).jpg'),
(330, 49, '771260320_p10 (4).jpg'),
(331, 50, '589162054_p11 (1).jpg'),
(332, 50, '939385196_p11 (2).jpg'),
(333, 50, '818823500_p11 (3).jpg'),
(334, 50, '690712165_p11 (4).jpg'),
(335, 51, '293042782_p12 (1).jpg'),
(336, 51, '191368645_p12 (2).jpg'),
(337, 51, '368549971_p12 (3).jpg'),
(338, 51, '462795661_p12 (4).jpg'),
(339, 52, '655867652_p2 (1).jpg'),
(340, 52, '356060295_p2 (2).jpg'),
(341, 52, '466277655_p2 (3).jpg'),
(342, 52, '552539041_p2 (4).jpg'),
(343, 53, '356191661_p4 (1).jpg'),
(344, 53, '230935507_p4 (2).jpg'),
(345, 53, '796014196_p4 (3).jpg'),
(346, 53, '818333356_p4 (4).jpg'),
(347, 54, '519026079_p5 (1).jpg'),
(348, 54, '273787811_p5 (2).jpg'),
(349, 54, '544518017_p5 (3).jpg'),
(350, 54, '602782879_p5 (4).jpg'),
(351, 55, '260967234_p6 (1).jpg'),
(352, 55, '548368919_p6 (2).jpg'),
(353, 55, '700807288_p6 (3).jpg'),
(354, 55, '729664161_p6 (4).jpg'),
(355, 57, '856058600_1.1.jpg'),
(356, 57, '909080749_1.2.jpg'),
(357, 57, '391259655_1.3.jpg'),
(358, 57, '929571075_1.4.jpg'),
(359, 58, '348608346_10.1.jpg'),
(360, 58, '486260237_10.2.jpg'),
(361, 58, '289239307_10.3.jpg'),
(362, 58, '677504948_10.4.jpg'),
(363, 59, '594399788_11.1.jpg'),
(364, 59, '150979693_11.2.jpg'),
(365, 59, '315450137_11.3.jpg'),
(366, 59, '443507109_11.4.jpg'),
(367, 60, '612831242_1.1.jpg'),
(368, 60, '525634567_1.2.jpg'),
(369, 60, '672840753_1.3.jpg'),
(370, 60, '665099563_1.4.jpg'),
(371, 61, '592205257_10.1.jpg'),
(372, 61, '689397798_10.2.jpg'),
(373, 61, '330398129_10.3.jpg'),
(374, 61, '352946876_10.4.jpg'),
(375, 62, '564784467_11.1.jpg'),
(376, 62, '554358869_11.2.jpg'),
(377, 62, '684974706_11.3.jpg'),
(378, 62, '300602753_11.4.jpg'),
(379, 63, '892201702_12.1.jpg'),
(380, 63, '169497448_12.2.jpg'),
(381, 63, '732721750_12.3.jpg'),
(382, 63, '504671062_12.4.jpg'),
(383, 64, '495697639_2.1.jpg'),
(384, 64, '205731747_2.2.jpg'),
(385, 64, '901250424_2.3.jpg'),
(386, 64, '824914857_2.4.jpg'),
(387, 65, '522212456_3.1.jpg'),
(388, 65, '425200206_3.2.jpg'),
(389, 65, '384121587_3.3.jpg'),
(390, 65, '228806790_3.4.jpg'),
(391, 66, '720330815_4.1.jpg'),
(392, 66, '330528799_4.2.jpg'),
(393, 66, '982499905_4.3.jpg'),
(394, 66, '996924553_4.4.jpg'),
(395, 67, '777735381_5.1.jpg'),
(396, 67, '967622743_5.2.jpg'),
(397, 67, '376697289_5.3.jpg'),
(398, 67, '374605277_5.4.jpg'),
(399, 68, '381889581_6.1.jpg'),
(400, 68, '509640943_6.2.jpg'),
(401, 68, '426018847_6.3.jpg'),
(402, 68, '484195533_6.4.jpg'),
(403, 69, '296264365_7.1.jpg'),
(404, 69, '864433739_7.2.jpg'),
(405, 69, '125145744_7.3.jpg'),
(406, 69, '356307102_7.4.jpg'),
(407, 70, '160073842_8.1.jpg'),
(408, 70, '263391025_8.2.jpg'),
(409, 70, '492278194_8.3.jpg'),
(410, 70, '436585528_8.4.jpg'),
(411, 71, '885393073_9.1.jpg'),
(412, 71, '808075221_9.2.jpg'),
(413, 71, '679864224_9.3.jpg'),
(414, 71, '500850107_9.4.jpg'),
(415, 72, '343809809_1.1.jpg'),
(416, 72, '321265604_1.2.jpg'),
(417, 72, '661839936_1.3.jpg'),
(418, 72, '930415402_1.4.jpg'),
(419, 73, '167229333_10.1.jpg'),
(420, 73, '454521493_10.2.jpg'),
(421, 73, '348007612_10.3.jpg'),
(422, 73, '749970842_10.4.jpg'),
(423, 74, '501573379_11.1.jpg'),
(424, 74, '836510708_11.2.jpg'),
(425, 74, '367157834_11.3.jpg'),
(426, 74, '286591374_11.4.jpg'),
(427, 75, '984865610_12.1.jpg'),
(428, 75, '381986037_12.2.jpg'),
(429, 75, '724642556_12.3.jpg'),
(430, 75, '334554289_12.4.jpg'),
(431, 76, '392923195_2.2.jpg'),
(432, 76, '460587749_2.1.jpg'),
(433, 76, '785835586_2.3.jpg'),
(434, 76, '371302038_2.4.jpg'),
(435, 77, '484896079_3.1.jpg'),
(436, 77, '655636909_3.2.jpg'),
(437, 77, '875864213_3.3.jpg'),
(438, 77, '305990741_3.4.jpg'),
(439, 78, '869392599_4.2.jpg'),
(440, 78, '575748294_4.1.jpg'),
(441, 78, '530987632_4.3.jpg'),
(442, 78, '209164900_4.4.jpg'),
(443, 79, '844819145_5.1.jpg'),
(444, 79, '278843070_5.2.jpg'),
(445, 79, '511514047_5.3.jpg'),
(446, 79, '353478457_5.4.jpg'),
(447, 80, '210182043_6.1.jpg'),
(448, 80, '539482129_6.2.jpg'),
(449, 80, '553732041_6.3.jpg'),
(450, 80, '656590372_6.4.jpg'),
(451, 81, '740900204_7.1.jpg'),
(452, 81, '729914328_7.2.jpg'),
(453, 81, '937003536_7.3.jpg'),
(454, 81, '969784027_7.4.jpg'),
(455, 82, '215514982_8.1.jpg'),
(456, 82, '122583475_8.2.jpg'),
(457, 82, '276343595_8.3.jpg'),
(458, 82, '556038845_8.4.jpg'),
(459, 83, '997617712_9.1.jpg'),
(460, 83, '453366163_9.2.jpg'),
(461, 83, '866936312_9.3.jpg'),
(462, 83, '574760161_9.4.jpg'),
(463, 84, '314098435_1.1.jpg'),
(464, 84, '686443863_1.2.jpg'),
(465, 84, '673601874_1.3.jpg'),
(466, 84, '161047190_1.4.jpg'),
(467, 85, '500284368_10.1.jpg'),
(468, 85, '703258362_10 2.jpg'),
(469, 85, '372824525_10.3.jpg'),
(470, 85, '808543859_10.4.jpg'),
(471, 86, '500651841_11.1.jpg'),
(472, 86, '733883690_11.2.jpg'),
(473, 86, '939025045_11.3.jpg'),
(474, 86, '129372733_11.4.jpg'),
(475, 87, '721233746_12.1.jpg'),
(476, 87, '627328504_12.2.jpg'),
(477, 87, '493110655_12.3.jpg'),
(478, 87, '162070518_12.4.jpg'),
(479, 88, '607756449_2.1.jpg'),
(480, 88, '924020395_2.2.jpg'),
(481, 88, '414221093_2.3.jpg'),
(482, 88, '917173176_2.4.jpg'),
(483, 89, '560911839_3.1.jpg'),
(484, 89, '203807747_3.2.jpg'),
(485, 89, '618472024_3.3.jpg'),
(486, 89, '297231059_3.4.jpg'),
(487, 90, '211882062_4.2.jpg'),
(488, 90, '469637533_4.3.jpg'),
(489, 90, '322240403_4.1.jpg'),
(490, 90, '659905380_4.5.jpg'),
(491, 91, '913443795_5.1.jpg'),
(492, 91, '990155808_5.2.jpg'),
(493, 91, '514051179_5.3.jpg'),
(494, 91, '414859142_5.4.jpg'),
(495, 92, '450769940_6.1.jpg'),
(496, 92, '399996601_6.2.jpg'),
(497, 92, '915489169_6.3.jpg'),
(498, 92, '379874899_6.4.jpg'),
(499, 93, '641578988_7.1.jpg'),
(500, 93, '642996399_7.2.jpg'),
(501, 93, '523768152_7.3.jpg'),
(502, 93, '454424808_7.4.jpg'),
(503, 94, '266887575_8.1.jpg'),
(504, 94, '526871645_8.2.jpg'),
(505, 94, '593871973_8.3.jpg'),
(506, 94, '751526461_8.4.jpg'),
(507, 95, '749505188_9.1.jpg'),
(508, 95, '900709230_9.2.jpg'),
(509, 95, '266086928_9.3.jpg'),
(510, 95, '806050112_9.4.jpg'),
(511, 96, '199447885_1.1.jpg'),
(512, 96, '635616563_1.2.jpg'),
(513, 96, '329569575_1.3.jpg'),
(514, 96, '246954181_1.4.jpg'),
(515, 97, '230696811_2.1.jpg'),
(516, 97, '623131066_2.2.jpg'),
(517, 97, '840014545_2.3.jpg'),
(518, 97, '397794116_2.4.jpg'),
(519, 98, '162909947_4.1.jpg'),
(520, 98, '724167105_4.2.jpg'),
(521, 98, '513019296_4.3.jpg'),
(522, 98, '404013297_4.4.jpg'),
(523, 99, '118781909_6.1.jpg'),
(524, 99, '959003512_6.2.jpg'),
(525, 99, '808684785_6.3.jpg'),
(526, 99, '231623995_6.4.jpg'),
(527, 100, '589141668_7.1.jpg'),
(528, 100, '481980519_7.2.jpg'),
(529, 100, '284946692_7.3.jpg'),
(530, 100, '213292417_7.4.jpg'),
(531, 101, '957819560_9.1.jpg'),
(532, 101, '123920128_9.2.jpg'),
(533, 101, '606609597_9.3.jpg'),
(534, 101, '497411031_9.4.jpg'),
(535, 102, '533707082_1.1.jpg'),
(536, 102, '229683242_1.2.jpg'),
(537, 102, '535284638_1.3.jpg'),
(538, 102, '535670946_1.4.jpg'),
(539, 103, '362717806_11.1.jpg'),
(540, 103, '409904576_11.2.jpg'),
(541, 103, '379935624_11.4.jpg'),
(542, 103, '592327340_11.3.jpg'),
(543, 104, '272007046_12.1.jpg'),
(544, 104, '841219809_12.2.jpg'),
(545, 104, '490381614_12.3.jpg'),
(546, 104, '363154041_12.4.jpg'),
(547, 105, '220610071_6.1.jpg'),
(548, 105, '676777774_6.2.jpg'),
(549, 105, '178001304_6.3.jpg'),
(550, 105, '748310441_6.4.jpg'),
(551, 106, '250621413_7.1.jpg'),
(552, 106, '219835430_7.2.jpg'),
(553, 106, '475541494_7.3.jpg'),
(554, 106, '171138888_7.4.jpg'),
(555, 107, '869572163_1 (3).jpg'),
(556, 107, '770894992_1 (4).jpg'),
(557, 107, '480558757_1 (1).jpg'),
(558, 107, '982418686_1 (2).jpg'),
(559, 108, '304395614_2.1.jpg'),
(560, 108, '581712609_2.2_.jpg'),
(561, 108, '744163739_2.3_.jpg'),
(562, 108, '344670129_2.4_.jpg'),
(563, 109, '326194970_3.1_.jpg'),
(564, 109, '111978316_3.2_.jpg'),
(565, 109, '769202764_3.3_.jpg'),
(566, 109, '902636926_3.4_.jpg'),
(567, 110, '588268716_4.1_.jpg'),
(568, 110, '970046055_4.2_.jpg'),
(569, 110, '846509338_4.3.jpg'),
(570, 110, '968694225_4.4.jpg'),
(571, 111, '506085870_5.1.jpg'),
(572, 111, '943775485_5.2.jpg'),
(573, 111, '412307065_5.3.jpg'),
(574, 111, '767910332_5.4.jpg'),
(575, 112, '328837343_6.1.jpg'),
(576, 112, '147454315_6.2.jpg'),
(577, 112, '281435484_6.3.jpg'),
(578, 113, '490013449_7.1.jpg'),
(579, 113, '309331835_7.2.jpg'),
(580, 113, '864839331_7.3.jpg'),
(581, 113, '930591485_7.4.jpg'),
(582, 114, '827377702_8.1.jpg'),
(583, 114, '709588634_8.2.jpg'),
(584, 114, '641831377_8.3.jpg'),
(585, 114, '602808801_8.4.jpg'),
(586, 115, '944215214_9.1.jpg'),
(587, 115, '164194481_9.2.jpg'),
(588, 115, '377362820_9.3.jpg'),
(589, 115, '512517645_9.4.jpg'),
(590, 116, '988991809_10.1.jpg'),
(591, 116, '510401384_10.2.jpg'),
(592, 116, '767026699_10.3.jpg'),
(593, 116, '343079893_10.4.jpg'),
(594, 117, '633464380_11.1.jpg'),
(595, 117, '594088188_11.2.jpg'),
(596, 117, '923618900_11.3.jpg'),
(597, 117, '126168250_11.4.jpg'),
(598, 118, '738574081_12.1.jpg'),
(599, 118, '255059756_12.2.jpg'),
(600, 118, '215595101_12.3.jpg'),
(601, 118, '233579722_12.4.jpg'),
(602, 119, '155504692_1.1.jpg'),
(603, 119, '809135798_1.2.jpg'),
(604, 119, '846243577_1.3.jpg'),
(605, 119, '802447179_1.4.jpg'),
(606, 120, '941867100_10.1.jpg'),
(607, 120, '782187530_10.2.jpg'),
(608, 120, '787967181_10.3.jpg'),
(609, 120, '195119623_10.4.jpg'),
(610, 121, '735637290_11.1.jpg'),
(611, 121, '386832650_11.2.jpg'),
(612, 121, '638715594_11.3.jpg'),
(613, 121, '505601615_11.4.jpg'),
(614, 122, '544542463_12.1.jpg'),
(615, 122, '179880989_12.2.jpg'),
(616, 122, '164689725_12.3.jpg'),
(617, 122, '236211857_12.4.jpg'),
(618, 123, '621308282_2.1.jpg'),
(619, 123, '146994873_2.2.jpg'),
(620, 123, '319475443_2.3.jpg'),
(621, 123, '527742547_2.4.jpg'),
(622, 124, '170703847_3.1.jpg'),
(623, 124, '868580722_3.2.jpg'),
(624, 124, '336281511_3.3.jpg'),
(625, 124, '513759457_3.4.jpg'),
(626, 125, '449663543_4.1.jpg'),
(627, 125, '221749116_4.2.jpg'),
(628, 125, '171987551_4.3.jpg'),
(629, 125, '263664286_4.4.jpg'),
(630, 126, '447869768_6.1.jpg'),
(631, 126, '937349779_6.2.jpg'),
(632, 126, '311651277_6.3.jpg'),
(633, 126, '121448843_6.4.jpg'),
(634, 127, '191750466_7.1.jpg'),
(635, 127, '593294761_7.2.jpg'),
(636, 127, '237314692_7.3.jpg'),
(637, 127, '141718405_7.4.jpg'),
(638, 128, '433302795_8.1.jpg'),
(639, 128, '645138695_8.2.jpg'),
(640, 128, '420090528_8.3.jpg'),
(641, 128, '402381194_8.4.jpg'),
(642, 129, '504113381_9.1.jpg'),
(643, 129, '257773874_9.2.jpg'),
(644, 129, '849190857_9.3.jpg'),
(645, 129, '898281998_9.4.jpg'),
(646, 130, '726781136_1.1.jpg'),
(647, 130, '828242170_1.2.jpg'),
(648, 130, '498086639_1.3.jpg'),
(649, 130, '730956387_1.4.jpg'),
(650, 131, '917498391_10.1.jpg'),
(651, 131, '857292353_10.2.jpg'),
(652, 131, '541473166_10.3.jpg'),
(653, 131, '728753985_10.4.jpg'),
(654, 132, '462446559_11.1.jpg'),
(655, 132, '725266948_11.3.jpg'),
(656, 132, '498201849_11.2.jpg'),
(657, 132, '320867275_11.4.jpg'),
(658, 133, '703596882_12.1.jpg'),
(659, 133, '930051015_12.2.jpg'),
(660, 133, '283197481_12.3.jpg'),
(661, 133, '527981365_12.4.jpg'),
(662, 134, '658933773_2.1.jpg'),
(663, 134, '314805099_2.2.jpg'),
(664, 134, '140550446_2.3.jpg'),
(665, 134, '916551496_2.4.jpg'),
(666, 135, '376779538_3.1.jpg'),
(667, 135, '500676218_3.2.jpg'),
(668, 135, '623869133_3.3.jpg'),
(669, 135, '212496644_3.4.jpg'),
(670, 136, '174026894_4.1.jpg'),
(671, 136, '454574499_4.2.jpg'),
(672, 136, '526806934_4.3.jpg'),
(673, 136, '841933039_4.4.jpg'),
(674, 137, '342852938_5.1.jpg'),
(675, 137, '122923336_5.2.jpg'),
(676, 137, '991136459_5.3.jpg'),
(677, 137, '349397312_5.4.jpg'),
(678, 138, '139573863_6.1.jpg'),
(679, 138, '918610014_6.2.jpg'),
(680, 138, '175268859_6.4.jpg'),
(681, 138, '499261832_6.3.jpg'),
(682, 139, '846007652_7.1.jpg'),
(683, 139, '792031658_7.2.jpg'),
(684, 139, '979911926_7.3.jpg'),
(685, 139, '785020577_7.4.jpg'),
(686, 140, '887162348_8.1.jpg'),
(687, 140, '445789734_8.2.jpg'),
(688, 140, '549484698_8.3.jpg'),
(689, 140, '906891922_8.4.jpg'),
(690, 141, '201691858_9.1.jpg'),
(691, 141, '654297134_9.2.jpg'),
(692, 141, '534788506_9.3.jpg'),
(693, 141, '785596312_9.4.jpg'),
(694, 142, '861222774_1.1.jpg'),
(695, 142, '560878559_1.2.jpg'),
(696, 142, '578327755_1.3.jpg'),
(697, 142, '946708584_1.4.jpg'),
(698, 143, '458358713_10.1.jpg'),
(699, 143, '316148492_10.2.jpg'),
(700, 143, '123790139_10.3.jpg'),
(701, 143, '401754096_10.4.jpg'),
(702, 144, '946330333_11.1.jpg'),
(703, 144, '267696034_11.2.jpg'),
(704, 144, '717450007_11.3.jpg'),
(705, 144, '403385653_11.4.jpg'),
(706, 145, '501353006_12.1.jpg'),
(707, 145, '326465544_12.2.jpg'),
(708, 145, '406039573_12.3.jpg'),
(709, 145, '879222479_12.4.jpg'),
(710, 146, '694668251_2.1.jpg'),
(711, 146, '932541275_2.2.jpg'),
(712, 146, '901633950_2.3.jpg'),
(713, 146, '554649842_2.4.jpg'),
(714, 147, '137097540_4.1.jpg'),
(715, 147, '642373655_4.2.jpg'),
(716, 147, '517467734_4.3.jpg'),
(717, 147, '466039364_4.44.jpg'),
(718, 148, '319162648_5.1.jpg'),
(719, 148, '141028041_5.2.jpg'),
(720, 148, '122508510_5.3.jpg'),
(721, 148, '712411387_5.4.jpg'),
(722, 149, '693275642_6.1.jpg'),
(723, 149, '544305459_6.2.jpg'),
(724, 149, '399425871_6.3.jpg'),
(725, 149, '849674993_6.4.jpg'),
(726, 150, '298256264_7.1.jpg'),
(727, 150, '665565793_8.2.jpg'),
(728, 150, '889554520_8.3.jpg'),
(729, 150, '864053030_8.4.jpg'),
(730, 151, '340765249_8.1.jpg'),
(731, 151, '286596785_8.2.jpg'),
(732, 151, '199490943_8.3.jpg'),
(733, 151, '966855853_8.4.jpg'),
(734, 152, '856832854_9.1.jpg'),
(735, 152, '919784452_9.2.jpg'),
(736, 152, '754104208_9.3.jpg'),
(737, 152, '267733572_9.4.jpg'),
(738, 153, '385655890_p1 (2).jpg'),
(739, 153, '200197376_p1 (3).jpg'),
(740, 153, '972232100_p1 (1).jpg'),
(741, 153, '981898782_p1 (6).jpg'),
(742, 154, '686861302_p10 (2).jpg'),
(743, 154, '184159019_p10 (3).jpg'),
(744, 154, '792689812_p10 (1).jpg'),
(745, 154, '860126143_p10 (4).jpg'),
(746, 155, '446221336_p11 (4).jpg'),
(747, 155, '116834982_p11 (3).jpg'),
(748, 155, '630109258_p11 (2).jpg'),
(749, 156, '502236709_p12 (2).jpg'),
(750, 156, '858788486_p12 (3).jpg'),
(751, 156, '627098607_p12 (1).jpg'),
(752, 157, '300319712_p2 (2).jpg'),
(753, 157, '208839154_p2 (1).jpg'),
(754, 158, '611587068_p3 (2).jpg'),
(755, 158, '836667206_p3 (3).jpg'),
(756, 158, '905463833_p3 (4).jpg'),
(757, 159, '316240871_p4 (1).jpg'),
(758, 159, '901689505_p4 (3).jpg'),
(759, 159, '423245651_p4 (4).jpg'),
(760, 159, '807093946_p4 (2).jpg'),
(761, 160, '169125086_p5 (2).jpg'),
(762, 160, '316165108_p5 (3).jpg'),
(763, 160, '772168233_p5 (1).jpg'),
(764, 160, '746406968_p5 (4).jpg'),
(765, 161, '260523946_p6 (1).jpg'),
(766, 161, '296440995_p6 (3).jpg'),
(767, 161, '774780728_p6 (4).jpg'),
(768, 161, '925180704_p6 (2).jpg'),
(769, 162, '169302532_p7 (2).jpg'),
(770, 162, '184427934_p7 (1).jpg'),
(771, 162, '997163870_p7 (3).jpg'),
(772, 163, '334628447_p9 (3).jpg'),
(773, 163, '943798411_p9 (1).jpg'),
(774, 163, '998883674_p9 (2).jpg'),
(775, 163, '433268392_p9 (4).jpg'),
(776, 175, '261921065_p1 (1).jpg'),
(777, 175, '260795974_p1 (3).jpg'),
(778, 175, '422810778_p1 (4).jpg'),
(779, 175, '715137268_p1 (5).jpg'),
(780, 176, '438337077_p10 (1).jpg'),
(781, 176, '421615860_p10 (4).jpg'),
(782, 176, '135893005_p10 (5).jpg'),
(783, 176, '839162682_p10 (2).jpg'),
(784, 177, '194905494_p11 (1).jpg'),
(785, 177, '864322178_p11 (3).jpg'),
(786, 177, '115989940_p11 (4).jpg'),
(787, 177, '385455973_p11 (5).jpg'),
(788, 178, '329817664_p12 (1).jpg'),
(789, 178, '124819403_p12 (2).jpg'),
(790, 178, '834831171_p12 (5).jpg'),
(791, 178, '469663348_p12 (6).jpg'),
(792, 179, '689584286_p2 (1).jpg'),
(793, 179, '183309389_p2 (3).jpg'),
(794, 179, '208259255_p2 (4).jpg'),
(795, 179, '254113378_p2 (5).jpg'),
(796, 180, '844353840_p3 (2).jpg'),
(797, 180, '840086000_p3 (4).jpg'),
(798, 180, '713805922_p3 (1).jpg'),
(799, 180, '740008199_p3 (5).jpg'),
(800, 181, '163720095_p4 (2).jpg'),
(801, 181, '993060095_p4 (5).jpg'),
(802, 181, '453471989_p4 (4).jpg'),
(803, 181, '340375004_p4 (4).jpg'),
(804, 182, '138140768_p5 (1).jpg'),
(805, 182, '268682198_p5 (2).jpg'),
(806, 182, '532977239_p5 (4).jpg'),
(807, 182, '575888377_p5 (5).jpg'),
(808, 183, '859941854_p6 (1).jpg'),
(809, 183, '527576357_p6 (2).jpg'),
(810, 183, '428116367_p6 (3).jpg'),
(811, 183, '423200405_p6 (4).jpg'),
(812, 184, '395206594_p7 (1).jpg'),
(813, 184, '773401553_p7 (3).jpg'),
(814, 184, '793358389_p7 (2).jpg'),
(815, 184, '219207805_p7 (4).jpg'),
(816, 185, '506448325_p8 (2).jpg'),
(817, 185, '914900738_p8 (4).jpg'),
(818, 185, '800305345_p8 (3).jpg'),
(819, 185, '774074438_p8 (5).jpg'),
(820, 186, '197498868_p9 (1).jpg'),
(821, 186, '610766694_p9 (2).jpg'),
(822, 186, '659984255_p9 (3).jpg'),
(823, 186, '755017095_p9 (4).jpg'),
(824, 187, '194528454_p1 (1).jpeg'),
(825, 187, '967123935_p1 (2).jpeg'),
(826, 187, '344174533_p1 (3).jpeg'),
(827, 187, '681721866_p1 (4).jpeg'),
(828, 188, '165492642_p10 (1).jpg'),
(829, 188, '188553955_p10 (2).jpg'),
(830, 188, '851938695_p10 (3).jpg'),
(831, 188, '825097863_p10 (4).jpg'),
(832, 189, '597505402_p11 (1).jpg'),
(833, 189, '747758949_p11 (2).jpg'),
(834, 189, '582695154_p11 (3).jpg'),
(835, 189, '223559408_p11 (4).jpg'),
(836, 190, '887890106_p12 (2).jpg'),
(837, 190, '480059175_p12 (1).jpg'),
(838, 190, '423509183_p12 (3).jpg'),
(839, 190, '137233904_p12 (4).jpg'),
(840, 191, '607142394_p2 (1).jpg'),
(841, 191, '999630824_p2 (2).jpg'),
(842, 191, '403478434_p2 (3).jpg'),
(843, 191, '527174923_p2 (4).jpg'),
(844, 192, '695575484_p3 (1).jpg'),
(845, 192, '905434218_p3 (2).jpg'),
(846, 192, '199190190_p3 (3).jpg'),
(847, 192, '515861368_p3 (4).jpg'),
(848, 193, '760279615_p4 (1).jpg'),
(849, 193, '431851027_p4 (2).jpg'),
(850, 193, '876575474_p4 (3).jpg'),
(851, 193, '296332731_p4 (4).jpg'),
(852, 194, '794646723_p5 (1).jpg'),
(853, 194, '488655907_p5 (2).jpg'),
(854, 194, '806299776_p5 (3).jpg'),
(855, 194, '167625406_p5 (4).jpg'),
(856, 195, '167245435_p6 (3).jpg'),
(857, 195, '960808526_p6 (1).jpg'),
(858, 195, '574511113_p6 (2).jpg'),
(859, 195, '281310763_p6 (4).jpg'),
(860, 196, '483308995_p7 (1).jpg'),
(861, 196, '347054926_p7 (2).jpg'),
(862, 196, '381780950_p7 (3).jpg'),
(863, 196, '534358387_p7 (4).jpg'),
(864, 197, '680003508_p8 (1).jpg'),
(865, 197, '360539412_p8 (2).jpg'),
(866, 197, '805155438_p8 (3).jpg'),
(867, 197, '547366165_p8 (4).jpg'),
(868, 198, '561259120_p9 (1).jpg'),
(869, 198, '826097348_p9 (2).jpg'),
(870, 198, '626267744_p9 (3).jpg'),
(871, 198, '490789920_p9 (4).jpg'),
(872, 199, '380712979_p1 (2).jpg'),
(873, 199, '793284704_p1 (3).jpg'),
(874, 199, '613299277_p1 (4).jpg'),
(875, 199, '297392839_p1 (5).jpg'),
(876, 200, '282513956_p10 (1).jpg'),
(877, 200, '976569300_p10 (2).jpg'),
(878, 200, '880651798_p10 (3).jpg'),
(879, 200, '205845230_p10 (4).jpg'),
(880, 201, '923638095_p11 (1).jpg'),
(881, 201, '496928910_p11 (2).jpg'),
(882, 201, '597068218_p11 (3).jpg'),
(883, 201, '323912846_p11 (4).jpg'),
(884, 202, '890058431_p12 (1).jpg'),
(885, 202, '946575122_p12 (2).jpg'),
(886, 202, '737244270_p12 (3).jpg'),
(887, 202, '953641105_p12 (4).jpg'),
(888, 203, '115638489_p2 (2).jpg'),
(889, 203, '482581333_p2 (3).jpg'),
(890, 203, '407687963_p2 (4).jpg'),
(891, 203, '402819461_p2 (5).jpg'),
(892, 204, '389228381_p3 (1).jpg'),
(893, 204, '822886313_p3 (2).jpg'),
(894, 204, '635113386_p3 (3).jpg'),
(895, 204, '463802548_p3 (4).jpg'),
(896, 205, '581520155_p4 (2).jpg'),
(897, 205, '261206130_p4 (1).jpg'),
(898, 205, '988990749_p4 (3).jpg'),
(899, 205, '772133649_p4 (4).jpg'),
(900, 206, '725448912_p5 (1).jpg'),
(901, 206, '705078140_p5 (2).jpg'),
(902, 206, '286236008_p5 (3).jpg'),
(903, 206, '516530927_p5 (4).jpg'),
(904, 207, '474530963_p6 (1).jpg'),
(905, 207, '441504504_p6 (2).jpg'),
(906, 207, '332439276_p6 (3).jpg'),
(907, 207, '292704059_p6 (4).jpg'),
(908, 208, '339043255_p7 (2).jpg'),
(909, 208, '825128220_p7 (3).jpg'),
(910, 208, '122790868_p7 (1).jpg'),
(911, 208, '344474762_p7 (4).jpg'),
(912, 209, '877888445_p8 (1).jpg'),
(913, 209, '193340532_p8 (2).jpg'),
(914, 209, '478099516_p8 (3).jpg'),
(915, 209, '178260009_p8 (4).jpg'),
(916, 210, '117767465_p9 (2).jpg'),
(917, 210, '473023427_p9 (1).jpg'),
(918, 210, '313138738_p9 (3).jpg'),
(919, 210, '304713644_p9 (4).jpg'),
(920, 211, '763750357_p1 (1).jpg'),
(921, 211, '611210428_p1 (2).jpg'),
(922, 211, '424056474_p1 (3).jpg'),
(923, 211, '934465031_p1 (4).jpg'),
(924, 212, '185479775_p2 (1).jpg'),
(925, 212, '443348659_p2 (2).jpg'),
(926, 212, '584336095_p2 (3).jpg'),
(927, 212, '391043932_p2 (4).jpg'),
(928, 213, '780863111_p3 (1).jpg'),
(929, 213, '617194871_p3 (2).jpg'),
(930, 213, '176571523_p3 (3).jpg'),
(931, 213, '379821293_p3 (4).jpg'),
(932, 214, '169546093_p4 (1).jpg'),
(933, 214, '320446488_p4 (2).jpg'),
(934, 214, '392251093_p4 (3).jpg'),
(935, 214, '370930352_p4 (4).jpg'),
(936, 215, '698666798_p5 (2).jpg'),
(937, 215, '241704366_p5 (3).jpg'),
(938, 215, '841286786_p5 (4).jpg'),
(939, 215, '299617051_p5 (5).jpg'),
(940, 216, '273971187_p6 (2).jpg'),
(941, 216, '355957259_p6 (3).jpg'),
(942, 216, '969013283_p6 (4).jpg'),
(943, 216, '886904561_p6 (5).jpg'),
(944, 217, '447807615_p7 (1).jpg'),
(945, 217, '782800694_p7 (2).jpg'),
(946, 217, '660130564_p7 (3).jpg'),
(947, 217, '969020519_p7 (4).jpg'),
(948, 218, '993574807_p8 (2).jpg'),
(949, 218, '414593819_p8 (3).jpg'),
(950, 218, '932911007_p8 (4).jpg'),
(951, 218, '520044260_p8 (5).jpg'),
(952, 219, '562814230_p9 (2).jpg'),
(953, 219, '967654344_p9 (3).jpg'),
(954, 219, '875268131_p9 (4).jpg'),
(955, 219, '981135502_p9 (5).jpg'),
(956, 220, '201835913_p10 (1).jpg'),
(957, 220, '250198172_p10 (2).jpg'),
(958, 220, '830393839_p10 (3).jpg'),
(959, 220, '290883981_p10 (4).jpg'),
(960, 221, '953935208_p11 (1).jpg'),
(961, 221, '161731969_p11 (2).jpg'),
(962, 221, '871161431_p11 (3).jpg'),
(963, 221, '434730416_p11 (4).jpg'),
(964, 222, '532598859_p12 (1).jpg'),
(965, 222, '589901801_p12 (2).jpg'),
(966, 222, '691732191_p12 (3).jpg'),
(967, 222, '747679710_p12 (4).jpg'),
(968, 223, '666772731_p1 (1).jpg'),
(969, 223, '882754613_p1 (2).jpg'),
(970, 223, '206264023_p1 (3).jpg'),
(971, 223, '929980116_p1 (4).jpg'),
(972, 224, '271959400_p10 (1).jpg'),
(973, 224, '349184831_p10 (2).jpg'),
(974, 224, '913351543_p10 (4).jpg'),
(975, 224, '913336138_p10 (3).jpg'),
(976, 225, '913703352_p11 (2).jpg'),
(977, 225, '214164693_p11 (3).jpg'),
(978, 225, '645521281_p11 (4).jpg'),
(979, 225, '303411898_p11 (1).jpg'),
(980, 226, '837572584_71hQnTjVoJL._SY679_.jpg'),
(981, 226, '797906620_71UGfozNOjL._SY679_.jpg'),
(982, 226, '574427065_81r6BKnUWvL._SY679_.jpg'),
(983, 226, '330360412_81zAQV4+zdL._SY679_.jpg'),
(984, 227, '903748948_p2 (3).jpg'),
(985, 227, '622242773_p2 (4).jpg'),
(986, 227, '790812360_p2 (1).jpg'),
(987, 227, '327720904_p2 (2).jpg'),
(988, 228, '774382923_p3 (1).jpg'),
(989, 228, '933640174_p3 (2).jpg'),
(990, 228, '130810271_p3 (3).jpg'),
(991, 228, '136902682_p3 (4).jpg'),
(992, 229, '834201285_p4 (1).jpg'),
(993, 229, '810912731_p4 (2).jpg'),
(994, 229, '186941794_p4 (3).jpg'),
(995, 229, '872630762_p4 (4).jpg'),
(996, 230, '698311878_p6 (2).jpg'),
(997, 230, '348786138_p6 (1).jpg'),
(998, 230, '692318390_p6 (3).jpg'),
(999, 230, '123076741_p6 (4).jpg'),
(1000, 231, '725199731_p7 (1).jpg'),
(1001, 231, '580123287_p7 (2).jpg'),
(1002, 231, '681796409_p7 (3).jpg'),
(1003, 231, '983469578_p7 (4).jpg'),
(1004, 232, '503681993_p8 (1).jpg'),
(1005, 232, '273496435_p8 (2).jpg'),
(1006, 232, '490868675_p8 (3).jpg'),
(1007, 233, '128444447_p1 (1).jpg'),
(1008, 233, '970699407_p1 (2).jpg'),
(1009, 233, '535558337_p1 (3).jpg'),
(1010, 233, '569459845_p1 (4).jpg'),
(1011, 234, '446363143_p2 (1).jpg'),
(1012, 234, '161806716_p2 (2).jpg'),
(1013, 234, '638985564_p2 (3).jpg'),
(1014, 234, '429805171_p2 (4).jpg'),
(1015, 235, '516249332_p3 (1).jpg'),
(1016, 235, '743753684_p3 (2).jpg'),
(1017, 235, '923078799_p3 (3).jpg'),
(1018, 235, '991487504_p3 (4).jpg'),
(1019, 236, '328388048_p4 (1).jpg'),
(1020, 236, '792822820_p4 (2).jpg'),
(1021, 236, '759318064_p4 (3).jpg'),
(1022, 236, '997275610_p4 (4).jpg'),
(1023, 237, '694823713_p5 (1).jpg'),
(1024, 237, '546999841_p5 (2).jpg'),
(1025, 237, '804907892_p5 (3).jpg'),
(1026, 237, '423794462_p5 (4).jpg'),
(1027, 238, '497068254_p1 (1).jpg'),
(1028, 238, '638125574_p1 (2).jpg'),
(1029, 238, '327212849_p1 (3).jpg'),
(1030, 238, '405262159_p1 (4).jpg'),
(1031, 239, '293837939_p10 (1).jpg'),
(1032, 239, '629422187_p10 (2).jpg'),
(1033, 239, '756262317_p10 (3).jpg'),
(1034, 239, '666755243_p10 (4).jpg'),
(1035, 240, '809892798_p11 (1).jpg'),
(1036, 240, '624385522_p11 (2).jpg'),
(1037, 240, '231808258_p11 (3).jpg'),
(1038, 240, '627412484_p11 (4).jpg'),
(1039, 241, '611503523_p12 (1).jpg'),
(1040, 241, '220481206_p12 (2).jpg'),
(1041, 241, '151180555_p12 (3).jpg'),
(1042, 241, '387476029_p12 (4).jpg'),
(1043, 242, '939309832_p2 (1).jpg'),
(1044, 242, '250600613_p2 (2).jpg'),
(1045, 242, '221544606_p2 (3).jpg'),
(1046, 242, '487654519_p2 (4).jpg'),
(1047, 243, '444544411_p3 (1).jpg'),
(1048, 243, '275066352_p3 (2).jpg'),
(1049, 243, '522818383_p3 (3).jpg'),
(1050, 243, '221623617_p3 (4).jpg'),
(1051, 244, '111589337_p4 (1).jpg'),
(1052, 244, '750717033_p4 (2).jpg'),
(1053, 244, '249238306_p4 (3).jpg'),
(1054, 244, '483385513_p4 (5).jpg'),
(1055, 245, '455036806_p5 (1).jpg'),
(1056, 245, '115150119_p5 (2).jpg'),
(1057, 245, '270768519_p5 (3).jpg'),
(1058, 245, '901728003_p5 (4).jpg'),
(1059, 246, '443506914_p1 (1).jpg'),
(1060, 246, '423041142_p1 (2).jpg'),
(1061, 246, '243683697_p5 (3).jpg'),
(1062, 246, '884277656_p5 (4).jpg'),
(1063, 247, '567758612_p10 (3).jpg'),
(1064, 247, '289380393_p10 (2).jpg'),
(1065, 247, '166723052_p10 (5).jpg'),
(1066, 247, '417721290_p10 (4).jpg'),
(1067, 248, '633814797_p11 (1).jpg'),
(1068, 248, '673451924_p11 (2).jpg'),
(1069, 248, '632252717_p11 (3).jpg'),
(1070, 248, '525326387_p11 (4).jpg'),
(1071, 249, '974265224_p1 (2).jpg'),
(1072, 249, '773670496_p1 (3).jpg'),
(1073, 249, '467439585_p1 (1).jpg'),
(1074, 249, '959925768_p1 (4).jpg'),
(1075, 250, '470203401_p10 (1).jpg'),
(1076, 250, '869116684_p10 (2).jpg'),
(1077, 250, '176800492_p10 (3).jpg'),
(1078, 251, '967103479_p11 (1).jpg'),
(1079, 251, '418963049_p11 (2).jpg'),
(1080, 251, '230901169_p11 (3).jpg'),
(1081, 251, '479569972_p11 (4).jpg'),
(1082, 252, '497757904_p12 (1).jpg'),
(1083, 252, '579696884_p12 (2).jpg'),
(1084, 253, '747965952_p2 (1).jpg'),
(1085, 253, '449424163_p2 (2).jpg'),
(1086, 253, '949629184_p2 (3).jpg'),
(1087, 253, '581405684_p2 (4).jpg'),
(1088, 254, '862928722_p3 (1).jpg'),
(1089, 254, '980587749_p3 (2).jpg'),
(1090, 254, '798040468_p3 (3).jpg'),
(1091, 255, '164997447_p4 (1).jpg'),
(1092, 255, '603337642_p4 (2).jpg'),
(1093, 255, '130004483_p4 (3).jpg'),
(1094, 256, '581757080_p5 (1).jpg'),
(1095, 256, '491997553_p5 (2).jpg'),
(1096, 256, '641089021_p5 (3).jpg'),
(1097, 257, '659869807_p6 (1).jpg'),
(1098, 257, '824823930_p6 (2).jpg'),
(1099, 257, '380410376_p6 (3).jpg'),
(1100, 258, '838152835_p7 (1).jpg'),
(1101, 258, '550088901_p7 (2).jpg'),
(1102, 259, '550174185_p1 (1).jpg'),
(1103, 259, '343767857_p1 (2).jpg'),
(1104, 259, '324652783_p1 (3).jpg'),
(1105, 259, '837346680_p1 (4).jpg'),
(1106, 260, '259189368_p11 (1).jpg'),
(1107, 260, '663933495_p11 (2).jpg'),
(1108, 260, '941425227_p11 (3).jpg'),
(1109, 260, '629562832_p11 (4).jpg'),
(1110, 261, '756740539_p12 (1).jpg'),
(1111, 261, '659391425_p12 (2).jpg'),
(1112, 261, '964952166_p12 (3).jpg'),
(1113, 261, '785468074_p12 (4).jpg'),
(1114, 262, '950714176_p2 (1).jpg'),
(1115, 262, '219824084_p2 (2).jpg'),
(1116, 262, '318629194_p2 (3).jpg'),
(1117, 262, '820005132_p2 (4).jpg'),
(1118, 263, '624115010_p4 (1).jpg'),
(1119, 263, '632041760_p4 (2).jpg'),
(1120, 263, '938194424_p4 (3).jpg'),
(1121, 263, '262371862_p4 (4).jpg'),
(1122, 264, '984143164_p5 (1).jpg'),
(1123, 264, '776527713_p5 (2).jpg'),
(1124, 264, '996990939_p5 (3).jpg'),
(1125, 264, '323417329_p5 (4).jpg'),
(1126, 265, '425491856_p6 (1).jpg'),
(1127, 265, '414346442_p6 (2).jpg'),
(1128, 265, '505959374_p6 (3).jpg'),
(1129, 265, '644701136_p6 (4).jpg'),
(1130, 266, '538247874_p6 (1).jpg'),
(1131, 266, '266448390_p6 (2).jpg'),
(1132, 266, '780113472_p6 (3).jpg'),
(1133, 266, '303157239_p6 (4).jpg'),
(1134, 267, '612715795_p11 (1).jpg'),
(1135, 267, '834047089_p11 (2).jpg'),
(1136, 267, '899445933_p11 (3).jpg'),
(1137, 267, '156239780_p11 (4).jpg'),
(1138, 268, '114974933_p3 (1).jpg'),
(1139, 268, '260786102_p3 (2).jpg'),
(1140, 268, '479566157_p3 (3).jpg'),
(1141, 268, '604832158_p3 (4).jpg'),
(1142, 269, '701341872_p10 (1).jpg'),
(1143, 269, '518146622_p10 (2).jpg'),
(1144, 269, '886143439_p10 (3).jpg'),
(1145, 269, '310577061_p10 (4).jpg'),
(1146, 270, '980344369_p1 (1).jpg'),
(1147, 270, '382346578_p1 (2).jpg'),
(1148, 270, '863264547_p1 (3).jpg'),
(1149, 271, '299986021_p2 (1).jpg'),
(1150, 271, '699575845_p2 (2).jpg'),
(1151, 271, '970662891_p2 (3).jpg'),
(1152, 271, '466884944_p2 (4).jpg'),
(1153, 272, '776095206_p3 (1).jpg'),
(1154, 272, '803230362_p3 (4).jpg'),
(1155, 272, '576931011_p3 (2).jpg'),
(1156, 272, '675255303_p3 (3).jpg'),
(1157, 273, '726461563_p4 (4).jpg'),
(1158, 273, '512462759_p4 (2).jpg'),
(1159, 273, '306151152_p4 (3).jpg'),
(1160, 273, '612730775_p4 (1).jpg'),
(1161, 274, '319686799_p5 (1).jpg'),
(1162, 274, '502866253_p5 (2).jpg'),
(1163, 274, '328399822_p5 (3).jpg'),
(1164, 274, '894973357_p5 (4).jpg'),
(1165, 275, '666467782_p6 (1).jpg'),
(1166, 275, '692584222_p6 (2).jpg'),
(1167, 275, '273881840_p6 (3).jpg'),
(1168, 276, '890339129_p7 (1).jpg'),
(1169, 276, '142787452_p7 (2).jpg'),
(1170, 276, '794416341_p7 (3).jpg'),
(1171, 276, '831585012_p7 (4).jpg'),
(1172, 277, '154607522_p8 (1).jpg'),
(1173, 277, '503897481_p8 (2).jpg'),
(1174, 277, '944759062_p8 (3).jpg'),
(1175, 277, '344542411_p8 (4).jpg'),
(1176, 278, '220306759_p9 (1).jpg'),
(1177, 278, '855907999_p9 (2).jpg'),
(1178, 278, '730389998_p9 (3).jpg'),
(1179, 278, '319267580_p9 (4).jpg'),
(1180, 279, '761594378_p11 (1).jpg'),
(1181, 279, '384750202_p11 (2).jpg'),
(1182, 279, '858573565_p11 (3).jpg'),
(1183, 280, '934706631_p10 (1).jpg'),
(1184, 280, '370109646_p10 (2).jpg'),
(1185, 280, '282711905_p10 (3).jpg'),
(1186, 280, '539243576_p10 (4).jpg'),
(1187, 281, '889994432_p1 (1).jpg'),
(1188, 281, '322047578_p1 (2).jpg'),
(1189, 281, '543224351_p1 (3).jpg'),
(1190, 281, '323140246_p1 (4).jpg'),
(1191, 282, '554280036_p2 (1).jpg'),
(1192, 282, '492317844_p2 (2).jpg'),
(1193, 282, '366066947_p2 (3).jpg'),
(1194, 282, '630535548_p2 (4).jpg'),
(1195, 283, '694313678_p3 (1).jpg'),
(1196, 283, '725581615_p3 (2).jpg'),
(1197, 283, '402032240_p3 (3).jpg'),
(1198, 283, '756637452_p3 (4).jpg'),
(1199, 284, '617700629_p4 (1).jpg'),
(1200, 284, '764638879_p4 (2).jpg'),
(1201, 284, '170111993_p4 (3).jpg'),
(1202, 284, '602712153_p4 (4).jpg'),
(1203, 285, '992138484_p5 (1).jpg'),
(1204, 285, '932549028_p5 (2).jpg'),
(1205, 285, '382389821_p5 (3).jpg'),
(1206, 285, '763189344_p5 (4).jpg'),
(1207, 286, '836875467_p6 (1).jpg'),
(1208, 286, '863361672_p6 (2).jpg'),
(1209, 286, '673903166_p6 (3).jpg'),
(1210, 286, '712031070_p6 (4).jpg'),
(1211, 287, '538043366_p7 (1).jpg'),
(1212, 287, '638783414_p7 (2).jpg'),
(1213, 287, '945006722_p7 (3).jpg'),
(1214, 287, '908889718_p7 (4).jpg'),
(1215, 288, '403332276_p8 (1).jpg'),
(1216, 288, '427396848_p8 (2).jpg'),
(1217, 288, '257042674_p8 (3).jpg'),
(1218, 288, '349001870_p8 (4).jpg'),
(1219, 289, '358052109_p9 (1).jpg'),
(1220, 289, '632980476_p9 (2).jpg'),
(1221, 289, '487660508_p9 (3).jpg'),
(1222, 289, '355496192_p9 (4).jpg'),
(1223, 290, '274646374_p10 (1).jpg'),
(1224, 290, '401273971_p10 (2).jpg'),
(1225, 290, '267757858_p10 (3).jpg'),
(1226, 290, '132771737_p10 (4).jpg'),
(1227, 291, '563379066_p11 (1).jpg'),
(1228, 291, '252831004_p11 (2).jpg'),
(1229, 291, '146962118_p11 (3).jpg'),
(1230, 292, '929121441_p12 (1).jpg'),
(1231, 292, '253676594_p12 (2).jpg'),
(1232, 292, '487782839_p12 (3).jpg'),
(1233, 292, '260095107_p12 (4).jpg'),
(1234, 293, '221913742_p1 (1).jpg'),
(1235, 293, '374476613_p1 (2).jpg'),
(1236, 293, '253999472_p1 (3).jpg'),
(1237, 293, '960505096_p1 (4).jpg'),
(1238, 294, '347240661_p2 (1).jpg'),
(1239, 294, '606622345_p2 (2).jpg'),
(1240, 294, '533365633_p2 (3).jpg'),
(1241, 294, '295454169_p2 (4).jpg'),
(1242, 295, '768678895_p3 (1).jpg'),
(1243, 295, '617086822_p3 (2).jpg'),
(1244, 295, '837072467_p3 (3).jpg'),
(1245, 296, '389536567_p4 (1).jpg'),
(1246, 296, '991638734_p4 (2).jpg'),
(1247, 296, '781543792_p4 (3).jpg'),
(1248, 296, '434672165_p4 (4).jpg'),
(1249, 297, '683238375_p5 (1).jpg'),
(1250, 297, '621833556_p5 (2).jpg'),
(1251, 297, '229213815_p5 (3).jpg'),
(1252, 297, '432442122_p5 (4).jpg'),
(1253, 298, '910991252_p6 (1).jpg'),
(1254, 298, '853368334_p6 (2).jpg'),
(1255, 298, '419762243_p6 (3).jpg'),
(1256, 298, '425627060_p6 (4).jpg'),
(1257, 299, '128744050_p7 (1).jpg'),
(1258, 299, '841956123_p7 (2).jpg'),
(1259, 299, '226577148_p7 (3).jpg'),
(1260, 299, '262092923_p7 (4).jpg'),
(1261, 300, '209114558_p8 (1).jpg'),
(1262, 300, '860732128_p8 (2).jpg'),
(1263, 300, '548408185_p8 (3).jpg'),
(1264, 300, '171812113_p8 (4).jpg'),
(1265, 301, '430066064_p9 (1).jpg'),
(1266, 301, '135214393_p9 (2).jpg'),
(1267, 301, '458676557_p9 (3).jpg'),
(1268, 301, '283934643_p9 (4).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `user_id`, `rating`, `review`, `status`, `added_on`) VALUES
(2, 9, 1, 'Good', 'asAS', 0, '2021-05-05 08:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `return_order`
--

CREATE TABLE `return_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `problem` varchar(300) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return_order`
--

INSERT INTO `return_order` (`id`, `order_id`, `name`, `email`, `problem`, `status`) VALUES
(1, '2020', 'Bansal Manavadariya', 'bansalmanavadariya10102006@gmail.com', 'test', 0),
(2, '2020', 'Bansal Manavadariya', 'bansalmanavadariya10102006@gmail.com', 'test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `size_master`
--

CREATE TABLE `size_master` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `order_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size_master`
--

INSERT INTO `size_master` (`id`, `size`, `status`, `order_by`) VALUES
(1, 'X', 1, 3),
(2, 'XL', 1, 4),
(4, 'M', 1, 2),
(5, 'S', 1, 1),
(6, 'XXL', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 1, 'T-SHIRTS', 1),
(2, 1, 'SHIRTS', 1),
(3, 1, 'BLAZER & SUITS', 1),
(4, 1, 'KURTA', 1),
(5, 1, 'SHERWANIS', 1),
(6, 1, 'JEANS', 1),
(7, 1, 'TROUSERS', 1),
(8, 1, 'HOODIES', 1),
(9, 1, 'SWETERS', 1),
(10, 1, 'SHOES', 1),
(11, 1, 'SANDALS', 1),
(12, 1, 'ANALOG WATCHES', 1),
(13, 1, 'SMART WATCHES', 1),
(14, 2, 'ANALOG WATCHES', 1),
(15, 2, 'SMART WATCHES', 1),
(17, 2, 'SAREES', 1),
(18, 2, 'LEHENGA CHOLI', 1),
(19, 2, 'DRESSES', 1),
(20, 2, 'TOPS', 1),
(21, 2, 'T-SHIRTS', 1),
(22, 2, 'JEANS', 1),
(23, 2, 'FLATS', 1),
(24, 2, 'SHOES', 1),
(25, 2, 'HEELS', 1),
(26, 3, 'BOYS -T-SHIRTS', 1),
(27, 3, 'BOYS -SHIRTS', 1),
(28, 3, 'BOYS -JEANS', 1),
(29, 3, 'BOYS -PARTY WEAR', 1),
(30, 3, 'GIRLS-PARTY WEAR', 1),
(31, 3, 'GIRLS-DRESSES', 1),
(32, 3, 'GIRLS--CLOTHING SETS', 1),
(33, 3, 'SHOES', 1),
(34, 3, 'FLATS', 1),
(35, 3, 'GIRLS-LEHENGA CHOLIS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(5, 'Bansal Manavadariya', 'bansal', 'bansalmanavadariya10102006@gmail.com', '6352541557', '2024-03-09 04:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(1, 1, 12, '2021-04-08 01:53:31'),
(2, 1, 18, '2024-03-08 11:39:47'),
(5, 5, 55, '2024-03-11 07:20:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_master`
--
ALTER TABLE `color_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_order`
--
ALTER TABLE `return_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_master`
--
ALTER TABLE `size_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `color_master`
--
ALTER TABLE `color_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1269;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `return_order`
--
ALTER TABLE `return_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `size_master`
--
ALTER TABLE `size_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
