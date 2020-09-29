-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-09-2020 a las 05:54:40
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dashboardpelicula`
--

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
(30, '2014_10_12_000000_create_users_table', 1),
(31, '2014_10_12_100000_create_password_resets_table', 1),
(32, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(33, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(34, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(35, '2016_06_01_000004_create_oauth_clients_table', 1),
(36, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(37, '2020_09_27_001146_create_movies_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sipnosis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `sipnosis`, `year`, `created_at`, `updated_at`) VALUES
(7, 'ddsddsdssdsd', 'sdsdsdsdsdsdsd', 2003, '2020-09-29 00:38:55', '2020-09-29 00:38:55'),
(8, 'fdsfdsfdsf', 'dfdsfdsfdsf', 1994, '2020-09-29 00:39:37', '2020-09-29 00:39:37'),
(9, 'dsfdsfdsfdsfds', 'fdsfdsfdsfds', 2000, '2020-09-29 01:03:12', '2020-09-29 01:03:12'),
(10, 'fffgfgfgfgfgfgf', 'fgfgfgfgfgfgf', 2010, '2020-09-29 03:22:08', '2020-09-29 03:22:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01f2c51ac32f00d6fee606c15b25e46b13bb1e82f9d3af8f55effb4aad2cedb54247f65102ede8c2', 1, 1, 'authToken', '[]', 0, '2020-09-28 01:06:23', '2020-09-28 01:06:23', '2021-09-27 20:06:23'),
('178c48802dd33a1d38123e594720e513b88a37b3a3f0b2db9ba4f38df44db885eba8e2a737615d02', 1, 1, 'authToken', '[]', 0, '2020-09-28 21:06:47', '2020-09-28 21:06:47', '2021-09-28 16:06:47'),
('1b0b49d799dd18b511452aeaf034d694ec9ac393d178951b0b7fa1370d6c9aefe8e3da2667e9d6dd', 14, 1, 'authToken', '[]', 0, '2020-09-28 06:24:30', '2020-09-28 06:24:30', '2021-09-28 01:24:30'),
('1d23fc4cf6c6e02841ee4b91576e0647e05e332c292ad1a195544fe1952b5e72d4773fb7e92f1c9a', 1, 1, 'authToken', '[]', 0, '2020-09-28 01:02:37', '2020-09-28 01:02:37', '2021-09-27 20:02:37'),
('1e07e22d5bbdb31785575c35e48f4d87952a55619f262c0ab7a170e88238fdc2f5912387d8326b83', 1, 1, 'authToken', '[]', 0, '2020-09-28 01:03:00', '2020-09-28 01:03:00', '2021-09-27 20:03:00'),
('25a59ca97057ffc8f22b1cce3d455453203d784c86c595f97ec8bed6da0686d48609619aee8c7d7a', 13, 1, 'authToken', '[]', 0, '2020-09-28 06:22:55', '2020-09-28 06:22:55', '2021-09-28 01:22:55'),
('27b5d30a5acf6f6cb53a49b3367ac309503756198a4f4cb5d0783a01979698e603273a2cd2101bfc', 5, 1, 'authToken', '[]', 0, '2020-09-28 04:18:49', '2020-09-28 04:18:49', '2021-09-27 23:18:49'),
('283113028ffe3ed91a5e28a237c76862a7c89635743cdecead2231e9e6bc06698bce7c1b71b5c0c1', 23, 1, 'authToken', '[]', 0, '2020-09-28 13:00:48', '2020-09-28 13:00:48', '2021-09-28 08:00:48'),
('28f8b779cf747c902d809671a7ace3044a64184192dc4a1088f55af52e17d6d4b7ca3a060030b59c', 16, 1, 'authToken', '[]', 0, '2020-09-28 06:53:43', '2020-09-28 06:53:43', '2021-09-28 01:53:43'),
('36fc64e960d9ba0ac84a63d1bf8bef22b6ab8a97d87d495c68da3f52e5d49eb74dcb90e9c77b7223', 28, 1, 'authToken', '[]', 0, '2020-09-28 13:08:28', '2020-09-28 13:08:28', '2021-09-28 08:08:28'),
('394e64f48ef382b702cda75314e8616814af8bc6a68cb676ee4292270343ebf5b295f7a21e232f39', 1, 1, 'authToken', '[]', 0, '2020-09-29 08:22:24', '2020-09-29 08:22:24', '2021-09-29 03:22:24'),
('3a07476fed2a2e6a5b1ab5d4c2c4c0bd2f811e011258a105dc9d3274c6967bf184ba2ed1cbdaeb43', 20, 1, 'authToken', '[]', 0, '2020-09-28 12:57:06', '2020-09-28 12:57:06', '2021-09-28 07:57:06'),
('4995f8f1962d82f5856b68fb1dca5444acd2c4c32705cb81b7eb4adf16c417da2003d4f2110ae180', 31, 1, 'authToken', '[]', 0, '2020-09-28 13:14:28', '2020-09-28 13:14:28', '2021-09-28 08:14:28'),
('4dfbb74633cb6b1cb9fb6f369b1f0ca04efd3aabf2266c7b9028e37ea9f9077765c8b89aa876d1af', 34, 1, 'authToken', '[]', 0, '2020-09-28 13:25:48', '2020-09-28 13:25:48', '2021-09-28 08:25:48'),
('51062412bcd5d8bdd45df1d5c6e13999b4bc7de0f08e510c049c1ae3f2f39653498a166a69fee343', 22, 1, 'authToken', '[]', 0, '2020-09-28 12:59:44', '2020-09-28 12:59:44', '2021-09-28 07:59:44'),
('5a5912e1b07e16ab2c75bea2fe6e11a8429c886b6e2fa38d507bc41bc9a52dcb471166d307a8f26e', 30, 1, 'authToken', '[]', 0, '2020-09-28 13:11:23', '2020-09-28 13:11:23', '2021-09-28 08:11:23'),
('5da833af30257b2f5ce22b9f81c817c0724d68aca0f94ff45e21051547ee54f17d4552fd9ba7b3e8', 27, 1, 'authToken', '[]', 0, '2020-09-28 13:06:20', '2020-09-28 13:06:20', '2021-09-28 08:06:20'),
('5f04e9ead2eaa4136792532d8c1c20b440dcc95c278e0df2d7dbdfe060123a25c3434cf459c83f0b', 19, 1, 'authToken', '[]', 0, '2020-09-28 12:54:53', '2020-09-28 12:54:53', '2021-09-28 07:54:53'),
('6293f5f2dc0bab4c27f8a8b0b131c8969d2e59f4c9406411db4314f1315d410e4bedb0828208d125', 1, 1, 'authToken', '[]', 0, '2020-09-29 07:25:59', '2020-09-29 07:25:59', '2021-09-29 02:25:59'),
('64613f2f8408390009244d0f8f9ce095e7e21b697163f63b3bae36e984e345332f8318b06ed7074e', 1, 1, 'authToken', '[]', 0, '2020-09-27 20:42:10', '2020-09-27 20:42:10', '2021-09-27 15:42:10'),
('6d9fe0cffb5aea29d8c7f4ae9e67a798763a936b1f9b373a58327918be184eb74e7144beb90a9078', 3, 1, 'authToken', '[]', 0, '2020-09-27 20:42:41', '2020-09-27 20:42:41', '2021-09-27 15:42:41'),
('72e443ab501937b06a4ce8444e5ce83957d721d407d36367c74c1e80554cadc179c6b5be83604d1e', 7, 1, 'authToken', '[]', 0, '2020-09-28 05:28:03', '2020-09-28 05:28:03', '2021-09-28 00:28:03'),
('77a08bc1a343bae321d5df6c8067fec5984463fffc7137fd09cccabb6edd46bbe7ae9ca1094cf8fb', 1, 1, 'authToken', '[]', 0, '2020-09-28 00:57:26', '2020-09-28 00:57:26', '2021-09-27 19:57:26'),
('7b9ae32077bd4a3463964586f80d13e8f6553068113488a12f2d83109c17560891015f8faebe5108', 15, 1, 'authToken', '[]', 0, '2020-09-28 06:42:23', '2020-09-28 06:42:23', '2021-09-28 01:42:23'),
('80e7134178c91ef7f3c6cc526becdb9a3a4fa8196b190a25b266662a10a2178227aa577f62bd8cc6', 1, 1, 'authToken', '[]', 0, '2020-09-29 01:14:10', '2020-09-29 01:14:10', '2021-09-28 20:14:10'),
('85887804c21aaaabb237c3c8574daad9ffa5a18ba89081edd2d3266bd3a03eb69fa6e7928173f7f1', 29, 1, 'authToken', '[]', 0, '2020-09-28 13:09:46', '2020-09-28 13:09:46', '2021-09-28 08:09:46'),
('85f10fb3bfbdc782328321df72bc478693308fcdac6d48615423c2c99d263d8970394635f3f4678c', 17, 1, 'authToken', '[]', 0, '2020-09-28 12:30:21', '2020-09-28 12:30:21', '2021-09-28 07:30:21'),
('90b8960bd08d4dad43a921544aacd108ac8ed5569d40cf1319ee58666de60ca227c2c988c1afae20', 36, 1, 'authToken', '[]', 0, '2020-09-28 13:28:05', '2020-09-28 13:28:05', '2021-09-28 08:28:05'),
('975fb41539ccc1fa57a97e7da1c584b5184d2d80188849bec4facdba863a15443e878c8243766541', 37, 1, 'authToken', '[]', 0, '2020-09-28 13:28:50', '2020-09-28 13:28:50', '2021-09-28 08:28:50'),
('985838763c3455d6845b5dca3378fef2b02befaeb3b5abc153ac615fc99f5ff51ffc4fb5e59f0f87', 33, 1, 'authToken', '[]', 0, '2020-09-28 13:21:07', '2020-09-28 13:21:07', '2021-09-28 08:21:07'),
('a305bcd5e6648421acb547ac44c24cc86f5d4b08b3ed36e54f89f10c83955a6ec693054222b3da3e', 8, 1, 'authToken', '[]', 0, '2020-09-28 06:12:31', '2020-09-28 06:12:31', '2021-09-28 01:12:31'),
('a752e9dd0d698527208978a60926ce07e894a53e67f1cbf3fa12643159883f2e35452c5f0b71a3bc', 1, 1, 'authToken', '[]', 0, '2020-09-28 00:58:02', '2020-09-28 00:58:02', '2021-09-27 19:58:02'),
('a8d087e212f5e17947221aced7b7a55ed4e6a062a0e243bfd7a8bae1fac7eae2df1d2a1fd7ea91fc', 24, 1, 'authToken', '[]', 0, '2020-09-28 13:02:52', '2020-09-28 13:02:52', '2021-09-28 08:02:52'),
('aea0bd13616991771b4a8bf5f74c0c44ec271ab5e419767aaacb1de67b509c71d353cd962850e0b8', 1, 1, 'authToken', '[]', 0, '2020-09-28 00:56:38', '2020-09-28 00:56:38', '2021-09-27 19:56:38'),
('b2324350fa98999f9dfd6f0e0e85edae99dc86f56537da58e269b56e3544f97769e0d655cb2c91ee', 26, 1, 'authToken', '[]', 0, '2020-09-28 13:04:30', '2020-09-28 13:04:30', '2021-09-28 08:04:30'),
('b50320a299900620b77ff2eace41a9800fa19c19269ce0b36655155e0a5477261547c91f1ea4c82b', 1, 1, 'authToken', '[]', 0, '2020-09-28 21:03:17', '2020-09-28 21:03:17', '2021-09-28 16:03:17'),
('bde98814fd1f4c5dcd8ed1e3112a5fd4c1bdcdf4c6a71c478a87f6839576d60cf67f642a8655b0f6', 18, 1, 'authToken', '[]', 0, '2020-09-28 12:35:13', '2020-09-28 12:35:13', '2021-09-28 07:35:13'),
('cec7434d62e903860a2214499f362bea1e00a93666328ee295023ca01df610b86725b9b8f14316a4', 1, 1, 'authToken', '[]', 0, '2020-09-28 01:06:32', '2020-09-28 01:06:32', '2021-09-27 20:06:32'),
('dcdd1f185df1aab169a28d38a02336a99a7fb6d020326b7749a6ccf30eb90f966b05a3ff97bb0fa8', 40, 1, 'authToken', '[]', 0, '2020-09-28 13:32:20', '2020-09-28 13:32:20', '2021-09-28 08:32:20'),
('de4954bd07ca8db1552c532e7a13e4ec47ead8d89618ba2624009f45d5b0642104e436699319e4ef', 1, 1, 'authToken', '[]', 0, '2020-09-28 01:05:18', '2020-09-28 01:05:18', '2021-09-27 20:05:18'),
('e7b8bf77b3282a3f1c1cd72d708429636057e62978ce9dedd234f5eeedb2ff2004f30d0142b42284', 1, 1, 'authToken', '[]', 0, '2020-09-28 21:05:17', '2020-09-28 21:05:17', '2021-09-28 16:05:17'),
('e9cc9be3d7f598625a163b7c3b153adc754ab6cbcc7b8a4c5eab76ef51182236fa6ff574d1dc10b5', 1, 1, 'authToken', '[]', 0, '2020-09-29 02:34:26', '2020-09-29 02:34:26', '2021-09-28 21:34:26'),
('f0957ce567a7ad5c99c97450657f24336f5637c6f44d14aa9cdfdecf434587df8bed01704374dbae', 25, 1, 'authToken', '[]', 0, '2020-09-28 13:03:47', '2020-09-28 13:03:47', '2021-09-28 08:03:47'),
('f47192d58956b02ed14bd7c1d0348b296273ce076f47bc31a057f5ab18fa35a854a86d56ae734da6', 11, 1, 'authToken', '[]', 0, '2020-09-28 06:21:09', '2020-09-28 06:21:09', '2021-09-28 01:21:09'),
('f581207385f846db059cd525d0f8e5ed12ce1d9a55a1e0956b10a9bc76b37bb11ed5bc2852aaed66', 6, 1, 'authToken', '[]', 0, '2020-09-28 05:08:29', '2020-09-28 05:08:29', '2021-09-28 00:08:29'),
('f8dbe9cf03c34ebbc8654af1ef569c6cfa4bb4f754275e3fc2b1d1224d4e7cd175605138add39161', 32, 1, 'authToken', '[]', 0, '2020-09-28 13:16:39', '2020-09-28 13:16:39', '2021-09-28 08:16:39'),
('fa78382bfc564afdea485f731e25b974a5fd65516db2a90ba130639d234c40810a21be898857e461', 1, 1, 'authToken', '[]', 0, '2020-09-29 01:03:51', '2020-09-29 01:03:51', '2021-09-28 20:03:51'),
('fef2489bdca7cccaee6f7538a9ecfc82771d1d472d76b5997eb44e9be6dc103012ca9c34710f1077', 9, 1, 'authToken', '[]', 0, '2020-09-28 06:20:05', '2020-09-28 06:20:05', '2021-09-28 01:20:05'),
('ff20b28b7062734494c490b641ac25573b964d04f80ba073dddd7484418f804c3c712273af65c4a7', 1, 1, 'authToken', '[]', 0, '2020-09-27 19:11:01', '2020-09-27 19:11:01', '2021-09-27 14:11:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ybEYCPvqnip9ah0RhtTAXdkZ6gRvySKofuA4bZhS', 'http://localhost', 1, 0, 0, '2020-09-27 19:10:22', '2020-09-27 19:10:22'),
(2, NULL, 'Laravel Password Grant Client', 'GExNnaunvYJW6aQUgCBvhdFON3blrPH8AbnVwMfH', 'http://localhost', 0, 1, 0, '2020-09-27 19:10:22', '2020-09-27 19:10:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-27 19:10:22', '2020-09-27 19:10:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `nickname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prueba1', 'pbu5', 'prueba5@gmail.com', NULL, '$2y$10$z/8WnsNpOmOxIrJoLy27IOZpJPvT9Ge7yggWUaPiREF.CmUg999CO', NULL, '2020-09-27 19:07:59', '2020-09-27 19:07:59'),
(3, 'Prueba2', 'pbu6', 'prueba6@gmail.com', NULL, '$2y$10$48n9aV1Pu2ZyV/4i/C0G3.M8VIRDcQYjtiFDmTPuRU2xsiK3HtDAG', NULL, '2020-09-27 20:42:41', '2020-09-27 20:42:41'),
(5, 'Alberto', 'beto', 'beto@gmail.com', NULL, '$2y$10$NBdHYz6HWG9iwHDZdEBIx.8EkB1d6LnHufTbGzKXbwpnC2vQuMS/S', NULL, '2020-09-28 04:18:49', '2020-09-28 04:18:49'),
(6, 'karen', 'kn', 'kn@gmail.com', NULL, '$2y$10$8oROCer94GrsDHBklDu3Ouw.barJFSGqsTqR5rCBNNreu5fLNCqN6', NULL, '2020-09-28 05:08:29', '2020-09-28 05:08:29'),
(7, 'raulsalll', 'rabulll', 'rabul@gmail.com', NULL, '$2y$10$0BDAZbQy6jTEtAHBQSoZXu4MXz0ZvstXrxA66d3ZVu3emUgTJEeF.', NULL, '2020-09-28 05:28:02', '2020-09-28 05:28:02'),
(8, 'DSDSFDSF', 'SDDFD', 'SD@GMAIL.COM', NULL, '$2y$10$ghh97wiWlYkjhJ2QQlXRsOmDkS6jMdERBLw9XTpNHGRDgrP8pnegK', NULL, '2020-09-28 06:12:31', '2020-09-28 06:12:31'),
(9, 'fdfdfdf', 'dfdfdf', 'dfdfdfd@gmail.com', NULL, '$2y$10$tfkSP8.Zrxf4M//cM3sp6ep.NtS3GbjY1Ll.TCCPBso5DM4OamEdW', NULL, '2020-09-28 06:20:05', '2020-09-28 06:20:05'),
(11, 'hol mundo', 'heyssss', 'dfdfdfd@gmail.com', NULL, '$2y$10$ckG6j43b22dxrKFT9cgex.lEUqGM7dEbe.bMFJw.nIhnpAtwXT/bO', NULL, '2020-09-28 06:21:09', '2020-09-28 06:21:09'),
(13, 'golaaa', 'holaaaaaaaa', 'holagg@gmail.com', NULL, '$2y$10$.VCsqtExnIoIIG6ZAbYd0ea8deP8CKTM5w.hkCjRo8mAumwhxcMZe', NULL, '2020-09-28 06:22:55', '2020-09-28 06:22:55'),
(14, 'dsdsdsdsdsdsdsd', 'dsdsdsdsdsdsds', 'sdsdsdsdsds@gmail.com', NULL, '$2y$10$a5QSFSofktvFpRTincZlDu9TezsijaexHgYRtGqNq/UeZPqUAwKKy', NULL, '2020-09-28 06:24:30', '2020-09-28 06:24:30'),
(15, 'dfdfdffdfdfdfdfdfdff', 'dfdfdfdfdfdfdfdfdfddfdf', 'dfdfdfdfdfdfdfdfdf@gmail.com', NULL, '$2y$10$USRAmkHZzgLOu9ESlFO8xOOtpaNLSEWzZREXpBDB.ytqWGIzcraVy', NULL, '2020-09-28 06:42:23', '2020-09-28 06:42:23'),
(16, 'hgghhghghg', 'ghghghg', 'hghghgh@gmail.com', NULL, '$2y$10$p1QDLNfgBC5SrPU9p.2CDeCiUwYs.SkymBDCuNOymVxn1.DfKNlTi', NULL, '2020-09-28 06:53:43', '2020-09-28 06:53:43'),
(17, 'Alberto', 'Rodriguez', 'joase@gmail.com', NULL, '$2y$10$.pUnylMdtJhWcIHG9QYbmuLUtmho7qPfCUIDY0dCcGbyD.lmiyVRS', NULL, '2020-09-28 12:30:21', '2020-09-28 12:30:21'),
(18, 'gagagagagaga', 'gagagagag', 'gagagagagag@gmail.com', NULL, '$2y$10$oij1W.NmDFvP8SS.33G.Q.ESsY2Bngm.PnOsCc0NJ1Srib6.68EbC', NULL, '2020-09-28 12:35:13', '2020-09-28 12:35:13'),
(19, 'localhost', 'hosy', 'host@gmail.com', NULL, '$2y$10$8jAjp./V6btPo.fMQUOvbOpghixDv1GaO0SJffIshCtQeTuDvhhG6', NULL, '2020-09-28 12:54:52', '2020-09-28 12:54:52'),
(20, 'hollaaa', 'asdsdsds', 'dsdsdsdsd@gmail.com', NULL, '$2y$10$l2FeZ9bTYzpsScxqMw1FPeF5SMc0m/gNC4/NZdh1ODQwxXAl.Bi9y', NULL, '2020-09-28 12:57:05', '2020-09-28 12:57:05'),
(22, 'fdfdfdffdfdf', 'fdfdfdfddfdfdf', 'dfdfdfdfdfdfd@gmail.com', NULL, '$2y$10$oMm10ePfJuLHA9qy66R5r.FEyOCd7wqzo7NnLZ3HDl7sOJJA4pnZO', NULL, '2020-09-28 12:59:44', '2020-09-28 12:59:44'),
(23, 'heyyyyyyy', 'hheeeeeeeee', 'jjjjjjjj@gmail.com', NULL, '$2y$10$mLAsNcnvucjhH2Lpsebz3.bICpmNazQIcd1.VFTSRoSI1M1KHF8V2', NULL, '2020-09-28 13:00:48', '2020-09-28 13:00:48'),
(24, 'dfdfdfdfdfdfdfdfdf', 'dfdfdfdfdfdfdfdfdfdfdfdf', 'fdfdfdfdfdfdfdfd@gmail.com', NULL, '$2y$10$6M0Yl9DN9MEwKMRO2vt7n.myj.uNa3wsiwD3ch3LhjPW2qaCy4mIW', NULL, '2020-09-28 13:02:52', '2020-09-28 13:02:52'),
(25, 'dsdsdsdsdsddsdsdsdsd', 'sdsdsdsdsdsdsdsdsd', 'dsdsdsdsdsds@gmail.com', NULL, '$2y$10$KiFwUY1fz82tw5rDvbT4POh3pGBFBYoVksgpQMmuR2g.mEK96a7Ti', NULL, '2020-09-28 13:03:47', '2020-09-28 13:03:47'),
(26, 'dfdsfdsfdsfdsfdssgfdgfhgf', 'dfhtryrttryt', 'fdertreeg@gmail.com', NULL, '$2y$10$E7YYe21agj9LV7DCyFkxE.o0.unq1NwnJ63kYzII9jcCbrXIVDKy2', NULL, '2020-09-28 13:04:30', '2020-09-28 13:04:30'),
(27, 'ffdfdfdfdf', 'dfdfdfdfdfdfdfdf', 'fdfdfdfdffdfdfd@gmail.com', NULL, '$2y$10$6vmrY/1MZn7ZTiZMnIO06OmWUNMy5xdm0Gz130Jk3bWBzF0niywGS', NULL, '2020-09-28 13:06:20', '2020-09-28 13:06:20'),
(28, 'hehehehehehehhe', 'jeheehehehhehe', 'hehehehehh@gmail.com', NULL, '$2y$10$buslpHoijnm0Gfp3v8KLXOOUYrdL6WCs1qtQTg8CjcJRraQcsHl86', NULL, '2020-09-28 13:08:28', '2020-09-28 13:08:28'),
(31, 'trgegfgfdgfdv', 'cvdbdfhfgfd', 'xvnfgmhjmjgf@gmail.com', NULL, '$2y$10$lC8S2efmpam6jh0TrZIgKOccakU81a3qpM8Mb.f1zhLq5Df7pmZOO', NULL, '2020-09-28 13:14:27', '2020-09-28 13:14:27'),
(32, 'fdfdfdfdfdfdfdfdfdf', 'dfdfdfdfdfdfdfdfdfdfdfdfd', 'fdfdfdfdfdfdfdf@gmail.com', NULL, '$2y$10$MUQalHVwMyHtkBOQj7WIT.8Ggz67PUh3WFoLmrZiS2Z3jmzgMhc1.', NULL, '2020-09-28 13:16:39', '2020-09-28 13:16:39'),
(33, 'esta ssss', 'vaina', 'vaina@gamil.com', NULL, '$2y$10$xqJN8eKAdp/HqfG8HsNrN.krRwf9i54ldYaOKJ9Mb57kar/2pZhJe', NULL, '2020-09-28 13:21:06', '2020-09-28 13:21:06'),
(34, 'prueba final', 'final', 'final@gmail.com', NULL, '$2y$10$m40XrntBdgc.vCEVN/PX8e1zpWso2d6Uszui7/R1iKsQhyD/FZrgu', NULL, '2020-09-28 13:25:48', '2020-09-28 13:25:48'),
(36, 'fjdjjdjfaffsdfsda', 'finalsafdsfasdfsdfdsfds', 'finaladsf@gmail.com', NULL, '$2y$10$x2GqI99o5Ewc6Cc1Ua4g1OwviEvZROmgNL30Pwqad9LpgmW88OtvW', NULL, '2020-09-28 13:28:05', '2020-09-28 13:28:05'),
(37, 'fjdjjdjfaffsdfcxcxcsda', 'finalsafdsfcxcxcxcxasdfsdfdsfds', 'finaladscxcxcxcf@gmail.com', NULL, '$2y$10$fNWAEkubVLPy3k5QzdBDieQL6dIehtMV6lJjeurtuBThkcTE6cdT6', NULL, '2020-09-28 13:28:50', '2020-09-28 13:28:50'),
(40, 'fdfdsfdsfsddhghghdg', 'gfgdfdsfdsgfdhghytjtj', 'sdgfdghytrytjtyjghgf@gmail.com', NULL, '$2y$10$LrNvzwQSPgjTYNjPcqhss.eHfG3mGE2SY.w82rwTXyZbCkxSHvwSa', NULL, '2020-09-28 13:32:20', '2020-09-28 13:32:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nickname_unique` (`nickname`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
