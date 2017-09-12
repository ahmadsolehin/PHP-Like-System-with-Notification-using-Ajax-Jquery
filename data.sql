--
-- Database: `testing2`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `user_id`, `description`) VALUES
(1, 2, 'Apple Phone is a best phone ever.'),
(2, 2, 'Google is most visited site all over the world.'),
(3, 1, 'Google is world biggest Internet company.'),
(7, 1, 'Google''s New Street View Cameras Will Help Algorithms Index The Real World'),
(9, 2, 'Youtube new look is very nice for any user');

-- --------------------------------------------------------

--
-- Table structure for table `user_content_like`
--

CREATE TABLE IF NOT EXISTS `user_content_like` (
  `user_content_like_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('not-seen','seen') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_content_like`
--

INSERT INTO `user_content_like` (`user_content_like_id`, `content_id`, `user_id`, `status`) VALUES
(1, 1, 3, 'seen'),
(2, 2, 3, 'seen'),
(3, 2, 4, 'seen'),
(4, 1, 4, 'seen'),
(5, 1, 2, 'seen'),
(6, 2, 2, 'seen'),
(7, 1, 6, 'seen'),
(8, 1, 5, 'seen'),
(9, 2, 5, 'seen'),
(10, 2, 6, 'seen'),
(11, 2, 1, 'seen'),
(12, 1, 1, 'seen'),
(13, 3, 2, 'seen'),
(14, 3, 1, 'seen'),
(15, 4, 1, 'seen'),
(16, 4, 2, 'seen'),
(17, 5, 2, 'seen'),
(18, 8, 1, 'not-seen'),
(19, 7, 1, 'seen'),
(20, 7, 2, 'seen'),
(21, 9, 1, 'seen'),
(22, 9, 2, 'seen');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_type` enum('master','user') NOT NULL,
  `user_image` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_email`, `user_password`, `user_name`, `user_type`, `user_image`) VALUES
(1, 'john_smith@gmail.com', '$2y$10$cHpf3TzonURXDENRiRF0de1ycSfnM4NJ27sdwyUCf5L.sewDlkCBe', 'John Smith', 'master', 'john_smith.jpg'),
(2, 'dona_huber@gmail.com', '$2y$10$lcLYyNeK1adgzYcBplv45uuXHFuFyWYThnj3nB2SZ/LbQvtWSoGjO', 'Dona Huber', 'user', 'dona_huber.jpg'),
(3, 'roy_hise@gmail.com', '$2y$10$XlyVI9an5B6rHW3SS9vQpesJssKJxzMQYPbSaR7dnpWjDI5fpxJSS', 'Roy Hise', 'user', 'roy_hise.jpg'),
(4, 'peter_goad@gmail.com', '$2y$10$n1B.FdHNwufTkmzp/pNqc.EiwjB8quQ1tBCEC7nkaldI5pS.et04e', 'Peter Goad', 'user', 'peter_goad.jpg'),
(5, 'sarah_thomas@gmail.com', '$2y$10$s57SErOPlgkIZf1lxzlX3.hMt8LSSKaYig5rusxghDm7LW8RtQc/W', 'Sarah Thomas', 'user', 'sarah_thomas.jpg'),
(6, 'edna_william@gmail.com', '$2y$10$mfMXnH.TCmg5tlYRhqjxu.ILly8s9.qsLKOpyxgUl6h1fZt6x/B5C', 'Edna William', 'user', 'edna_william.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `user_content_like`
--
ALTER TABLE `user_content_like`
  ADD PRIMARY KEY (`user_content_like_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_content_like`
--
ALTER TABLE `user_content_like`
  MODIFY `user_content_like_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
