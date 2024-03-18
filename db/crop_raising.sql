-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2022 at 12:45 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crop_raising`
--
CREATE DATABASE IF NOT EXISTS `crop_raising` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crop_raising`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_id` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `email_id`, `pwd`) VALUES
(1, 'admin@cropraising.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE IF NOT EXISTS `bill_detail` (
  `bill_id` int(10) NOT NULL,
  `bill_date` date NOT NULL,
  `order_id` int(10) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `farmer_id` int(10) NOT NULL,
  `bill_amount` int(10) NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`bill_id`, `bill_date`, `order_id`, `cart_id`, `farmer_id`, `bill_amount`) VALUES
(1, '2022-03-31', 1, 1, 1, 26500);

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE IF NOT EXISTS `cart_detail` (
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`cart_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 50, 500),
(1, 6, 10, 150),
(2, 2, 10, 200);

-- --------------------------------------------------------

--
-- Table structure for table `cart_master`
--

CREATE TABLE IF NOT EXISTS `cart_master` (
  `cart_id` int(10) NOT NULL,
  `cart_date` date NOT NULL,
  `farmer_id` int(10) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_master`
--

INSERT INTO `cart_master` (`cart_id`, `cart_date`, `farmer_id`) VALUES
(1, '2022-03-31', 1),
(2, '2022-03-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crop_detail`
--

CREATE TABLE IF NOT EXISTS `crop_detail` (
  `crop_id` int(10) NOT NULL,
  `soil_type_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_detail`
--

INSERT INTO `crop_detail` (`crop_id`, `soil_type_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(3, 1),
(3, 2),
(4, 2),
(4, 3),
(5, 2),
(5, 3),
(6, 1),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `crop_master`
--

CREATE TABLE IF NOT EXISTS `crop_master` (
  `crop_id` int(10) NOT NULL,
  `crop_name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `crop_img` varchar(50) NOT NULL,
  `crop_video` varchar(50) NOT NULL,
  PRIMARY KEY (`crop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_master`
--

INSERT INTO `crop_master` (`crop_id`, `crop_name`, `description`, `crop_img`, `crop_video`) VALUES
(1, 'wheat', 'The wheat crop requires a well-pulverized but compact seed bed for good and uniform germination. Three or four ploughings in the summer, repeated harrowing in the rainy season, followed by three or fo', 'crop_img/CI1_3377.png', 'crop_video/CV1_2310.mp4'),
(2, 'Banana', 'Banana, basically a tropical crop, grows well in a temperature range of 15ÂºC â€“ 35ÂºC with relative humidity of 75-85%. It prefers tropical humid lowlands and is grown from the sea level to an eleva', 'crop_img/CI2_6176.png', 'crop_video/CV2_6157.mp4'),
(3, 'Ginger', 'Ginger can be grown both under rain fed and irrigated conditions. For successful cultivation of the crop, a moderate rain fall at sowing time till the rhizomes sprout, fairly heavy and well distribute', 'crop_img/CI3_1641.png', 'crop_video/CV3_4796.mp4'),
(4, 'Tomato', 'Tomato can be grown on a wide range of soils from sandy to heavy clay. However, well-drained, sandy or red loam soils rich in organic matter with a pH range of 6.0-7.0 are considered as ideal. Tomato ', 'crop_img/CI4_7735.png', 'crop_video/CV4_3396.mp4'),
(5, 'Cotton', 'Temperature: 25Â°C is ideal for cotton cultivation. Rainfall: 150 cm to 200 cm rainfall is essential for cotton farming. Moisture in the wind is necessary. Soil: Irrigated cotton should be grown on me', 'crop_img/CI5_3769.png', 'crop_video/CV5_3206.mp4'),
(6, 'Marigold', 'Marigolds require full sun and grow best in well-drained, loamy soil. Prepare flower beds by incorporating organic matter and cultivating the soil to 6 inches deep. For best results, amend the soil pr', 'crop_img/CI6_9635.png', 'crop_video/CV6_7383.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `crop_products`
--

CREATE TABLE IF NOT EXISTS `crop_products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_products`
--

INSERT INTO `crop_products` (`product_id`, `product_name`, `description`, `product_price`, `product_img`) VALUES
(1, 'Vibex Organic Seeds', 'Wheat Grass Seed Type: Herb\r\nOrganic Plant Seed', 500, 'prod_img/PI_8824.png'),
(2, 'Phospho Bacteria Biofertilizer', 'hosphate solubilizing bacteria solubilize the phosphorus in the soil converting them into an organic absorbable form for easy plant consumption.', 200, 'prod_img/PI2_1132.png'),
(3, 'TrustBasket Neem Cake Powder Organic Fertilizer an', 'Neem Powder is used as a soil supplement which enriches the soil and lowers nitrogen loss.', 450, 'prod_img/PI3_2679.png'),
(4, 'Gardenia Organic Manure', 'Gardenia Organic Manure provides the best nutrition for all types of plants and promotes vigorous growth. It is perfectly aged in compost pits before packaging and is plush with nutrients like Nitroge', 750, 'prod_img/PI4_1413.png'),
(5, 'Urea Fertilizer for Plants', 'Urea Fertilizer Urea, also known as carbamide, Urea fertilizer provides nitrogen, which promotes green leafy growth that not only makes your garden look lush\r\n', 300, 'prod_img/PI5_8917.png'),
(6, 'Millet crop seed', 'Organic In Nature for Tenai Model Seeds, Which Are The Best Suitable For Outdoor. Andu Korralu in Telugu, Also Called As Makra ', 150, 'prod_img/PI6_2184.png'),
(7, 'Kraft Seeds Agro Peat', 'Complete nutritional supplement that helps improve soil health for sustainable growth of crop plants', 135, 'prod_img/PI7_4107.png'),
(8, 'Kraft Seeds two in one Spinach and Coriander Impor', 'Package Contents: Spinach and Coriander, 200 seeds each packet', 107, 'prod_img/PI8_9116.png');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_regis`
--

CREATE TABLE IF NOT EXISTS `farmer_regis` (
  `farmer_id` int(10) NOT NULL,
  `farmer_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_regis`
--

INSERT INTO `farmer_regis` (`farmer_id`, `farmer_name`, `address`, `city`, `mobile_no`, `email_id`, `pwd`) VALUES
(1, 'Aayush', 'Halar', 'Valsad', '9876543210', 'aayush@yahoo.com', '111111');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(10) NOT NULL,
  `feedback_date` date NOT NULL,
  `farmer_id` int(10) NOT NULL,
  `feedback_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_date`, `farmer_id`, `feedback_desc`) VALUES
(1, '2022-03-28', 1, 'Please Provide Rice Detail');

-- --------------------------------------------------------

--
-- Table structure for table `location_master`
--

CREATE TABLE IF NOT EXISTS `location_master` (
  `loc_id` int(10) NOT NULL,
  `loc_name` varchar(50) NOT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_master`
--

INSERT INTO `location_master` (`loc_id`, `loc_name`) VALUES
(1, 'VALSAD'),
(2, 'VAPI'),
(3, 'BHARUCH'),
(4, 'KUTUCH'),
(5, 'PATAN');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_id` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `cart_id` int(10) NOT NULL,
  `farmer_id` int(10) NOT NULL,
  `delivery_address` varchar(200) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `total_amount` int(10) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `order_date`, `cart_id`, `farmer_id`, `delivery_address`, `mobile_no`, `total_amount`) VALUES
(1, '2022-03-31', 1, 1, 'tithal road valsad', '9876543100', 26500),
(2, '2022-03-31', 2, 1, 'halar valsad', '9876543210', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `soil_type_detail`
--

CREATE TABLE IF NOT EXISTS `soil_type_detail` (
  `soil_type_id` int(10) NOT NULL,
  `loc_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soil_type_detail`
--

INSERT INTO `soil_type_detail` (`soil_type_id`, `loc_id`) VALUES
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `soil_type_master`
--

CREATE TABLE IF NOT EXISTS `soil_type_master` (
  `soil_type_id` int(10) NOT NULL,
  `soil_name` varchar(50) NOT NULL,
  `description` varchar(2000) NOT NULL,
  PRIMARY KEY (`soil_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soil_type_master`
--

INSERT INTO `soil_type_master` (`soil_type_id`, `soil_name`, `description`) VALUES
(1, 'Sandy Soil', 'Suitable Crops: Sandy soil is not good for plants. However, melon and coconut grow in sandy soil. If water is available for irrigation then crops such as maize, millets, barley can be grown in desert soil. Cactus also grows in this soil.'),
(2, 'Clayey Soil', 'Suitable Crops: It is also not good for many plants. It is only good for crops like paddy, which require a lot of water. Clay is used for making toys, pots, and many other purposes.'),
(3, 'Loamy Soil', 'Suitable Crops: Loamy soil is ideal for growing crops such as wheat, sugarcane, cotton, jute, pulses, and oilseeds. Vegetables also grow well in this soil.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
