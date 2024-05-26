-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 02:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omaer_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2024_02_24_105958_create_posts_table', 1),
(20, '2024_04_01_230212_create_permissions_table', 1),
(21, '2024_04_01_230408_create_roles_table', 1),
(22, '2024_04_01_232130_create_users_permissions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `post_image`, `body`, `created_at`, `updated_at`) VALUES
(3, 7, 'Perspiciatis fuga id sunt quos esse doloremque occaecati.', 'https://via.placeholder.com/900x300.png/00ddff?text=architecto', 'Rem labore ea in nam est voluptas eos. Recusandae ratione consequatur minima itaque sapiente. Quam repellendus odit nulla voluptatem nihil quia.', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(4, 8, 'Laboriosam sit facere distinctio debitis deleniti vel sed omnis.', 'https://via.placeholder.com/900x300.png/00ddaa?text=tempora', 'Assumenda architecto beatae minima unde. Aperiam illo autem quia ut.', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(5, 9, 'Voluptas non similique distinctio veniam.', 'https://via.placeholder.com/900x300.png/004433?text=sit', 'Modi ut minus odit facilis et voluptas neque tempora. Commodi quae nobis sit exercitationem aut. In est numquam asperiores quia. Blanditiis exercitationem ut praesentium.', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(6, 10, 'Qui veniam laudantium recusandae suscipit exercitationem ut.', 'https://via.placeholder.com/900x300.png/000000?text=quam', 'Adipisci culpa veniam nihil repellat sit quis. Minus occaecati nam nam rem quo. Sequi fuga quos enim necessitatibus repudiandae inventore.', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(7, 11, 'Nobis libero ut consequatur quis consectetur officia saepe.', 'https://via.placeholder.com/900x300.png/00ccaa?text=sunt', 'Debitis accusantium dolorem dolor vel quas amet. Et blanditiis molestias non excepturi. Voluptatem blanditiis eum sint laudantium modi qui. Rerum qui accusamus veritatis voluptatum ab voluptatibus.', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(8, 12, 'Et sunt iure enim iure deserunt.', 'https://via.placeholder.com/900x300.png/00ff99?text=libero', 'Consequatur ipsam sit est. Voluptas minus repellendus nisi. Facilis neque excepturi atque.', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(9, 13, 'Natus ut reprehenderit excepturi ea dolor tempore.', 'https://via.placeholder.com/900x300.png/00ccee?text=soluta', 'Qui facilis suscipit natus excepturi eos maiores nihil. Quia molestiae nulla sit sunt beatae rem voluptatem ut. Odit at commodi excepturi id voluptatem est molestias sed. Nihil quae asperiores et enim facere. Consequatur totam iure et quis.', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(11, 15, 'Voluptas quaerat quis similique voluptatem eveniet et.', 'https://via.placeholder.com/900x300.png/000055?text=quam', 'In quod impedit quia ducimus molestiae dolor. Tempora quis quis consequatur hic hic. Reiciendis ea sed qui vero omnis neque. Nesciunt nulla id iste sapiente.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(12, 16, 'Voluptates nam quo quo cumque fuga reiciendis nulla laboriosam.', 'https://via.placeholder.com/900x300.png/008833?text=quod', 'Aperiam qui numquam quia expedita. Neque omnis suscipit molestias nesciunt.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(13, 17, 'Omnis accusantium eligendi minus esse.', 'https://via.placeholder.com/900x300.png/006622?text=illo', 'At molestiae id sed dolorum vel. Repellendus voluptatem et doloremque assumenda vero beatae temporibus. Nam commodi velit voluptatem dolores deleniti doloremque voluptatem. Ratione voluptate et qui eum eaque.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(14, 18, 'Voluptatem quas aut quaerat.', 'https://via.placeholder.com/900x300.png/0055ee?text=accusamus', 'Eius perspiciatis ex enim culpa et enim enim exercitationem. Consectetur facilis rem dolor distinctio voluptatem necessitatibus aut. Id aut magnam aliquam doloribus consequatur eos.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(15, 19, 'Veritatis atque assumenda quia voluptas quo.', 'https://via.placeholder.com/900x300.png/00ee00?text=qui', 'Qui impedit eveniet et id omnis ut. Nihil et dicta repudiandae.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(16, 20, 'Commodi doloremque aspernatur et eum omnis qui ut.', 'https://via.placeholder.com/900x300.png/0066aa?text=ut', 'Et officia possimus fuga nihil et non. Dolores qui perferendis incidunt. Voluptas consequuntur et voluptatem.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(17, 21, 'Sit praesentium sunt ipsam aliquam enim odit.', 'https://via.placeholder.com/900x300.png/007744?text=autem', 'Quod sed vel dolores aut maiores voluptatem. Eum voluptatem at nam commodi. Est natus iste rerum voluptatem eveniet pariatur. Dolore sed rerum voluptatibus repellendus.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(18, 22, 'Reprehenderit iusto autem cum.', 'https://via.placeholder.com/900x300.png/0033bb?text=unde', 'Magnam ut ab vitae aspernatur consequuntur repudiandae nihil. Autem delectus laudantium modi ea rerum itaque nihil. Debitis nihil maiores quia.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(19, 23, 'Et qui ipsum consequatur labore.', 'https://via.placeholder.com/900x300.png/00ffee?text=aut', 'Ut qui ratione saepe fugit. Consequatur harum nulla velit omnis voluptatem temporibus tempora. Voluptatem ducimus amet et quam est cumque temporibus iure.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(20, 24, 'Repellat odit error sunt commodi sapiente explicabo.', 'https://via.placeholder.com/900x300.png/0055ee?text=eum', 'Dolore unde aperiam fugit repellendus quae. Ut nostrum id dolorum voluptates quo. Qui est ex delectus culpa. Provident quos autem sit. Quia enim necessitatibus sit itaque natus.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(21, 25, 'Maxime non quas rerum esse at.', 'https://via.placeholder.com/900x300.png/005544?text=optio', 'Veritatis autem rerum ratione et adipisci velit a. Quo eum eos porro architecto laudantium facere. Perspiciatis ducimus impedit sunt. Dolor voluptas suscipit labore commodi quaerat odio. Reiciendis omnis aperiam molestiae ipsa tenetur eum.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(22, 26, 'Quia perspiciatis veniam necessitatibus et est magni qui.', 'https://via.placeholder.com/900x300.png/0088cc?text=et', 'Adipisci ea fuga ut. Nesciunt reprehenderit ab quisquam soluta.', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(23, 27, 'Et totam repellendus amet est.', 'https://via.placeholder.com/900x300.png/00ccee?text=totam', 'In quo delectus dolor magnam itaque reprehenderit dolor. Voluptas nostrum inventore totam deserunt rerum voluptas et. Quia libero natus amet non.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(24, 28, 'Sunt cupiditate sequi officia voluptatem omnis aut aut et.', 'https://via.placeholder.com/900x300.png/001144?text=quisquam', 'Minima aliquid impedit iure sapiente hic repudiandae laborum. Doloremque aut sed incidunt dolore nobis. Non voluptatem repellendus dolor et alias. Id molestiae cupiditate est molestias.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(25, 29, 'Autem voluptatum repudiandae tempore dolor iste eos facere fuga.', 'https://via.placeholder.com/900x300.png/00cc44?text=labore', 'Consequatur ullam consequatur autem enim aliquam pariatur porro. Labore porro cum consequuntur velit necessitatibus quasi recusandae. Ea ad facilis ut facere. Quia in voluptatem laboriosam ipsum.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(26, 30, 'Consequuntur distinctio ipsa quibusdam quaerat in asperiores voluptas.', 'https://via.placeholder.com/900x300.png/0099ff?text=repellendus', 'Laboriosam velit repellendus dolorem beatae dolores aut repudiandae velit. Natus atque rerum incidunt quisquam tempora sunt sequi veniam. Id et qui sit commodi assumenda aliquam veniam.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(27, 31, 'Et ea sed qui velit et.', 'https://via.placeholder.com/900x300.png/0055ee?text=suscipit', 'Nesciunt sunt eum repudiandae cum perferendis expedita. Eum tenetur sit sed fuga amet et alias. Necessitatibus velit modi ipsum quo. Placeat ut repellat placeat fuga magni suscipit modi. Aperiam ea iste corporis nihil.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(28, 32, 'Odio quaerat sit odio cumque deleniti in.', 'https://via.placeholder.com/900x300.png/004422?text=totam', 'Et velit est odit et quia voluptate nostrum. Dolore laborum qui quibusdam rerum fugit fugiat quis. Minus qui laborum illo ea ad. A rerum autem maiores qui.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(29, 33, 'Dolores ea iure eius tempora et atque numquam.', 'https://via.placeholder.com/900x300.png/001144?text=tempore', 'Nam dolorum quia quasi autem optio at sunt. Qui ut ipsa accusantium reiciendis sed tempore adipisci voluptatem. Voluptatem odit eveniet voluptas recusandae eos. A illo tenetur enim.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(30, 34, 'Aspernatur magnam ad est accusamus sit et sint.', 'https://via.placeholder.com/900x300.png/004400?text=ipsum', 'Distinctio aliquid aut quia debitis doloremque quidem fugiat. Quod totam suscipit reiciendis corporis dignissimos sit. Est explicabo nihil quo ipsum. Amet qui dolores ut nostrum.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(31, 35, 'Iste est id vitae pariatur rerum.', 'https://via.placeholder.com/900x300.png/0077bb?text=aliquid', 'Sit perferendis velit corrupti dolores. Ipsa sapiente mollitia alias quae consequatur. Et repellat ea sequi et dignissimos non. Nihil illum sapiente aut.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(32, 36, 'Sapiente provident est dignissimos iusto voluptas ut nihil.', 'https://via.placeholder.com/900x300.png/00aa22?text=minus', 'Molestiae incidunt veniam non eos. Sit et sapiente suscipit. Iure sapiente quidem suscipit. Eum magnam consequatur praesentium eveniet.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(33, 37, 'Quo et ex magnam dolores ab aut voluptatibus.', 'https://via.placeholder.com/900x300.png/005511?text=quibusdam', 'Quas porro et qui sit libero. Odit maiores est ut sed molestias. Nostrum sit hic aliquid enim.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(34, 38, 'Id alias aut dolor veniam.', 'https://via.placeholder.com/900x300.png/006611?text=nesciunt', 'Rerum cum blanditiis quo asperiores sapiente omnis adipisci. Delectus et est rem quis. Laudantium laudantium quaerat quis consectetur saepe a. Ea sint quidem ut voluptas ut eligendi sint rerum. Dignissimos qui quis fuga dolorem atque et.', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(35, 39, 'Pariatur libero tenetur quia a ut error.', 'https://via.placeholder.com/900x300.png/00ee00?text=similique', 'Quaerat et et quia ipsum distinctio eos autem veritatis. Repellendus exercitationem consequatur dolore culpa. Reprehenderit quia delectus qui pariatur molestiae et molestiae reiciendis.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(36, 40, 'Excepturi quos dolorem nobis aperiam.', 'https://via.placeholder.com/900x300.png/00bb88?text=dicta', 'Maxime in fugiat accusamus. Veritatis error architecto sed eius facilis.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(37, 41, 'Dolorum aut qui rerum hic in quia beatae.', 'https://via.placeholder.com/900x300.png/009933?text=vitae', 'Eaque quibusdam laborum occaecati. Non est voluptatibus facere occaecati dolores.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(38, 42, 'Molestiae nam at non sit.', 'https://via.placeholder.com/900x300.png/00eedd?text=rerum', 'Quisquam maiores vel consequatur veritatis ea recusandae debitis aut. Inventore aut dicta non aliquam. Soluta laboriosam sed officia cupiditate culpa. Porro dignissimos quaerat quia natus.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(39, 43, 'Eligendi vel aut ut odio eos.', 'https://via.placeholder.com/900x300.png/009999?text=ea', 'Eos quas sunt et voluptatem ut ullam. Eligendi dolorum ullam sunt nihil. Soluta praesentium quia eum ea voluptatibus. Aut natus tempore ut quisquam rerum. Facere sed laboriosam vitae minus voluptatem harum.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(40, 44, 'Et molestiae aspernatur quae odio quisquam sed.', 'https://via.placeholder.com/900x300.png/002266?text=possimus', 'Voluptas laboriosam est quod quod laboriosam error. Odio est nesciunt porro provident. Qui ut quam consequatur similique iusto consequuntur.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(41, 45, 'Consequatur non quia tenetur aut qui quasi magnam.', 'https://via.placeholder.com/900x300.png/007744?text=earum', 'Vero vitae quisquam vero. Excepturi veniam omnis qui assumenda impedit ut consequatur sint. Qui dignissimos laborum minima eos ut aspernatur. Voluptates natus consequatur illo. Vel et eligendi porro.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(42, 46, 'Cum est perferendis voluptatibus nostrum mollitia.', 'https://via.placeholder.com/900x300.png/005500?text=qui', 'Ea eum a nostrum voluptates et placeat. Ex fuga et commodi.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(43, 47, 'Consectetur animi a et cupiditate qui quia.', 'https://via.placeholder.com/900x300.png/00cc77?text=vero', 'Veniam nemo nulla consequuntur. Dolorem inventore expedita ut corrupti. Nulla autem earum ut laudantium quia unde.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(44, 48, 'Quia suscipit mollitia eum exercitationem nihil voluptas consequatur.', 'https://via.placeholder.com/900x300.png/000099?text=aperiam', 'Distinctio sit quo aut dolores reiciendis rerum. Aut omnis necessitatibus dolorum earum. Quam fuga voluptatem debitis qui inventore consectetur ut. Occaecati unde quo et.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(45, 49, 'Voluptas facere autem inventore totam eaque.', 'https://via.placeholder.com/900x300.png/0044bb?text=aliquid', 'Non voluptatem quisquam aspernatur esse sit explicabo. Quia omnis necessitatibus quos et. Placeat neque qui rerum officiis deserunt tempore.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(46, 50, 'Quis dolorum eum et error.', 'https://via.placeholder.com/900x300.png/002288?text=dolorem', 'Itaque provident ut dolorem sunt vitae ut dolorem. Consectetur a nam laudantium. Sed qui et perspiciatis omnis odio dicta.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(47, 51, 'Porro ea tempore et sit quod molestias corporis.', 'https://via.placeholder.com/900x300.png/000011?text=iusto', 'Consectetur laboriosam omnis beatae eveniet quis. Quia sunt quisquam error nobis ut mollitia asperiores. Est ut eius sit dolorem molestias.', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(48, 52, 'Aspernatur ab rerum sunt quasi molestiae cupiditate reprehenderit.', 'https://via.placeholder.com/900x300.png/002255?text=sunt', 'Porro eius maiores quia quas sequi reiciendis incidunt. Omnis vel eligendi non odio mollitia vero quam. Cupiditate aut enim maiores quae odit doloribus. Dolorem perspiciatis cum ut qui quaerat eos.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(49, 53, 'Id molestiae accusamus qui beatae.', 'https://via.placeholder.com/900x300.png/0077dd?text=ipsum', 'Deleniti consectetur ipsum quos. Mollitia voluptatem exercitationem eos doloremque harum iure. Repellendus atque et ut aut sapiente. Et ut iste est dolorum quas natus sunt. Qui quae illum eum dolorem.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(50, 54, 'Perspiciatis est reprehenderit quod quae deleniti expedita quia.', 'https://via.placeholder.com/900x300.png/00ffee?text=accusantium', 'Temporibus ipsam corporis adipisci aut. Doloremque odit id ducimus nihil. Non est voluptas minus fugit ullam aut quibusdam dolorum.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(51, 55, 'Nemo commodi qui esse suscipit.', 'https://via.placeholder.com/900x300.png/00ddbb?text=quod', 'Vitae quas recusandae odio nulla velit omnis. Numquam aperiam non dolore quibusdam.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(52, 56, 'Molestiae possimus ipsa unde in et repellat dolor.', 'https://via.placeholder.com/900x300.png/0022ee?text=ducimus', 'Deserunt facere harum vitae error quae similique consequatur. Quasi voluptatem asperiores magni qui molestias vel. Id illo sint dolor.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(53, 57, 'Voluptate ut reprehenderit enim quibusdam est omnis velit qui.', 'https://via.placeholder.com/900x300.png/003377?text=aliquam', 'Quis vitae reiciendis ut ea facere optio quos. Voluptatem rerum accusantium veritatis qui debitis molestiae. Dolorem quidem ut optio et aspernatur ut.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(54, 58, 'Eveniet exercitationem eos et ut accusantium ullam.', 'https://via.placeholder.com/900x300.png/004499?text=deserunt', 'Vel aut quisquam facere nemo. Incidunt est impedit earum repellat quae. Et dolorem aliquam sit aspernatur iste esse.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(55, 59, 'Officia dolores officiis vero voluptas ratione dolor consequuntur a.', 'https://via.placeholder.com/900x300.png/00ffcc?text=consequatur', 'Neque et voluptas quia et enim. Repudiandae consequatur quo numquam atque aut. Dolores illo tempore exercitationem aut numquam vitae rerum. Nam odio animi placeat perferendis.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(56, 60, 'Exercitationem ea repudiandae molestiae eos esse explicabo tempore.', 'https://via.placeholder.com/900x300.png/00aa55?text=non', 'Enim non soluta est rerum. Molestiae dolores neque aut at deserunt iusto ea. Eos ducimus enim aliquid aperiam suscipit nesciunt ut deserunt.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(57, 61, 'Ut eos ullam dicta est placeat itaque.', 'https://via.placeholder.com/900x300.png/000077?text=vitae', 'Aspernatur saepe non est dolorem aut. Ut asperiores culpa optio porro at similique sunt.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(58, 62, 'Aliquid animi itaque aut aliquam sunt consequuntur et.', 'https://via.placeholder.com/900x300.png/00cc99?text=voluptas', 'Eum reprehenderit quas voluptates accusamus quos veritatis a. Molestiae consectetur commodi illum. Et vero libero officiis nobis. Rerum et officiis repellendus perferendis labore mollitia vero.', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(59, 4, 'Try something new', '1715806499.png', '\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\"', '2024-05-16 02:14:00', '2024-05-16 03:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'sara66', 'sara', '1715094061.jpg', 'sara@gmail.com', NULL, '$2y$10$lDI7DhOTTLnnurgSCxnFsObEDY9a0/Tn2ilARAMaYjlv2BPJXXOoa', NULL, '2024-05-04 15:26:36', '2024-05-07 12:01:01'),
(7, 'mbailey', 'Keegan Orn', NULL, 'mohr.collin@example.net', '2024-05-05 14:05:47', '$2y$10$jDMRwHAqsJ3zYFt2/MgpOeUssuR8I1HijvkBjJxJ6rFij7SXyrIzG', 'rNPYG52U53', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(8, 'auer.marlon', 'Mrs. Gracie Paucek', NULL, 'gina.upton@example.com', '2024-05-05 14:05:47', '$2y$10$wiWaEHhnE101bXrzENNk9OJQuZGtRTXB1sy4mb.Q2Ievbzi7f4BQW', 'LhQRkBvsc6', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(9, 'eebert', 'Dora Weissnat IV', NULL, 'mireille.satterfield@example.com', '2024-05-05 14:05:47', '$2y$10$PKZ965bIrC/rPYVFTDuIt.qZWTz9jDEqMoLGxn5uX7jJFVPUFIDEq', 'efHwy92wJk', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(10, 'althea07', 'Vernice Schowalter', NULL, 'paula.willms@example.org', '2024-05-05 14:05:47', '$2y$10$ppax63wAHUuRu/dYfJaegO2irNlVKQT.GUvZ/b0JLMIV7/5pBmBHu', 'ExXmZxqaqT', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(11, 'gstrosin', 'Alberta Jacobson', NULL, 'juana81@example.org', '2024-05-05 14:05:47', '$2y$10$wVuFyVdwC1Xm8RpqhAQZQu5mdSZWVeV9sIoo.pJ/EGKFINQ0uTxKa', 'Ex1p8WopvR', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(12, 'brionna.donnelly', 'Jeramie Homenick', NULL, 'frami.abbigail@example.org', '2024-05-05 14:05:47', '$2y$10$S4uhb.dtEozydcBExDuiVuczBtJryomOdzrWfsVmbFYy/bENmYtw2', 'AVESEcxJIc', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(13, 'alta.schmeler', 'Grady Walsh', NULL, 'skrajcik@example.net', '2024-05-05 14:05:47', '$2y$10$tINJUy8iAnAtw1nuE7/Ms.MsREy6jqse5OVJp1tXBzwj5AhfiI9w.', 'RHacoZVdGV', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(15, 'lorena31', 'Dr. Gertrude Hahn', NULL, 'crooks.perry@example.com', '2024-05-05 14:05:47', '$2y$10$cGUAzpdk61r3dSh4SZ.EZOaz9mkJzfA6LbSE5VqGhUIbR1q8pND8i', 'Sx2eGii9Gg', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(16, 'carleton04', 'Fannie Lebsack MD', NULL, 'dimitri94@example.net', '2024-05-05 14:05:47', '$2y$10$YAzdD5gm75jP7pPUNKq4Te1EL3.9s3hh1CiKiJUBcpXT07cZeEPTm', 'r96Y8l7kOx', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(17, 'juliana95', 'Miss Justine Graham', NULL, 'wilber.kuvalis@example.com', '2024-05-05 14:05:47', '$2y$10$A9uRs7jwaD/FmqLrz6SdDuuoQA56AXnNKxTl0fQV1w3mFbqWKJ/yK', 'oSH4sKOvoc', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(18, 'tcremin', 'Pansy Russel', NULL, 'denesik.marcelo@example.org', '2024-05-05 14:05:48', '$2y$10$toxeXSmYsTVvUau14wcqhevX10DBVZZtpiWY0F3qFHccHv92jB2X2', 'eRpRrebsWM', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(19, 'cody.pfeffer', 'Kacie Rowe', NULL, 'marvin86@example.net', '2024-05-05 14:05:48', '$2y$10$vpaGcez.KzZym0gREDOB4uJjSFDcPanleyS5htwGG/hDgryRcbx/K', 'hSPkq2Taws', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(20, 'issac83', 'Nasir Donnelly MD', NULL, 'mkertzmann@example.org', '2024-05-05 14:05:48', '$2y$10$REnLlBhAAWAGjmTgjWs9rOR9myt2s9bWtFj3v5G9nu1rXKJMZajnO', 'JKdjWxINZG', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(21, 'ebrekke', 'Grady Jacobson', NULL, 'kurtis67@example.net', '2024-05-05 14:05:48', '$2y$10$nEGRbP3DUehLxxezyAFB7usYu3ZL5Ad/BHdvfe3vaJfYbAw/.y7Ca', 'BrRILgGFYo', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(22, 'wilber61', 'Lynn White DDS', NULL, 'yfunk@example.com', '2024-05-05 14:05:48', '$2y$10$F1pEr25/3sjY0Rb5Lxv7le6qqfvvMTtb3O8VFLhndbcI8Y8w4KZj2', '3aH8ghSXsA', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(23, 'gibson.angelita', 'Ambrose Pfeffer', NULL, 'rward@example.net', '2024-05-05 14:05:48', '$2y$10$KQb9zXgJtA/32NelPsIy2eZtzOrr620001N218CSfHf6MEk8UjdRS', 'xSutmzYF6L', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(24, 'carmella88', 'Lavonne Hegmann', NULL, 'reagan.kessler@example.com', '2024-05-05 14:05:48', '$2y$10$be/HrOShVQGbFRHJK7vCquk5IlUCUH9cH/8nXMtAe3ks4LgICg4WK', 'jdqbg7rvwh', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(25, 'pjacobi', 'Mr. Leonel Zulauf Jr.', NULL, 'evan23@example.org', '2024-05-05 14:05:48', '$2y$10$kMHJWkkHIwCjySKeqQLS5uCVvBwnQRAzvUU9wPt/mpi27Ypec/SSe', '6KRFpC3HjI', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(26, 'rrowe', 'Saul Shields', NULL, 'upton.rhea@example.net', '2024-05-05 14:05:48', '$2y$10$T6XEEAIHat0RVQ2tOylSHOZwXPzmtxM9Q7jtkYK/d6nu51bHpUq7C', 'EWc7BGd5Im', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(27, 'purdy.lyric', 'Agnes Kulas', NULL, 'lhowe@example.net', '2024-05-05 14:05:48', '$2y$10$zNYMElHHWWltT9wEcpGmFOUrgsNfGt9JC7MtmXkAuPhu6fMHD4wRm', 'XLh6kfRsev', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(28, 'ecummings', 'Betty Denesik', NULL, 'daniela89@example.com', '2024-05-05 14:05:48', '$2y$10$L5QfTLuuL//Xkwfe0u/iKua.tRaOJekUrpAlQ6nZf3JftFOZZO.QC', 'FbNMSc8JOw', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(29, 'alanis51', 'Ms. Velva Cummerata', NULL, 'miller.araceli@example.com', '2024-05-05 14:05:48', '$2y$10$fiBQysa9oERkiaLoSoWVZOUzM89WNHpgJfb/RLE.jyxLweIZgoV46', 'dTwVfsPUAU', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(30, 'jrussel', 'Prof. Aubrey Keebler', NULL, 'darrin93@example.org', '2024-05-05 14:05:48', '$2y$10$bPCFDwLKIgrxiQPVC35WaupdZkQbkUsllLk/anGadcfwx.bZaz21q', 'pLkYb9Sxki', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(31, 'johnpaul.greenfelder', 'Crystal Mills', NULL, 'vzemlak@example.org', '2024-05-05 14:05:49', '$2y$10$FnqOyBNeKjXKupb56K8JleNF60E1khv1Bor3EimUMQtd7PqqMZBkq', 'S1Xwn1cJ8R', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(32, 'jan.marvin', 'Jordon Kertzmann', NULL, 'jamir95@example.org', '2024-05-05 14:05:49', '$2y$10$U.o4tsQXa9biIL6UxwJVt.HEHdoeACfwIz0jg6Gb/0WqTt5Cu3NxG', 'L647wA0mAm', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(33, 'herta46', 'Alvena Kuvalis', NULL, 'pgoodwin@example.net', '2024-05-05 14:05:49', '$2y$10$zAdoMF5BbMLGS92eZxP3K.GbHTMTVE5Q54zhbI3ebovQKxPsYR9r6', '1zZPqYvUI5', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(34, 'kfranecki', 'Vita Wyman', NULL, 'michale67@example.net', '2024-05-05 14:05:49', '$2y$10$q0nXisNtuogr/y.9PahHX.WuBQ3jRtrWhRGb3YUzLCtCaEu/WYXQ.', 'Gt80BOv1le', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(35, 'strosin.ashleigh', 'Mrs. Genoveva O\'Reilly Jr.', NULL, 'walker.nannie@example.org', '2024-05-05 14:05:49', '$2y$10$eV1Z4bExbXgRTIi6dNCTrOFiAakLt0dJ4qKm8FYDEwvhsHWhjKyYS', 'Z5cdHrgxEa', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(36, 'rhianna10', 'Daniella Kuhlman', NULL, 'htrantow@example.com', '2024-05-05 14:05:49', '$2y$10$9jwRq821bZsdnn7AblnZ2e0y./2EGP9XGXg6lSvCkCVYugaGusAG2', 't7gPcPecO2', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(37, 'lschowalter', 'Dr. Eliseo Collins V', NULL, 'lon84@example.net', '2024-05-05 14:05:49', '$2y$10$4dIDd3yX76JcCbPiYlxsuubX/TDnMfFZ3HjEM24phxvYc7CNFayYK', '6uKhnj0r6n', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(38, 'vbergnaum', 'Bette Kozey', NULL, 'hammes.jerald@example.com', '2024-05-05 14:05:49', '$2y$10$Zn71XAxrFO88K6gxDxYhyOYmRH008e01ph.DaHQSIV2OEicDVAVAu', 'N68jx55D3N', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(39, 'stone52', 'Esteban Kassulke IV', NULL, 'mabelle46@example.org', '2024-05-05 14:05:49', '$2y$10$Zbm0G5d9Nfwnla3e6A682u..Y5E5tU8j.euual4Qg4ILTOt/1Hsoe', 'q4KRPiWB2Q', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(40, 'ischiller', 'Javon Hudson', NULL, 'bgottlieb@example.org', '2024-05-05 14:05:49', '$2y$10$ly6U5ym6/4/8hMkgPOxpXOsgfWlibbSXRQv3RqEgjWTSzLtVjAUBq', 'tu6hZEB7Bx', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(41, 'tod35', 'Miss Lavada Quigley', NULL, 'alexis.doyle@example.org', '2024-05-05 14:05:49', '$2y$10$CcMuFtoLxrtiQTZtf/Oduu13.EqIoYKrzlNkHajql/DA7pPkBlu0K', 'CaF67uNTP5', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(42, 'leif.marks', 'Miss Heidi Harvey DDS', NULL, 'cali60@example.org', '2024-05-05 14:05:49', '$2y$10$2.oWqXMK2NuCf9PyLKTkOuY1eHgpBhkd/mUPBR0p8Xh8pxZqT5GzK', 'bR54m9s0Eo', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(43, 'wstanton', 'Prof. Gunner Haley V', NULL, 'kcormier@example.org', '2024-05-05 14:05:49', '$2y$10$ECTfoo0pIf6bfwIay2h1POCIK4nwLmRt9ZZcUDaSWQYCM7rjfdd5C', 'GONeOYMDMJ', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(44, 'cesar39', 'Leonora Reichert', NULL, 'jhansen@example.org', '2024-05-05 14:05:50', '$2y$10$670/OCasbOmZE8WlEvv/buxfeL1vFaKD5r6mwjWiCNQE4o6gbpsoy', '5plNZL4ROF', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(45, 'sruecker', 'Alexandro Hamill', NULL, 'leland.vandervort@example.net', '2024-05-05 14:05:50', '$2y$10$VlCwVA19jIrmn1L1BPVm1.Agg8CcydvrZPMAhFnoe.sHGIb6hzT7y', 'gUMGktGiqF', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(46, 'ooreilly', 'Prof. Iliana Powlowski V', NULL, 'crystel71@example.net', '2024-05-05 14:05:50', '$2y$10$Kdglw.rUI/FtYtfzrx8e2uD85QIqKPw3fmO49Ntv259fwNGGAr5/O', 'xXA6F5sdAa', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(47, 'bayer.ervin', 'Donavon Weissnat', NULL, 'malvina69@example.net', '2024-05-05 14:05:50', '$2y$10$Th/u4ArDwUaq9P.AnPk3Ae5Wr4DfgaIzn4uy88yZpuwYxTxti.udq', 'U6MUpfrP6n', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(48, 'hallie28', 'Olga Collier II', NULL, 'alycia.kihn@example.org', '2024-05-05 14:05:50', '$2y$10$h8b3Gu725MQYbog0XouXj.7fNGWlwUF1NrOnaSW5.H7.eMrMOYMS2', 'KEDr93yTtD', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(49, 'schuyler.dubuque', 'Bart Okuneva', NULL, 'jasen.streich@example.com', '2024-05-05 14:05:50', '$2y$10$di16Ehge4gVpLPtP38YkGuaPPPFCX4NVny8siB8NSjnLxJoc9C90a', 'DJqjGqFUAK', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(50, 'rhettinger', 'Mack Thiel', NULL, 'josue16@example.com', '2024-05-05 14:05:50', '$2y$10$VpeCEfG09SubseKJLQBgUOTPslGjQEx./vTz9dSTqmw2rEjpDIc/u', 'vXYN2KbsXK', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(51, 'dangelo85', 'Emelie Schinner Sr.', NULL, 'kennedi63@example.com', '2024-05-05 14:05:50', '$2y$10$YmcQ7j4h7bEejIUnH9dwyOtOIsV6fN.Ckg478cEUyQc6BbRFEwGgG', 'Sd4BnBMuRU', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(52, 'elinore01', 'Dorothy Bergstrom', NULL, 'carolyne.little@example.org', '2024-05-05 14:05:50', '$2y$10$V9eeOvYyT2fTMRvZ.CIxM..4RW5qCcbF2Y1gyRsgTpc286SZyrG1i', '24Mx3j0v67', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(53, 'schoen.anya', 'Ms. Felipa Glover', NULL, 'ibailey@example.com', '2024-05-05 14:05:50', '$2y$10$LzkrHy4OdyUzoDGTEXd/hufH.ysPTyCMPWrYQQXdcffKiCmcj8sVu', 'EX4ctiZiNU', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(54, 'jose.harvey', 'Dr. Sheila Flatley Jr.', NULL, 'bgaylord@example.org', '2024-05-05 14:05:50', '$2y$10$AWDiSwUy45T56qR3.UxuU.DYlQHcjTU8vNK3JyNvsdMKmS8Yy0lMW', 'PbCpvfzdt1', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(55, 'baylee00', 'Philip Kuvalis', NULL, 'hilario52@example.com', '2024-05-05 14:05:50', '$2y$10$SOMYhKS2ulamWQ7oUdWgx.9xnvCOTDmAgwITAmj8iyhI6O5NT/1pO', 'fnuFKV4SdT', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(56, 'jmurazik', 'Abelardo Nicolas', NULL, 'beahan.jaqueline@example.net', '2024-05-05 14:05:50', '$2y$10$SdOE5ZCX/70j1tuC2phxoeIjLnjq8V/kdoO8Ex.pTJ5R48UWaXZ1K', 'qyspcRtMpZ', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(57, 'lucio.cassin', 'Golden Prohaska', NULL, 'cole.rodrick@example.com', '2024-05-05 14:05:51', '$2y$10$xpPJo43GmAa0JkBQFQBDKu0OqEW4Up.eTCsTposzqAXc6a8z8pOyW', 'Xt1luImuTa', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(58, 'darlene.erdman', 'Lina Pagac', NULL, 'lockman.loren@example.com', '2024-05-05 14:05:51', '$2y$10$gCP7E7LKNPGEIyBKJTj8x.bzRt9fN0OiKyWFyLa/eVTy1hXm3w0Ku', 'C5CeOHYUdw', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(59, 'fgulgowski', 'Isaac Kuhlman', NULL, 'lila.wehner@example.com', '2024-05-05 14:05:51', '$2y$10$pbmHnOfj/wqhbI7kH/6EXOBlAF13.nSJylYtDkKCGVrMZmpT.K18a', 'SAC4HCcqp8', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(60, 'theresa.rodriguez', 'Ms. Alverta O\'Reilly', NULL, 'walker.veum@example.org', '2024-05-05 14:05:51', '$2y$10$8frP6HOUixwTY8.4wF7imeziOVDvsc.guwmpTMrV8UprdXfP43pXG', 'aY7JbovLX6', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(61, 'travon.altenwerth', 'Miss Prudence Schulist', NULL, 'uhomenick@example.org', '2024-05-05 14:05:51', '$2y$10$kpNc8YVJL/RbaQGrIQK.TuL34Doo2kXXBOINW42qsoKtG7OXUM.ta', 'Gy4uondxE6', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(62, 'kelvin.nikolaus', 'Katlynn Kertzmann', NULL, 'jheller@example.com', '2024-05-05 14:05:51', '$2y$10$1IvlfcX1ZAV5IrYcEzf5lu4iBkGU2GXO9NT09BG/3Ve.MvnvG0nO6', '4Oli8nOVPP', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(63, 'mbrekke', 'Mrs. Elizabeth Schamberger', NULL, 'tparker@example.com', '2024-05-05 14:05:51', '$2y$10$SXvVjm54DTBCbsL2F1R57.wsZbXjBDanuU4co4s6KeZdTy2Zuaksq', '92iprl2FBc', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(64, 'derrick57', 'Kira Schoen', NULL, 'willie.dietrich@example.org', '2024-05-05 14:05:51', '$2y$10$l.9vLQ9h2VVGsXmx03Wgou8JxwzKzWO1LS08CKWZgENde8vBRS7uu', 'yrZnfXPP9x', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(65, 'gerhold.leilani', 'Werner Grady', NULL, 'lawson.streich@example.net', '2024-05-05 14:05:51', '$2y$10$fky7p2d9PR748eE5qrzipeBY56XiT3nsbwtI9lWsgACiGnTHmbbUe', 'aVFTL4QzPh', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(66, 'helene37', 'Johnathan Kilback', NULL, 'edward.larson@example.com', '2024-05-05 14:05:51', '$2y$10$8Bxo/iVPC1WmZW1HNTdwvOyhFFuyhjv.OYMygQPrIk.E2VsgfHB6y', 'p7kXpdp36n', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(67, 'mackenzie.mertz', 'Sienna Okuneva II', NULL, 'omcclure@example.org', '2024-05-05 14:05:51', '$2y$10$FRnMq83CINkcQmWufNwq7evUx7RU07bkuV0R3y7s/VUHwN95K4IKm', '3jDMkeKJdF', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(68, 'crutherford', 'Ms. Tess Mann', NULL, 'mariah25@example.org', '2024-05-05 14:05:51', '$2y$10$qw.N5/7jgpuqaURmuHPaGeBmQGeSjA726eljERODfQng3uEj8zht.', 'CdtoswNhAi', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(69, 'swift.tyrell', 'Natasha O\'Connell', NULL, 'fabiola.nienow@example.org', '2024-05-05 14:05:51', '$2y$10$4n857ja/iU/TXosQbrJv6.McMN/wiUXpzrClw/z2yiGDLVpHOYukS', '6P3R1avgUB', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(70, 'ruth08', 'Mr. Theodore Gibson II', NULL, 'oferry@example.org', '2024-05-05 14:05:52', '$2y$10$r5lpRmwLhAmAChqe7AENHereyvQV1YxSGaTdoYcwHKhzJSNoglydG', 'FDltYgim1k', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(71, 'stroman.don', 'Peter Rowe', NULL, 'titus.beier@example.com', '2024-05-05 14:05:52', '$2y$10$S.tKa9lc0lWPPTfZfxMxJezCs98rGzidzfaO.TvGWWBXGO4lUeEGy', 'SWtIv33uX4', '2024-05-05 14:05:54', '2024-05-05 14:05:54'),
(72, 'rbradtke', 'Vilma Kunze', NULL, 'alyce60@example.org', '2024-05-05 14:05:52', '$2y$10$B16r4i1CS2fPoCcJCJLOSeEDmv2WGzwAFeSLImQk88it3vZr8YdBm', 'T87nqPEydo', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(73, 'sauer.crawford', 'Mr. Eino Green I', NULL, 'jarret.waelchi@example.com', '2024-05-05 14:05:52', '$2y$10$przBzF1LHeJfQEnUQB5ECeIi9bCHuMqXw5d1uwuoa9cbeTtHRKAha', 'vjUIbvKSLH', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(74, 'wayne16', 'Jaylen Reichert V', NULL, 'leonard98@example.com', '2024-05-05 14:05:52', '$2y$10$yw0QpQ65K1jwshJ770AuKu5zvn1a58Vffzs10fhQ4ieKUZd08Fece', 'rCnWCqCLgT', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(75, 'cdare', 'Prof. Cecelia Medhurst Jr.', NULL, 'dfay@example.com', '2024-05-05 14:05:52', '$2y$10$G4YFZaamg8qHGnnmP8UbE..qF/qlYO3y7t2xe3vvYfhYymPnhNi8C', '3m8mnN8Y6V', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(76, 'alysson.frami', 'Sofia Fay', NULL, 'carson.yost@example.com', '2024-05-05 14:05:52', '$2y$10$oqb0hqDmgrQW.EtoKyjGturLN3CaLZ2Mxw18Faz5ZKIp70CsOg.YG', 'zhTTS7zJBY', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(77, 'wuckert.hunter', 'Deven Stracke', NULL, 'rossie.jones@example.net', '2024-05-05 14:05:52', '$2y$10$PjMyvUXd9Ajwch4t4Zdsp.0byz4fgpO5/jLpCVZlB4xXkIvrLnh/G', 'CCaZDtJtLx', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(78, 'jalyn.schultz', 'Troy Watsica', NULL, 'reinger.ernesto@example.com', '2024-05-05 14:05:52', '$2y$10$V9my8YTfOixZJfV/aHExTOGAnWXn.Ypn0nXzSlga49xZzbQ.nHLCe', 'NsGVhxwJ6S', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(79, 'fermin87', 'Christine Pouros', NULL, 'lloyd27@example.net', '2024-05-05 14:05:52', '$2y$10$oEeChYGnLFsvYwDuvBDRX.XrLF5GYKp0E2vcNk03K1ymyCYociKz2', 'guvQz3J95B', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(80, 'eldred15', 'Dr. Stephania Schulist', NULL, 'dickinson.oceane@example.com', '2024-05-05 14:05:52', '$2y$10$89zBzZsr3lvulTpcj8loIe4HFjo7PNmHFtytAi6eCA/lw5mruLQJa', '34bxMdRNCT', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(81, 'rschamberger', 'Dasia Fritsch III', NULL, 'francesco.roob@example.org', '2024-05-05 14:05:52', '$2y$10$it.huKwvMrBojx.fUI1qwOHc8ByfrvMjQenTBJ66JWxfDQh4w7PfW', 'MLdZlcAVLj', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(82, 'jordane.ondricka', 'Efrain Upton V', NULL, 'lrunolfsdottir@example.com', '2024-05-05 14:05:52', '$2y$10$dAODMGl7NEmUAY4.KNtiNO5TdmkOpsXtnWN7L8ZiIR9Gi07YRyu4S', 'wNnonWD8Xa', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(83, 'yasmeen.hodkiewicz', 'Mrs. Pascale Gibson', NULL, 'schuppe.felicita@example.net', '2024-05-05 14:05:53', '$2y$10$sGYeYNylCPAGzEDstB5wlemW5P0XYxpFkqER1jIaDNbcpuPldiHWa', 'isRRENFKbY', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(84, 'zborer', 'Odessa Leuschke', NULL, 'junior.mosciski@example.org', '2024-05-05 14:05:53', '$2y$10$LLmobIrknRmcM2QYT0LH0.nObS7kxu8O.O0ANpzOHsbgurquZ6a0.', '6YwIxf8FBB', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(85, 'emil.hoeger', 'Dr. Ottis Ratke', NULL, 'celine44@example.com', '2024-05-05 14:05:53', '$2y$10$9yzZ4WVJyyIoOg99YDlbTup72PrmZOBRitxAJUAsoI0c21Jb/q622', 'tEbdmxCUlf', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(86, 'beahan.virgil', 'Lexie Hand', NULL, 'sheridan78@example.org', '2024-05-05 14:05:53', '$2y$10$nX6moMcFvAtkIMb3WIiLPeltvZxwyiJCQ3OV6GNb4DWZvysnnS56O', '2tnAUa9M4D', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(87, 'white.claire', 'Myrtice Williamson', NULL, 'abdul76@example.net', '2024-05-05 14:05:53', '$2y$10$b1JHmjeYM6QJGS6qpL8LauLNhOhAInaJsTjpNo3np1sSNZW0k.wse', 'ENuYNXhD0Y', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(88, 'efeest', 'Prof. Catharine Koss', NULL, 'harris.aryanna@example.com', '2024-05-05 14:05:53', '$2y$10$icWnG1sIUxBsO284kfZxAeu0UCJnw7CY7/9xriRlFK9mw8ndQD/iO', '9SulMLROHz', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(89, 'melody.greenfelder', 'Karli Kshlerin', NULL, 'ygleason@example.org', '2024-05-05 14:05:53', '$2y$10$SowmSQOLCq/O8poV.vGO8udnrT18q4hitFMQItJSGOy8Vu3Al8WTG', 'XJdKJrskUZ', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(90, 'ymohr', 'Miss Sylvia Kohler IV', NULL, 'ellie24@example.com', '2024-05-05 14:05:53', '$2y$10$LdJvLtdWUxT5qTCTNMo79./Ctjq/.a2ZmciKTGEBn5jXwlq9kZSpO', 'hcoHaoIfUz', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(91, 'adam13', 'Ima Mertz III', NULL, 'simonis.cecelia@example.net', '2024-05-05 14:05:53', '$2y$10$T08FOR76M.XtgD8L2x8Xgu1VR/JqxSAPO9hllg0NkYM2i3j8/RBUq', 'O8u57tt1Vw', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(92, 'mpfannerstill', 'Maurice Cummerata I', NULL, 'keeling.keven@example.org', '2024-05-05 14:05:53', '$2y$10$RqdYKjsgqNuKxOHjY2CNieaJzS9/ylillpAQ8CVTXIY9TKEuYx0Ne', 'GSWIJZBANP', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(93, 'ledner.vicente', 'Shaun Weissnat', NULL, 'maribel33@example.org', '2024-05-05 14:05:53', '$2y$10$5iTaj0N/zigu9Sd/YLKArOpCB3n4hdaO1AAFItex5FcGzmeqdRh/2', 'wH0l1oqTNA', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(94, 'aidan81', 'Miss Melyna Thiel I', NULL, 'sandy04@example.net', '2024-05-05 14:05:53', '$2y$10$dMLecFlOi3ou9W/6.V82BOQrxFAHZ92fFQmhDqBhYSfeDGoneYATi', '5UNl5g6Ojx', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(95, 'bhaag', 'Vincenza Blanda', NULL, 'daugherty.loraine@example.org', '2024-05-05 14:05:53', '$2y$10$Dl4Ph54Tl0CWThWWSoF9/ubaFGWT7mqEiyqzUbkrIVvTTtXzlbyky', 'BnrF3EGB7h', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(96, 'ischmitt', 'Laisha Mohr', NULL, 'dibbert.queen@example.org', '2024-05-05 14:05:54', '$2y$10$bUlOs6l0EOhtCmgyQ3cnheje2AuEYKsj3nubjD.a4LQ8Pdfaoe2Gu', 'WIPidysMBA', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(97, 'evan.hane', 'Rosella Kemmer', NULL, 'pansy71@example.com', '2024-05-05 14:05:54', '$2y$10$0qqiZEBOlHeJyZsGbs.7KuOF7/Uanz2cF7t0ryd29B3xrPo2J8FEW', 'mcnYdZI4D0', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(98, 'ybailey', 'Anissa Corwin', NULL, 'ellen85@example.net', '2024-05-05 14:05:54', '$2y$10$pogc78lPCcssEzR1a1ZFW.sGFNfazKnTx3Y4CURvui7wfwFlCHxAK', 'odLD1UkysR', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(99, 'amber.price', 'Adeline Crist DVM', NULL, 'gerlach.mervin@example.com', '2024-05-05 14:05:54', '$2y$10$yrWBPXd8KKYQzfXhZdFi3u3Rsn1hB9DdwStUmy2ygswAnFFKr6qAa', '4AHooSywCI', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(100, 'emelie16', 'Dr. Destinee Trantow Jr.', NULL, 'hharber@example.com', '2024-05-05 14:05:54', '$2y$10$2ucgBROZ5EdP5A95nn9wUuCbrV137BUekLP/V1YczvQCfUfhA153q', 'noJgnMo9lc', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(101, 'cheyanne45', 'Mr. Nicolas Streich V', NULL, 'fritsch.anabel@example.org', '2024-05-05 14:05:54', '$2y$10$syspPuMcuP3ZUhfWg/tAbefaEbUYZlHbGvV6gKvYYh3KdhgIIzl5e', 'bAnW5Qq289', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(102, 'ccorwin', 'Lilliana Hoeger', NULL, 'schimmel.tyler@example.com', '2024-05-05 14:05:54', '$2y$10$73bbKtFW89DFPkhCgJ9t6exqcG1/CMxWDwmh4p5/YS1u7hQf0QvjK', 'BJVCGHl8vJ', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(103, 'owolff', 'Ms. Emma Hauck III', NULL, 'harvey.taylor@example.org', '2024-05-05 14:05:54', '$2y$10$BlkUt3Xywo4PPbYSRRXh3eo/rJ3Ba.pbcfnf1zYok1/gD5rbYH6Bi', 'sNDmp0Qy5d', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(104, 'ocremin', 'Prof. Autumn Douglas II', NULL, 'zmayer@example.com', '2024-05-05 14:05:54', '$2y$10$oBy5s6n8awIQpubU2VupJueCDuWPyP1mpHQShCYQ9d9BZlpvBOJ2y', 'l6Gcvl7zMM', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(105, 'martina10', 'Barry Howe', NULL, 'garry62@example.com', '2024-05-05 14:05:55', '$2y$10$PkTRTJgWtEPSpDKd6A1jAOTeHFwsHEoycY8i8Ror10KJLsoHh4gCS', 'sjGBkoh3TV', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(106, 'onie32', 'Vincenzo Miller Sr.', NULL, 'vella10@example.org', '2024-05-05 14:05:55', '$2y$10$XLT/zUttCeUrAcFuDn/sUeMBcS/jK8EAgmeOl787wM.d98KOXJ.Nq', 'QBiKHoktiV', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(107, 'erdman.katarina', 'Michaela Conn', NULL, 'runolfsson.aaliyah@example.org', '2024-05-05 14:05:55', '$2y$10$1SF4QuLVBMpZ.LVJ/eeka.AORWqHyBT2WWjQDf89KwXA9z8QLmD2O', 'a9Pvhi542k', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(108, 'augustus.quitzon', 'Aliya Green', NULL, 'kali.gerlach@example.com', '2024-05-05 14:05:55', '$2y$10$f8ean3P8GzPLeemMwi1yMOkWApoJmzm8/H79DbfQDBgQZleTBaL5G', 'lo0nykS5eo', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(109, 'mcclure.warren', 'Alyson Mann', NULL, 'annabell55@example.net', '2024-05-05 14:05:55', '$2y$10$eFYkdTBUKVF1dl8FBULv4.IL.RY0SFeuv/vtnszuAXULoGb0G0tnK', 'Sl0QCVFZxh', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(110, 'henry74', 'Dr. Burdette Howe V', NULL, 'kutch.kiera@example.org', '2024-05-05 14:05:55', '$2y$10$w6SNogXCMIVxuRVdUit1sex0b0kds73zP3/Hj1bUJAwOlSivb15XS', 'aVYKt0jIIf', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(111, 'fblanda', 'Ulices Farrell', NULL, 'hhoppe@example.com', '2024-05-05 14:05:55', '$2y$10$c1XZs.dKrUPHeL9hq/cg5u4QyJtgE3d0ggE7yjF99EgzJskt8X24K', 'ov5EU3ZfYL', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(112, 'mozell29', 'Keshawn Halvorson', NULL, 'gottlieb.marguerite@example.com', '2024-05-05 14:05:55', '$2y$10$5HyekOSs50Kj1umqoX4PCuz0zpJBthX3VSGh7MRC67hIt18DCAKiu', 'yrJUPj4QdE', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(113, 'bjakubowski', 'Prof. Barton Kreiger', NULL, 'clarabelle14@example.net', '2024-05-05 14:05:55', '$2y$10$0VQui0Uq.SlL0UquyEJ26ea2EQVEY2F.xK45Vs16rlpO8nyHu0Cbi', 'A2nKgrW6h5', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(114, 'candace.treutel', 'Keaton Hermann', NULL, 'pcronin@example.com', '2024-05-05 14:05:55', '$2y$10$rEh2mfhlBNj7oYRhp3pld.fAx2KvWfOqS4aOgRM2ENbq8TEy8ckGm', 'ux4WD8RpbU', '2024-05-05 14:05:55', '2024-05-05 14:05:55'),
(115, 'ebony.roob', 'Prof. Nichole Heaney', NULL, 'reilly.nils@example.net', '2024-05-05 14:05:55', '$2y$10$6Z4XiD53WQQ7BSNTNe5l5ePStIM6a/vhc8BIF6jtsU.87abxv1CkG', 'AahwFNLhZy', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(116, 'prince16', 'Ruth Dooley', NULL, 'beahan.mozell@example.net', '2024-05-05 14:05:56', '$2y$10$96s2Akdt69nWd0gvzMwgsOFunbiTVP1K697VNloBGzp.N8eAXLQ4K', 'xAl9HCA9ey', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(117, 'mlang', 'Prof. Asha Batz DVM', NULL, 'braden57@example.net', '2024-05-05 14:05:56', '$2y$10$qlsvZm/bFcALXDAIVTFWhO14TDF3.d5Pd.EiHvblVueFAfhjzgKaW', '1R9nn1llY1', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(118, 'abosco', 'Maeve Runolfsson', NULL, 'tsanford@example.net', '2024-05-05 14:05:56', '$2y$10$JIO6kzmRHsI2fndjb0k9COsT1l0ZRdFXg0tQBkUzUW6nOaAhFXFZm', 'VR76Pciga5', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(119, 'burdette.moen', 'Prof. Miles Mills', NULL, 'fkutch@example.com', '2024-05-05 14:05:56', '$2y$10$VmIWKuE2sj7/afKFf.pqoOF6ttO4XaQYNXQXZdfYQXwmlk8lzuVPK', 'W0SbyVWZZY', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(120, 'hbergstrom', 'Gregoria Jacobson', NULL, 'lavinia27@example.org', '2024-05-05 14:05:56', '$2y$10$yq.5O6ytKkm5tiDwNcd5K.WnLEqF.LmXRvK6FLxfPgCCfjkfV5VWm', 'ZZVByeDtxX', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(121, 'ohane', 'Mr. Kiley Watsica', NULL, 'schaefer.keyshawn@example.com', '2024-05-05 14:05:56', '$2y$10$EDNHEHSGfnxx0nvAWri4iOSY1vQhZVOyAELBGRreCgFWF5Gs3s9Ca', 'yGKi6PNdth', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(122, 'khalid80', 'Mr. Jaleel Wilkinson Jr.', NULL, 'cremin.lina@example.com', '2024-05-05 14:05:56', '$2y$10$3gh9bPIQcjXVFEiQ1Kd9I.Kwj/IamqubCnZOqgrxPN1RJJOucqbYS', 'MIAwGMvDJh', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(123, 'nschumm', 'Nicklaus Langworth V', NULL, 'bridgette96@example.com', '2024-05-05 14:05:56', '$2y$10$wo1KGUzSOU0QQKCgxQJfnONmV2vlHVVsO9wLn/.fyhBsVKG6dHyle', 'MekK39J5vp', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(124, 'chandler.runolfsdottir', 'Pietro Ernser', NULL, 'vinnie70@example.net', '2024-05-05 14:05:56', '$2y$10$TlnsqjRgQ/5NGxGowtEbYOup/jnXDMhrzPEFx.5Ac7OPCFFVL8fOu', 'CWy1UsAxiU', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(125, 'nratke', 'Mohammed Frami', NULL, 'flemke@example.net', '2024-05-05 14:05:56', '$2y$10$xlWP4ctxBoPcFOsiBCs98.y77kaq6ystsRa8XKDspoSRpp2WUB9bK', 'FGeirESBK1', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(126, 'leuschke.gayle', 'Alexane Bogan', NULL, 'onienow@example.org', '2024-05-05 14:05:56', '$2y$10$lM5d41wWcnu9VpqsKNqfwuWONnMAx3ydPY7StViAw2mx.6AV7nDZC', 'MuaxPrcboj', '2024-05-05 14:05:56', '2024-05-05 14:05:56'),
(127, 'aherzog', 'Jaida Weissnat PhD', NULL, 'quentin71@example.com', '2024-05-05 14:05:56', '$2y$10$eRG5qbU/CpOahd6wDRFhjuikRE60ji1XdUB8wsqfUELhpFzmKh8aK', '5dMX810Oqw', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(128, 'lehner.lavern', 'Alfred Towne', NULL, 'osinski.chandler@example.org', '2024-05-05 14:05:57', '$2y$10$O9.bPwHS7fV4AzODKD0hIescvs4ZJCBniJPobWlKHpxlXvv1fHv5a', 'HFI2hmdxs5', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(129, 'emertz', 'Valentin Klein PhD', NULL, 'umohr@example.net', '2024-05-05 14:05:57', '$2y$10$epDiIAe6Hwfl13PuYY72meZF8ohFxczS.Yf4tMAkhU9FMJ3gz5YB6', 'PcnB1WGy8A', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(130, 'obrekke', 'Mr. Mckenzie Bogan', NULL, 'pnolan@example.org', '2024-05-05 14:05:57', '$2y$10$.i0yiLda9srR1BG1Ks9F1uhHv2U32VE2Ftj/7vjGJCpDnIcsyl5oe', 'zuIv5Aksu8', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(131, 'beer.holly', 'Lexi Hane', NULL, 'alysha.homenick@example.net', '2024-05-05 14:05:57', '$2y$10$Dvp0jw7od.PD/uH0okM1rO2IECoJ8O5.o71yAYx5KlZdqQfn8GlZu', '3MIgz6t9wk', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(132, 'catalina41', 'Mrs. Prudence Nader Sr.', NULL, 'kuhn.maria@example.com', '2024-05-05 14:05:57', '$2y$10$ce2KSxfEv9ROv1uv6Bz/0eRfj7b76vNEXWIbwUGeRZ8JgLRDu7ZHi', '534et477C2', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(133, 'diamond67', 'Waylon Spencer', NULL, 'fcronin@example.org', '2024-05-05 14:05:57', '$2y$10$EdiOQrDMCUtCmKc7C3KWxeiPXgE0lTqeb8TRjMq.6ZNEXsxw6Xv4G', 'cBZHjD2nUS', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(134, 'breitenberg.joshua', 'Lawson Anderson', NULL, 'ryan.alexys@example.org', '2024-05-05 14:05:57', '$2y$10$KuRb9phRqLBgDLxFgkHhc.Isg3JdmQz04Xe1.u5fefwQhgZB5sPvG', 'zK8LWZ51Sa', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(135, 'alfred12', 'Prof. Ottis Wiegand IV', NULL, 'weldon.okeefe@example.org', '2024-05-05 14:05:57', '$2y$10$q7tdzpodbsyv212Hh1g1.Ody3G0AUKW1xGgdl7WsgiazeqjHdZ7GC', '43qqbd8J9v', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(136, 'robel.walter', 'Dewayne Russel', NULL, 'buster.rath@example.org', '2024-05-05 14:05:57', '$2y$10$wFYhGrtZu/n93ctIv7R6Y.2UMV1UlW2NQ4Y7diB4r2z5.WKT.txgu', 'zdxExBPKGJ', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(137, 'gladyce58', 'Wilhelmine Pfannerstill', NULL, 'bednar.alexandrea@example.net', '2024-05-05 14:05:57', '$2y$10$HhL3Hid.tdnGQaIeTdml2ei/mmZJ4CLe566cOaeoYTWqoAe.GcF1m', 'cEnGs4XF1C', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(138, 'smiller', 'Maximus Ruecker', NULL, 'misael24@example.net', '2024-05-05 14:05:57', '$2y$10$37kUdMmbPcRwRaIjxtCnVeoBgAgcNwS17ueSKcl4MfbXwjY4UPV8m', 's22zQty0NM', '2024-05-05 14:05:57', '2024-05-05 14:05:57'),
(139, 'jaclyn61', 'Dr. Yvonne Gulgowski DDS', NULL, 'pfeffer.alessandra@example.org', '2024-05-05 14:05:57', '$2y$10$7mOHfa0qt..2g6DUXoSp3eE.RqteKVyn79K2k091nDB2QvxAIHqDO', 'hPFXBD82IO', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(140, 'hegmann.frankie', 'Mrs. Nyasia Frami Jr.', NULL, 'nina.collier@example.com', '2024-05-05 14:05:58', '$2y$10$Jrt5EojhoHXnKo80wQ6NC.JlGEKjx/KSQXjAn5bdA/FsUla7c/wVq', 'aLJckKSqPd', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(141, 'faustino88', 'Mr. Lamont Schmidt', NULL, 'zdaugherty@example.com', '2024-05-05 14:05:58', '$2y$10$4s43a9wOAilJm29tt3W.VesOrdaUJ70Ewcb8MdcBMr6NxLBQiXhbW', '2V1dva7LIO', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(142, 'gboyer', 'Sharon Torp', NULL, 'gmcclure@example.net', '2024-05-05 14:05:58', '$2y$10$Jc9.EFL/TYfPvCIufAHuNu0XP6nSbpVWrG5ZDdafL7hjkxlwhZKme', 'h1E7Za33Ls', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(143, 'enrique84', 'Lue Davis', NULL, 'rogahn.wendell@example.net', '2024-05-05 14:05:58', '$2y$10$hOATT/.o3tFa9z9uByMdhe6bNQPFjSycupvC3tLxzM4j0yYDgeFEW', 'vuWxDEeO4P', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(144, 'liana.bartell', 'Prof. Mohamed Moore Sr.', NULL, 'uferry@example.org', '2024-05-05 14:05:58', '$2y$10$aVnkXhoYKo6JkRC6iiBiSOu/Da6IUhJtzS.jrNsOr85AO4MqpkMKq', 'Kj7Gc0Bu6j', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(145, 'lmante', 'Prof. Ellie Gorczany DDS', NULL, 'bfay@example.com', '2024-05-05 14:05:58', '$2y$10$7TZT8M26f8bitX3JbDGDj.Ey8AjMW9gjxh3sRcE2tSznBxMZFDmW2', 'PFYSabIc59', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(146, 'gianni.kerluke', 'Dr. Katharina Feil', NULL, 'bturner@example.org', '2024-05-05 14:05:58', '$2y$10$RBKd0RJjVKuAPS69ikQn/uEUbMJNmFnz5cQORS575KAaw60MKwyFG', 'lKGgxQvLxT', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(147, 'white.earlene', 'Ms. Jackie Rodriguez V', NULL, 'ellsworth.gleichner@example.com', '2024-05-05 14:05:58', '$2y$10$Aokb7qNAaosHMbTWRvrYUuq2WDvomv05I2QXtnhPT2xuO.1gkF7Ue', 'zvLuIQQYCf', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(148, 'laney98', 'Miss Bria Little PhD', NULL, 'sschumm@example.com', '2024-05-05 14:05:58', '$2y$10$ZHqut/mKY6Oa6MI2NhmvbO5xafwnrf4Xe2vmbEzVk9gN0GUwU31LK', 'DvBO51AbC1', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(149, 'koepp.aliyah', 'Mr. Jasmin Kutch Jr.', NULL, 'vonrueden.odessa@example.com', '2024-05-05 14:05:58', '$2y$10$qLJkjSaaYbNogabwx/yzj.vtXIMQkXmi7b8j3huv1kIvxUo/X0K0W', 'DncpvpUq3m', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(150, 'verla.lemke', 'Mozelle Abshire', NULL, 'vonrueden.jefferey@example.net', '2024-05-05 14:05:58', '$2y$10$y1fjgS74XGn8sNBXoeoblOhSVLspQ1J9CzlGgpYMaHZslQKo8zM56', 'FF6dcaV5nU', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(151, 'katharina73', 'Prof. Karl Ratke', NULL, 'antonette33@example.com', '2024-05-05 14:05:58', '$2y$10$yz/7YBi1lHkcJhrRUMJ4uO7MY4cyT4gEHZRB4sV1V8Yc4ueN78uAa', 'Ah8j3jO6P0', '2024-05-05 14:05:58', '2024-05-05 14:05:58'),
(152, 'reichert.everett', 'Judson Robel', NULL, 'delphia.murphy@example.com', '2024-05-05 14:05:58', '$2y$10$Id0DW405uAPBH0MjlUP4Ve.i/ebcXCM/GWdi7qek/rCeWnJcVYPn6', 'KbI5rlglNn', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(153, 'ashlee88', 'Mr. Coby Dickens', NULL, 'asawayn@example.net', '2024-05-05 14:05:59', '$2y$10$/QBo00uz1oWHM9iv7602b.Usbas8T6i7/x0hlTVgByIErkiMU/m9O', '99mijMtvrE', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(154, 'maximillian.dietrich', 'Nathaniel Gleichner', NULL, 'addison75@example.net', '2024-05-05 14:05:59', '$2y$10$IY7pf3fAWaxfCL4JBnIBZOk1xPcyEWAb9nmZV2Ag8DYtI7v4kSsf2', 'paRtESIsZz', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(155, 'randall.stark', 'Damion O\'Kon', NULL, 'pacocha.annie@example.org', '2024-05-05 14:05:59', '$2y$10$LfdZZFheiI8CNCQN36V2jOsZKtafZram9H2h1gBl3KevmkgnFITUK', 'xoCiG3XaoA', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(156, 'green66', 'Chanel Effertz', NULL, 'rbruen@example.net', '2024-05-05 14:05:59', '$2y$10$vTzrT/auNp5v0gb0kyn5u.9oMkEkK7RvYVgeg2BCk59b5N1QUrmKO', 'c94gBbSwU5', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(157, 'hobart45', 'Miss Stella Runte', NULL, 'faye07@example.net', '2024-05-05 14:05:59', '$2y$10$GcxBXA57QXpJUXPzH43v.eFEUA2uwrR0rs.H6osgmuA1Ur/DYRRMW', 'xrIXanNGfA', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(158, 'uking', 'Hipolito Batz', NULL, 'phoebe.walsh@example.com', '2024-05-05 14:05:59', '$2y$10$Ax/3TknuBh06UW3IrQ3u0.2RCmbRdBT5hSIq/5XO2cVDeiBDE7cdq', 'mrzJZiULiQ', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(159, 'estella.grant', 'Julian Torp V', NULL, 'elroy.lockman@example.com', '2024-05-05 14:05:59', '$2y$10$XrVgDJ9E/nCs6c0DK9tMS.6pD/HekfKFZNKGJcsZ84QxfBoaQnf0C', 'KMAnap4AIg', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(160, 'quigley.gustave', 'Prof. Joelle Stoltenberg', NULL, 'qmills@example.com', '2024-05-05 14:05:59', '$2y$10$2x3rhn3jLM4/okxQsQ5XjuFDOhIEdR5a.PzFbQ6NpXw6snYtKkQ1q', '7f9lNaMMGe', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(161, 'cauer', 'Reuben Stracke', NULL, 'qlindgren@example.net', '2024-05-05 14:05:59', '$2y$10$5z0BTG2HHlE8xxhoH5hRiu.bJPZJB8si66l3NwCR8CIhb9OhwOKT2', 'RA4M81wp0P', '2024-05-05 14:05:59', '2024-05-05 14:05:59'),
(162, 'nikita.cole', 'Geraldine Wyman', NULL, 'aschiller@example.com', '2024-05-05 14:05:59', '$2y$10$tQhacyJDNaSeQj27a0q68em1.SFEZ4AXH3L84qt6fBJ9x8yondKaq', 'e7yhsVymmo', '2024-05-05 14:05:59', '2024-05-05 14:05:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
