-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2021 a las 20:11:02
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
-- Base de datos: `solange`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `associated_clients_and_projects`
--

CREATE TABLE `associated_clients_and_projects` (
  `id` int(11) NOT NULL,
  `clients_id` int(11) DEFAULT NULL,
  `projects_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `associated_clients_and_projects`
--

INSERT INTO `associated_clients_and_projects` (`id`, `clients_id`, `projects_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `associated_partners_and_collaborator_areas`
--

CREATE TABLE `associated_partners_and_collaborator_areas` (
  `id` int(11) NOT NULL,
  `partners_id` int(11) DEFAULT NULL,
  `collaborator_areas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `associated_partners_and_collaborator_areas`
--

INSERT INTO `associated_partners_and_collaborator_areas` (`id`, `partners_id`, `collaborator_areas_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `associated_projects_and_partners`
--

CREATE TABLE `associated_projects_and_partners` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) DEFAULT NULL,
  `partners_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `associated_projects_and_partners`
--

INSERT INTO `associated_projects_and_partners` (`id`, `projects_id`, `partners_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `associated_projects_and_tags`
--

CREATE TABLE `associated_projects_and_tags` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) DEFAULT NULL,
  `tags_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `associated_projects_and_tags`
--

INSERT INTO `associated_projects_and_tags` (`id`, `projects_id`, `tags_id`) VALUES
(1, 1, 2),
(2, 1, 12),
(3, 1, 1),
(4, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `category_title` varchar(255) DEFAULT NULL,
  `category_description` text DEFAULT NULL,
  `picture` varchar(255) DEFAULT '',
  `projects_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `url_string`, `category_title`, `category_description`, `picture`, `projects_id`) VALUES
(1, 'residential', 'Residential', 'Affordable Housing', 'pinonpinexeriscapeserquis.jpg', NULL),
(2, 'commercial', 'Commercial', '', '', NULL),
(3, 'ludic-landscapes', 'Ludic Landscapes', '', '', NULL),
(4, 'affordable-housing', 'Affordable Housing', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(255) DEFAULT NULL,
  `since` datetime DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(48) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `last_contact` int(11) DEFAULT NULL,
  `contact_today` tinyint(1) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `url_string`, `client_name`, `client_email`, `telephone_number`, `since`, `street_address`, `address_line_2`, `city`, `state`, `zip_code`, `active`, `details`, `last_contact`, `contact_today`, `categories_id`) VALUES
