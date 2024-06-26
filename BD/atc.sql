-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 18 2024 г., 18:31
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `atc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `user_id` bigint NOT NULL,
  `branch_id` int DEFAULT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`user_id`, `branch_id`, `deleted`) VALUES
(2, 1, 0),
(15, 1, 0),
(16, 3, 0),
(87, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `attend`
--

CREATE TABLE `attend` (
  `id` tinyint NOT NULL,
  `attend` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `attend`
--

INSERT INTO `attend` (`id`, `attend`) VALUES
(0, 'Н'),
(1, 'Б');

-- --------------------------------------------------------

--
-- Структура таблицы `awards`
--

CREATE TABLE `awards` (
  `id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `subject_id` int DEFAULT NULL,
  `award` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `awards`
--

INSERT INTO `awards` (`id`, `user_id`, `subject_id`, `award`) VALUES
(16, 6, 3, '4'),
(17, 100, 73, '123'),
(18, 102, NULL, NULL),
(19, 104, NULL, NULL),
(20, 107, 17, '123'),
(21, 108, NULL, NULL),
(22, 110, NULL, NULL),
(23, 111, 17, 'asdasd');

-- --------------------------------------------------------

--
-- Структура таблицы `branch`
--

CREATE TABLE `branch` (
  `id` int NOT NULL,
  `branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_founding` date DEFAULT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `branch`
--

INSERT INTO `branch` (`id`, `branch`, `date_founding`, `deleted`) VALUES
(1, 'Шұғыла', '2024-02-01', 0),
(2, 'Премьера', '2024-02-02', 0),
(3, 'Саялы\r\n', '2024-02-03', 0),
(4, 'Дарабоз', '2024-03-01', 0),
(5, 'Саина', '2024-03-01', 0),
(6, 'АЛМА СИТИ', '2024-03-01', 0),
(999, 'Для менеджера', '2024-02-04', 0),
(1001, 'test', '2024-03-17', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `classroom`
--

CREATE TABLE `classroom` (
  `classroom_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` int DEFAULT NULL,
  `active` tinyint NOT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `classroom`
--

INSERT INTO `classroom` (`classroom_id`, `name`, `branch`, `active`, `deleted`) VALUES
(1, '3/515', 1, 1, 0),
(2, '3/515', 2, 1, 0),
(3, '3/520', 2, 1, 0),
(4, '3/519', 2, 1, 0),
(5, '3/516', 1, 1, 0),
(6, 'test', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `day`
--

CREATE TABLE `day` (
  `day_id` tinyint NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `day`
--

INSERT INTO `day` (`day_id`, `name`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота');

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE `gender` (
  `gender_id` tinyint NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`gender_id`, `name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `grades`
--

CREATE TABLE `grades` (
  `grade_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `subject_id` int NOT NULL,
  `grade` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attend` tinyint DEFAULT '0',
  `branch_id` int DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homework` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `grades`
--

INSERT INTO `grades` (`grade_id`, `user_id`, `subject_id`, `grade`, `date`, `attend`, `branch_id`, `comment`, `homework`) VALUES
(362, 105, 17, '567', '2024-04-04', 1, 1, '7', NULL),
(366, 7, 16, '70', '2024-04-04', 1, NULL, '6', NULL),
(370, 7, 16, '', '2024-04-04', 0, NULL, '', NULL),
(371, 8, 16, '', '2024-04-04', 0, NULL, '', NULL),
(372, 7, 16, '', '2024-04-04', 0, NULL, '', NULL),
(373, 8, 16, '', '2024-04-04', 0, NULL, '', NULL),
(374, 7, 16, '', '2024-04-04', 0, NULL, '', NULL),
(375, 8, 16, '', '2024-04-04', 0, NULL, '', NULL),
(376, 9, 17, '80', '2024-04-04', 1, NULL, '123', NULL),
(377, 18, 18, '77', '2024-04-04', 1, NULL, '6', NULL),
(378, 105, 18, '56', '2024-04-04', 1, NULL, '4', NULL),
(379, 7, 16, '55', '2024-04-04', 1, NULL, '', NULL),
(380, 8, 16, '60', '2024-04-04', 1, NULL, '', NULL),
(381, 7, 17, '70', '2024-04-04', 1, NULL, 'sad', NULL),
(382, 7, 16, '70', '2024-04-04', 1, NULL, '', NULL),
(383, 8, 16, '', '2024-04-04', 0, NULL, '', NULL),
(384, 7, 17, '', '2024-04-04', 0, NULL, '', NULL),
(385, 8, 17, '', '2024-04-04', 0, NULL, '', NULL),
(390, 7, 17, '', '2024-04-05', 0, 1, '', NULL),
(391, 8, 17, '', '2024-04-05', 0, 1, '', NULL),
(394, 8, 5, '100', '2024-04-17', 0, NULL, '100', '1703641317_Оценки_1702869853.xlsx'),
(395, 8, 5, '100', '2024-04-17', 0, NULL, 'adasd', '1703641356_Оценки_1702869853.xlsx'),
(397, 109, 18, '', '2024-04-17', 0, 1, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `grade_accept`
--

CREATE TABLE `grade_accept` (
  `id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `subject_id` int DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attend` tinyint DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homework` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int NOT NULL,
  `reason` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `grade_accept`
--

INSERT INTO `grade_accept` (`id`, `user_id`, `subject_id`, `grade`, `date`, `attend`, `comment`, `homework`, `branch_id`, `reason`) VALUES
(286, 18, 5, 0, '2023-12-07', 0, NULL, NULL, 1, 1),
(287, 18, 5, 50, '2023-12-07', 1, NULL, NULL, 1, NULL),
(288, 18, 5, 0, '2023-12-15', 0, NULL, NULL, 1, NULL),
(290, 18, 5, 70, '2023-12-15', 1, NULL, NULL, 1, NULL),
(297, 18, NULL, 60, '2023-12-15', 1, NULL, NULL, 1, NULL),
(299, 18, 5, 50, '2023-12-15', 1, NULL, NULL, 1, NULL),
(301, 8, NULL, 90, '2023-12-15', 1, NULL, NULL, 2, NULL),
(304, 18, 5, 90, '2023-12-23', 1, NULL, NULL, 1, NULL),
(305, 9, NULL, 90, '2023-12-30', 0, NULL, NULL, 1, NULL),
(306, 18, NULL, 50, '2023-12-30', 1, NULL, NULL, 1, NULL),
(308, 9, NULL, 90, '2023-12-30', 0, NULL, NULL, 1, NULL),
(310, 9, NULL, 100, '2023-12-30', 0, NULL, NULL, 1, NULL),
(311, 7, 5, 99, '2024-02-24', 0, 'test1', '1708790972_test.txt', 1, NULL),
(312, 7, 5, 99, '2024-02-24', 0, 'test2', '1708791101_test.txt', 1, NULL),
(313, 7, 3, 0, '2024-03-03', 0, '123', '', 1, 0),
(314, 8, 3, 0, '2024-03-03', 0, '123', '', 1, 0),
(315, 18, 3, 0, '2024-03-03', 0, '123', '', 1, 0),
(316, 18, 3, 0, '2024-03-03', 0, '123', '', 1, 0),
(317, 7, 3, 0, '2024-03-03', 0, '', '', 1, 0),
(318, 8, 3, 0, '2024-03-03', 0, '', '', 1, 0),
(319, 7, 3, 0, '2024-03-03', 0, '', '', 1, 0),
(320, 8, 3, 90, '2024-03-03', 1, '5676', '', 1, NULL),
(321, 7, 3, 55, '2024-03-03', 1, '123', '', 1, NULL),
(322, 8, 3, 100, '2024-03-03', 1, '', '', 1, NULL),
(323, 7, 16, 90, '2024-04-04', 1, '123', '', 1, NULL),
(324, 9, 18, 0, '2024-04-05', 0, '', '', 1, 1),
(325, 7, 16, 60, '2024-04-05', 1, 'asd', '', 1, NULL),
(326, 7, 16, 80, '2024-04-04', 1, '', '', 1, NULL),
(327, 7, 16, 0, '2024-04-05', 0, '', '', 1, 0),
(328, 8, 16, 80, '2024-04-04', 1, '', '', 1, NULL),
(329, 8, 16, 90, '2024-04-04', 1, '', '', 1, NULL),
(330, 8, 16, 80, '2024-04-04', 1, '', '', 1, NULL),
(331, 8, 16, 0, '2024-04-05', 0, '', '', 1, NULL),
(332, 8, 16, 60, '2024-04-04', 1, '123', '', 1, NULL),
(333, 7, 16, 75, '2024-04-04', 1, '123', '', 1, NULL),
(334, 7, 16, 90, '2024-04-04', 1, '123', '', 1, NULL),
(335, 8, 16, 0, '2024-04-05', 0, '', '', 1, NULL),
(336, 9, 18, 90, '2024-04-04', 1, '', '', 1, NULL),
(337, 7, 16, 40, '2024-04-04', 1, '6', '', 1, NULL),
(338, 18, 17, 90, '2024-04-04', 1, '123', '', 1, NULL),
(339, 18, 17, 90, '2024-04-04', 1, '', '', 1, NULL),
(340, 18, 17, 90, '2024-04-04', 1, '', '', 1, NULL),
(341, 18, 17, 77, '2024-04-04', 1, '65', '', 1, NULL),
(342, 18, 18, 60, '2024-04-17', 1, 'asd', '', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gruppa`
--

CREATE TABLE `gruppa` (
  `gruppa_id` int NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `branch` int DEFAULT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gruppa`
--

INSERT INTO `gruppa` (`gruppa_id`, `name`, `date_begin`, `date_end`, `branch`, `deleted`) VALUES
(1, '7В', '2022-11-06', '2022-11-16', 1, 0),
(2, '7А', '2023-10-01', '2023-10-31', 1, 0),
(3, '8В', '2023-09-01', '2025-06-10', 1, 0),
(4, '7А', '2020-01-31', '2026-10-24', 2, 0),
(5, '9А', '2023-11-01', '2023-11-30', 2, 0),
(7, 'deleted', '2024-03-01', '2024-03-31', 1, 1),
(8, 'asd', '2024-04-10', '2024-04-17', 1, 1),
(9, '7T', '2024-04-17', '2024-04-20', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `homework_parent`
--

CREATE TABLE `homework_parent` (
  `id` bigint NOT NULL,
  `homework_teacher_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` bigint NOT NULL,
  `gruppa_id` int NOT NULL,
  `student_id` bigint NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `subject_id` int NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_prepared` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `homework_parent`
--

INSERT INTO `homework_parent` (`id`, `homework_teacher_id`, `name`, `teacher_id`, `gruppa_id`, `student_id`, `date_begin`, `date_end`, `subject_id`, `file`, `file_prepared`) VALUES
(13, 13, 'asd', 6, 2, 8, '2023-12-21', '2023-12-31', 5, '1703641302_Оценки_1702869853.xlsx', '1713357362_тз.docx');

-- --------------------------------------------------------

--
-- Структура таблицы `homework_teacher`
--

CREATE TABLE `homework_teacher` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `gruppa_id` int NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `subject_id` int NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `homework_teacher`
--

INSERT INTO `homework_teacher` (`id`, `name`, `user_id`, `gruppa_id`, `date_begin`, `date_end`, `subject_id`, `file`) VALUES
(13, 'asd', 6, 2, '2023-12-21', '2023-12-31', 5, '1703641302_Оценки_1702869853.xlsx'),
(15, 'adasdasds', 6, 1, '2024-04-17', '2024-04-24', 3, '1713362303_тз.docx'),
(16, 'тестовое домашнее задание', 6, 9, '2024-04-16', '2024-04-24', 3, '1713362520_тз.docx'),
(17, '123', 6, 9, '2024-04-17', '2024-04-24', 3, '1713362721_тз.docx');

-- --------------------------------------------------------

--
-- Структура таблицы `lesson_num`
--

CREATE TABLE `lesson_num` (
  `lesson_num_id` int NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_lesson` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lesson_num`
--

INSERT INTO `lesson_num` (`lesson_num_id`, `name`, `time_lesson`) VALUES
(1, '1 пара', '08:30:00'),
(2, '2 пара', '10:10:00'),
(3, '3 пара', '12:20:00'),
(4, '4 пара', '14:00:00'),
(5, '5 пара', '15:40:00');

-- --------------------------------------------------------

--
-- Структура таблицы `lesson_plan`
--

CREATE TABLE `lesson_plan` (
  `lesson_plan_id` int NOT NULL,
  `gruppa_id` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lesson_plan`
--

INSERT INTO `lesson_plan` (`lesson_plan_id`, `gruppa_id`, `subject_id`, `user_id`, `deleted`) VALUES
(19, 2, 17, 6, 0),
(20, 2, 16, 6, 0),
(21, 3, 18, 6, 0),
(22, 1, 18, 6, 0),
(23, 2, 17, 14, 0),
(24, 2, 17, 108, 0),
(25, 3, 20, 108, 0),
(26, 9, 17, 108, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `manager`
--

CREATE TABLE `manager` (
  `user_id` bigint NOT NULL,
  `branch_id` int NOT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `manager`
--

INSERT INTO `manager` (`user_id`, `branch_id`, `deleted`) VALUES
(19, 1, 0),
(93, 3, 1),
(94, 3, 0),
(95, 3, 0),
(97, 1, 0),
(98, 1, 0),
(99, 6, 0),
(101, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `notice`
--

CREATE TABLE `notice` (
  `id` int NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `child_id` bigint DEFAULT NULL,
  `subject_count` int DEFAULT NULL,
  `subject_price` int DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `deleted` tinyint DEFAULT '0',
  `canceled` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `notice`
--

INSERT INTO `notice` (`id`, `text`, `subject_id`, `user_id`, `child_id`, `subject_count`, `subject_price`, `link`, `date`, `deleted`, `canceled`) VALUES
(2200, 'Оплатите сумму указанную в приложении', 16, 10, 7, 8, 15000, 'https://example.com', '2024-04-01', 1, 0),
(2201, 'Оплатите сумму указанную в приложении', 5, 10, 7, 12, 15000, 'https://example.com', '2024-04-01', 1, 0),
(2202, 'Оплатите сумму указанную в приложении', 20, 10, 7, 8, 12000, 'https://example.com', '2024-04-01', 1, 0),
(2203, 'Оплатите сумму указанную в приложении', 20, 10, 8, 8, 12000, 'https://example.com', '2024-04-01', 1, 0),
(2204, 'Оплатите сумму указанную в приложении', 3, 10, 9, 20, 30000, 'https://example.com', '2024-04-01', 1, 0),
(2205, 'Оплатите сумму указанную в приложении', 22, 10, 18, 8, 15000, 'https://example.com', '2024-04-01', 1, 0),
(2206, 'Оплатите сумму указанную в приложении', 21, 10, 18, 8, 15000, 'https://example.com', '2024-04-01', 1, 0),
(2207, 'Оплатите сумму указанную в приложении', 35, 85, 86, 12, 12000, 'https://example.com', '2024-04-01', 1, 0),
(2208, 'Оплатите сумму указанную в приложении', 16, 10, 7, 8, 15000, 'https://example.com', '2024-05-01', 1, 0),
(2209, 'Оплатите сумму указанную в приложении', 5, 10, 7, 12, 15000, 'https://example.com', '2024-05-01', 1, 0),
(2210, 'Оплатите сумму указанную в приложении', 20, 10, 7, 8, 12000, 'https://example.com', '2024-05-01', 1, 0),
(2211, 'Оплатите сумму указанную в приложении', 3, 10, 9, 20, 30000, 'https://example.com', '2024-05-01', 1, 0),
(2212, 'Оплатите сумму указанную в приложении', 22, 10, 18, 8, 15000, 'https://example.com', '2024-05-01', 1, 0),
(2213, 'Оплатите сумму указанную в приложении', 21, 10, 18, 8, 15000, 'https://example.com', '2024-05-01', 1, 0),
(2214, 'Оплатите сумму указанную в приложении', 20, 10, 8, 8, 12000, 'https://example.com', '2024-05-01', 1, 0),
(2215, 'Оплатите сумму указанную в приложении', 35, 85, 86, 12, 12000, 'https://example.com', '2024-05-01', 0, 0),
(2216, 'Оплатите сумму указанную в приложении', 3, 106, 9, 20, 30000, 'https://example.com', '2024-05-01', 0, 0),
(2217, 'Оплатите сумму указанную в приложении', 18, 10, 9, 12, 12000, 'https://example.com', '2024-05-01', 1, 0),
(2218, 'Оплатите сумму указанную в приложении', 18, 106, 9, 12, 12000, 'https://example.com', '2024-05-01', 0, 0),
(2219, 'Оплатите сумму указанную в приложении', 3, 10, 7, 12, 11900, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 0),
(2220, 'Оплатите сумму указанную в приложении', 3, 10, 7, 10, 7000, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 0, 0),
(2228, 'Оплатите сумму указанную в приложении', 3, 10, 7, 1, 7500, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 0),
(2229, 'Оплатите сумму указанную в приложении', 3, 10, 7, 1, 7500, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 0),
(2230, 'Оплатите сумму указанную в приложении', 3, 10, 7, 1, 7500, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-18', 1, 0),
(2231, 'Оплатите сумму указанную в приложении', 16, 10, 7, 5, 5000, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 0),
(2232, 'Оплатите сумму указанную в приложении', 16, 10, 8, 5, 50000, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-25', 1, 0),
(2233, 'Оплатите сумму указанную в приложении', 18, 10, 9, 10, 10750, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-18', 1, 0),
(2234, 'Оплатите сумму указанную в приложении', 17, 10, 7, 12, 11900, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-05-01', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `otdel`
--

CREATE TABLE `otdel` (
  `otdel_id` smallint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `otdel`
--

INSERT INTO `otdel` (`otdel_id`, `name`, `active`, `deleted`) VALUES
(2, 'Образование', 1, 0),
(6, 'for delete', 1, 1),
(7, 'Творчество', 1, 0),
(8, 'Спорт', 1, 0),
(10, 'asd', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `parent`
--

CREATE TABLE `parent` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `child_id` bigint DEFAULT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `parent`
--

INSERT INTO `parent` (`id`, `user_id`, `child_id`, `deleted`) VALUES
(1, 10, 7, 0),
(2, 10, 9, 0),
(4, 38, 9, 1),
(12, 38, 7, 1),
(17, 10, 18, 0),
(19, 11, 8, 1),
(23, 10, 8, 0),
(25, 85, NULL, 0),
(26, 85, 86, 0),
(27, 10, 8, 0),
(28, 10, 105, 0),
(29, 106, NULL, 0),
(30, 106, 9, 0),
(31, 106, 105, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `child_id` bigint DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  `tab` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `payment`
--

INSERT INTO `payment` (`id`, `parent_id`, `child_id`, `subject_id`, `count`, `tab`, `price`, `link`, `date`, `branch_id`, `deleted`) VALUES
(154, 10, 9, 3, 20, '1710749243message.txt', 30000, 'https://example.com', '2024-03-18', 1, 1),
(155, 10, 8, 20, 8, '1710749251message.txt', 12000, 'https://example.com', '2024-03-18', 1, 1),
(156, 85, 86, 35, 12, '1710816526message.txt', 12000, 'https://example.com', '2024-03-19', 2, 1),
(157, 10, 7, 20, 8, '1711333494message.txt', 12000, 'https://example.com', '2024-03-25', 1, 1),
(158, 10, 7, 16, 8, '1712287541asd.txt', 15000, 'https://example.com', '2024-04-05', 1, 1),
(159, 10, 8, 20, 8, '1712288454asd.txt', 12000, 'https://example.com', '2024-04-05', 1, 1),
(160, 10, 18, 21, 8, '1712288458asd.txt', 15000, 'https://example.com', '2024-04-05', 1, 1),
(161, 10, 18, 22, 8, '1712288462asd.txt', 15000, 'https://example.com', '2024-04-05', 1, 1),
(162, 10, 9, 3, 20, '1712288466asd.txt', 30000, 'https://example.com', '2024-04-05', 1, 1),
(163, 10, 7, 20, 8, '1712288470asd.txt', 12000, 'https://example.com', '2024-04-05', 1, 1),
(164, 10, 7, 5, 12, '1712288473asd.txt', 15000, 'https://example.com', '2024-04-05', 1, 1),
(165, 10, 7, 16, 8, '1712288477asd.txt', 15000, 'https://example.com', '2024-04-05', 1, 1),
(166, 10, 9, 18, 12, '1712288603asd.txt', 12000, 'https://example.com', '2024-04-05', 1, 1),
(167, 10, 7, 3, 12, '1713344934тз.docx', 11900, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 1),
(168, 10, 7, 16, 5, '1713372560тз.docx', 5000, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 1),
(169, 10, 8, 16, 5, '1713372659тз.docx', 50000, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 1),
(170, 10, 7, 3, 1, '1713372892тз.docx', 7500, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 1),
(171, 10, 7, 3, 1, '1713372948тз.docx', 7500, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 1),
(172, 10, 7, 3, 1, '1713373078тз.docx', 7500, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-17', 1, 1),
(173, 10, 9, 18, 10, '1713447115тз.docx', 10750, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-18', 1, 0),
(174, 10, 7, 17, 12, '1713449919тз.docx', 11900, 'https://pay.kaspi.kz/pay/wndzlf4x', '2024-04-18', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `payment_archive`
--

CREATE TABLE `payment_archive` (
  `id` int NOT NULL,
  `parent_id` bigint NOT NULL,
  `child_id` bigint NOT NULL,
  `subject_id` int DEFAULT NULL,
  `count` int NOT NULL,
  `tab` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attend` tinyint DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Ссылка'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `payment_archive`
--

INSERT INTO `payment_archive` (`id`, `parent_id`, `child_id`, `subject_id`, `count`, `tab`, `price`, `link`, `attend`, `payment_method`) VALUES
(123, 10, 7, 16, 22, '1713372560тз.docx', 5000, NULL, 1, 'Ссылка'),
(124, 10, 8, 16, 5, '1713372659тз.docx', 50000, NULL, 1, 'Ссылка'),
(125, 10, 7, 3, 32, '1713372892тз.docx', 7500, NULL, 1, 'Ссылка'),
(126, 10, 18, 17, 2, '', 7200, NULL, 1, 'Ссылка'),
(127, 10, 18, 18, 4, '', 6000, NULL, 1, 'Ссылка'),
(128, 85, 86, 18, 2, '', -13000, NULL, 1, 'QR'),
(129, 85, 86, 23, 2, '', 24000, NULL, 1, 'Наличные'),
(130, 10, 7, 17, 24, '1713449919тз.docx', 11900, NULL, 1, 'Ссылка');

-- --------------------------------------------------------

--
-- Структура таблицы `reference`
--

CREATE TABLE `reference` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reference`
--

INSERT INTO `reference` (`id`, `user_id`, `reference`) VALUES
(2, 7, '1708491921тз.docx'),
(3, 9, '1708492025_тз.docx'),
(4, 9, '1708492075_тз.docx'),
(5, 9, '1708492131_тз.docx'),
(7, 9, '1708492322_тз.docx'),
(8, 7, '1708492433_тз.docx'),
(9, 7, '1708492580_тз.docx'),
(10, 9, '1708494107_asdsadasd.txt'),
(11, 8, '1708791390_test.txt');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `role_id` tinyint NOT NULL,
  `sys_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`role_id`, `sys_name`, `name`, `active`) VALUES
(2, 'admin', 'Администратор', 1),
(3, 'manager', 'Менеджер', 1),
(4, 'teacher', 'Преподаватель', 1),
(5, 'student', 'Студент', 1),
(6, 'procreator', 'Родитель', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int NOT NULL,
  `lesson_plan_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `classroom_id` int NOT NULL,
  `allowed` tinyint DEFAULT '0',
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `lesson_plan_id`, `date`, `classroom_id`, `allowed`, `deleted`) VALUES
(38, 22, '2024-04-11', 5, 1, 1),
(39, 19, '2024-04-11', 5, 1, 1),
(40, 20, '2024-04-12', 1, 1, 1),
(41, 21, '2024-04-18', 5, 1, 1),
(42, 21, '2024-04-16', 5, 1, 1),
(43, 19, '2024-04-25', 1, 1, 1),
(44, 20, '2024-04-21', 5, 1, 1),
(45, 20, '2024-04-11', 5, 1, 1),
(46, 22, '2024-04-05', 5, 1, 1),
(47, 19, '2024-04-10', 1, 1, 1),
(48, 20, '2024-04-12', 5, 1, 1),
(49, 23, '2024-04-18', 1, 0, 0),
(50, 24, '2024-04-03', 5, 0, 0),
(51, 25, '2024-04-24', 1, 1, 0),
(52, 26, '2024-04-09', 5, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `special`
--

CREATE TABLE `special` (
  `special_id` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `time_begin` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `branch_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `special`
--

INSERT INTO `special` (`special_id`, `subject_id`, `time_begin`, `time_end`, `branch_id`) VALUES
(16, 3, '12:10:00', '13:10:00', 1),
(17, 22, '10:20:00', '11:20:00', 1),
(18, 20, '20:00:00', '21:00:00', 1),
(19, 33, '08:00:00', '09:00:00', 2),
(20, 17, '20:35:00', '21:38:00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `user_id` bigint NOT NULL,
  `gruppa_id` int NOT NULL,
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_zach` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`user_id`, `gruppa_id`, `reference`, `num_zach`, `deleted`) VALUES
(7, 2, '123', '0', 0),
(8, 2, NULL, '0', 0),
(9, 3, NULL, '0', 0),
(18, 1, NULL, '0', 0),
(82, 2, NULL, '0', 1),
(83, 1, NULL, '0', 1),
(84, 3, NULL, '0', 1),
(86, 4, NULL, '0', 0),
(103, 4, NULL, '0', 0),
(105, 9, NULL, '0', 0),
(109, 1, NULL, '0', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `student_subjects`
--

CREATE TABLE `student_subjects` (
  `id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `subject_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `user_id`, `subject_id`) VALUES
(1, 7, 16),
(2, 7, 5),
(3, 9, 3),
(4, 7, 20),
(5, 8, 20),
(6, 18, 22),
(7, 18, 21),
(8, 86, 35),
(9, 103, 33),
(10, 103, 29),
(11, 9, 18),
(12, 109, 16),
(13, 109, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `subject`
--

CREATE TABLE `subject` (
  `subject_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otdel_id` smallint DEFAULT NULL,
  `branch` int DEFAULT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `otdel_id`, `branch`, `deleted`) VALUES
(3, 'МАД', 2, 1, 0),
(5, 'Ағылшын', 2, 1, 0),
(16, 'Математика', 2, 1, 0),
(17, 'Изо ', 7, 1, 0),
(18, 'Хореография', 7, 1, 0),
(20, 'Домбыра ', 7, 1, 0),
(21, 'Фортепиано ', 7, 1, 0),
(22, 'Вокал', 7, 1, 0),
(23, 'Шахмат', 8, 1, 0),
(24, 'МАД', 2, 2, 0),
(25, 'Математика ', 2, 2, 0),
(26, 'Ағылшын ', 2, 2, 0),
(27, 'Изо ', 7, 2, 0),
(28, 'Хореография ', 7, 2, 0),
(29, 'Домбыра ', 7, 2, 0),
(30, 'Фортепиано ', 7, 2, 0),
(31, 'Вокал ', 7, 2, 0),
(32, 'Шахмат ', 8, 2, 0),
(33, 'Тхэквандо ', 8, 2, 0),
(34, 'Дзюдо ', 8, 2, 0),
(35, 'Еркін күрес', 8, 2, 0),
(36, 'Хореография', 7, 3, 0),
(37, 'Домбыра ', 7, 3, 0),
(38, 'Вокал ', 7, 3, 0),
(39, 'Фортепиано ', 7, 3, 0),
(40, 'ИЗО ', 7, 3, 0),
(41, 'Шахмат ', 8, 3, 0),
(42, 'Тхэквондо ', 8, 3, 0),
(43, 'Дзюдо ', 8, 3, 0),
(44, 'Ағылшын ', 2, 3, 0),
(45, 'МАД ', 2, 4, 0),
(46, 'Ағылшын ', 2, 4, 0),
(47, 'Домбыра', 7, 4, 0),
(48, 'Хореография ', 7, 4, 0),
(49, 'Шахмат ', 8, 4, 0),
(50, 'Изо', 7, 4, 0),
(51, 'Вокал ', 7, 4, 0),
(52, 'Фортепиано ', 7, 4, 0),
(53, 'Хореография ', 7, 5, 0),
(54, 'Домбыра ', 7, 5, 0),
(55, 'Вокал ', 7, 5, 0),
(56, 'Фортепиано', 7, 5, 0),
(57, 'Изо', 7, 5, 0),
(58, 'Шахмат ', 8, 5, 0),
(59, 'Тхэквондо ', 8, 5, 0),
(60, 'Дзюдо ', 8, 5, 0),
(61, 'Бокс ', 8, 5, 0),
(62, 'МАД', 2, 6, 0),
(63, 'Продленка ', 2, 6, 0),
(64, 'Математика ', 2, 6, 0),
(65, 'Ағылшын ', 2, 6, 0),
(66, 'Изо ', 7, 6, 0),
(67, 'Хореография ', 7, 6, 0),
(68, 'Домбыра ', 7, 6, 0),
(69, 'Фортепиано ', 7, 6, 0),
(70, 'Вокал ', 7, 6, 0),
(71, 'Шахмат ', 8, 6, 0),
(72, 'Тхэквандо ', 8, 6, 0),
(73, 'Дзюдо ', 8, 6, 0),
(74, 'Еркін күрес', 8, 6, 0),
(76, 'assd', 2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `teacher`
--

CREATE TABLE `teacher` (
  `user_id` bigint NOT NULL,
  `deleted` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teacher`
--

INSERT INTO `teacher` (`user_id`, `deleted`) VALUES
(6, 0),
(12, 0),
(14, 0),
(17, 1),
(22, 1),
(25, 1),
(48, 1),
(59, 1),
(100, 0),
(102, 0),
(104, 0),
(107, 0),
(108, 1),
(110, 1),
(111, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `user_id` bigint NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` tinyint NOT NULL,
  `birthday` date DEFAULT NULL,
  `role_id` tinyint NOT NULL,
  `branch_id` int DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `active` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `lastname`, `firstname`, `patronymic`, `login`, `pass`, `gender_id`, `birthday`, `role_id`, `branch_id`, `photo`, `active`) VALUES
(2, 'Смит', 'Джон', 'Тимофеевич', 'admin', '$2y$10$kkAc3Z1kd7baFhhpVj98feshP7nhhY8IeT7L04xY9I4PuuhKT3Aii', 1, '2023-11-01', 2, 1, '1713332745_images.jpg', 1),
(6, 'Ершов', 'Максимилиан', 'Иосифович', 'ershov', '$2y$10$XenEZZklP4BgHomgpZxBgeYT/xOy3KMg3MN8syJI28x8ygg5bJbRO', 1, '2000-03-12', 4, 1, '1713332763_images.jpg', 1),
(7, 'Носов', 'Клим', 'Алексеевич', 'nosov', '$2y$10$nxM0K958xhTYCpJekKAVzOLLTIkYiZs.R/VbUQ8VcX2dels8mEn5i', 1, '2007-05-25', 5, 1, '1710507751_drivetest-avatar-m.png', 1),
(8, 'Шаров', 'Корней', 'Ростиславович', 'sharov', '$2y$10$hosMfj/tIw48P0tYCaQ1IuBwj6UYV9klgDsaVh/t5SxDcgPjAb7WS', 1, '2023-10-01', 5, 1, '1708791335_wallpaper.png', 1),
(9, 'Антонова', 'Асида', 'Игнатьевна', 'asida', '$2y$10$TE2o./47eSpX8WaCSQ.O2uzlks.vLNjIjE6tv5qtcg7eavAYMqO0q', 2, '2003-02-20', 5, 1, '1708400431_asd.jpg', 1),
(10, 'Беспалов', 'Агафон', 'Даниилович', 'bespalov', '$2y$10$z11Uv1aXozyKpN07XKTNm.VTf9AHH95kfmyOtmOvuVPuoSh4SyGTq', 1, '1980-12-12', 6, 1, NULL, 1),
(11, 'Карпов', 'Антон', 'Онисимович', 'karpov', '$2y$10$yOW62BB4F8KYnC/Zs95xGeI7HnlX2Rxpdu9qkVInJDRV0igjzbZpq', 1, '1980-11-12', 6, 1, NULL, 1),
(12, 'Гришин', 'Мечеслав', 'Христофорович', 'grishin', '$2y$10$HiUHq9eyUODAWKKvKb072eJFP2mmX993WlE2yvSHlx0X6JqMftKEe', 1, '2002-12-20', 4, 2, NULL, 1),
(14, 'Макаров', 'Михаил', 'Робертович', 'makarov', '$2y$10$Bq7MUyKFpI7sW1SfJvFMBOyXj286ZPVsxenSHLHI.omqV5x1QzZe.', 1, '1977-06-05', 4, 1, NULL, 1),
(15, 'Андреев ', 'Венедикт ', 'Святославович', 'admin2', '$2y$10$mFlJsQgNvDQ27XfADrMh8O9OQA47f2gLmqYdwGeg8SpsvdoRUX95S', 1, '1975-08-03', 2, 2, NULL, 1),
(16, 'Лебедев', 'Альфред ', 'Викторович', 'admin3', '$2y$10$mFlJsQgNvDQ27XfADrMh8O9OQA47f2gLmqYdwGeg8SpsvdoRUX95S', 1, '1997-07-12', 2, 3, NULL, 1),
(17, 'Соловьёв', 'Бронислав', 'Федотович', 'soloviev', '$2y$10$hwoeqR.h7cOSrs8mPHnbm.bmDXUd/2i4Xg968skfMTFQ.gQystHdC', 1, '1999-05-14', 4, 2, NULL, 1),
(18, 'Кошелев', 'Эрнест', 'Лаврентьевич', 'koshelev', '$2y$10$mlU3F7DiiEWPXzdfjPiHseYtchL0YITkhg9XOGz72xF.klefiTgnO', 1, '2005-12-15', 5, 1, NULL, 1),
(19, 'Дроздов ', 'Арсений', 'Михайлович', 'manager', '$2y$10$b2rzVJlTsd5hthE.zcAeVuAiFRilDqXrCWGTpn3p6DXxZQNX6v1Di', 1, '1997-07-12', 3, 1, '1713332735_images.jpg', 1),
(22, 'Гурьев', 'Артур', 'Протасьевич', 'gurevvv', '$2y$10$n8AMg5CxgaCH2ujt2WII1e5UNDR3p4ocRRXiYiu/A6UwmBuvgTD.O', 1, '2023-10-01', 4, 1, '1708318625_asdasd.jpg', 1),
(25, 'Буров', 'Георгий', 'Матвеевич', 'burov', '$2y$10$xKG6mPSXSLVK/6/wWNtbfuE1WA4RLCUe80syL0eTja5J09EMaHh1.', 1, '1999-05-15', 4, 1, NULL, 1),
(38, 'Соловьёва', 'Лея', 'Георгьевна', 'solovieva', '$2y$10$iH5wNehSfohUxfUTwKSNB.F01vhtYuddPbxUNZADQqgf5weDX7is2', 2, '2000-05-18', 6, 1, NULL, 1),
(39, 'Шестаков', 'Бенедикт', 'Русланович', 'shestakov', '$2y$10$sSfncxp1TVq5wkKWWy/F4.6g1XKTimJXz2QfKQmNcGFW.Nkib5guq', 1, '2002-10-02', 6, 2, NULL, 1),
(48, 'test2', 'test2', 'test2', 'test2', '$2y$10$KgMM268dqpwL.oRtnM.o/.opCP9heolbsII0x2tKGHuHQF9FeFijy', 1, '2023-12-21', 4, 2, NULL, 1),
(59, 'test7', 'test7', 'test7', 'test7', '$2y$10$OEUiq/r9i7tBbrfHoL3RR.SgW6zesAnM0dLqb.TzdONAxT4Y0W9Hi', 1, '2024-02-01', 4, 2, 'default.png', 1),
(80, 'test4', 'test4', 'test4', 'test4', '$2y$10$pp976ICBJqxGn.KYKz2b6OhlrFdhjEB8GvsPGG.hBjuXvNU6pn58u', 1, '2024-02-29', 4, 1, 'default.png', 1),
(82, 'deleted', 'deleted', 'deleted', 'deleted', '$2y$10$NIHjHc3c.VDns6IZbzAXweX/kIfWTtsJPHHLIJb708eKVvvN2Rcua', 2, '2024-03-02', 5, 1, 'default.png', 1),
(83, 'testPage', 'testPage', 'testPage', 'testPage', '$2y$10$h3EC2CNW/zuL4nfGn5m3GeO7labLNebLi2sZuC5Neblur6JVhNBq.', 1, '2024-03-01', 5, 1, 'default.png', 1),
(84, 'testPage2', 'testPage2', 'testPage2', 'testPage2', '$2y$10$skY0FxghP6Mc6cTmFrDOPeF44ezYeRYx/ZqfAODmf8JgeObsXMYRG', 1, '2024-03-01', 5, 1, 'default.png', 1),
(85, 'forAutoNotice', 'forAutoNotice', 'forAutoNotice', 'forAutoNotice', '$2y$10$MuGlpXEloMN9nDBfHTS9qeYQrFjxt/yREHxvWa9utCsSq24o5uV3O', 1, '2024-03-11', 6, 2, 'default.png', 1),
(86, 'forAutoNoticeStudent', 'forAutoNoticeStudent', 'forAutoNoticeStudent', 'forAutoNoticeStudent', '$2y$10$0hsI3ae3OI/4AN01oPLnXuF3Qx8HgWVtaGiGpC1.6PZOXQlmYPmE.', 1, '2024-03-01', 5, 2, 'default.png', 1),
(87, 'testManager', 'testManager', 'testManager', 'testManager', '$2y$10$pVe5MlrjJMVoOzwj53pCjeUnrVen51.eV10YQhHM5j/.TH90CNfCi', 1, '2024-03-13', 2, 2, 'default.png', 1),
(88, 'testManager', 'testManager', 'testManager', 'testManager', '$2y$10$Dblc3.ukFjNTiXEJmJllLelJLz/ITCSOEbpF6UkB7kLteLJDVQPJu', 1, '2024-03-13', 2, 2, 'default.png', 1),
(89, 'testManager', 'testManager', 'testManager', 'testManager', '$2y$10$6nVpUA0Wn.TVr9e1KGOhguTcLn/B.BdKwGg8sP3xzULEUKe2/pa6i', 1, '2024-03-13', 2, 2, 'default.png', 1),
(90, 'testManager', 'testManager', 'testManager', 'testManager', '$2y$10$Ck2AmHtSXWMgYBWf.36gMeu4Xdix19939LR9jR5KYtO/29biEd/by', 1, '2024-03-13', 2, 2, 'default.png', 1),
(91, 'testManager', 'testManager', 'testManager', 'testManager', '$2y$10$Vo8jGIlFKDlgl8BaWSU2beCIR5ZDutDcdVnqWbsDP8Nezh8T3szBK', 1, '2024-03-13', 3, 4, 'default.png', 1),
(92, 'testManager', 'testManager', 'testManager', 'testManager', '$2y$10$ImOJ7xUrI3Rf83OHt39WNumLxsZUWZTI.28bCq7hzw3hu/ETAN/dO', 1, '2024-03-13', 3, 2, 'default.png', 1),
(93, 'test5', 'test5', 'test5', 'test5', '$2y$10$hOLufC3QkTe/8uoIQGId6uEX4iA9/5I2uAGV4IIEp5/wApd3PnEhq', 1, '2024-03-13', 3, 2, 'default.png', 1),
(94, 'manager2', 'manager2', 'manager2', 'manager2', '$2y$10$9SOKQ9pYXJB0HBNOdG.n8uTpF9ysi/qUFxiUoHauJUrxGcr1C9Ade', 1, '2024-03-14', 3, 6, 'default.png', 1),
(95, 'manager3', 'manager3', 'manager3', 'manager3', '$2y$10$PrdGxvEKAeNsUTilWv/gHOcbwO37X.tlZvw0AR591jY.s2VJMfSqy', 1, '2024-03-14', 3, 1, 'default.png', 1),
(96, 'manager4', 'manager4', 'manager4', 'manager4', '$2y$10$nj8RCuRcLpir8ce4yMV1g.esDBVZ6C4e/eo7isXy5dSOhD2Cx3wRu', 1, '2024-03-14', 3, 1, 'default.png', 1),
(97, 'manager4', 'manager4', 'manager4', 'manager4', '$2y$10$kiTdMnElxyshOc9hzD69GOs3cgonYhT04eQpgEI464wOAHamEkx7a', 1, '2024-03-14', 3, 1, '1710508030_Без названия.jpg', 1),
(98, 'manager5', 'manager5', 'manager5', 'manager5', '$2y$10$C.EzbynIs3UcrwMBvFNFTuSJ3t.XMLeGfH/nRKold2e.sB7nNouAu', 1, '2024-03-14', 3, 1, 'default.png', 1),
(99, 'manager6', 'manager6', 'manager6', 'manager6', '$2y$10$4a8oRnU6SMCkZzidKT7r6OuEftc9Mmxc0Q3RWs/48wpMXXo27GN5K', 1, '2024-03-14', 3, 6, 'default.png', 1),
(100, 'prepodAlma', 'prepodAlma', 'prepodAlma', 'prepodAlma', '$2y$10$owiL9AnguFWdQBsHPqWr..bo2yCtst4q.PNQyO/6663n.VhfPZfaq', 1, '2024-03-14', 4, 6, 'default.png', 1),
(101, 'manager7', 'manager7', 'manager7', 'manager7', '$2y$10$0RsV9Zz6s/3WWFJxb1ZEu.fGRHbfk5LIHk4nuJ5RUW0aToZDrrkXO', 1, '2024-03-14', 3, 2, 'default.png', 1),
(102, 'testTeacher2', 'testTeacher2', 'testTeacher2', 'testTeacher2', '$2y$10$FGx5IGBtsUmWHKYubJPJyOVG5D3RYIPvxy1X1jBpvLBmZlfseLh4G', 1, '2024-03-14', 4, 2, 'default.png', 1),
(103, 'testBranch2', 'testBranch2', 'testBranch2', 'testBranch2', '$2y$10$RslJe6gGJMog..z/1JrauOi5Z4LE0Lcoc3J3IIatMJ1f.fLopmzWG', 1, '2024-03-10', 5, 2, 'default.png', 1),
(104, 'testTest', 'testTest', 'testTest', 'testTest', '$2y$10$HgWytxz7hqd.Sf5q0Fq25e8T3jfYU7icOHLUkvDivmaVkClfS6wLW', 1, '2024-03-17', 4, 1001, 'default.png', 1),
(105, 'testForParent', 'testForParent', 'testForParent', 'testForParent@mail.ru', '$2y$10$TMCYMjQESbQdgyyi1swx7OOoiwPQhNQBEUbO7JseElLnyXu6tPpte', 1, '2024-03-18', 5, 1, 'default.png', 1),
(106, 'testParent', 'testParent', 'testParent', 'testParent', '$2y$10$nLRpiucgxHoMzpCy/HFxkOBwHK8GVvxClg.2THndRavqK1khyPAKq', 1, '2024-03-18', 6, 1, 'default.png', 1),
(107, 'testTeacher3', 'testTeacher3', 'testTeacher3', 'testTeacher3@local.kz', '$2y$10$1OuBcnykWI.vUZ5eeEZaauGRaUL5ahI2aBb.7n8qwyxndn5VMebxq', 1, '2024-03-22', 4, 1, 'default.png', 1),
(108, 'test44', 'test44', 'test44', 'asdasdasd@mail.ru', '$2y$10$5dpIwy0a5P.NcYrRNMYFPOT9P4c81t9dknYK4p1606wHhPmpPtW1e', 2, '2024-04-02', 4, 1, 'default.png', 1),
(109, 'asda', 'sdasdasd', 'adasd', '', '$2y$10$6Xe79cJ/VddJmpIRTv7c5.9NYfrntha7Xr7VjR6ZUG6KeHjD4Y7O2', 1, '2024-04-17', 5, 1, 'default.png', 1),
(110, 'фывфыв', 'фывфывфы', 'вфывфывфывфы', 'asdasd@mail.ru', '$2y$10$x0/Ld8Zfg2w9X0COurGJIuFa21WNXsqL9E.n2oW4AOTjErRMABeHe', 2, '2024-04-18', 4, 1, 'default.png', 0),
(111, 'asdasd', 'asdasd', 'asdasd', 'asdas@mail.ru', '$2y$10$dS5gefxKH.91gaCWTTdvL.Q.NOHfN8esKmk7HmyWls6pWPnPh.PA2', 1, '2024-04-16', 4, 1, 'default.png', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `attend`
--
ALTER TABLE `attend`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Индексы таблицы `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`classroom_id`),
  ADD KEY `branch` (`branch`);

--
-- Индексы таблицы `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`day_id`);

--
-- Индексы таблицы `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Индексы таблицы `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`),
  ADD KEY `student_id` (`user_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `attend` (`attend`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Индексы таблицы `grade_accept`
--
ALTER TABLE `grade_accept`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `attend` (`attend`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Индексы таблицы `gruppa`
--
ALTER TABLE `gruppa`
  ADD PRIMARY KEY (`gruppa_id`),
  ADD KEY `branch` (`branch`);

--
-- Индексы таблицы `homework_parent`
--
ALTER TABLE `homework_parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gruppa_id` (`gruppa_id`),
  ADD KEY `homework_teacher_id` (`homework_teacher_id`),
  ADD KEY `homework_parent_ibfk_3` (`teacher_id`),
  ADD KEY `homework_parent_ibfk_2` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Индексы таблицы `homework_teacher`
--
ALTER TABLE `homework_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `gruppa_id` (`gruppa_id`);

--
-- Индексы таблицы `lesson_num`
--
ALTER TABLE `lesson_num`
  ADD PRIMARY KEY (`lesson_num_id`);

--
-- Индексы таблицы `lesson_plan`
--
ALTER TABLE `lesson_plan`
  ADD PRIMARY KEY (`lesson_plan_id`),
  ADD KEY `gruppa_id` (`gruppa_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Индексы таблицы `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Индексы таблицы `otdel`
--
ALTER TABLE `otdel`
  ADD PRIMARY KEY (`otdel_id`);

--
-- Индексы таблицы `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Индексы таблицы `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Индексы таблицы `payment_archive`
--
ALTER TABLE `payment_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Индексы таблицы `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Индексы таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `classroom_id` (`classroom_id`),
  ADD KEY `day_id` (`date`),
  ADD KEY `lesson_plan_id` (`lesson_plan_id`);

--
-- Индексы таблицы `special`
--
ALTER TABLE `special`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `branch` (`branch_id`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gruppa_id` (`gruppa_id`);

--
-- Индексы таблицы `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Индексы таблицы `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `otdel_id` (`otdel_id`),
  ADD KEY `branch` (`branch`);

--
-- Индексы таблицы `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_ibfk_1` (`gender_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT для таблицы `classroom`
--
ALTER TABLE `classroom`
  MODIFY `classroom_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `day`
--
ALTER TABLE `day`
  MODIFY `day_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT для таблицы `grade_accept`
--
ALTER TABLE `grade_accept`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT для таблицы `gruppa`
--
ALTER TABLE `gruppa`
  MODIFY `gruppa_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `homework_parent`
--
ALTER TABLE `homework_parent`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `homework_teacher`
--
ALTER TABLE `homework_teacher`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `lesson_num`
--
ALTER TABLE `lesson_num`
  MODIFY `lesson_num_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `lesson_plan`
--
ALTER TABLE `lesson_plan`
  MODIFY `lesson_plan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2235;

--
-- AUTO_INCREMENT для таблицы `otdel`
--
ALTER TABLE `otdel`
  MODIFY `otdel_id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `parent`
--
ALTER TABLE `parent`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT для таблицы `payment_archive`
--
ALTER TABLE `payment_archive`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT для таблицы `reference`
--
ALTER TABLE `reference`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `role_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `special`
--
ALTER TABLE `special`
  MODIFY `special_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `awards_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `student` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `grades_ibfk_3` FOREIGN KEY (`attend`) REFERENCES `attend` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `grades_ibfk_4` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `grade_accept`
--
ALTER TABLE `grade_accept`
  ADD CONSTRAINT `grade_accept_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `grade_accept_ibfk_3` FOREIGN KEY (`attend`) REFERENCES `attend` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `grade_accept_ibfk_4` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `grade_accept_ibfk_5` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `gruppa`
--
ALTER TABLE `gruppa`
  ADD CONSTRAINT `gruppa_ibfk_2` FOREIGN KEY (`branch`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `homework_parent`
--
ALTER TABLE `homework_parent`
  ADD CONSTRAINT `homework_parent_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `gruppa` (`gruppa_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `homework_parent_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `homework_parent_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `homework_parent_ibfk_4` FOREIGN KEY (`homework_teacher_id`) REFERENCES `homework_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `homework_parent_ibfk_5` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `homework_teacher`
--
ALTER TABLE `homework_teacher`
  ADD CONSTRAINT `homework_teacher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `homework_teacher_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `homework_teacher_ibfk_3` FOREIGN KEY (`gruppa_id`) REFERENCES `gruppa` (`gruppa_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `lesson_plan`
--
ALTER TABLE `lesson_plan`
  ADD CONSTRAINT `lesson_plan_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `gruppa` (`gruppa_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lesson_plan_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `teacher` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lesson_plan_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `special` (`special_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `manager_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `notice_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `notice_ibfk_3` FOREIGN KEY (`child_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `parent_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `payment_ibfk_5` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `payment_ibfk_6` FOREIGN KEY (`child_id`) REFERENCES `student` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `payment_ibfk_7` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `payment_archive`
--
ALTER TABLE `payment_archive`
  ADD CONSTRAINT `payment_archive_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `payment_archive_ibfk_4` FOREIGN KEY (`child_id`) REFERENCES `student` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `payment_archive_ibfk_5` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `reference`
--
ALTER TABLE `reference`
  ADD CONSTRAINT `reference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `student` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`classroom_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`lesson_plan_id`) REFERENCES `lesson_plan` (`lesson_plan_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `special`
--
ALTER TABLE `special`
  ADD CONSTRAINT `special_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `special_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`gruppa_id`) REFERENCES `gruppa` (`gruppa_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD CONSTRAINT `student_subjects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `student_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `subject_ibfk_2` FOREIGN KEY (`otdel_id`) REFERENCES `otdel` (`otdel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
