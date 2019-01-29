-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 15 2018 г., 13:52
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `adaptive`
--
CREATE DATABASE IF NOT EXISTS `adaptive` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `adaptive`;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `tags` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `description`, `text`, `date`, `tags`) VALUES
(1, 'Адаптивная верстка для новичка', 'img/posts/img2.png', 'В наши дни практически каждый заказчик хочет получить мобильную версию для своего сайта. И это естественно: нужен один дизайн для iPhone, другой для iPad — и он также должен подходить под все другие размеры экранов.', 'В наши дни практически каждый заказчик хочет получить мобильную версию для своего сайта. И это естественно: нужен один дизайн для iPhone, другой для iPad — и он также должен подходить под все другие размеры экранов.\\n\r\n\r\nВ теме веб-дизайна и разработки мы быстро приближаемся к точке, когда мы будем не способны справляться с бесконечными новыми разрешениями и экранами. Для многих веб-сайтов создание отдельной версии для каждого нового разрешения будет невозможным или, по крайней мере, не практичным. Должны ли мы смириться с потерей посетителей, для которых у нас нет верстки? Или можно что-то сделать?\r\n\r\nАдаптивная верстка — подход, предполагающий изменение дизайна в зависимости от поведения пользователя, размера экрана, платформы и ориентации девайса. Другими словами, страница должна автоматически подстраиваться под разрешение, изменять размер картинок и т.д.  Это позволит устранить нужду в разработке дизайна для каждого нового устройства, появляющегося в продаже.\r\nРегулировка разрешения экрана\r\n\r\nМожно разбить устройства на разные категории и верстать для каждой из них отдельно, но это займет слишком много времени, и кто знает, какие стандарты будут через пять лет? Тем более, согласно статистике, основанной на 400 проданных с 2005 по 2008 год устройствах (а сейчас 2016), мы имеем целых спектр разнообразных устройств:\r\n\r\nОчевидно,что мы не сможем продолжать верстать для каждого устройства отдельно. Но что тогда делать?\r\nЧастичное решение: делаем всё гибким\r\n\r\nКонечно, это не идеальное решение, но оно решает большую часть проблем.\r\n\r\nВ своей статье Итан Маркотт (Ethan Marcotte) создал простой шаблон, демонстрирующий использование гибкой вёрстки:\r\nВесь дизайн — микс адаптивных слоев, картинок и в некоторых местах умной разметки. Создание адаптивных слоев — частая практика, что нельзя сказать об адаптивных картинках. Поэтому ниже представлены техники для реализации гибких картинок:\r\n\r\n    Hiding and Revealing Portions of Images;\r\n    Creating Sliding Composite Images;\r\n    Foreground Images That Scale With the Layout.\r\n\r\nДля более детальной информации рекомендуем ознакомиться с книгой Зои Микли Гилленуотер (Zoe Mickley Gillenwater) «Flexible Web Design: Creating Liquid Layouts with CSS» и загрузить главу «Creating Flexible Images».\r\n\r\nС первого взгляда может показаться, что все легко, но это не так. Взгляните на логотип:', '2018-06-13', 'Адаптивность верстка размеры '),
(2, 'Адаптивная верстка сайта: пошаговая инструкция с примерами', 'img/posts/img3.png', 'Верстка - это создание структуры и оформление элементов web-страницы. Написанием кода веб-страницы занимается верстальщик или front-end разработчик. Он использует графическую программу для нарезки макетов, редактор кода, дополнительные программы для ускор', 'Верстка - это создание структуры и оформление элементов web-страницы. Написанием кода веб-страницы занимается верстальщик или front-end разработчик. Он использует графическую программу для нарезки макетов, редактор кода, дополнительные программы для ускорения процесса.\r\n\r\nКод верстки является скелетом страницы сайта, пишется на языке разметки html. Состоит из логически разбитых на элементы частей страницы - тегов. Каждый из них отвечает за свою область: меню, подвал сайта, медиа, формы, карты, поиск по сайту, время. У них есть атрибуты, с их помощью идентифицируются отдельно взятые элементы. За оформление отвечают каскадные таблицы стилей, а за динамические эффекты - джаваскрипт.\r\n\r\nКачественно сделанная верстка одинаково отображается на всех браузерах. Результат определяется проведением ряда тестов. Способность работать на более, чем одной аппаратной платформе, называется кроссплатформенность. Существует несколько подходов реализации верстки, используются различные фреймворки.\r\n\r\nДля создания страниц по современным стандартам применяются разные методы адаптивной верстки. Это обеспечивает корректное отображение элементов на всех типах экранов.\r\nВиды макетов\r\n\r\nСтандарты постоянно совершенствуются, и, как следствие, меняются способы разработки макетов. На данный момент существует 3 основных вида страниц:\r\n\r\n    статическая;\r\n    резиновая;\r\n    адаптивная.', '2018-06-13', 'tags tags'),
(3, 'Всем привет!', 'img/posts/img4.png', 'Когда появился принцип адаптивной вёрстки для меня это оказалось кошмаром, от которого я до сих не могу оправиться, это такая боль - ведь под каждое разрешение практически нужно перевёрстывать макет, писать новый код, получается много кода, который трудне', 'Всем привет!\r\n\r\nКогда появился принцип адаптивной вёрстки для меня это оказалось кошмаром, от которого я до сих не могу оправиться, это такая боль - ведь под каждое разрешение практически нужно перевёрстывать макет, писать новый код, получается много кода, который труднее обслуживать. Будем понимать эту боль под названием \"энтропия кода\"\r\n\r\nНедавно мне дали сверстать макет мобильного приложения и я решил наконец попробовать побороть эту боль, сделать красиво и лаконично - использовать rem. Это показалось мне самым простым решением, 100% мобильных браузеров поддерживают эту единицу. Суть в том, что мы пишем несколько строк media queries для тега html, указывая лишь базовые размеры шрифтов в пикселях, пропорционально тому, как должен выглядеть у нас макет в разных разрешениях, а остальную вёрстку без media queries верстаем как обычно, только вместо пикселей используем rem. Данная методика легко масштабируется и подгоняет макет в зависимости от базового размера шрифта.\r\nМинимизация кода и лёгкость адаптивной вёрстки таким способом просто колоссальна!\r\n\r\nБыл единственный минус такого способа: нужно было вести постоянный пересчёт пикселей psd макета в rem, но я быстро решил эту проблему - написал специальную функцию и верстал как раньше в пикселях, препроцессор сам переводил в rem.\r\n\r\nНо! Основной прикол в том, что я верстал такой методикой адаптивное мобильное приложение, где дизайн был одинаковый.\r\n\r\nКогда я вернулся к адаптивке для обычных сайтов - боль ко мне вернулась ещё с больше силой, чем прежде, ведь как правило мы имеем от 3-х до 6 разных дизайнов:\r\n1) Десктоп большой 1600-1920 пикселей\r\n2) Десктоп маленький/ноутбук ~1100-1400 пикселей\r\n3) Старый моник / планшет - 768-1024 пикселей\r\n4) Недопланшет/ смартфон-переросток ~600 пикселей\r\n5) Смартфон 300-480\r\n6) Старый смартфон 250 пикселей.\r\n\r\nЯ конечно преувеличил, но как минимум три вёрстки делать нужно это точно.\r\n\r\nТак вот вопрос №1 и самый главный: как минимизировать адаптивную вёрстку и сделать код красивым? Как уменьшить т.н. энтропию кода? Существует ли какой-нибудь клёвый подход/методика?\r\n\r\nПосмотрел разные сайты крутых веб студий, в целях найти ответ там и увидел что все верстают как попало, то есть вообще не заморачиваясь.\r\nЕдинственное, видел что некоторые зачем-то используют em и проценты для шрифтов вместо привычных пикселей. Вроде как для масштабирования текста, хотя непонятно как это уменьшает код для адаптивки, по моему только всё усложняет - нужно вести расчёты в зависимости от размера шрифта родительского блока и даже препроцессоры скорей всего не помогут... Незнаю зачем нужно париться задавая размеры шрифтов em единицами, заморочки с rem ещё куда не шло... Может я плохой верстальщик... Кстати особо упоротые из тех сайтов использовали em для margin и прочих box-size свойств...\r\nВопрос №2:\r\nВ чём смысл использовать em?\r\nИ cразу вопрос №3:\r\nНеужели нет единой методики, неужели в вёрстке всё так плохо, что каждый как хочет так и д....чит? Или я видел неудачные примеры (хотя искал среди топовых тем themeforest и сайтов топовых веб студий)?\r\n', '2018-06-12', 'adapt'),
(7, 'Адаптивная профессиональная верстка html страницы по макету ', 'img/posts/img5.png', 'В процессе верстки используются современные технологии HTML5 и CSS3, поэтому мы гарантируем корректное отображение страницы только в браузерах, которые поддерживают данные технологии (IE версии не ниже 11, Chrome, Opera, Firefox и др.)', ' Адаптивная профессиональная верстка html страницы по макету (PSD и др. ) с учетом технического задания под ключ.\r\n\r\nВ процессе верстки используются современные технологии HTML5 и CSS3, поэтому мы гарантируем корректное отображение страницы только в браузерах, которые поддерживают данные технологии (IE версии не ниже 11, Chrome, Opera, Firefox и др.)\r\n\r\nПрофессиональная верстка - это аккуратный, легко поддерживаемый код, с понятной и логичной структурой, правильной семантикой и полной поддержкой стандартов W3C, что позволит сделать страницу легкой, с высокой скоростью загрузки и технически готовой к продвижению в поисковиках. \r\n\r\nЦена указанная на данной странице - это стоимость верстки ОДНОЙ страницы. Если вам нужно сверстать сайт, обратитесь к менеджеру, нажав кнопку \"Оставить заявку на услугу\", или воспользуйтесь пакетом \"Верстка сайта под ключ\"\r\n\r\nЕсли нужно установить сверстанную страницу на СMS 1C-Битрикс, то можете выбрать дополнительно при заказе интеграцию дизайна в CMS и передачу заявок через форму в CRM (обычно это Битрикс24).\r\nЗаказ и оплата услуги\r\n\r\nЕсли вы заказываете от организации - заполните форму ниже, чтобы получить счет для оплаты по безналичному расчету, укажите ИНН организации или ИП и выберите необходимую услугу. Если вам необходима помощь менеджера - вы можете воспользоваться кнопкой \"Оставить заявку на услугу\".\r\n\r\nХотите оплатить данную услугу как физическое лицо с использованием Яндекс.Денег или банковской карты? Перейдите на вкладку \"Оплата от частного лица\" ', '0000-00-00', 'adaptation  html5 css3');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- База данных: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-06-15 11:45:29', '{\"lang\":\"ru\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Индексы таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Индексы таблицы `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Индексы таблицы `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Индексы таблицы `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Индексы таблицы `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Индексы таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Индексы таблицы `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Индексы таблицы `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Индексы таблицы `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Индексы таблицы `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Индексы таблицы `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
