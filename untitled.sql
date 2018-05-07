-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2018 at 10:55 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lerning`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `anonce` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `divesite`
--

CREATE TABLE `divesite` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `anonce` varchar(255) DEFAULT NULL,
  `description` text,
  `contru` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divesite`
--

INSERT INTO `divesite` (`id`, `name`, `anonce`, `description`, `contru`) VALUES
(28, '1', '1', '1', '1'),
(29, '2', '2', '2', '2'),
(31, '4', '4', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `anonce` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `content`) VALUES
(1, 'Первая запись ', 'Контент первой записи '),
(2, 'Вторая запись', 'Контент второй записи'),
(3, 'Третья запись', 'Контент третьей записи'),
(4, 'Четвертая запись', 'Контент четвертой записи'),
(10, 'Элементы управления форм ', 'Элементы управления форм \r\nBootstrap Форма контроля разверните на наши перезагружается форма стили С классами. Использовать эти классы, чтобы выбрать их индивидуальные дисплеи последовательном отображении в разных браузерах и на разных устройствах. Приведенный ниже пример демонстрирует, форма общих элементов HTML-форм, которые получают обновленные стили из Bootstrap с дополнительных занятий. \r\n\r\nПомните, поскольку Bootstrap использует технологии HTML5 doctype, то все входы должны иметь ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `verified` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `resettable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `roles_mask` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `registered` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `force_logout` mediumint(7) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `status`, `verified`, `resettable`, `roles_mask`, `registered`, `last_login`, `force_logout`) VALUES
(18, '007-99@mail.ru', '$2y$10$Lhq3ugCcjdFrgbd5baIc.uZ19Pqd8V6uceVUdu7GZugLruX0p4ki.', 'babushkinaa', 0, 1, 1, 0, 1525211616, 1525381652, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_confirmations`
--

CREATE TABLE `users_confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selector` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_confirmations`
--

INSERT INTO `users_confirmations` (`id`, `user_id`, `email`, `selector`, `token`, `expires`) VALUES
(1, 0, '007-99@mail.ru', 'LjCs4nhf5uhnbRNc', '$2y$10$yRZHPA24gLWtDmzYmmTVmOIE7bpq9sSXyRQmUwbVoWmqCMNYoDtve', 1524691819),
(2, 0, 'babushkina_oa@mail.ru', 'yMIo5idzfUSNTWk6', '$2y$10$.zUnFxZVaPuXNNNewQhh9O.A8/xaWMppn4G0enNvR8I.CTVMvOk72', 1524692358),
(3, 0, 'mokhail@mail.ru', 'u0bV.dFKUjgA5mzi', '$2y$10$PgWX8cxTw9hQTU8pkXufbu8SCCI0tJ0z9X0SY3uUh3S9zJ2Pqz3sq', 1524736373),
(4, 0, 'mokhaill@mail.ru', 'jmwPzK3bAhkSzWb9', '$2y$10$ukQRvqO4EqJ34.HCSaFEwubuIwqAE1Clt3VAsJBUnSBlP.A4ChB6O', 1524736886),
(5, 0, 'mahail@mail.ru', 'BsU3dCPKTjpMHBsT', '$2y$10$7dsSYqYhw3qxgola/UDHau/gorcsATjPmFYW0cZMSOtPIgkKDogCu', 1524737019),
(6, 0, 'mahail@mail.ru', '96OnX7fC0_ZriCRO', '$2y$10$vJVDsVcK17qSav5H9R/nSeAD4rtIoTg6fIUwZqF7JwKKiZhx0biYS', 1524737342),
(7, 0, 'mahail@mail.ru', '2wCMMneHuaggyULO', '$2y$10$3RHEqmfES8fJNuN8.AUx/evJrKfm2ox.qe3i/Q1u7CxRQW9Q59Ure', 1524737510),
(8, 0, 'mahail@mail.ru', 'c6i9WP587XDXlHl8', '$2y$10$PdTQe7/H3W12NjEmHjZ/5.12joswVYlO1xrdIXgkKPdIX48b8gj1m', 1524738750),
(9, 0, 'mahail@mail.ru', 'vPFguouvLYjgHjGs', '$2y$10$AiIOjd7eKQbm3n0dWQMUve7t6xV4FQmk6wG1aKY0.ou1OwTB9.50K', 1524738909),
(10, 0, 'mail@mail.ru', 'LcOBqIdpITMTBYGt', '$2y$10$4NNMw7ScNdHtyqYqenGpLuQG9dKE0rW0lCpniPAyuQbxEXNTGSdPu', 1524739101),
(11, 0, 'mail@mail.ru', 'tN0E6sfy8nzpTXbM', '$2y$10$D0INwnIFm3qitMz6s1mgCegs.EgFPuQIFUwJyodI9B/JQudS8G9F.', 1524739415),
(12, 0, 'mail@mail.ru', 'VhghWphqaz4Ir38_', '$2y$10$cVwbl746kGQP.pNZVqtFXuNM7Gl6hSTa.gE4UZ15FFDgF0gTOmekC', 1524739471),
(13, 0, 'mail@mail.ru', 'DDuzgq_v7Or08U0q', '$2y$10$DYt67MMAcGnAOKi4LEw6Q.cN6iK9HHl4iS8jIhVxcK9S7gHmFvjom', 1524739626),
(14, 0, 'mail@mail.ru', 'hSEU0iphflQsdE67', '$2y$10$qu9xE9DHRh64qnr41QPKV./xsMlt.3UY3obPkKaqKU5Ntxm5GUEUe', 1524739724),
(15, 0, '007-99@mail.ru', 'MssAfLISDwpGhUGW', '$2y$10$ygPAoL2sl/Ssr6fzYH5RG.s58vPYHfgEgox13dPrVHyij5XaFExgS', 1524740046),
(16, 16, '007-99@example.com', 'lPu1mrrHYgY3puon', '$2y$10$M14x2ixK6rCeOjxBt1iOJOYDlXvOz1kNEkaF3cW8X41Pm2Lj8DHJi', 1525212207),
(17, 17, '007-99@example.ru', 'dVoPSRY486IbHAM2', '$2y$10$kQTIasJGcke7yAwfIxn4qumIGPFMy.udjOj/tb74axm.d.vT6Tm2G', 1525213394);

-- --------------------------------------------------------

--
-- Table structure for table `users_remembered`
--

CREATE TABLE `users_remembered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `selector` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_resets`
--

CREATE TABLE `users_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `selector` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_throttling`
--

CREATE TABLE `users_throttling` (
  `bucket` varchar(44) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `tokens` float UNSIGNED NOT NULL,
  `replenished_at` int(10) UNSIGNED NOT NULL,
  `expires_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_throttling`
--

INSERT INTO `users_throttling` (`bucket`, `tokens`, `replenished_at`, `expires_at`) VALUES
('ejWtPDKvxt-q7LZ3mFjzUoIWKJYzu47igC8Jd9mffFk', 68.5398, 1525381652, 1525921652),
('CUeQSH1MUnRpuE3Wqv_fI3nADvMpK_cg6VpYK37vgIw', 4, 1525126994, 1525558994);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divesite`
--
ALTER TABLE `divesite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_confirmations`
--
ALTER TABLE `users_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `email_expires` (`email`,`expires`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users_remembered`
--
ALTER TABLE `users_remembered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `users_resets`
--
ALTER TABLE `users_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user_expires` (`user`,`expires`);

--
-- Indexes for table `users_throttling`
--
ALTER TABLE `users_throttling`
  ADD PRIMARY KEY (`bucket`),
  ADD KEY `expires_at` (`expires_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `divesite`
--
ALTER TABLE `divesite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users_confirmations`
--
ALTER TABLE `users_confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users_remembered`
--
ALTER TABLE `users_remembered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_resets`
--
ALTER TABLE `users_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;