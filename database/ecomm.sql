-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2024 at 11:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 13, 1),
(32, 15, 31, 1),
(44, 27, 30, 3),
(45, 27, 67, 1),
(46, 27, 53, 1),
(48, 19, 50, 1),
(49, 19, 56, 1),
(50, 37, 40, 1),
(52, 38, 43, 1),
(53, 38, 44, 1),
(62, 39, 30, 1),
(63, 39, 53, 1),
(64, 39, 60, 1),
(65, 40, 68, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(2, 'Full Helmets', 'full-helmet'),
(5, 'Half Helmets ', 'Half-helmet'),
(8, 'Dirt Helmets', 'dirt-helmet');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `sno` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`sno`, `name`, `phone`, `address`, `email`, `product`, `method`, `photo`, `price`, `quantity`, `total`, `id`, `pid`, `status`, `date`) VALUES
(34, 'admin', '2234234', 'nakipot', 'email@gmail.com', 'Bell moto 9 ', 'CashOnDelivery', 'bell-moto-9.png', '2500', '1', '2500', '<br />\r\n<b>Warning</b>:  Undefined variable $user in <b>C:xampphtdocshelmetEcommerce Site PHPecommercecart_view.php</b> on line <b>183</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocshelmetEcommer', '<br />\r\n<b>Warning</b>:  Undefined variable $p_id in <b>C:xampphtdocshelmetEcommerce Site PHPecommercecart_view.php</b> on line <b>184</b><br />\r\n', '', '2022-08-03'),
(36, 'Britania', '982024128', 'Satobato', 'britania@gmail.com', 'Steelbird SBH-17 Terminator ', 'CashOnDelivery', 'studds.jpeg', '3000', '2', '6000', '<br />\r\n<b>Warning</b>:  Undefined variable $user in <b>C:xampphtdocshelmetEcommerce Site PHPecommercecart_view.php</b> on line <b>183</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocshelmetEcommer', '<br />\r\n<b>Warning</b>:  Undefined variable $p_id in <b>C:xampphtdocshelmetEcommerce Site PHPecommercecart_view.php</b> on line <b>184</b><br />\r\n', 'Successful', '2022-06-03'),
(37, 'Tokyu Maharjan', '9841235548', 'gwarko', 'email@gmail.com', 'Axor Jet-Red ', 'CashOnDelivery', 'axor-jet-red.gif', '1500', '3', '4500', '<br />\r\n<b>Warning</b>:  Undefined variable $user in <b>C:xampphtdocshelmetEcommerce Site PHPecommercecart_view.php</b> on line <b>183</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocshelmetEcommer', '<br />\r\n<b>Warning</b>:  Undefined variable $p_id in <b>C:xampphtdocshelmetEcommerce Site PHPecommercecart_view.php</b> on line <b>184</b><br />\r\n', 'Successful', '2022-01-03'),
(53, 'satish', '989888888', 'koteswor', 'playboysdons.47@gmail.com', 'Steelbird SBH-17 Terminator ', 'Cash On Delivery', 'studds.jpeg', '3000', '1', '3000', '27', '30', '', '2024-03-09'),
(54, 'sagar khadka', '22222222222', 'bhakatpur', 'haker.boyyy@gmail.com', 'Power UK ', 'Cash On Delivery', 'power-uk.jpg', '9600', '1', '30100', '27', '53', '', '2024-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 2, 'Steelbird SBH-17 Terminator', '<ul>\r\n	<li>ISI Cerified Graphics Helmet. High Impact Resistant Thermoplastic shell</li>\r\n	<li>Breathable Pedding with Neck Protector and Extra Comfort for long Drives. Italian Design Hygienic Interior with Multi pore for better Ventilation During Hot Weather.</li>\r\n	<li>Quick Release Micro Metric Buckle &amp; Quick release visor change mechanism</li>\r\n	<li>Comes with automatic visor, Qick release button mechanism for visor opening</li>\r\n</ul>\r\n', 'steelbird-sbh-17-terminator', 300, 'studds.jpeg', '2024-04-09', 3),
(31, 2, 'Steelbird SBA-1 CESAR', '<ul>\r\n	<li>Micro-Metric Buckle meeting European Standards.</li>\r\n	<li>Multi-Layer Eps (Thermocol) High Density And Low Density For More Safety With Air Channels</li>\r\n	<li>Anti Scratch Coated Visor Quick Release Visor mechanism Kit.</li>\r\n</ul>\r\n', 'steelbird-sba-1-cesar', 350, 'steelbird-sba-1-cesar.jpeg', '2024-03-13', 1),
(40, 2, 'ADONIS Majestic (M. H. Gray Red)', '<ul>\r\n	<li>Quick release chinstrap mechanism for ease of operation and safety</li>\r\n	<li>High quality UV resistant Polyurethane paints used for aesthetic enhancement</li>\r\n	<li>Dynamic ventilation system for increased air flow providing more comfort to the rider while driving</li>\r\n</ul>\r\n', 'adonis-majestic-m-h-gray-red', 200, 'adonis-majestic-m-h-gray-red.jpg', '2024-03-13', 2),
(41, 2, 'Axor Apex Venomous – Black Grey', '<ul>\r\n	<li>Dual Certified &ndash; ECE R-22.05 &amp; DOT FMVSS 218</li>\r\n	<li>Internal Sun Visor</li>\r\n	<li>Anti Allergic and wicking internal fabrics</li>\r\n	<li>Rear Removable spoiler attachment.</li>\r\n	<li>Removable and Washable Lining</li>\r\n</ul>\r\n', 'axor-apex-venomous-black-grey', 100, 'axor-apex-venomous-black-grey.jpg', '0000-00-00', 0),
(43, 2, 'Axor Apex Hunter', '<ul>\r\n	<li>Dual Certified &ndash; ECE R-22.05 &amp; DOT FMVSS 218</li>\r\n	<li>Internal Sun Visor</li>\r\n	<li>Anti Allergic and wicking internal fabrics</li>\r\n	<li>Rear Removable spoiler attachment.</li>\r\n</ul>\r\n', 'axor-apex-hunter', 50, 'axor-apex-hunter.jpg', '2024-03-13', 1),
(44, 2, 'AGV K-1 MIR 2018', '<ul>\r\n	<li>Homologation: ECE 2205.</li>\r\n	<li>HIR-TH (High Resistance Thermoplastic Resin) shell construction.</li>\r\n	<li>2 shell sizes, 4 EPS sizes.</li>\r\n	<li>Integrated Ventilation System (IVS) was designed and optimized in a wind tunnel.</li>\r\n</ul>\r\n', 'agv-k-1-mir-2018', 100, 'agv-k-1-mir-2018.jpg', '2024-03-13', 3),
(45, 2, 'Bell Qualifier DLX', '<ul>\r\n	<li>Lightweight Polycarbonate/ABS Shell Construction</li>\r\n	<li>Helmet no longer includes an integrated communications port for Sena or Cardo Bluetooth stereo communications.</li>\r\n	<li>Velocity flow ventilation system with Flowadjust</li>\r\n</ul>\r\n', 'bell-qualifier-dlx', 100, 'bell-qualifier-dlx.jpg', '0000-00-00', 0),
(46, 2, 'Bilmola Defender- Rat', '<ul>\r\n	<li>Shell Material: Shock Resistant Thermoplastic (SRT)</li>\r\n	<li>Cushion Material: Expanded Polystyrene.</li>\r\n	<li>Interior Liner: Active Air.</li>\r\n</ul>\r\n', 'bilmola-defender-rat', 600, 'bilmola-defender-rat.jpg', '0000-00-00', 0),
(47, 2, 'SMK Twister Cartoon', '<ul>\r\n	<li>Inner: breathable, hypoallergenic liners, fully removable and washable.</li>\r\n	<li>Removable lower wind stop and nose guard.</li>\r\n	<li>Ventilation: all air-vents are adjustable.</li>\r\n</ul>\r\n', 'smk-twister-cartoon', 900, 'smk-twister-cartoon.jpg', '0000-00-00', 0),
(48, 2, 'LS2 Arrow C', '<ul>\r\n	<li>Certified ECE 22.05</li>\r\n	<li>Removable and Washable Comfort Liner</li>\r\n	<li>Breathable</li>\r\n	<li>Hypoallergenic</li>\r\n</ul>\r\n', 'ls2-arrow-c', 325, 'ls2-arrow-c.jpg', '0000-00-00', 0),
(49, 2, 'LS2 Breaker', '<ul>\r\n	<li>Certified ECE 22.05</li>\r\n	<li>Removable &amp; Washable</li>\r\n	<li>Breathable</li>\r\n	<li>Hypoallergenic</li>\r\n</ul>\r\n', 'ls2-breaker', 137, 'ls2-breaker.jpg', '0000-00-00', 0),
(50, 5, 'Axor Jet Army Green', '<ul>\r\n	<li>Homologation- DOT FMVSS NO. 218 (USA)</li>\r\n	<li>Anti Allergic and wicking internal fabrics</li>\r\n	<li>Fibre Glass Shell</li>\r\n	<li>Leather finished interiors</li>\r\n</ul>\r\n', 'axor-jet-army-green', 500, 'axor-jet-army-green.webp', '2024-03-12', 1),
(52, 5, 'Vega Verve', '<ul>\r\n	<li>High Impact ABS Material Shell</li>\r\n	<li>ISI Certified with IS no.: IS 4151:2015 and CM/L no.: 1650145</li>\r\n	<li>Removable and washable lining, it is also odor resistant helping the helmet stay fresher, longer in between cleaning</li>\r\n</ul>\r\n', 'vega-verve', 777, 'vega-verve.webp', '2024-04-09', 1),
(53, 5, 'Power UK', '<ul>\r\n	<li>Scratch Resistance:The helmet surface is electroplated with metallic chrome finish for aesthetics and durability;</li>\r\n	<li>Peak: Aerodynamically designed Peak made from durable ABS.</li>\r\n	<li>Goggle holder with a press button lock at the back for goggle band locking</li>\r\n</ul>\r\n', 'power-uk', 960, 'power-uk.jpg', '2024-04-09', 1),
(54, 5, 'Nikko N356 1974', '<ul>\r\n	<li>Regulated Density EPS: Provides maximum all-round head protection during any unfortunate impact.</li>\r\n	<li>Quick Release Chin-Strap: This makes it convenient for the rider to wear and take off the helmet with ease.</li>\r\n</ul>\r\n', 'nikko-n356-1974', 65, 'nikko-n356-1974.png', '2024-03-13', 1),
(55, 5, 'Axor Jet Gloss Black', '<ul>\r\n	<li>Homologation- DOT FMVSS NO. 218 (USA)</li>\r\n	<li>Anti Allergic and wicking internal fabrics</li>\r\n	<li>Fibre Glass Shell</li>\r\n	<li>Leather finished interiors</li>\r\n</ul>\r\n', 'axor-jet-gloss-black', 200, 'axor-jet-gloss-black.jpg', '0000-00-00', 0),
(56, 5, 'Axor Jet Grey', '<ul>\r\n	<li>Homologation- DOT FMVSS NO. 218 (USA)</li>\r\n	<li>Anti Allergic and wicking internal fabrics</li>\r\n	<li>Fibre Glass Shell</li>\r\n</ul>\r\n', 'axor-jet-grey', 60, 'axor-jet-grey.jpg', '2024-03-12', 1),
(57, 5, 'CRUZE (M. Black)', '<ul>\r\n	<li>ype: Open face</li>\r\n	<li>Size: 580 mm</li>\r\n	<li>Color: Black</li>\r\n	<li>Surface: Matte</li>\r\n	<li>Visor: Smoke</li>\r\n</ul>\r\n', 'cruze-m-black', 200, 'cruze-m-black.jpg', '0000-00-00', 0),
(58, 5, 'Ryno Treon Mono ', '<ul>\r\n	<li>Double Visor</li>\r\n	<li>ISO Certified</li>\r\n	<li>Light weight</li>\r\n	<li>Light ABS Shell</li>\r\n</ul>\r\n', 'ryno-treon-mono', 320, 'ryno-treon-mono.jpg', '0000-00-00', 0),
(59, 5, 'Studds Icon – Gloss Cherry Red', '<ul>\r\n	<li><strong>Dynamic ventilation system</strong></li>\r\n	<li><strong>Replaceable liner</strong></li>\r\n	<li><strong>Quick release visor</strong></li>\r\n</ul>\r\n', 'studds-icon-gloss-cherry-red', 250, 'studds-icon-gloss-cherry-red.png', '0000-00-00', 0),
(60, 8, 'Airoh Twist 2.0 – Neon Yellow', '<ul>\r\n	<li>cross style</li>\r\n	<li>thermoplastic shell</li>\r\n	<li>adjustable peak with extension</li>\r\n</ul>\r\n', 'airoh-twist-2-0-neon-yellow', 150, 'airoh-twist-2-0-neon-yellow.jpg', '2024-04-09', 1),
(61, 8, 'Nikko N603 Fuss', '<ul>\r\n	<li>Wide aperture for increased rider view.</li>\r\n	<li>Twist lock peak screw fitting.</li>\r\n	<li>Micrometric buckle for ultimate adjustability and perfect tension.</li>\r\n</ul>\r\n', 'nikko-n603-fuss', 155, 'nikko-n603-fuss.png', '0000-00-00', 0),
(62, 8, 'Nitro MX620', '<ul>\r\n	<li>Latest ECE 22.05 standard compliant.</li>\r\n	<li>ACU gold standard approved.</li>\r\n	<li>MPT (multi poly tech) constructed MX shell.</li>\r\n</ul>\r\n', 'nitro-mx620', 148, 'nitro-mx620.webp', '0000-00-00', 0),
(63, 8, 'Nitro MX670 Pioneer', '<ul>\r\n	<li>ACU gold standard approved.</li>\r\n	<li>MPT (multi poly tech) constructed MX shell.</li>\r\n	<li>Ultra comfort fit washable and removable liner system.</li>\r\n</ul>\r\n', 'nitro-mx670-pioneer', 182, 'nitro-mx670-pioneer.jpg', '0000-00-00', 0),
(64, 8, 'Nitro MX670 Pioneer White', '<ul>\r\n	<li>Ultra comfort fit washable and removable liner system.</li>\r\n	<li>Large chin and quad exhaust ventilation port system to increase. airflow within the helmet.</li>\r\n	<li>Wide aperture for increased rider view.</li>\r\n</ul>\r\n', 'nitro-mx670-pioneer-white', 125, 'nitro-mx670-pioneer-white.jpg', '0000-00-00', 0),
(65, 8, 'Shell Dirt UFO (Black Red)', '<ul>\r\n	<li>Shell: high quality ABS SHELL, and resistance to penetrate, impact resistance</li>\r\n	<li>Buffer layer: high-density EPS foam Lined</li>\r\n	<li>Lining: high-grade COOLMAX, deodorant, absorb sweat,easy to unpick and Washable</li>\r\n</ul>\r\n', 'shell-dirt-ufo-black-red', 420, 'shell-dirt-ufo-black-red.jpg', '0000-00-00', 0),
(66, 8, 'Shell Dirt UFO (Blue White)', '<ul>\r\n	<li>Shell: high quality ABS SHELL, and resistance to penetrate, impact resistance</li>\r\n	<li>Buffer layer: high-density EPS foam Lined</li>\r\n	<li>Lining: high-grade COOLMAX, deodorant, absorb sweat,easy to unpick and Washable</li>\r\n</ul>\r\n', 'shell-dirt-ufo-blue-white', 400, 'shell-dirt-ufo-blue-white.jpg', '0000-00-00', 0),
(67, 8, 'Soman Dirt- Matt Orange Neon', '<ul>\r\n	<li>Brand: SOMAN</li>\r\n	<li>Model: M8 Motocross Helmet</li>\r\n	<li>Approved: DOT,ECE,GB</li>\r\n	<li>Net Weight: 1400&plusmn;50g</li>\r\n</ul>\r\n', 'soman-dirt-matt-orange-neon', 115, 'soman-dirt-matt-orange-neon.jpg', '2024-03-09', 1),
(68, 8, 'Soman Dirt- Matt Black ', '<ul>\r\n	<li>Brand: SOMAN</li>\r\n	<li>Model: M8 Motocross Helmet</li>\r\n	<li>Approved: DOT,ECE,GB</li>\r\n	<li>Net Weight: 1400&plusmn;50g</li>\r\n</ul>\r\n', 'soman-dirt-matt-black', 105, 'soman-dirt-matt-black.webp', '2024-10-20', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', '', '', '', 'jungk.jpg', 1, '', '', '2018-05-01'),
(22, 'sasa@gmail.com', '$2y$10$0BgAtwzWS3OvLXSbaTK7M.6hSB.IW7LsQaFjzOlclksntVjrmRt1W', 0, 'sasas', 'sasa', '', '', '', 0, 'JVoig5RGN6ea', '', '2024-03-09'),
(23, 'sas1212a@gmail.com', '$2y$10$89s3VhhdAc3WqKNM8wkeYepO0yopPktGju5vcVM0Tvi.qCRwBrWZW', 0, 'sasas', 'sasa', '', '', '', 0, '8eJv29ifFdZ1', '', '2024-03-09'),
(25, 'sas1asasa2a@gmail.com', '$2y$10$sJgFWLRXl5HOlMhGndOXouCcuYN8krqIudFDIxAnRe/mPd7ymgBI.', 0, 'sasas', 'sasa', '', '', '', 0, '9QjLEXWCkd1U', '', '2024-03-09'),
(34, 'kathford@gmail.com', '$2y$10$JL2GrTcBLAhvtmThxJP7fe5J3SePkOUWci/tyqI2xUzwwP.WW5u8K', 0, 'lala', 'aaa', '', '', '', 0, 'dXkYtZrj6Fbn', '', '2024-03-13'),
(39, 'satish.karki.330@gmail.com', '$2y$10$u/hYxtOYabfFdQmbDC83S.it3.jUM7ubq1fOfPIQSJjrZWSLbb85y', 0, 'satish', 'karki', '', '', '', 1, '4DHMjdgmlQNZ', '', '2024-03-13'),
(40, 'sa@gmail.com', '$2y$10$CErXjE3hsrb4MdYjoN.Q9.QblDJ.FV/XjEiHFZAaOetmJwjwr81CW', 0, 'hhhh', 'hhh', '', '', '', 1, 'qf9OWrJhjQmk', '', '2024-10-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
