-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 06 2018 г., 21:05
-- Версия сервера: 10.1.36-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `weight`) VALUES
(1, 'Category1', 10),
(2, 'Category2', 15),
(3, 'Category3', 90);

-- --------------------------------------------------------

--
-- Структура таблицы `cat_post`
--

CREATE TABLE `cat_post` (
  `post_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `cat_post`
--

INSERT INTO `cat_post` (`post_id`, `cat_id`) VALUES
(1, 3),
(2, 1),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `theme` text NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `range_plus` int(11) NOT NULL,
  `range_min` int(11) NOT NULL,
  `mod_check` tinyint(1) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `theme`, `text`, `date`, `range_plus`, `range_min`, `mod_check`, `post_id`, `user_id`) VALUES
(1, 'Eror', 'Eror in text', '2012-09-13', 15, 8, 1, 3, 1),
(3, 'rttr', 'vdfgdfgfgfgfg', '2015-09-13', 44, 2, 0, 2, 2),
(4, 'Eror', 'Eror in text', '2012-09-13', 15, 8, 1, 1, 1),
(5, 'Eror', 'Eror in text', '2012-09-13', 15, 8, 1, 4, 5),
(6, 'rttr', 'vdfgdfgfgfgfg', '2015-09-13', 44, 2, 0, 5, 4),
(7, 'Eror', 'Eror in text', '2012-09-13', 15, 8, 1, 6, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `headline` text NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `headline`, `text`, `date`, `link`) VALUES
(1, 'headline 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-01', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(2, 'headline 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-02', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(3, 'headline 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-03', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(4, 'headline 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-04', 'http://www.real.com/resources/wp-content/uploads/2012/11/online-news2.jpg'),
(5, 'headline 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-05', 'http://www.uexams.com/wp-content/uploads/2018/06/news.jpg'),
(6, 'headline 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-05', 'http://www.uexams.com/wp-content/uploads/2018/06/news.jpg'),
(7, 'headline 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-01', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(8, 'headline 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-02', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(9, 'headline 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-03', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(10, 'headline 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-04', 'http://www.real.com/resources/wp-content/uploads/2012/11/online-news2.jpg'),
(11, 'headline 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-05', 'http://www.uexams.com/wp-content/uploads/2018/06/news.jpg'),
(12, 'headline 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-05', 'http://www.uexams.com/wp-content/uploads/2018/06/news.jpg'),
(13, 'headline 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-03', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(14, 'headline 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-04', 'http://www.real.com/resources/wp-content/uploads/2012/11/online-news2.jpg'),
(15, 'headline 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-05', 'http://www.uexams.com/wp-content/uploads/2018/06/news.jpg'),
(16, 'headline 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-05', 'http://www.uexams.com/wp-content/uploads/2018/06/news.jpg'),
(17, 'headline 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-01', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(18, 'headline 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-02', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(19, 'headline 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-03', 'http://actual.today/wp-content/uploads/2018/05/4fab3c35ed69dfb56e34b4c04e53a9cf2.jpg'),
(20, 'headline 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur tellus eu malesuada pharetra. Praesent ac iaculis nunc, a gravida felis. Praesent pretium commodo odio, vitae aliquet dui rhoncus sed. Phasellus dignissim risus non porttitor fringilla. Phasellus elementum facilisis iaculis. In facilisis et magna ut pellentesque. Nullam auctor scelerisque tellus quis gravida. Sed lacinia, justo id hendrerit rhoncus, nibh ex eleifend turpis, feugiat pharetra ligula odio eu nulla. Nulla eget est a justo mattis varius et a metus. Donec porttitor maximus metus, a posuere ipsum ultrices id. Integer non augue congue, porttitor odio sit amet, pellentesque velit.\r\n\r\nNam vitae tortor vel sapien consequat feugiat ut nec sapien. Cras eu felis mauris. Mauris vel massa nec sapien venenatis dapibus vitae fermentum lacus. Curabitur enim dui, dictum quis ante vel, venenatis dictum massa. Sed efficitur porttitor turpis. Quisque dignissim quis arcu ut laoreet. Fusce malesuada mattis erat, sed convallis magna molestie ac. Vestibulum mi orci, porttitor vehicula accumsan nec, vulputate vel nibh. Duis mattis erat quam, quis feugiat ligula suscipit eget. Donec faucibus, nisi et pretium blandit, lectus nisl tristique augue, in cursus urna odio in velit. Etiam sodales elit faucibus erat dictum fermentum volutpat at orci. Etiam dapibus risus sed magna consectetur, quis vestibulum magna ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ligula neque, tempor ut enim eget, pretium mollis mauris.', '2013-12-04', 'http://www.real.com/resources/wp-content/uploads/2012/11/online-news2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'tag 1'),
(2, 'tag 2'),
(3, 'tag 3'),
(4, 'tag 4'),
(5, 'tag 5');

-- --------------------------------------------------------

--
-- Структура таблицы `tag_post`
--

CREATE TABLE `tag_post` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `login`, `pass`, `admin`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', 1),
(2, 'user1@gmail.com', 'user1', 'user1', 0),
(3, 'user2@gmail.com', 'user2', 'user2', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cat_post`
--
ALTER TABLE `cat_post`
  ADD KEY `post_id` (`post_id`,`cat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tag_post`
--
ALTER TABLE `tag_post`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `post_id_2` (`post_id`,`tag_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
