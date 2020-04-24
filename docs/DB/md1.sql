-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2020 a las 07:03:16
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `md1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branch_offices`
--

CREATE TABLE `branch_offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_office_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `branch_offices`
--

INSERT INTO `branch_offices` (`id`, `branch_office_name`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'R1_SUCURSAL_1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diners`
--

CREATE TABLE `diners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diner_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diner_nicks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `drinks`
--

CREATE TABLE `drinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drink_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `drink_branch_offices`
--

CREATE TABLE `drink_branch_offices` (
  `drink_id` bigint(20) UNSIGNED NOT NULL,
  `branch_office_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_branch_offices`
--

CREATE TABLE `food_branch_offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `branch_office_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` double NOT NULL,
  `branch_office_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredient_recipes`
--

CREATE TABLE `ingredient_recipes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_unit` double NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `drink_id` bigint(20) UNSIGNED DEFAULT NULL,
  `food_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_restaurant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rfc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `restaurants`
--

INSERT INTO `restaurants` (`id`, `name_restaurant`, `rfc`, `created_at`, `updated_at`) VALUES
(1, 'Restaurant 1', 'rest2020', NULL, NULL),
(2, 'Restaurant 2', 'refrest2', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurant_users`
--

CREATE TABLE `restaurant_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `restaurant_users`
--

INSERT INTO `restaurant_users` (`id`, `user_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_number` int(11) NOT NULL,
  `branch_offices_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_diners`
--

CREATE TABLE `table_diners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `diner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_drinks`
--

CREATE TABLE `table_drinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drink_id` bigint(20) UNSIGNED NOT NULL,
  `table_diner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_foods`
--

CREATE TABLE `table_foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `table_diner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_restaurant_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `branch_office_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_restaurant_name`, `nick_name`, `email`, `email_verified_at`, `password`, `branch_office_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'carlos cen', 'carlos', 'carlos@prueba.com', NULL, '$2y$10$k811AJHNaV/FrKSLRL76xeRfSXeasEvqMj2m7eBA0VtAQjbM1Gmjq', NULL, NULL, NULL, NULL),
(2, 'Luis', 'luis', 'luis@prueba.com', NULL, '$2y$10$k811AJHNaV/FrKSLRL76xeRfSXeasEvqMj2m7eBA0VtAQjbM1Gmjq', NULL, NULL, NULL, NULL),
(3, 'r1_s1_u1', 'r1_s1_u1', 'r1_s1_u1@prueba.com', NULL, '$2y$10$k811AJHNaV/FrKSLRL76xeRfSXeasEvqMj2m7eBA0VtAQjbM1Gmjq', 1, NULL, NULL, NULL),
(4, 'usuario2', 'usuario2', 'usuario2@prueba.com', NULL, '$2y$10$k811AJHNaV/FrKSLRL76xeRfSXeasEvqMj2m7eBA0VtAQjbM1Gmjq', NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `branch_offices`
--
ALTER TABLE `branch_offices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_offices_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `diners`
--
ALTER TABLE `diners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drinks_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `drink_branch_offices`
--
ALTER TABLE `drink_branch_offices`
  ADD KEY `drink_branch_offices_drink_id_foreign` (`drink_id`),
  ADD KEY `drink_branch_offices_branch_office_id_foreign` (`branch_office_id`);

--
-- Indices de la tabla `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `food_branch_offices`
--
ALTER TABLE `food_branch_offices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_branch_offices_food_id_foreign` (`food_id`),
  ADD KEY `food_branch_offices_branch_office_id_foreign` (`branch_office_id`);

--
-- Indices de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_branch_office_id_foreign` (`branch_office_id`);

--
-- Indices de la tabla `ingredient_recipes`
--
ALTER TABLE `ingredient_recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredient_recipes_ingredient_id_foreign` (`ingredient_id`),
  ADD KEY `ingredient_recipes_drink_id_foreign` (`drink_id`),
  ADD KEY `ingredient_recipes_food_id_foreign` (`food_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restaurant_users`
--
ALTER TABLE `restaurant_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_users_user_id_foreign` (`user_id`),
  ADD KEY `restaurant_users_restaurant_id_foreign` (`restaurant_id`);

--
-- Indices de la tabla `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `table_diners`
--
ALTER TABLE `table_diners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_diners_table_id_foreign` (`table_id`),
  ADD KEY `table_diners_diner_id_foreign` (`diner_id`);

--
-- Indices de la tabla `table_drinks`
--
ALTER TABLE `table_drinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_drinks_drink_id_foreign` (`drink_id`),
  ADD KEY `table_drinks_table_diner_id_foreign` (`table_diner_id`);

--
-- Indices de la tabla `table_foods`
--
ALTER TABLE `table_foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_foods_food_id_foreign` (`food_id`),
  ADD KEY `table_foods_table_diner_id_foreign` (`table_diner_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_branch_office_id_foreign` (`branch_office_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `branch_offices`
--
ALTER TABLE `branch_offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `diners`
--
ALTER TABLE `diners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `food_branch_offices`
--
ALTER TABLE `food_branch_offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingredient_recipes`
--
ALTER TABLE `ingredient_recipes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `restaurant_users`
--
ALTER TABLE `restaurant_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `table_diners`
--
ALTER TABLE `table_diners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `table_drinks`
--
ALTER TABLE `table_drinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `table_foods`
--
ALTER TABLE `table_foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `branch_offices`
--
ALTER TABLE `branch_offices`
  ADD CONSTRAINT `branch_offices_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Filtros para la tabla `drinks`
--
ALTER TABLE `drinks`
  ADD CONSTRAINT `drinks_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Filtros para la tabla `drink_branch_offices`
--
ALTER TABLE `drink_branch_offices`
  ADD CONSTRAINT `drink_branch_offices_branch_office_id_foreign` FOREIGN KEY (`branch_office_id`) REFERENCES `branch_offices` (`id`),
  ADD CONSTRAINT `drink_branch_offices_drink_id_foreign` FOREIGN KEY (`drink_id`) REFERENCES `drinks` (`id`);

--
-- Filtros para la tabla `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Filtros para la tabla `food_branch_offices`
--
ALTER TABLE `food_branch_offices`
  ADD CONSTRAINT `food_branch_offices_branch_office_id_foreign` FOREIGN KEY (`branch_office_id`) REFERENCES `branch_offices` (`id`),
  ADD CONSTRAINT `food_branch_offices_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`);

--
-- Filtros para la tabla `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_branch_office_id_foreign` FOREIGN KEY (`branch_office_id`) REFERENCES `branch_offices` (`id`);

--
-- Filtros para la tabla `ingredient_recipes`
--
ALTER TABLE `ingredient_recipes`
  ADD CONSTRAINT `ingredient_recipes_drink_id_foreign` FOREIGN KEY (`drink_id`) REFERENCES `drinks` (`id`),
  ADD CONSTRAINT `ingredient_recipes_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`),
  ADD CONSTRAINT `ingredient_recipes_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`);

--
-- Filtros para la tabla `restaurant_users`
--
ALTER TABLE `restaurant_users`
  ADD CONSTRAINT `restaurant_users_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`),
  ADD CONSTRAINT `restaurant_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `table_diners`
--
ALTER TABLE `table_diners`
  ADD CONSTRAINT `table_diners_diner_id_foreign` FOREIGN KEY (`diner_id`) REFERENCES `diners` (`id`),
  ADD CONSTRAINT `table_diners_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Filtros para la tabla `table_drinks`
--
ALTER TABLE `table_drinks`
  ADD CONSTRAINT `table_drinks_drink_id_foreign` FOREIGN KEY (`drink_id`) REFERENCES `drinks` (`id`),
  ADD CONSTRAINT `table_drinks_table_diner_id_foreign` FOREIGN KEY (`table_diner_id`) REFERENCES `table_diners` (`id`);

--
-- Filtros para la tabla `table_foods`
--
ALTER TABLE `table_foods`
  ADD CONSTRAINT `table_foods_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`),
  ADD CONSTRAINT `table_foods_table_diner_id_foreign` FOREIGN KEY (`table_diner_id`) REFERENCES `table_diners` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_branch_office_id_foreign` FOREIGN KEY (`branch_office_id`) REFERENCES `branch_offices` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
