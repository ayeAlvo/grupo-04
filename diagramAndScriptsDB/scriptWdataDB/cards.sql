-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-01-2022 a las 01:40:50
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calamarket_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cards`
--

CREATE TABLE `cards` (
  `id` int(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `rating` int(3) NOT NULL,
  `image` varchar(60) NOT NULL,
  `create_data` date NOT NULL,
  `price` decimal(5,4) NOT NULL,
  `category_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cards`
--

INSERT INTO `cards` (`id`, `name`, `description`, `rating`, `image`, `create_data`, `price`, `category_id`) VALUES
(1, 'Ryu', 'Morbi vel lectus in quam fringilla rhoncus.', 2, '/images/calamardos-nft/ryu.jpg', '2021-03-08', '0.4820', 2),
(2, 'Sasuke', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 5, '/images/calamardos-nft/sasukeFinal.jpg', '2021-06-17', '0.9510', 3),
(3, 'Sailor Moon', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 8, '/images/calamardos-nft/sailor_moon1.jpg', '2021-11-03', '0.6830', 3),
(4, 'Sailor Moon', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 3, '/images/calamardos-nft/sailor_moon1.jpg', '2021-09-30', '0.9370', 1),
(5, 'Sasuke', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 6, '/images/calamardos-nft/sasukeFinal.jpg', '2021-07-01', '0.3320', 4),
(6, 'Sailor Moon', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 10, '/images/calamardos-nft/sailor_moon1.jpg', '2021-08-06', '0.6820', 3),
(7, 'Sasuke', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.', 3, '/images/calamardos-nft/sasukeFinal.jpg', '2021-08-21', '0.1070', 3),
(8, 'Ryu', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 1, '/images/calamardos-nft/ryu.jpg', '2021-03-27', '0.9900', 1),
(9, 'Ryu', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 6, '/images/calamardos-nft/ryu.jpg', '2021-04-07', '0.7450', 2),
(10, 'Sasuke', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 9, '/images/calamardos-nft/sasukeFinal.jpg', '2021-06-13', '0.9440', 4),
(11, 'Ryu', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 10, '/images/calamardos-nft/ryu.jpg', '2021-12-02', '0.4140', 4),
(12, 'Sasuke', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 9, '/images/calamardos-nft/sasukeFinal.jpg', '2021-04-16', '0.1780', 4),
(13, 'Sailor Moon', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 5, '/images/calamardos-nft/sailor_moon1.jpg', '2021-06-10', '0.2890', 2),
(14, 'Sasuke', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 2, '/images/calamardos-nft/sasukeFinal.jpg', '2021-10-05', '0.6060', 4),
(15, 'Sailor Moon', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 2, '/images/calamardos-nft/sailor_moon1.jpg', '2021-12-29', '0.3880', 1),
(16, 'Sailor Moon', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 3, '/images/calamardos-nft/sailor_moon1.jpg', '2021-08-07', '0.6690', 3),
(17, 'Sailor Moon', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 9, '/images/calamardos-nft/sailor_moon1.jpg', '2021-07-04', '0.4760', 2),
(18, 'Ryu', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 3, '/images/calamardos-nft/ryu.jpg', '2021-10-11', '0.2700', 2),
(19, 'Ryu', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', 5, '/images/calamardos-nft/ryu.jpg', '2021-03-14', '0.2510', 4),
(20, 'Sailor Moon', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 6, '/images/calamardos-nft/sailor_moon1.jpg', '2021-08-01', '0.2440', 4),
(21, 'Ryu', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 9, '/images/calamardos-nft/ryu.jpg', '2021-11-05', '0.2650', 1),
(22, 'Ryu', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 3, '/images/calamardos-nft/ryu.jpg', '2022-01-09', '0.2530', 2),
(23, 'Ryu', 'Maecenas rhoncus aliquam lacus.', 1, '/images/calamardos-nft/ryu.jpg', '2021-05-15', '0.5590', 2),
(24, 'Ryu', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 2, '/images/calamardos-nft/ryu.jpg', '2021-11-25', '0.3040', 4),
(25, 'Ryu14', 'Morbi vel lectus in quam fringilla rhoncus.', 7, '/images/calamardos-nft/ryu.jpg', '2021-09-15', '0.3620', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `category_card` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
