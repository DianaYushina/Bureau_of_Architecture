-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Фев 01 2022 г., 16:11
-- Версия сервера: 5.7.34
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `form_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `main_texts`
--

CREATE TABLE `main_texts` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `language` enum('ru','en') NOT NULL DEFAULT 'en',
  `body` text NOT NULL,
  `url` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `main_texts`
--

INSERT INTO `main_texts` (`id`, `name`, `language`, `body`, `url`, `date`) VALUES
(1, 'Diana', 'ru', 'adasdasd', 'https://www.youtube.com/watch?v=tmvL_TlLEhA', '1992-04-23'),
(2, 'Diana', 'en', 'ejv;qejvquvbquev', 'https://www.youtube.com/watch?v=tmvL_TlLEhA', '1111-11-11'),
(3, 'Diana', 'en', 'adasdasd', 'https://www.youtube.com/watch?v=tmvL_TlLEhA', '1111-11-11'),
(4, 'Diana', 'en', 'HYVEBFhbwegubwg;', 'https://www.youtube.com/watch?v=tmvL_TlLEhA', '1111-11-11'),
(5, 'Diana', 'en', 'adasdasd', 'https://www.youtube.com/watch?v=tmvL_TlLEhA', '1111-11-11'),
(6, 'About us - we are the best team', 'ru', '<div class=\"p1-about\">\r\n			<div class=\"text-1-about-p1\">\"<span class=\"bold-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n			<span class=\"bold-text-about\">Lorem </span>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n			<span class=\"bold-text-about\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</span>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?<span class=\"bold-text-about\"> Quis autem vel eum iure reprehenderit qui </span>in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</div>\r\n		</div>\r\n		<div class=\"p2-about\">\r\n			<div class=\"text-1-about-p3\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <span class=\"bold-text-about\">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n			</div>\r\n			<div class=\"t-p-2-about\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>\r\n			<div class=\"t-p-2-about\">Lorem ipsum dolor sit amet, <span class=\"bold-text-about\">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore</span> magna aliqua.</div>\r\n			<div class=\"t-p-2-about\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>\r\n			<div class=\"t-p-2-about\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>\r\n			<div class=\"t-p-2-about\"><span class=\"bold-text-about\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor </span>incididunt ut labore et dolore magna aliqua.</div>\r\n		</div>\r\n\r\n		<div class=\"p6-about\">\r\n			<div class=\"style-p6-about\">\r\n				<div class=\"photo-style-about\">\r\n					<img src=\"media/img/Rectangle blue 13.png\">\r\n				</div>\r\n				<div class=\"text-p6-about\"><span class=\"bold-text-about\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n				<span class=\"bold-text-about\">Lorem </span>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n			</div>\r\n		</div>\r\n\r\n		<div class=\"p3-about\">\r\n			<div class=\"text-1-about-p3\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. <span class=\"bold-text-about\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? </span>But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. <span class=\"bold-text-about\">Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? </span>But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. <span class=\"bold-text-about\">Et harum quidem rerum facilis est et expedita distinctio.</span> Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo <span class=\"bold-text-about\">minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor</span> repellendus. </div>\r\n			<div class=\"t-p-3-about\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment</div>\r\n			<div class=\"t-p-3-about\">emporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations </div>\r\n			<div class=\"t-p-3-about\">untrammelled and when nothing prevents our being able to do what we like best, emporibus autem quibusdam et aut officiis debitis aut rerum necessitatibusevery pleasure is to be welcomed and every pain</div>\r\n			<div class=\"t-p-3-about\">Itaque earum rerum hic tenetur a sapiente delectus</div>\r\n			<div class=\"t-p-3-about\">emporibus autem quibusdam et aut officiis debitis aut rerum necessitatibusemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus</div>\r\n			<div class=\"t-p-3-about\">Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet <span class=\"bold-text-about\">ut et voluptates repudiandae sint et </span>molestiae non recusandae.he endures pains to avoid worse pains</div>\r\n		</div>\r\n\r\n		<div class=\"p7-about\">\r\n			<div class=\"style-p7-about\">\r\n				<div class=\"photo-style-p7-about\">\r\n					<img src=\"media/img/Rectangle 111.jpg\">\r\n				</div>\r\n				<div class=\"text-p7-about\">\r\n					<span class=\"bold-text-about\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n					<span class=\"bold-text-about\">Lorem </span>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<div class=\"p4-about\">\r\n			<div class=\"t-p4-about\">\r\n				Temporibus autem quibusdam et aut officiis debitis aut rerum 	necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reic dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. <span class=\"bold-text-about\">These cases are perfectly simple and easy to distinguish.</span> In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted.<span class=\"bold-text-about\"> The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; </span>and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"\r\n			</div>\r\n			<div class=\"t-p-4-about\">\r\n				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, <span class=\"bold-text-about\">sed do eiusmod tempor incididunt ut labore et </span>dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n			</div>\r\n			<div class=\"t-p-4-about\">\r\n				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n			</div>\r\n			<div class=\"t-p-4-about\">\r\n				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur <span class=\"bold-text-about\">adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur </span>adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n			</div>\r\n			<div class=\"t-p-4-about\">\r\n				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod<span class=\"bold-text\"> tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet,</span> consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n			</div>\r\n			<div class=\"t-p-4-about\">\r\n				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor <span class=\"bold-text-about\">incididunt ut labore</span> et dolore magna aliqua.\r\n			</div>\r\n		</div>\r\n\r\n		<div class=\"p8-about\">\r\n			<div class=\"style-p8-about\">\r\n				<div class=\"photo-style-p7-about\">\r\n					<img src=\"media/img/Rectangle 13.jpg\">\r\n				</div>\r\n				<div class=\"text-p8-about\">\r\n					<span class=\"bold-text-about\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n					<span class=\"bold-text-about\">Lorem </span>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<div class=\"p5-about\">\r\n			<div class=\"text-1-about-p5\">\r\n				\"<span class=\"bold-text-about\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n				<span class=\"bold-text-about\">Lorem </span>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n				<span class=\"bold-text-about\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</span>\r\n			</div>\r\n		</div>', 'about', '2022-01-31'),
(7, 'Contact', 'en', 'Text for contact', 'contact', '2022-01-31');

-- --------------------------------------------------------

--
-- Структура таблицы `user_infos`
--

CREATE TABLE `user_infos` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `phone` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `messenger` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_infos`
--

INSERT INTO `user_infos` (`id`, `name`, `city`, `phone`, `email`, `messenger`) VALUES
(1, 'Diana', 'Minsk', '+375256631518', 'diana.yshina@gmail.com', 3),
(2, 'Diana', 'Minsk', '+375256631518', 'diana.yshina@gmail.com', 2),
(3, 'sa', 'Minsk', '+375256631518', 'diana.yshina@gmail.com', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `main_texts`
--
ALTER TABLE `main_texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `main_texts`
--
ALTER TABLE `main_texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
