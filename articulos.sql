-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2022 a las 20:11:19
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `articulos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombre`, `descripcion`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Meda Kuvalis I', 'Officia odit deleniti quis sapiente. Quia eum similique aut occaecati ad. Neque harum in aut repudiandae. Nulla perspiciatis aut ipsa temporibus.', 348, '2022-05-19 22:16:12', '2022-05-19 22:20:01'),
(2, 'Mrs. Annetta Toy', 'Ut in labore excepturi tempora dolor vel et. Sed optio nobis officia fugit aut itaque sunt placeat. Voluptas nisi magnam deserunt ipsam ut et. Dolorem hic vel similique sed consequatur.', 882, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(3, 'Dr. Ali McKenzie', 'Quibusdam delectus quae harum id facere dolorem. Ducimus consequuntur asperiores ipsam nulla. Dolor id quis sit qui fugiat. Unde atque accusamus qui tempora aperiam.', 679, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(4, 'Nettie Reynolds', 'Et in dolor aut ad. Autem mollitia et ipsam nihil. Asperiores ipsum minima impedit corporis voluptas quo.', 28, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(5, 'Dr. Isidro Gutmann DVM', 'Autem quia omnis aperiam voluptatem aut. Et sunt aut cumque quisquam repellendus voluptatem quisquam dignissimos. Ut rerum praesentium velit et. Minima commodi veniam omnis quia est eaque eius.', 626, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(6, 'Prof. Hope Hayes', 'Sapiente ut esse consequatur omnis ut earum. Similique error consequatur aspernatur rem. Omnis occaecati quidem et repudiandae dolorum veniam.', 433, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(7, 'Candace Price', 'Atque consequatur sit cupiditate reiciendis ut delectus qui. Corporis quae architecto eius esse. Sit aut ullam voluptatibus eos aut.', 1, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(8, 'Mrs. Astrid Hodkiewicz', 'Qui porro quisquam itaque quod itaque odio. Vel sint doloribus quod expedita nesciunt alias. Dolores deleniti consequatur minus laboriosam fugiat quisquam omnis. Non necessitatibus culpa nesciunt est accusantium ea dolores. Molestias minus ut aspernatur esse ut labore.', 913, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(9, 'Dr. Paolo Mitchell', 'Vel itaque temporibus ex eos. Eligendi consectetur blanditiis molestiae. Velit enim quas mollitia quibusdam ducimus aut quod. Odit laudantium tempore ratione velit tempora ad sint iure.', 233, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(10, 'Dr. Monserrate Mante Jr.', 'Non est impedit voluptatem sint. Quis dicta cupiditate minima harum iste rem. Et nihil consequatur et eius.', 849, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(11, 'Jennings Moore', 'Laborum enim nulla inventore et. Quia voluptatibus occaecati optio officiis nisi eligendi nam. Ipsa laborum doloribus cumque sunt.', 807, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(12, 'Mrs. Kara Connelly Sr.', 'Iste vero placeat aut sit perferendis ipsa sint. Quia omnis tenetur eum nam dolor dolorem. Molestiae officiis nemo accusamus iste. Consequuntur aliquid impedit voluptates dignissimos.', 688, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(13, 'Jerel Tromp', 'Perspiciatis nesciunt id nostrum dolorum. Ea et delectus velit. Provident laudantium facere officia qui. Qui voluptas et voluptates deserunt. Sequi doloremque assumenda dolores voluptatem distinctio eos.', 106, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(14, 'Prof. Trey Oberbrunner', 'Illum qui delectus eos voluptatem. Sint est vel rem excepturi excepturi qui est. Autem illum quidem similique quaerat. Quae ad vel sequi quia vel aperiam.', 160, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(15, 'Dr. Toney Stiedemann', 'Perferendis fuga perspiciatis qui placeat. Cumque ea id sit vel ut nulla aut. Est occaecati neque nisi quam et. Et architecto nam commodi sit. Aut earum minima dicta qui dolore.', 705, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(16, 'Georgiana Koch', 'Necessitatibus iste accusantium libero sed. Labore sed incidunt incidunt porro quia eum molestiae. Quisquam excepturi eaque illum cupiditate quisquam qui ipsam. Vel dolores doloribus illum in dolor voluptatibus deleniti.', 419, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(17, 'Dr. Jaeden Mueller Sr.', 'Eum voluptatem sed laboriosam velit nemo. Mollitia necessitatibus velit iure perferendis vitae. Nulla ipsa voluptatem quod officia recusandae aspernatur.', 92, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(18, 'Kellen Rath', 'Blanditiis ab et consequatur labore repellat. Quaerat sunt qui quo dignissimos temporibus pariatur et. Excepturi totam earum quia corrupti ut est rerum.', 433, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(19, 'Prof. Nasir Waters Jr.', 'Suscipit magnam vitae dolorum sit eius eveniet. Dignissimos modi qui ut fuga et deleniti et. Pariatur fugit et ea ab est. Nihil corrupti aut suscipit soluta.', 890, '2022-05-19 22:16:12', '2022-05-19 22:16:12'),
(20, 'Stuart Kunde IV', 'Dolores nostrum nihil temporibus. Voluptate provident at minima nobis. Cumque voluptatem culpa aperiam ut qui. Dolores pariatur officiis commodi dolore.', 620, '2022-05-19 22:16:12', '2022-05-19 22:16:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_19_170055_create_articulos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