(1, 'gourynieto-club-casitas', 'Goury-Nieto Club Casitas', 'client@email.com', '', '1970-01-01 01:00:00', 'Club Casitas', 'Lot 751', '', '', '', 1, '', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collaborator_areas`
--

CREATE TABLE `collaborator_areas` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `collaborator_areas`
--

INSERT INTO `collaborator_areas` (`id`, `url_string`, `area`) VALUES
(1, 'art', 'Art'),
(2, 'contractor', 'Contractor'),
(3, 'interior-designer', 'Interior Designer'),
(4, 'photographer', 'Photographer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `target_table` varchar(125) DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `comment`, `date_created`, `user_id`, `target_table`, `update_id`, `code`) VALUES
(1, 'This is a comment', 1621792629, 1, 'partners', 1, 'GSdCHC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `media_name` varchar(255) DEFAULT NULL,
  `media_link` varchar(255) DEFAULT NULL,
  `new_text` text DEFAULT NULL,
  `new_date` int(11) DEFAULT NULL,
  `upload_new_date` int(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `collaborator_name` varchar(255) DEFAULT NULL,
  `partner_email` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_telephone_number` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(48) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `last_contact` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partners`
--

INSERT INTO `partners` (`id`, `url_string`, `collaborator_name`, `partner_email`, `contact_person`, `contact_telephone_number`, `street_address`, `address_line_2`, `city`, `state`, `zip_code`, `last_contact`) VALUES
(1, 'rangewest-gallery-madrid-nm', 'Rangewest gallery Madrid NM', 'partner@email.com', '', '', 'Street Adress', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `started_date` date DEFAULT NULL,
  `finished_date` date DEFAULT NULL,
  `project_description` text DEFAULT NULL,
  `project_folder` varchar(255) DEFAULT NULL,
  `best_pic_folder` varchar(255) DEFAULT NULL,
  `live_on_website` tinyint(1) DEFAULT NULL,
  `link_to_website` varchar(255) DEFAULT NULL,
  `link_to_houzz` varchar(255) DEFAULT NULL,
  `postcard` tinyint(1) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `cost_from` decimal(7,2) DEFAULT NULL,
  `cost_to` decimal(7,2) DEFAULT NULL,
  `final_cost` decimal(7,2) DEFAULT NULL,
  `clients_id` int(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `url_string`, `project_name`, `project_title`, `location`, `started_date`, `finished_date`, `project_description`, `project_folder`, `best_pic_folder`, `live_on_website`, `link_to_website`, `link_to_houzz`, `postcard`, `date_created`, `cost_from`, `cost_to`, `final_cost`, `clients_id`, `picture`) VALUES
(1, 'gourynieto-club-casitas', 'Goury-Nieto Club Casitas', 'Retreat Home', 'Club Casitas Lot 751', '1970-01-01', '1970-01-01', 'The home is an escape. With the proximity to the golf course and clubhouse, it is the perfect location to retreat and enjoy the leisurely parts of life. Thus, the celebration of the tranquil was a driving factor in the landscape design. Our palette was one approach to achieve this serenity. We refined the walkways and portals, using a light tile that contrasts with the dark color of the oil-rubbed steel that defines the edges in the landscape. Smooth white pebbles are found within steel planters throughout the site. These pebbles become a powerful, yet quiet, statement when paired with the gravel mulch that is used as ground cover for the entirety of the site. Through materiality and a sensitive definition of spaces, we have provided our clients with a design that will be timeless, offering them serene outdoor living to enjoy over the years. The library patio wall was the confluence design By S+A craft by Josh Gannon and an art piece from their Gallery Rangewest read less', 'Z:\\00-SS-2019\\Tryk\\ClubCasitas-Lot 751', '/Nextcloud/serquis/PHOTOS/2019/Gouy-Nieto_Club Casitas', 0, 'https://www.houzz.com/hznb/projects/modern-home-pj-vj~6292609', '/Nextcloud/serquis/PHOTOS/2019/Gouy-Nieto_Club Casitas', 0, 1621696874, '0.00', '0.00', '0.00', 1, 'geometricangularstairsserquis.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `url_string`, `tag_name`) VALUES
(1, 'concrete', 'Concrete'),
(2, 'contemporary', 'Contemporary'),
(3, 'dessert', 'Dessert'),
(4, 'fence', 'Fence'),
(5, 'firepit', 'FirePit'),
(6, 'metal', 'Metal'),
(7, 'native-plants', 'Native Plants'),
(8, 'parade-of-homes', 'Parade of Homes'),
(9, 'patterns', 'Patterns'),
(10, 'sculpture', 'Sculpture'),
(11, 'water-feature', 'Water Feature'),
(12, 'custom-design', 'Custom Design');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `testimonial_title` varchar(255) DEFAULT NULL,
  `testimonial_name` varchar(255) DEFAULT NULL,
  `date_posted` int(11) DEFAULT NULL,
  `testimonial_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trongate_administrators`
--

CREATE TABLE `trongate_administrators` (
  `id` int(11) NOT NULL,
  `username` varchar(65) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `trongate_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trongate_administrators`
--

INSERT INTO `trongate_administrators` (`id`, `username`, `password`, `trongate_user_id`) VALUES
(1, 'admin', '$2y$11$SoHZDvbfLSRHAi3WiKIBiu.tAoi/GCBBO4HRxVX1I3qQkq3wCWfXi', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trongate_tokens`
--

CREATE TABLE `trongate_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(125) DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `expiry_date` int(11) DEFAULT NULL,
  `code` varchar(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trongate_tokens`
--

INSERT INTO `trongate_tokens` (`id`, `token`, `user_id`, `expiry_date`, `code`) VALUES
(3, 'rSkTpK76n83T_El9qBMwJIo44zwlrCSf', 1, 1621876415, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trongate_users`
--

CREATE TABLE `trongate_users` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `user_level_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trongate_users`
--

INSERT INTO `trongate_users` (`id`, `code`, `user_level_id`) VALUES
(1, '2m8063hKZIU0gYXc1Lu33VuIl9h2xHbS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trongate_user_levels`
--

CREATE TABLE `trongate_user_levels` (
  `id` int(11) NOT NULL,
  `level_title` varchar(125) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trongate_user_levels`
--

INSERT INTO `trongate_user_levels` (`id`, `level_title`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websites`
--

CREATE TABLE `websites` (
  `id` int(11) NOT NULL,
  `url_string` varchar(255) DEFAULT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_address` varchar(255) DEFAULT NULL,
  `website_address_2` varchar(255) DEFAULT NULL,
  `website_phone` varchar(255) DEFAULT NULL,
  `website_email` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `websites`
--

INSERT INTO `websites` (`id`, `url_string`, `website_name`, `website_address`, `website_address_2`, `website_phone`, `website_email`, `picture`) VALUES
(1, 'serquis--associates', 'Serquis + Associates', '922A Shoofly St, Suite #201', 'Santa Fe, NM 87505', 'T: (505) 629 - 1009', 'contact@serquis.com', '_LOGO-image-text-B-n-04.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `associated_clients_and_projects`
--
ALTER TABLE `associated_clients_and_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `associated_partners_and_collaborator_areas`
--
ALTER TABLE `associated_partners_and_collaborator_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `associated_projects_and_partners`
--
ALTER TABLE `associated_projects_and_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `associated_projects_and_tags`
--
ALTER TABLE `associated_projects_and_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `collaborator_areas`
--
ALTER TABLE `collaborator_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trongate_administrators`
--
ALTER TABLE `trongate_administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trongate_tokens`
--
ALTER TABLE `trongate_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trongate_users`
--
ALTER TABLE `trongate_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trongate_user_levels`
--
ALTER TABLE `trongate_user_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `associated_clients_and_projects`
--
ALTER TABLE `associated_clients_and_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `associated_partners_and_collaborator_areas`
--
ALTER TABLE `associated_partners_and_collaborator_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `associated_projects_and_partners`
--
ALTER TABLE `associated_projects_and_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `associated_projects_and_tags`
--
ALTER TABLE `associated_projects_and_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `collaborator_areas`
--
ALTER TABLE `collaborator_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trongate_administrators`
--
ALTER TABLE `trongate_administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `trongate_tokens`
--
ALTER TABLE `trongate_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `trongate_users`
--
ALTER TABLE `trongate_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `trongate_user_levels`
--
ALTER TABLE `trongate_user_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
