-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 06 2024 г., 20:28
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `flowerShop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `adminID` int NOT NULL,
  `login` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`adminID`, `login`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `customerID` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`customerID`, `name`, `phoneNumber`, `email`, `address`) VALUES
(1, 'Вова', '+79851231212', 'tyr@tyr.ru', 'улица Ленина 36, квартира 16'),
(2, 'Алина', '+79661235656', 'wer@ert', 'ул. Бульвар им. Т. Бембеева, 2'),
(3, 'Кеша', '+79260662055', 'minchenkova06nastya@gmail.com', 'проспект Античный 9'),
(4, 'Коля', '+79784514950', 'minch@gmail.com', 'улица Героев Бреста 22, квартира 14'),
(5, 'Алёна', '+79661235656', 'wer@ert', 'улица Цветочная 23, квартира 78'),
(6, 'Нино', '+79787153953', 'jhgfd@kjhgfds', 'улица Пушкина 23, квартира 12'),
(7, 'Мария', '+79561255696', 'ytre@uytrew', 'улица Благородная 8'),
(8, 'Акардий', '+71111111111', 'wer@ert', 'улица Ленина 36, квартира 16'),
(9, 'Элина', '+79586322255', 'tyr@tyr.ru', 'улица Ленина 36, квартира 16'),
(10, 'Анна', '+72238569663', 'gfdsa@HGFDSA', 'Проспект Античный 9, кв. 167'),
(11, 'Маня', '+71112326336', 'qwerty@reqqr', 'улица Быкова 9, квартира 117'),
(12, 'Элина', '+7569563232', 'elina@asd.ru', 'улица Героев Бреста 22, квартира 14');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `orderID` int NOT NULL,
  `customerID` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `orderDate`, `status`) VALUES
(1, 1, '2024-06-05 11:57:21', 'Подтверждена'),
(3, 3, '2024-06-05 12:07:13', 'Подтверждена'),
(4, 4, '2024-06-05 14:25:08', 'Подтверждена'),
(5, 5, '2024-06-05 19:19:37', 'Подтверждена'),
(6, 6, '2024-06-05 19:20:10', 'Подтверждена'),
(8, 8, '2024-06-05 21:19:47', 'Подтверждена'),
(9, 9, '2024-06-06 00:00:47', 'Подтверждена'),
(10, 10, '2024-06-06 00:03:52', 'Подтверждена'),
(11, 11, '2024-06-06 16:59:08', 'Подтверждена'),
(12, 12, '2024-06-06 18:52:33', 'Подана');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `orderItemID` int NOT NULL,
  `orderID` int DEFAULT NULL,
  `productID` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`orderItemID`, `orderID`, `productID`, `quantity`) VALUES
(1, 1, 1, 9),
(4, 3, 1, 1),
(5, 3, 4, 3),
(7, 4, 12, 3),
(8, 5, 2, 3),
(10, 6, 10, 1),
(12, 8, 1, 5),
(14, 9, 10, 3),
(15, 10, 1, 1),
(18, 11, 13, 3),
(19, 12, 1, 3),
(20, 12, 13, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `productID` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`productID`, `name`, `imageURL`, `description`, `price`, `quantity`) VALUES
(1, 'Роза', 'images/roza.jpg', 'Красная роза', '100.00', 19),
(2, 'Тюльпан', 'images/tyulpan.jpg', 'Желтый тюльпан', '50.00', 27),
(3, 'Лилия', 'images/lilia.jpg', 'Белая лилия', '150.00', 10),
(4, 'Орхидея', 'images/orhideya.jpg', 'Розово-белая орхидея', '250.00', 9),
(5, 'Фиалка', 'images/fialka.jpeg', 'Фиолетовая фиалка в горшке', '600.00', 9),
(6, 'Хризантема', 'images/hrizantema.jpg', 'Розово-желтая хризантема', '350.00', 0),
(7, 'Свадебный букет', 'images/svadebny.jpg', 'Нежный букетик в светлых тонах', '1000.00', 5),
(8, 'Букет кустовой розы', 'images/kustovRoza.jpg', 'Букет из 101 кустовой розы', '10000.00', 7),
(9, 'Белая плюмерия', 'images/plumeria.jpg', 'Бело-жёлтая плюмерия', '300.00', 7),
(10, 'Розовая плюмерия', 'images/plumeria_roz.jpg', 'Розово-жёлтая плюмерия', '300.00', 9),
(11, 'Астерия', 'images/asteria.jpg', 'Фиолетовая астерия', '220.00', 9),
(12, 'Нарцисс', 'images/narcis.jpg', 'Молодой нарцисс', '170.00', 6),
(13, 'Ромашка', 'images/romashka.jpg', 'Полевая ромашка', '80.00', 16);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`orderItemID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `orderID` (`orderID`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `orderItemID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `productID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`);

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  ADD CONSTRAINT `orderID` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
