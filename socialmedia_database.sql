-- Database: `socialmedia_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`)
)

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `reaction` enum('Like','Love','Care','Haha','Wow','Sad','Angry') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`)
)

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post` varchar(1000) NOT NULL,
  `post_pic` varchar(1000) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `visibility` enum('Only Me','Friends','Anyone') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
)

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `about` varchar(1000) DEFAULT NULL,
  `ph_no` varchar(20) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profile_pic` varchar(1000) DEFAULT NULL,
  `cover_pic` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
COMMIT;

