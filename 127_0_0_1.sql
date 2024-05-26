-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 11:54 AM
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
-- Database: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cms`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2024_02_05_191119_create_posts_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 1, 'Suscipit omnis fugit voluptas incidunt aliquid.', 'Ut ut nobis quia magnam pariatur voluptatum veritatis omnis. Sunt cum voluptatem cum optio blanditiis facere. Qui ducimus cum placeat laborum quos. Laudantium fuga minus quia molestiae aut velit.\n\nQuisquam ratione rerum et fugiat dolor nisi. Voluptatem quam error perferendis sed molestiae voluptates. Cupiditate quia asperiores deserunt provident dolores repellat.\n\nCumque minus vero ut et praesentium. Doloremque id pariatur et voluptatum consequuntur. Dignissimos voluptas iure libero et.\n\nVoluptatem quos nesciunt error. Provident deserunt accusamus enim est sit voluptas ut. Qui nemo aliquam aut excepturi tempora est. Sequi deserunt a repudiandae molestiae similique est.\n\nIncidunt tenetur adipisci enim non. Vel velit veritatis dolorum provident. Voluptates consequatur enim culpa. Rerum vel temporibus id et.\n\nQuidem aut iusto saepe. Impedit saepe harum esse vitae. Tempora dicta omnis consequatur iusto minima eos accusamus.\n\nBlanditiis provident velit ea. Consectetur vero molestias deleniti eum. Quia modi minus perspiciatis vel optio. Corporis est quas corrupti sunt.\n\nAliquid eligendi eum dolorem eaque ipsum minus. Consequatur voluptatem deserunt qui consequatur sit est. Eius voluptatem nisi et fugiat quod sunt aspernatur.\n\nVoluptatibus voluptatibus magnam accusamus mollitia dolor dolor qui excepturi. Illum vel ad magnam adipisci magnam et qui et. Quae quaerat ipsa dolor reprehenderit dolorem fugiat quo. Perspiciatis eaque voluptate dolorem amet iure recusandae quidem iure. Enim non iusto ipsam consectetur odio.\n\nVoluptas dolorem similique ut in. Qui ullam recusandae cumque sed id a. Eum ut quidem quia quia qui consequatur et. Suscipit quaerat ipsum maxime dolor dolores vel ipsam. Beatae non repellat et est perspiciatis aut.\n\nSint cupiditate eligendi aut repellendus delectus praesentium maiores. Et et omnis repellat voluptatem voluptatem.\n\nUt odit error voluptas. Molestiae eius odio sit ab ut eligendi. Aperiam enim eligendi sapiente nobis. Saepe illo recusandae deleniti reiciendis exercitationem.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(2, 2, 7, 1, 'Quisquam autem voluptates saepe optio at enim recusandae.', 'Iste numquam at alias aut atque fuga. Harum amet laudantium libero ipsum. Iure officia laboriosam est ipsa nulla.\n\nNam suscipit autem expedita corporis quia. Architecto quia ea beatae ipsam magnam. Voluptatum corrupti quia molestiae sit.\n\nDeserunt libero consequatur similique ut. Dolorem rerum alias optio voluptatibus et illo recusandae. Enim voluptas et voluptatem accusamus aspernatur odio velit facilis. Qui vero repellat et sapiente. Et aut sed debitis reprehenderit rem rerum.\n\nQui molestias beatae et commodi quidem. Expedita maxime et omnis quasi quia. Nihil voluptas sunt at tempore.\n\nPorro totam qui facere in ratione. Fuga voluptatem minima itaque voluptatum. Inventore vero voluptas numquam sapiente inventore. A ea illo velit et sequi. Dolorum et quo nemo quod error.\n\nId cum sint soluta est iusto. Nemo optio aspernatur maiores ducimus. Dolor sed consequatur autem omnis porro aut.\n\nDolor consequuntur eum nisi hic explicabo ratione voluptatibus. Voluptatibus voluptatum quo vero ea officia asperiores. Eum deserunt illum velit ut facere id. Iusto et porro quas sint consequatur optio delectus officia.\n\nVeniam maiores quidem eaque qui ipsam atque. Vel est corrupti quia nostrum ipsa. Saepe perspiciatis repellendus ut et et aliquam id.\n\nAlias dolores in culpa aliquid voluptas dolores. Nobis accusamus adipisci qui repellendus quae vitae odit laborum. Maxime quam illo molestias sunt adipisci omnis.\n\nEt id eum amet voluptate dolor sed totam. Molestiae incidunt fuga ea qui exercitationem odit repellat nemo. At facere odit vero molestiae ea. Ex eveniet eum architecto tempore impedit quia.\n\nMagni eveniet ut eos commodi placeat voluptate deleniti nostrum. Aut quaerat molestiae et et sed. Enim ullam voluptatem soluta et consequatur. Corrupti excepturi nam non ipsa.\n\nVeniam dolor qui fugit architecto in. Quasi nisi amet consequatur aut debitis ut fugit. Non beatae ipsam perspiciatis.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(3, 3, 5, 1, 'Voluptatem provident minima omnis accusamus magnam at.', 'Maxime sunt explicabo aut atque natus. Quia accusantium sint non eum minima optio possimus. Eum ea vel rerum molestias dolorem velit error.\n\nError voluptate et hic. Rerum perferendis voluptas ratione perferendis quia. Qui cum aut id voluptatum totam sed omnis.\n\nConsequatur eos pariatur tempora sit. Perferendis eligendi aut sint ea aut consequatur.\n\nCumque corporis cum sed tempora perferendis dolor. Dolorem non rerum recusandae sed ipsum. Quam dolore inventore doloremque vel et porro tempore. Laudantium dicta tenetur aspernatur sit et ipsam qui.\n\nSequi voluptate temporibus nihil sit. Accusamus quia perferendis sunt omnis quis necessitatibus. Voluptas ullam natus pariatur dolores repellat labore est.\n\nPraesentium at dignissimos velit quo veniam perferendis. Molestiae rerum aspernatur et voluptate quo quia. At aut cupiditate totam repudiandae nostrum et cum. Ipsum quia aut et officiis sint ad pariatur.\n\nQuasi consectetur nulla qui necessitatibus illo. Ut impedit voluptates dolorum omnis. Occaecati quod accusamus consequuntur amet. Ipsam fugiat est voluptate ut expedita.\n\nA pariatur quasi exercitationem consequatur. Consequuntur nostrum corporis praesentium rerum qui. Voluptatem voluptatem vel at quibusdam minima. Ab est enim quod quos sit id repellat.\n\nQuos dolorem tempore et. Quae et maiores delectus quibusdam facere minima odio accusamus. Molestiae nisi a minima repellendus. Et sapiente dicta nam nulla aut voluptas.\n\nRatione et sit quisquam sit eum voluptatem fuga. Omnis nihil eos deserunt ut ducimus harum. Placeat dolor qui excepturi.\n\nAut quia et quia aspernatur quibusdam quae. Et necessitatibus non qui delectus et eos doloremque illum. Quia omnis magni molestiae totam tempora quo eligendi nihil. Ut aut recusandae id velit voluptate corrupti repellendus non.\n\nQui blanditiis minus qui necessitatibus quia repudiandae a. Eaque enim sint in dolor ullam molestias quisquam. Earum enim laboriosam sequi sapiente. Voluptas fuga enim qui perferendis enim in.\n\nIste hic eaque voluptatem voluptas qui culpa. Omnis repudiandae iste aut inventore eius quia commodi. Sapiente tempora officiis non similique.\n\nSaepe quis ut velit sunt sunt nostrum. Voluptates ratione omnis nihil totam inventore. Officia vitae laudantium rem quia.\n\nEt expedita ullam doloribus officiis fugit non. Corrupti sequi illum temporibus qui amet qui veniam. Saepe nostrum laboriosam voluptatem temporibus.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(4, 4, 10, 1, 'Placeat recusandae nisi quis harum sapiente quia eum itaque consequatur.', 'Corrupti sint quo sit. Labore ex rerum consequatur aperiam odit est.\n\nAlias dolores sapiente sed tempore. Est quibusdam occaecati mollitia sunt. Ut eum velit ut.\n\nTemporibus itaque dolor occaecati cum quasi dolores tempora. Autem nostrum et dicta est. Maiores corrupti id soluta quia.\n\nCulpa dolorum beatae corporis voluptas rerum. Sed velit maxime in saepe. Illum optio itaque illum iure cupiditate facere. Enim nemo fuga deserunt saepe. Et accusamus rerum veniam sed quisquam sequi.\n\nAccusantium voluptatem fuga ullam. Nulla et minus magni dignissimos. Rem consequuntur incidunt doloribus a fugit est repellat et. Eos velit sit voluptatem deserunt id placeat natus.\n\nMolestiae aut et accusamus doloribus ullam et. Explicabo ab eaque mollitia est voluptatem et ipsam enim.\n\nDolorem iure ut commodi laboriosam. Aliquam officiis delectus tenetur tenetur tenetur nihil. Veritatis asperiores non cum atque.\n\nQuisquam qui commodi rerum animi suscipit ab. Libero perspiciatis quia molestiae vitae. Similique sed quia omnis aut et quae voluptatibus consequuntur. Asperiores libero incidunt quas molestiae.\n\nDeserunt qui debitis aut aut laudantium dolorem. Placeat autem reiciendis et modi. Consequatur neque dolore sint quo. Harum rem nesciunt esse consequatur.\n\nQuia sed ea qui quis. Optio facere ex dolorum exercitationem. Nostrum et vel quia error nulla. Et distinctio nulla ipsam vel.\n\nRerum praesentium ea omnis fugit qui. Aut libero in rerum. Id et aut eaque excepturi quo exercitationem.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(5, 5, 2, 1, 'Laboriosam omnis non quaerat vel et voluptatem sint deserunt.', 'Minima consequatur saepe omnis ab. Commodi sint itaque aut consequatur ab. Nesciunt omnis fuga omnis unde quo facere nihil. Corporis aut voluptas fugit sapiente tempora nihil.\n\nDicta laboriosam aut tempora nam officia aut ut. Tempora vitae aut hic aut at aliquid et quia. Minus possimus sunt fugiat. Neque quis voluptas blanditiis sunt ut ipsum.\n\nVoluptas expedita eveniet esse molestiae non sed. Placeat aut eum sit cum dolorum quae placeat quis.\n\nSaepe deserunt magnam distinctio et est minus. Necessitatibus ducimus fuga nesciunt atque dicta. Hic et illum fugit facilis iure quisquam.\n\nNeque et autem fugit voluptatem et vel dolores. Tempore illum rerum deleniti vel consectetur. Alias aut nihil distinctio saepe.\n\nOmnis aut officia quia nobis et velit. Illo ipsum impedit culpa quo animi quia non. In suscipit provident officiis eaque et.\n\nQui ex vero illo nihil est. Suscipit soluta et explicabo nobis saepe. Explicabo sit et accusamus asperiores deleniti nemo dolor doloremque. Enim necessitatibus perferendis doloremque natus minima et accusantium ullam.\n\nEa voluptatem nesciunt non dolorem nobis et doloremque iure. Repellat necessitatibus dolor nemo enim perspiciatis blanditiis reprehenderit. Eum animi qui voluptas et amet.\n\nQuae est maiores sint. Quo voluptates eos placeat ut magnam autem. Laboriosam molestiae quibusdam commodi rerum id.\n\nLaboriosam non ut unde. Magni sint dolore magni dolor ut quia similique. Commodi voluptatibus at quo beatae. Porro veritatis eveniet non.\n\nEa ea aut consequuntur et dolor vitae. Tempora vero et placeat corporis. Dolor officiis illo quisquam sit.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(6, 6, 6, 1, 'Rem voluptas placeat error vel reiciendis cupiditate sed.', 'Aut quae id excepturi. A sint quod velit repellendus ipsa. Et et et consectetur culpa sapiente et.\n\nAut aut alias doloribus error numquam. Maiores totam a deserunt officiis nobis non veniam. Sint delectus est atque est in libero itaque et. Sit commodi eius dolore aut ducimus. Rerum reiciendis quod et porro nisi.\n\nUt dignissimos et vero perspiciatis. Debitis corporis exercitationem dolores possimus tempora. Omnis enim qui iste delectus nulla. Corporis ut quasi et.\n\nAut aut quas aut occaecati molestias non. Et asperiores perferendis hic cumque dolorem voluptatum dolorem. Perferendis eligendi aut non ut. Fugit ipsa qui et omnis hic et laborum.\n\nAut adipisci tempore nobis voluptatum architecto. Dolorum deleniti et saepe. Soluta voluptas qui facere. Et reiciendis temporibus minus nulla nemo ipsum nisi.\n\nNon aut laudantium quo reprehenderit minima odio vitae praesentium. Accusamus voluptas minima consequatur esse aut eos incidunt. Omnis est qui cupiditate quis ut et qui. Quia exercitationem porro nulla quis.\n\nDeleniti ipsam maxime modi repellendus nostrum aut tempora consequatur. Porro aut inventore ex itaque quos sint eum. Error dolore voluptatem sed voluptatem incidunt modi. Tempore hic ea ab consequatur.\n\nRerum occaecati architecto at non nesciunt rerum non eum. Qui tenetur ut incidunt aspernatur nihil dolores ut. Optio aperiam voluptate voluptatem nobis minima non consectetur. Id non odit distinctio sit et.\n\nVoluptas velit cumque aut ad libero. Distinctio aut pariatur et excepturi odit. Harum aliquam perferendis qui quia et. Animi accusantium molestiae minus.\n\nOmnis ut qui commodi sit ad repellat. Aliquam id modi asperiores quidem voluptas ut saepe. Distinctio laboriosam accusamus dolorem maiores et. Blanditiis fugit sint harum ea saepe. Blanditiis quidem praesentium animi odit suscipit.\n\nAccusamus qui veritatis qui sit. Ut dolor eum libero numquam consequatur aut dolor repudiandae. Nihil asperiores rerum aliquid ea odit voluptas.\n\nDolor rerum et unde maxime. Consectetur aut dolorem voluptatem excepturi et. Quisquam dignissimos qui quae nisi ab qui. Repellendus adipisci suscipit voluptatum excepturi nesciunt officia rem.\n\nSit debitis autem corporis et. Sed at quo sequi cum. Sunt ut nobis velit ea et.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(7, 7, 6, 1, 'Libero est placeat ut voluptatum ad repellat laborum consequuntur.', 'Qui aut hic numquam aut libero nobis ea. Dignissimos aut repellendus beatae aliquid. Eos dolore quos amet in.\n\nLibero beatae dolorem natus provident. Delectus iste porro repellendus. Veniam voluptas et qui provident. Nisi fugit est dolores magni aut.\n\nQuis qui eius aut cupiditate sed non. Laudantium ex quo nobis tempore similique reiciendis. Earum qui alias incidunt et. Molestiae voluptatibus atque eos ex excepturi sint omnis.\n\nItaque odit qui consequatur recusandae. Vero cupiditate maxime est voluptatem. Et cum amet sequi.\n\nVoluptatem magni illo officiis est quidem excepturi debitis adipisci. Iste alias nisi et velit nemo iure consequuntur ad. Autem velit delectus non voluptas nesciunt et in.\n\nCorporis iure voluptatem est sed. Maiores dolor sit quibusdam voluptatem eligendi eos porro. Ut sunt ut numquam minima repellat.\n\nAut excepturi eos aperiam dolorem autem assumenda. Rerum dolore aut et facilis non. Autem ipsa tenetur saepe fuga est explicabo vel. Eum et eius ut sint.\n\nOmnis est sunt et debitis voluptatum minima fugit. Mollitia id voluptatum quod et porro. Alias fugiat doloremque aut reprehenderit voluptatem.\n\nIllum velit quo unde beatae. Porro possimus omnis quisquam libero aut. Delectus at rerum architecto. Vero alias consectetur doloribus.\n\nDeleniti est qui et neque. Soluta soluta dignissimos voluptates voluptatem commodi exercitationem quia. Voluptatibus et cum nihil enim ut temporibus. Et consectetur nihil quaerat ducimus quos cumque aliquam expedita.\n\nAutem sequi vel quos eius. Et non eos magnam necessitatibus qui et. Id eveniet ullam provident doloribus aspernatur a rerum officiis.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(8, 8, 7, 1, 'Officiis commodi at consequuntur eum consequatur ad est molestiae impedit.', 'Illum quia aut laudantium consequatur qui ipsam ex placeat. Ut dolorum explicabo repellendus officia expedita.\n\nVeritatis quod iste et et corporis tenetur. Est suscipit non quia libero.\n\nConsequatur aut cumque nisi repudiandae distinctio dolorem. Aliquam aut vel voluptatum sit et sed. Omnis voluptas doloremque sequi amet dolorum quod veritatis molestias. Sunt sit est nemo et repellat.\n\nNisi quo ut laudantium quibusdam qui. Modi dicta voluptas id optio qui iure magnam. Quia inventore eos earum non reiciendis expedita. Aut quae et laborum molestias recusandae.\n\nOmnis et mollitia dolor repellat sunt ex. Velit officia cupiditate ipsum illum. Et veritatis accusamus quia maiores illo. Libero consequatur consequatur magnam. Deserunt velit sint cumque in perspiciatis.\n\nAperiam explicabo sint animi. Ipsa dolorem quaerat maiores praesentium earum sapiente.\n\nAssumenda architecto explicabo natus repellendus rem ipsa. Aut rerum harum earum quas tempora et. Et ut exercitationem consequatur maxime impedit illo. Dolore temporibus voluptatum sed sed odio in quas. Voluptatum consequatur facilis aliquam dolores.\n\nDolor repudiandae maiores ut voluptas illum. Nemo nihil sint sed. Non quia inventore enim a iusto qui illo. Nesciunt quae non aperiam minus aut magni.\n\nDolores rerum distinctio minus. Eum consectetur quae inventore molestiae enim expedita animi.\n\nEius fuga rerum et molestiae. Aut odit fugiat quidem et. Vero dicta cupiditate occaecati exercitationem ipsam.\n\nConsectetur nisi sed nam. Nisi ut delectus recusandae itaque repellat placeat. Repellendus odio inventore dolor quis accusantium natus ut. Reiciendis veritatis sunt culpa minus.\n\nIpsam nesciunt debitis totam voluptatibus excepturi nisi qui. Neque est pariatur et totam iure itaque qui ullam. Voluptatibus quisquam a architecto est voluptas nam ullam earum.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(9, 9, 6, 1, 'Rerum animi enim aut sint in minima qui eos sunt.', 'Quas velit aliquam vel molestiae id recusandae rerum. Est possimus omnis aut fugit repudiandae accusamus unde. Voluptatem recusandae quaerat enim quia.\n\nIncidunt quia et assumenda aperiam ut similique quae. Vero tempore aut qui aut natus quidem. Exercitationem et error optio id ipsum sit voluptatum.\n\nIusto quo quo dicta placeat. Explicabo omnis est aliquid saepe velit porro. Explicabo laudantium alias est voluptatum. Facere vero amet in.\n\nDolor quia molestiae quos. Esse illo id deleniti blanditiis distinctio vel iusto. Minus necessitatibus fugit beatae.\n\nHarum sunt neque nihil quos minima. Repudiandae facere molestiae velit explicabo aspernatur dolor. Tenetur doloremque beatae sit atque iusto deserunt et. Voluptatem aut nulla blanditiis ducimus facere.\n\nSimilique vel aut aspernatur. Omnis alias voluptatem quo et expedita. Qui odio iste esse necessitatibus velit asperiores ipsa. Quis quia tempore ut placeat qui explicabo.\n\nTenetur eos necessitatibus quo quia nobis. Quia iusto laboriosam id nihil quis consectetur. Error quo modi sunt.\n\nQui et eos totam deserunt quia. Sed odio expedita enim autem sed enim. Architecto similique velit ratione tempore et aspernatur aut facere. Aliquid repellendus error perspiciatis aperiam ea voluptate.\n\nNon laudantium ut ea sapiente alias magnam aperiam. Enim voluptas itaque at velit. Ipsum vel id corrupti non illum cum.\n\nNon dolorem enim recusandae occaecati consectetur. Accusamus facilis fugiat ea illo qui omnis animi. Et occaecati quos officiis accusamus.\n\nUt officiis minus veritatis ut. Odit consequuntur id illo sit. Mollitia mollitia autem qui et molestiae occaecati. Quo sint fugiat ad deleniti dolorem non et.', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(10, 10, 2, 1, 'Voluptates ullam sapiente repellendus corrupti sapiente.', 'Dolor odio velit excepturi. Necessitatibus quo voluptates magni magnam quos suscipit labore. Repellendus unde enim atque. Et quos et ut sit natus excepturi.\n\nQui minus perspiciatis et possimus. Nisi ut dolores accusamus ipsam. Incidunt minus ipsa quia odit.\n\nLaudantium quaerat commodi et. Rerum eligendi aut porro amet voluptates. In voluptatem sit et ut. Sint ad maiores quidem et fugiat.\n\nIncidunt nemo quo est aut. Necessitatibus eum dignissimos dolor corrupti hic delectus. Officiis facere dolorem aspernatur tenetur reprehenderit reprehenderit quia. Quasi inventore in voluptates est dicta illum.\n\nEnim dolor incidunt voluptate quia nemo saepe atque consectetur. Cum facilis minima eum inventore nihil perspiciatis. Alias assumenda illo non et laborum accusamus quod.\n\nDolore eius provident aut delectus vel necessitatibus. Ut molestiae dolores vel. Numquam assumenda iste omnis incidunt fuga nihil.\n\nEst et id sed ullam sint a voluptatem. Sit odio facere sed iusto sed vero. Placeat necessitatibus totam saepe praesentium. Sint at impedit assumenda expedita.\n\nUt voluptatem nesciunt quidem est voluptas eos nihil accusamus. Consequatur rerum voluptatem similique sed odit deleniti. Et deserunt veniam quam ad nam. Voluptatem recusandae atque dolores dolor facilis a ea.\n\nNesciunt est provident dolores et voluptas officia dolor. Quo numquam temporibus minima magnam earum.\n\nNon perferendis beatae dolores reprehenderit eos magnam voluptas. Autem dicta fugiat nulla. Quae dolorem dolores beatae aut magnam consequatur distinctio.', '2024-02-07 11:16:22', '2024-02-07 11:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Breanna Legros', 'ludie36@example.org', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7JowXPooKm', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(2, 'Rahsaan Homenick', 'magdalena21@example.org', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UMZdIltsej', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(3, 'Mr. Trystan Wehner', 'friesen.nicola@example.net', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xcHj3t7Dcl', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(4, 'Prof. Laurel Hansen II', 'raina30@example.org', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3KYyjj9KCq', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(5, 'Prof. Kathryn Mante', 'tbeer@example.org', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TGRQltew9B', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(6, 'Susan Keeling', 'logan69@example.org', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KkB5I9N4rl', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(7, 'Josefa Hauck', 'mwintheiser@example.org', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uecG81TLRQ', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(8, 'Prof. Royce Dicki', 'paxton15@example.net', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cNm6MwY2Jh', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(9, 'Letitia Hudson', 'halvorson.ashton@example.org', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lpeoxdnosg', '2024-02-07 11:16:22', '2024-02-07 11:16:22'),
(10, 'April Beier PhD', 'hammes.lane@example.com', '2024-02-07 11:16:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CfzKn8v5ZP', '2024-02-07 11:16:22', '2024-02-07 11:16:22');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `component`
--
CREATE DATABASE IF NOT EXISTS `component` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `component`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Ted Dare III', 'ykohler@example.org', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9UdQC2PvEQ', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(2, 'Gia Beahan', 'rnader@example.com', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RrGaz7rLBB', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(3, 'Dino Legros', 'lowe.jalon@example.com', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vVula7aOtc', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(4, 'Trever Hammes', 'cbergnaum@example.org', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'meKAaWqnKg', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(5, 'Dr. Elliott Mayer', 'elias74@example.com', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dFX6PsOQ6h', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(6, 'Rita Gulgowski', 'qrosenbaum@example.com', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pDUKNTTR47', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(7, 'Jaydon Cruickshank MD', 'arnulfo71@example.com', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6u9Voh8sni', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(8, 'Jammie Gerhold', 'dokuneva@example.com', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pJiiZxSLvN', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(9, 'Jackie Gutmann', 'leda81@example.net', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fkF5Y97EqM', '2024-02-10 13:26:28', '2024-02-10 13:26:28'),
(10, 'Melyna Doyle', 'lukas74@example.net', '2024-02-10 13:26:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wECk4Qu0un', '2024-02-10 13:26:28', '2024-02-10 13:26:28');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `contact_form`
--
CREATE DATABASE IF NOT EXISTS `contact_form` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `contact_form`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'ahmed', 'o@o.com', '1245', 'hgh fhfh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login`;

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2024_01_15_191422_create_roles_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'subscriber', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Omaer Aghbar', 'o@o.com', NULL, '$2y$10$D/DyttnqmeG0b8V6hQfR1uQvN9QxrwRigThrMciJ.ZzVZ9im4Yolq', 'illhdB3qPxpP3JOzSjFccBMg75DCzCP3yfQIwwgzR5cjHIZhr5UkFFf38RTt', '2024-01-15 16:47:57', '2024-01-15 16:47:57');

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `manytomany`
--
CREATE DATABASE IF NOT EXISTS `manytomany` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `manytomany`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_11_27_162118_create_roles_table', 1),
(5, '2023_11_27_162411_create_role_user_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', '2023-11-27 14:53:05', '2023-11-29 15:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Omair', 'omaer@gmail.com', '2023-11-15 17:41:03', '12345', NULL, '2023-11-29 17:41:03', '2023-11-23 17:41:03'),
(2, 'Sara', 'sara@hotmail.com', '2023-11-26 17:41:03', '00000', NULL, '2023-11-15 17:41:03', '2023-11-15 17:41:03');

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_index` (`user_id`),
  ADD KEY `role_user_role_id_index` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `message`
--
CREATE DATABASE IF NOT EXISTS `message` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `message`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `users`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `my_db`
--
CREATE DATABASE IF NOT EXISTS `my_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_db`;
--
-- Database: `new_cms`
--
CREATE DATABASE IF NOT EXISTS `new_cms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `new_cms`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(19, '2023_11_19_094417_add_is_admin_column_to_posts_tables', 2),
(20, '2023_11_19_192039_add_deleted_at_column_to_posts_tables', 2),
(36, '2023_11_20_095920_create_posts_table_again', 3),
(37, '2023_11_20_132757_create_roles_table', 3),
(38, '2023_11_20_134957_create_users_roles_table', 3),
(39, '2023_11_21_105509_create_countries_table', 3),
(40, '2023_11_21_110518_add_country_id_column_to_users', 3),
(41, '2023_11_21_121806_create_photos_table', 3),
(42, '2023_11_21_174614_create_videos_table', 3),
(43, '2023_11_21_174940_create_tags_table', 3),
(44, '2023_11_21_175425_create_taggables_table', 3),
(45, '2024_01_12_182534_add_path_column_to_posts', 4);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nothing written',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`, `path`) VALUES
(3, 1, 'PHP with Laravel', 'People who concerned about PHP love laravel', '2023-12-31 12:06:12', '2023-12-31 12:06:12', ''),
(4, 0, 'Python', 'nothing written', '2024-01-06 03:44:30', '2024-01-09 15:09:37', ''),
(5, 0, 'C++', 'nothing written', '2024-01-06 03:53:39', '2024-01-09 15:09:50', ''),
(6, 0, 'Visual basic', 'nothing written', '2024-01-06 04:27:46', '2024-01-09 15:10:25', ''),
(7, 0, 'JAVA', 'nothing written', '2024-01-10 11:09:21', '2024-01-10 11:09:21', ''),
(9, 0, 'Bootstrap', 'nothing written', '2024-01-10 14:56:22', '2024-01-10 14:56:22', ''),
(10, 0, 'omar', 'nothing written', '2024-01-12 15:51:04', '2024-01-12 15:51:04', '18222708_988843071251876_5289893775179893002_n.jpg'),
(11, 0, 'omar', 'nothing written', '2024-01-12 16:16:24', '2024-01-12 16:16:24', '18222708_988843071251876_5289893775179893002_n.jpg'),
(12, 0, 'omopo', 'nothing written', '2024-01-12 16:19:01', '2024-01-12 16:19:01', '18222708_988843071251876_5289893775179893002_n.jpg'),
(13, 0, 'omopo', 'nothing written', '2024-01-12 16:26:06', '2024-01-12 16:26:06', '18222708_988843071251876_5289893775179893002_n.jpg'),
(14, 0, 'opiu', 'nothing written', '2024-01-12 16:26:27', '2024-01-12 16:26:27', '18222708_988843071251876_5289893775179893002_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `country_id`) VALUES
(1, 'AHMED', 'omaeralagbar@gmail.com', NULL, '12345', NULL, '2023-11-13 10:34:59', '2024-01-12 11:29:17', 0),
(2, 'Khaled', 'khaled@gmail.com', NULL, '000', NULL, '2023-11-01 10:34:59', '2023-11-17 10:34:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `omaer_laravel`
--
CREATE DATABASE IF NOT EXISTS `omaer_laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `omaer_laravel`;

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2024_02_24_105958_create_posts_table', 1);

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
(3, 3, 'Mollitia tempora sint laboriosam neque dolorem et rerum.', 'https://via.placeholder.com/900x300.png/008855?text=omnis', 'Veniam esse nemo doloribus voluptatum animi similique qui. Rerum hic explicabo tempora vel. Odio repellendus vero neque officiis distinctio temporibus molestiae ipsam.', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(4, 4, 'A doloremque dignissimos non architecto et earum.', 'https://via.placeholder.com/900x300.png/00dd11?text=doloribus', 'Voluptas nemo consequatur sit amet veritatis. Rerum ipsum magnam et culpa qui consectetur. Omnis velit ut reprehenderit nihil distinctio commodi porro.', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(5, 5, 'Consequuntur enim commodi veniam voluptas ipsum labore corrupti.', 'https://via.placeholder.com/900x300.png/00ee22?text=quia', 'Eligendi exercitationem recusandae nihil quis sunt animi. Inventore dolorem dolores dignissimos assumenda sed. Vitae similique rerum voluptate delectus. Illo odit modi sed animi commodi.', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(6, 6, 'Facilis quisquam veritatis eaque asperiores.', 'https://via.placeholder.com/900x300.png/0033dd?text=atque', 'Mollitia aut non ipsum odit quod praesentium. Veniam quia necessitatibus voluptate ducimus est sunt enim. Totam veniam est error et.', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(7, 7, 'Molestiae occaecati modi velit.', 'https://via.placeholder.com/900x300.png/006644?text=quia', 'Necessitatibus exercitationem voluptatem quo animi nihil nihil et molestias. Modi ipsam laborum quis quaerat. Rerum modi aliquam harum. Quod fugiat voluptatem quaerat qui voluptatem deleniti.', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(8, 8, 'Voluptatibus numquam aliquid ullam iste quidem repellendus quo corporis.', 'https://via.placeholder.com/900x300.png/00aa77?text=quaerat', 'At occaecati consequatur blanditiis. Nemo commodi aspernatur aperiam neque voluptatem. Amet voluptate quasi perferendis rerum.', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(9, 9, 'Asperiores laudantium perspiciatis quo velit est numquam nesciunt.', 'https://via.placeholder.com/900x300.png/004466?text=in', 'Sit vitae sit quis aut autem sit. Enim eum aut et sapiente quis et quia.', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(10, 10, 'Est alias magni aut ea unde qui.', 'https://via.placeholder.com/900x300.png/001100?text=esse', 'Maxime sunt ut aliquid atque labore iure. Commodi quas ullam vel et et neque. Repellat sed quos non possimus praesentium sint. Cupiditate minima voluptates ullam qui repudiandae consequatur aut. Et voluptas debitis nam.', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(16, 21, 'try again please and tell me', '1709575161.png', 'This is Mr.Omair Hi all', '2024-03-04 14:59:21', '2024-03-23 16:20:44'),
(17, 21, 'The work is done', 'images/IPomov4Q9dowZbUVidAl4ug1QvwfGMtfB4ZY6MqQ.png', 'value=\"value=\"value=\"test test test test tgest test\"\"\"', '2024-03-04 15:14:08', '2024-03-04 16:40:58'),
(18, 21, 'Hi Thank you', '1711220704.jpg', 'jnnn fjnfn kjfkr jedje ijkefoef ikjfieko oekfk ifiejfj ijdfjkvc ijfijfrj ijkfodj kjijfdij kjijdjfdij', '2024-03-23 16:05:04', '2024-03-23 16:05:04'),
(19, 21, 'Hi there brooooooooooooooo', '1711275585.jpg', 'try to test this form there an error here', '2024-03-24 07:19:45', '2024-03-24 07:19:45'),
(20, 21, 'Try again after policy', '1711281181.jpg', 'this is only test to check the policy that added from the previous lecture', '2024-03-24 08:53:01', '2024-03-24 08:53:01'),
(21, 21, 'test  hhhhhhhhhhhhhhhhhh', '1711390989.png', 'jf kjrojk dwpd p[rp4= -rprofo prfp rpppf[rpfp pforop', '2024-03-25 15:23:09', '2024-03-25 15:23:09'),
(22, 21, 'test test test', '1711391513.png', 'jnkj kjkjgkkfgv kfkdekflkfk kfrklfglkfgk klkfrlkgklfrgk kgkkrkgktgk', '2024-03-25 15:31:53', '2024-03-25 15:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rebeka Altenwerth II', 'barry02@example.com', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kHGHgoHCDs', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(2, 'Sister Bins', 'ugleichner@example.net', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6FAACXUsDW', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(3, 'Hardy Schmeler IV', 'bruen.eveline@example.net', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1CnoVcSBbI', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(4, 'Karina Barrows', 'pokon@example.net', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BtBjOISqQd', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(5, 'Sylvan Kovacek II', 'annette.brekke@example.net', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RNzIVJhwmQ', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(6, 'Prof. Mathias Hudson', 'imogene.renner@example.org', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5HUL3Janls', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(7, 'Tianna Grady', 'casper31@example.org', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oamQ4LrRxw', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(8, 'Cade Schneider I', 'blick.damien@example.org', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aGoVr0ltMR', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(9, 'Mr. Haleigh Wolf', 'elwin82@example.com', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x7MZKCIDXB', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(10, 'Prof. Sterling Marks', 'sstoltenberg@example.net', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's9EMQXeI3H', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(11, 'Pink Abernathy', 'roscoe.pfannerstill@example.net', '2024-02-25 12:48:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IbR7jcAMcJ', '2024-02-25 12:48:30', '2024-02-25 12:48:30'),
(12, 'Dayton Daniel I', 'gutmann.elijah@example.net', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aootNGLz2K', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(13, 'Mr. Lorenza Windler V', 'mario.strosin@example.org', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uyK4PkR4pF', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(14, 'Kirstin Johnston', 'jayson50@example.net', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hbd8fsQztb', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(15, 'Era O\'Conner', 'ella10@example.net', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CrgGl4i7Dr', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(16, 'Ova Koch IV', 'ehackett@example.net', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1qyYm0RRHS', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(17, 'Mr. Joaquin Hoeger DVM', 'ryleigh35@example.net', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1SnL48PUz3', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(18, 'Mazie Harris', 'thermann@example.net', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GyXyomXjON', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(19, 'Noble Maggio', 'ezekiel.kuhn@example.com', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FR1R5ObzhW', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(20, 'Prof. Cayla Towne III', 'estell35@example.net', '2024-02-25 12:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'selDvNBmL1', '2024-02-25 12:48:31', '2024-02-25 12:48:31'),
(21, 'Omaer', 'omaeralagbar@gmail.com', NULL, '$2y$10$X6rSWC6/8FdttthLw41KTulgcgEDbtLfVU8vlcYfCyXlA1PYz3FV6', 'oCniKdS5xa2v0iE6J8ep8bEO1AV7iFFTO9lyKK3LxhiIJoV6rNli5e9HTyvz', '2024-02-27 11:59:46', '2024-02-27 11:59:46');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `onetomany`
--
CREATE DATABASE IF NOT EXISTS `onetomany` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onetomany`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_11_26_180802_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(2, 1, 'php language', 'best language to complete your project', '2023-11-26 16:31:06', '2023-11-26 16:31:06'),
(3, 1, 'php language', 'best language to complete your project', '2023-11-26 16:31:32', '2023-11-26 16:31:32'),
(4, 1, 'php language', 'best language to complete your project', '2023-11-26 16:31:34', '2023-11-26 16:31:34'),
(5, 1, 'php language', 'best language to complete your project', '2023-11-26 16:31:36', '2023-11-26 16:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Omair', 'omaer@gmail.com', '2023-11-15 18:52:13', '12345678', NULL, '2023-11-16 18:52:13', '2023-11-30 18:52:13'),
(2, 'Sara', 'sara@gmail.com', '2023-11-16 18:52:13', '000000', NULL, '2023-11-15 18:52:13', '2023-11-09 18:52:13');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `onetoone`
--
CREATE DATABASE IF NOT EXISTS `onetoone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onetoone`;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dammam 7452147 King Fisal street', '2023-11-25 15:05:31', '2023-11-25 15:44:15');

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2023_11_25_171624_create_addresses_table', 1);

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
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Omaier', 'omaer@gmail.com', '2023-11-16 17:58:54', '000', NULL, '2023-11-03 17:58:54', '2023-11-30 17:58:54'),
(2, 'Sara', 'sara@gmail.com', '2023-11-22 17:58:54', '12345', NULL, '2023-11-25 17:58:54', '2023-11-25 17:58:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
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
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
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
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
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
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"omaer_laravel\",\"table\":\"posts\"},{\"db\":\"omaer_laravel\",\"table\":\"users\"},{\"db\":\"contact_form\",\"table\":\"contact\"},{\"db\":\"component\",\"table\":\"users\"},{\"db\":\"cms\",\"table\":\"users\"},{\"db\":\"cms\",\"table\":\"posts\"},{\"db\":\"message\",\"table\":\"users\"},{\"db\":\"login\",\"table\":\"users\"},{\"db\":\"login\",\"table\":\"roles\"},{\"db\":\"new_cms\",\"table\":\"posts\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
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
-- Table structure for table `pma__savedsearches`
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
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'new_cms', 'posts', '[]', '2024-01-06 06:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-03-27 10:54:42', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `polymorphic`
--
CREATE DATABASE IF NOT EXISTS `polymorphic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `polymorphic`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_12_03_181111_create_staff_table', 1),
(5, '2023_12_03_181221_create_products_table', 1),
(6, '2023_12_03_181301_create_photos_table', 1);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `path`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'UPDATED.jpg', 1, 'App\\Staff', NULL, NULL),
(2, 'example.jpg', 1, 'App\\Staff', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP course', '2023-12-04 17:42:19', '2023-12-05 17:42:19'),
(2, 'JavaScript', '2023-12-01 17:42:19', '2023-12-02 17:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed', '2023-12-03 17:37:48', '2023-12-04 17:37:48'),
(2, 'Khaled', '2023-12-03 17:37:48', '2023-12-01 17:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `polymorphicmanytomany`
--
CREATE DATABASE IF NOT EXISTS `polymorphicmanytomany` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `polymorphicmanytomany`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_12_09_175852_create_posts_table', 1),
(5, '2023_12_09_175919_create_videos_table', 1),
(6, '2023_12_09_175940_create_tags_table', 1),
(7, '2023_12_09_175955_create_taggables_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'My first Post', '2023-12-16 03:01:43', '2023-12-16 03:01:43'),
(8, 'My first Post', '2023-12-16 03:02:18', '2023-12-16 03:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'App\\Post', NULL, NULL),
(2, 1, 8, 'App\\Post', NULL, NULL),
(3, 2, 2, 'App\\Video', NULL, NULL),
(4, 2, 7, 'App\\Post', NULL, NULL),
(5, 2, 7, 'App\\Post', NULL, NULL),
(8, 2, 8, 'App\\Post', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'JavaScript', '2023-12-06 06:01:03', '2023-12-12 06:01:03'),
(3, 'Laravel', '2023-12-08 13:19:32', '2023-12-14 13:19:32'),
(4, 'Updated to python', '2023-12-06 13:19:32', '2023-12-24 12:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'video.mov', '2023-12-16 03:01:43', '2023-12-16 03:01:43'),
(2, 'video.mov', '2023-12-16 03:02:18', '2023-12-16 03:02:18');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `hi`
--

CREATE TABLE `hi` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `birth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hi`
--
ALTER TABLE `hi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hi`
--
ALTER TABLE `hi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
