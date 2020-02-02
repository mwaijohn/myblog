-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2019 at 05:13 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Business'),
(2, 'Technology'),
(3, 'Health'),
(4, 'Startaups'),
(5, 'Web developement'),
(6, 'Mathew Clerk'),
(7, 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `post_id`, `user_id`, `created_at`) VALUES
(2, 'Business', 'mwaijohng@gmail.com', 'yytwyewy weywty', 0, 0, '2019-12-21 14:16:16'),
(3, 'Business', 'mwaijohng@gmail.com', 'ssdda', 20, 0, '2019-12-21 14:17:30'),
(4, 'Business', 'mwaijohng@gmail.com', '', 11, 0, '2019-12-21 14:18:41'),
(5, 'James Mugo', 'mwaijohng@gmail.com', 'fgfffggggfgfgfgfgfgfgfgf', 20, 0, '2019-12-21 14:50:38'),
(6, 'James Mugo', 'mwaijohng@gmail.com', 'sdd ', 20, 0, '2019-12-21 14:55:08'),
(7, 'James Mugo', 'mwaijohng@gmail.com', 'trtrtrtrt', 20, 0, '2019-12-21 14:58:36'),
(8, 'Business', 'mwaijohng@gmail.com', '45454', 20, 0, '2019-12-21 14:59:16'),
(9, 'James Mugo', 'mwaijohng@gmail.com', 'trrrererer', 20, 0, '2019-12-21 14:59:51'),
(10, 'Health', 'shareapidevs@gmail.com', 'bffgfg', 10, 0, '2019-12-23 08:48:06'),
(11, 'matwana', 'matwana@gmail.com', 'theherpoioc bhsxh xhghs hshsghgs hssghgss\r\nsjhshgs shgshgsh shgxhsghs hgxhsgxs sxhgshsgx shxshgxshgx  hsgxhsgxsh hsgxhsg hsghsgh hgxhsghx shxghgxhsgx  xgygsyyyh shghxgshx sxhsghsg shghsgh hghsghs bshsghs xgags asvhsg avgashasg ahsaghah axagygasbvabagasaga', 10, 0, '2019-12-23 08:49:07'),
(12, '', '', '', 21, 0, '2019-12-23 08:54:22'),
(13, 'Health', 'mwaijohng@gmail.com', 'hgh', 9, 0, '2019-12-23 10:10:49'),
(14, 'James Mugo', 'mwaijohng@gmail.com', 'nbvhghg', 19, 0, '2019-12-23 11:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(9, 1, 0, 'Common neutral point in fooftbal 34', 'Common-neutral-point-in-fooftbal-34', '                          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odio voluptatibus error ratione officiis ea eaque tempore reiciendis iusto est, corrupti ullam provident autem ipsum enim at quos quam tenetur accusantium.\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus eveniet vero, quis temporibus animi explicabo in ratione doloremque! Aliquid consequuntur voluptate labore quaerat libero sint adipisci corporis sunt. Voluptatibus, suscipit!\r\nQuo optio perferendis quia voluptatem eius assumenda asperiores nemo, tenetur, debitis maxime ipsam dolorum in alias, aut modi est nesciunt qui eum consequatur ipsa? Officiis quam similique nisi totam autem.\r\nIn adipisci debitis accusantium sapiente repellendus accusamus dolorum, dolorem, facere iste quisquam culpa earum corrupti natus quibusdam dolor ea dolore beatae placeat, fuga qui. Nesciunt dolorem saepe perferendis voluptatum aperiam.\r\nMinus voluptas nostrum ipsam eaque architecto tenetur necessitatibus facilis, et natus omnis? Tempore expedita deleniti, vitae cumque, illo pariatur saepe neque, praesentium enim nihil reprehenderit veniam optio necessitatibus totam ipsam!\r\nFacilis quae laudantium facere incidunt, enim fugit reiciendis ullam sit, exercitationem voluptatem ad aspernatur reprehenderit voluptas pariatur explicabo repellat tenetur maiores, delectus ut impedit numquam odio nobis error. Quaerat, suscipit!\r\nIncidunt iste eaque voluptatibus asperiores doloremque tenetur aut, perferendis nemo quia consequatur quas mollitia fuga ad optio eveniet veritatis earum voluptate possimus, consequuntur laborum in ullam magnam corrupti vel! Minus.\r\nNobis, distinctio quis? Accusamus impedit eaque tenetur sunt doloremque cupiditate illum? Dicta velit omnis porro doloremque, veniam deleniti quas provident voluptatum eum, nostrum, voluptatibus quidem. Ex repudiandae accusantium obcaecati omnis.\r\nNisi, beatae! Sunt eaque laborum voluptatum nisi nihil repudiandae beatae aut. Quidem hic consectetur provident fugit ex eum illum repudiandae tempora, debitis minus laudantium dignissimos quam vitae pariatur nesciunt delectus?\r\nAb fugit doloremque minus magni eos obcaecati id voluptas? Facere enim, obcaecati doloremque ullam adipisci accusamus aut dicta. Distinctio quibusdam incidunt mollitia itaque delectus tempore aperiam totam provident eveniet quam?\r\nEst exercitationem magnam fugiat sunt vel amet quo delectus perspiciatis debitis, rerum, impedit voluptates ipsam nesciunt aspernatur officiis ipsa iure veritatis molestias cum culpa eos doloremque, saepe obcaecati deserunt. Nihil.                ', '', '2019-12-19 19:38:22'),
(10, 2, 0, 'This the funniest mooment', 'This-the-funniest-mooment', '             Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odio voluptatibus error ratione officiis ea eaque tempore reiciendis iusto est, corrupti ullam provident autem ipsum enim at quos quam tenetur accusantium.\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus eveniet vero, quis temporibus animi explicabo in ratione doloremque! Aliquid consequuntur voluptate labore quaerat libero sint adipisci corporis sunt. Voluptatibus, suscipit!\r\nQuo optio perferendis quia voluptatem eius assumenda asperiores nemo, tenetur, debitis maxime ipsam dolorum in alias, aut modi est nesciunt qui eum consequatur ipsa? Officiis quam similique nisi totam autem.\r\nIn adipisci debitis accusantium sapiente repellendus accusamus dolorum, dolorem, facere iste quisquam culpa earum corrupti natus quibusdam dolor ea dolore beatae placeat, fuga qui. Nesciunt dolorem saepe perferendis voluptatum aperiam.\r\nMinus voluptas nostrum ipsam eaque architecto tenetur necessitatibus facilis, et natus omnis? Tempore expedita deleniti, vitae cumque, illo pariatur saepe neque, praesentium enim nihil reprehenderit veniam optio necessitatibus totam ipsam!\r\nFacilis quae laudantium facere incidunt, enim fugit reiciendis ullam sit, exercitationem voluptatem ad aspernatur reprehenderit voluptas pariatur explicabo repellat tenetur maiores, delectus ut impedit numquam odio nobis error. Quaerat, suscipit!\r\nIncidunt iste eaque voluptatibus asperiores doloremque tenetur aut, perferendis nemo quia consequatur quas mollitia fuga ad optio eveniet veritatis earum voluptate possimus, consequuntur laborum in ullam magnam corrupti vel! Minus.\r\nNobis, distinctio quis? Accusamus impedit eaque tenetur sunt doloremque cupiditate illum? Dicta velit omnis porro doloremque, veniam deleniti quas provident voluptatum eum, nostrum, voluptatibus quidem. Ex repudiandae accusantium obcaecati omnis.\r\nNisi, beatae! Sunt eaque laborum voluptatum nisi nihil repudiandae beatae aut. Quidem hic consectetur provident fugit ex eum illum repudiandae tempora, debitis minus laudantium dignissimos quam vitae pariatur nesciunt delectus?\r\nAb fugit doloremque minus magni eos obcaecati id voluptas? Facere enim, obcaecati doloremque ullam adipisci accusamus aut dicta. Distinctio quibusdam incidunt mollitia itaque delectus tempore aperiam totam provident eveniet quam?\r\nEst exercitationem magnam fugiat sunt vel amet quo delectus perspiciatis debitis, rerum, impedit voluptates ipsam nesciunt aspernatur officiis ipsa iure veritatis molestias cum culpa eos doloremque, saepe obcaecati deserunt. Nihil.        ', '', '2019-12-19 19:38:36'),
(11, 4, 0, 'Economists are rational', 'Economists-are-rational', '                          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odio voluptatibus error ratione officiis ea eaque tempore reiciendis iusto est, corrupti ullam provident autem ipsum enim at quos quam tenetur accusantium.\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus eveniet vero, quis temporibus animi explicabo in ratione doloremque! Aliquid consequuntur voluptate labore quaerat libero sint adipisci corporis sunt. Voluptatibus, suscipit!\r\nQuo optio perferendis quia voluptatem eius assumenda asperiores nemo, tenetur, debitis maxime ipsam dolorum in alias, aut modi est nesciunt qui eum consequatur ipsa? Officiis quam similique nisi totam autem.\r\nIn adipisci debitis accusantium sapiente repellendus accusamus dolorum, dolorem, facere iste quisquam culpa earum corrupti natus quibusdam dolor ea dolore beatae placeat, fuga qui. Nesciunt dolorem saepe perferendis voluptatum aperiam.\r\nMinus voluptas nostrum ipsam eaque architecto tenetur necessitatibus facilis, et natus omnis? Tempore expedita deleniti, vitae cumque, illo pariatur saepe neque, praesentium enim nihil reprehenderit veniam optio necessitatibus totam ipsam!\r\nFacilis quae laudantium facere incidunt, enim fugit reiciendis ullam sit, exercitationem voluptatem ad aspernatur reprehenderit voluptas pariatur explicabo repellat tenetur maiores, delectus ut impedit numquam odio nobis error. Quaerat, suscipit!\r\nIncidunt iste eaque voluptatibus asperiores doloremque tenetur aut, perferendis nemo quia consequatur quas mollitia fuga ad optio eveniet veritatis earum voluptate possimus, consequuntur laborum in ullam magnam corrupti vel! Minus.\r\nNobis, distinctio quis? Accusamus impedit eaque tenetur sunt doloremque cupiditate illum? Dicta velit omnis porro doloremque, veniam deleniti quas provident voluptatum eum, nostrum, voluptatibus quidem. Ex repudiandae accusantium obcaecati omnis.\r\nNisi, beatae! Sunt eaque laborum voluptatum nisi nihil repudiandae beatae aut. Quidem hic consectetur provident fugit ex eum illum repudiandae tempora, debitis minus laudantium dignissimos quam vitae pariatur nesciunt delectus?\r\nAb fugit doloremque minus magni eos obcaecati id voluptas? Facere enim, obcaecati doloremque ullam adipisci accusamus aut dicta. Distinctio quibusdam incidunt mollitia itaque delectus tempore aperiam totam provident eveniet quam?\r\nEst exercitationem magnam fugiat sunt vel amet quo delectus perspiciatis debitis, rerum, impedit voluptates ipsam nesciunt aspernatur officiis ipsa iure veritatis molestias cum culpa eos doloremque, saepe obcaecati deserunt. Nihil.                ', '', '2019-12-19 19:38:50'),
(19, 5, 0, 'Thursday motivation', 'Thursday-motivation', '\r\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Qui ullam, odit alias hic officia quas accusamus amet atque perspiciatis expedita nesciunt molestiae voluptas rem id dolore iusto quisquam provident eius?\r\nAccusantium illum asperiores qui nisi provident corporis vero reprehenderit quidem ratione voluptas natus, at quae vel inventore labore numquam pariatur consequuntur voluptatibus minima amet omnis ipsa eveniet repellendus excepturi? Aut.\r\nTempora quod illo commodi excepturi natus necessitatibus deleniti totam corporis saepe modi pariatur earum facilis non maxime, distinctio ullam accusamus quisquam? Porro ipsa autem ipsum ex quo officiis veritatis iste.', '', '2019-12-21 05:29:00'),
(20, 2, 0, 'Common neutral point in fooftbal', 'Common-neutral-point-in-fooftbal', '             Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus quam aliquam dignissimos ipsa temporibus, nam quis provident itaque laboriosam nesciunt quasi sint odit voluptate perferendis veritatis pariatur saepe cum! Culpa.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus quam aliquam dignissimos ipsa temporibus, nam quis provident itaque laboriosam nesciunt quasi sint odit voluptate perferendis veritatis pariatur saepe cum! Culpa.        ', '', '2019-12-21 13:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `is_admin`, `password`, `register_date`) VALUES
(1, 'MAria Ocansia', '2541', 'shareapidevs@gmail.com', 'johntemwai', 1, '202cb962ac59075b964b07152d234b70', '2019-12-20 12:15:08'),
(2, 'Mathew Clerk', '254', 'mathewrclerk@gmail.com', 'mathewclerk', 0, '202cb962ac59075b964b07152d234b70', '2019-12-20 13:26:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
