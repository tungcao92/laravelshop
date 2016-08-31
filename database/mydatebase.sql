-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2016 at 04:23 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatebase`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `cate_id` int(11) unsigned NOT NULL,
  `cate_name` varchar(200) NOT NULL,
  `cate_rewrite` varchar(255) NOT NULL,
  `cate_info` text NOT NULL,
  `cate_order` int(11) NOT NULL,
  `cate_status` tinyint(4) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`cate_id`, `cate_name`, `cate_rewrite`, `cate_info`, `cate_order`, `cate_status`, `parent_id`) VALUES
(2, 'Điện thoại', 'dien-thoai', 'Điện thoại', 1, 1, 0),
(3, 'Thiết bị sô', 'thiet-bi-so', '', 3, 1, 0),
(4, 'Camera giám sát', 'camera-giam-sat', '', 5, 1, 0),
(8, 'Đầu ghi hình', 'dau-ghi-hinh', '4', 11, 0, 0),
(9, 'Linh kiện laptop', 'linh-kien-laptop', '', 4, 1, 0),
(10, 'Máy giặt', 'may-giat', 'máy giặt', 4, 1, 0),
(11, 'Tivi, tủ lạnh', 'tivi-tu-lanh', 'tivi, tủ lạnh', 4, 1, 0),
(12, 'Máy tính bảng', 'may-tinh-bang', 'máy tính bảng', 2, 1, 0),
(13, 'samsung', 'samsung', 'samsung', 4, 1, 2),
(14, 'Apple', 'apple', 'điện thoại apple', 1, 1, 2),
(15, 'Sony xperia', 'sony-xperia', 'điện thoại sony', 1, 1, 2),
(16, 'Máy tính bảng samsung', 'may-tinh-bang-samsung', 'máy tính bảng samsung', 4, 1, 12),
(17, 'Máy tính bảng apple', 'may-tinh-bang-apple', 'máy tính bảng apple', 4, 1, 12),
(18, 'Máy tính bảng sony', 'may-tinh-bang-sony', 'máy tính bảng sony', 4, 1, 12),
(19, 'Htc-one', 'htc-one', 'điện thoại htc', 1, 1, 2),
(20, 'Nokia', 'nokia', 'điện thoại nokia', 1, 1, 2),
(21, 'Mtb Lg', 'mtb-lg', 'Máy tính bảng LG', 1, 1, 12),
(22, 'mtb htc', 'mtb-htc', 'máy tính bảng htc', 1, 1, 12),
(23, 'Q mobile', 'q-mobile', 'qmobile', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_classes`
--

CREATE TABLE IF NOT EXISTS `tbl_classes` (
  `class_id` int(11) unsigned NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `class_number` int(11) NOT NULL,
  `faculy_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_classes`
--

INSERT INTO `tbl_classes` (`class_id`, `class_name`, `class_number`, `faculy_id`) VALUES
(1, 'Lớp Tin 1', 43, 1),
(2, 'Tin Tin 2', 45, 1),
(3, 'Kế Toán 1', 50, 2),
(4, 'Kế Toán 2', 52, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `id` int(11) unsigned NOT NULL,
  `author` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `author`, `email`, `title`, `info`, `created_at`) VALUES
(1, '', '', '', '', '0000-00-00 00:00:00'),
(2, '', '', '', '', '0000-00-00 00:00:00'),
(3, '', '', '', '', '0000-00-00 00:00:00'),
(4, 'aa', 'â', '', 'aa', '0000-00-00 00:00:00'),
(5, 'aa', 'â', '', 'aa', '0000-00-00 00:00:00'),
(6, 'aa', 'â', '', 'aa', '0000-00-00 00:00:00'),
(7, 'aa', 'â', '', 'aa', '0000-00-00 00:00:00'),
(8, 'aa', 'â', '', 'aa', '0000-00-00 00:00:00'),
(9, 'aa', 'â', '', 'aa', '0000-00-00 00:00:00'),
(10, '1111111111111111', '1111111111111', '', '111111111111111111', '0000-00-00 00:00:00'),
(11, '1111111111111111', '1111111111111', '', '111111111111111111', '0000-00-00 00:00:00'),
(12, '22222222222', '22222222222222', '', '2222222222222', '0000-00-00 00:00:00'),
(13, '22222222222', '22222222222222', '', '2222222222222', '2016-06-30 09:58:38'),
(14, '22222222222', '22222222222222', '', '2222222222222', '2016-06-30 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE IF NOT EXISTS `tbl_config` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`id`, `title`, `favicon`, `keywords`, `description`, `logo`, `phone`, `address`, `status`, `message`) VALUES
(1, 'Web của a dương', 'f730a5fe0b9d4c14af1fa1a6bbdb2876.jpg', 'lahongduong', 'anhduongpro', '4bdb152d0f00bc02a2f71854a1fbd139.jpg', '1111', 'â', 0, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty`
--

CREATE TABLE IF NOT EXISTS `tbl_faculty` (
  `faculty_id` int(11) unsigned NOT NULL,
  `faculty_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_faculty`
--

INSERT INTO `tbl_faculty` (`faculty_id`, `faculty_name`) VALUES
(1, 'Khoa Tin'),
(2, 'Khoa Kế Toán'),
(3, 'Khoa Cơ Khí');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty_students`
--

CREATE TABLE IF NOT EXISTS `tbl_faculty_students` (
  `id` int(11) unsigned NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_faculty_students`
--

INSERT INTO `tbl_faculty_students` (`id`, `faculty_id`, `student_id`) VALUES
(1, 1, 2),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE IF NOT EXISTS `tbl_images` (
  `images_id` int(11) unsigned NOT NULL,
  `images_name` varchar(100) NOT NULL,
  `images_title` varchar(100) NOT NULL,
  `images_info` text NOT NULL,
  `images_status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `news_id` int(11) unsigned NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_rewrite` varchar(255) DEFAULT NULL,
  `news_author` varchar(100) DEFAULT NULL,
  `news_info` text NOT NULL,
  `news_full` longtext NOT NULL,
  `news_image` varchar(100) NOT NULL,
  `news_order` int(11) NOT NULL,
  `news_status` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_rewrite`, `news_author`, `news_info`, `news_full`, `news_image`, `news_order`, `news_status`, `created_at`, `cate_id`) VALUES
(2, 'Messi chia tay ĐT Argentina', 'messi-chia-tay-dt-argentina', 'vnexpress.net', 'Khi những giọt nước mắt đổ xuống sân sân MetLife, Messi hiểu rằng Maradona là thánh trong mắt người Argentina còn anh chỉ là người phàm.', '<p>Tuần trước, khi Diego Maradona ph&aacute;t biểu trong một cuộc hội thảo rằng &ldquo;Messi kh&ocirc;ng c&oacute; tố chất thủ lĩnh&rdquo;, đ&oacute; c&oacute; thể được hiểu l&agrave; một chi&ecirc;u kh&iacute;ch tướng của &ldquo;Cậu b&eacute; v&agrave;ng&rdquo; để l&ecirc;n d&acirc;y c&oacute;t tinh thần cho hậu bối. Nhưng ở một kh&iacute;a cạnh n&agrave;o đ&oacute;, n&oacute; cũng lột tả những &yacute; niệm m&agrave; người Argentina nh&igrave;n nhận về&nbsp;<a href="http://www.24h.com.vn/lionel-messi-p356c48.html">Lionel Messi</a>.</p>\r\n\r\n<p>Rời Argentina từ năm 13 tuổi m&agrave; kh&ocirc;ng chơi cho bất kỳ CLB n&agrave;o trong nh&oacute;m Boca Juniors, River Plate v&agrave; Estudiantes,&nbsp;<a href="http://www.24h.com.vn/lionel-messi-p356c48.html">Messi</a>&nbsp;bị xem như một c&aacute; thể xa lạ. Anh trở n&ecirc;n lạc l&otilde;ng tr&ecirc;n ch&iacute;nh mảnh đất qu&ecirc; hương m&igrave;nh.</p>\r\n\r\n<p><img alt="Messi chia tay ĐT Argentina: Khúc bi ca định mệnh - 1" src="http://image.24h.com.vn/upload/2-2016/images/2016-06-28/1467084965-messi-3.jpg" /></p>\r\n\r\n<p>Messi gục ng&atilde; trước &aacute;p lực ở ĐT Argentina</p>\r\n\r\n<p><strong>Định mệnh chọn Maradona...</strong></p>\r\n\r\n<p>Diego Maradona được coi l&agrave; do Ch&uacute;a trời ph&aacute;i đến để gi&uacute;p người Argentina v&ocirc; địch. Kh&ocirc;ng chỉ bởi khoảnh khắc lịch sử Mexico 86. Kh&ocirc;ng chỉ bởi một m&igrave;nh anh đ&atilde; k&eacute;o La Albiceleste đến chức v&ocirc; địch, với &ldquo;B&agrave;n thắng thế kỷ&rdquo; v&agrave; si&ecirc;u phẩm &ldquo;B&agrave;n tay của Ch&uacute;a&rdquo;. Kh&ocirc;ng chỉ bởi ma thuật m&agrave; &ldquo;Cậu b&eacute; v&agrave;ng&rdquo; g&acirc;y ra. N&oacute; c&ograve;n nằm ở kh&iacute;a cạnh t&acirc;m linh, kh&iacute;a cạnh m&agrave; người d&acirc;n Argentina tin rằng sự ra đời v&agrave; bừng s&aacute;ng của Diego l&agrave; một định mệnh.</p>\r\n\r\n<p>Biệt danh của Maradona l&agrave; &ldquo;El pibe de Oro&rdquo;, thường được dịch l&agrave; &ldquo;Cậu b&eacute; v&agrave;ng&rdquo;. Từ &ldquo;pibe&rdquo; trong tiếng T&acirc;y Ban Nha c&oacute; nghĩa l&agrave; &ldquo;cậu b&eacute;&rdquo; nhưng sắc th&aacute;i &yacute; nghĩa c&ograve;n s&acirc;u xa hơn thế. &ldquo;Pibe&rdquo; c&ograve;n l&agrave; một nh&acirc;n vật h&igrave;nh mẫu được c&aacute;c fan&nbsp;<a href="http://www.24h.com.vn/bong-da-c48.html">b&oacute;ng đ&aacute;</a>&nbsp;Argentina x&acirc;y dựng từ tận những năm 1920: một cầu thủ nhỏ con nhưng đầy ma thuật, c&oacute; thể r&ecirc; dắt qua h&agrave;ng loạt cầu thủ m&agrave; tr&aacute;i b&oacute;ng vẫn d&iacute;nh chặt v&agrave;o ch&acirc;n m&igrave;nh.</p>\r\n\r\n<p>Từ những năm 1940, khi b&oacute;ng đ&aacute; Argentina c&ograve;n chưa c&oacute; t&ecirc;n tr&ecirc;n bản đồ thế giới, c&aacute;c CĐV đ&atilde; h&aacute;t vang b&agrave;i tango &ldquo;El sueno del pibe&rdquo; (Giấc mơ của &ldquo;pibe&rdquo;). Trong b&agrave;i h&aacute;t c&oacute; những c&acirc;u h&aacute;t: &ldquo;Anh đẩy tr&aacute;i b&oacute;ng/Anh băng qua hết thảy mọi người cho đến thủ m&ocirc;n/Anh s&uacute;t b&oacute;ng qua người thủ m&ocirc;n...&rdquo; Sau 40 năm, b&agrave;i h&aacute;t ấy được hiện thực h&oacute;a tr&ecirc;n s&acirc;n cỏ với &ldquo;B&agrave;n thắng thế kỷ&rdquo; v&agrave;o lưới đội tuyển Anh.</p>\r\n\r\n<p>Bởi thế trong mắt người Argentina, Maradona kh&ocirc;ng phải l&agrave; &ldquo;Cậu b&eacute; v&agrave;ng&rdquo;. Ngược lại, &ldquo;Cậu b&eacute; v&agrave;ng&rdquo; ch&iacute;nh l&agrave; Diego Maradona. V&agrave; sẽ chẳng c&oacute; th&ecirc;m một &ldquo;Cậu b&eacute; v&agrave;ng&rdquo; n&agrave;o nữa, kể cả đ&oacute; l&agrave; một Lionel Messi với t&uacute;i ma thuật lu&ocirc;n căng đầy.</p>\r\n\r\n<p><strong>... V&agrave; ngoảnh mặt với &ldquo;Messiah&rdquo;</strong></p>\r\n\r\n<p>Giọt nước mắt của Messi đổ xuống s&acirc;n MetLife l&agrave; giọt nước mắt của sự bất lực. Sự bất lực của con người trước định mệnh cuộc đời. Định mệnh của Maradona l&agrave; trở th&agrave;nh một &ldquo;Cậu b&eacute; v&agrave;ng&rdquo; trong truyền thuyết. C&ograve;n định mệnh của Messi, như anh tin, l&agrave; phải trở th&agrave;nh một kẻ thua cuộc trong m&agrave;u &aacute;o xanh trắng, với 3 trận chung kết thất bại li&ecirc;n tiếp trong 3 năm.</p>\r\n\r\n<p>Messi hiểu rằng anh d&ugrave; c&oacute; cố gắng bao nhi&ecirc;u cũng chẳng thể n&agrave;o nhận được thứ t&igrave;nh y&ecirc;u v&agrave; sự t&ocirc;n s&ugrave;ng của Maradona năm xưa. Như nh&agrave; b&aacute;o Sebastian Fest, t&aacute;c giả cuốn s&aacute;ch &ldquo;Misterio Messi&rdquo; (B&iacute; ẩn Messi) từng n&oacute;i: &ldquo;Với người Argentina, cảm x&uacute;c b&oacute;ng đ&aacute; của Maradona đo bằng kilogram c&ograve;n của Messi đo bằng gram&rdquo;.</p>\r\n\r\n<p>Một sự thật đầy chua x&oacute;t với La Pulga. Anh kh&ocirc;ng phải thiếu một chức v&ocirc; địch World Cup để trở th&agrave;nh tượng đ&agrave;i bất tử tr&ecirc;n qu&ecirc; hương m&igrave;nh. Kể cả điều đ&oacute; c&oacute; xảy ra, Messi cũng kh&ocirc;ng bao giờ che mờ c&aacute;i b&oacute;ng của người thuộc về định mệnh.</p>\r\n\r\n<p>Nhưng rồi trong s&acirc;u thẳm tr&aacute;i tim, Messi tin rằng chỉ cần dẫn dắt La Albiceleste đến với một danh hiệu, anh ch&iacute; &iacute;t cũng trở th&agrave;nh cầu thủ được y&ecirc;u mến nhất thế hệ của m&igrave;nh. Rằng anh c&oacute; thể gi&agrave;nh lấy sự y&ecirc;u mến giống như Carlos Tevez - người h&ugrave;ng Boca Juniors, hay Gonzalo Higuain - ng&ocirc;i sao River Plate từng c&oacute; được.</p>\r\n\r\n<p><img alt="Messi chia tay ĐT Argentina: Khúc bi ca định mệnh - 2" src="http://image.24h.com.vn/upload/2-2016/images/2016-06-28/1467084965-messi-4.jpg" /></p>\r\n\r\n<p>&nbsp;Maradona l&agrave; th&aacute;nh trong mắt người Argentina c&ograve;n Messi&nbsp;chỉ l&agrave; người ph&agrave;m.</p>\r\n\r\n<p>Niềm tin ấy tạo cho anh động lực. Anh đ&atilde; c&oacute; một m&ugrave;a H&egrave; kh&ocirc;ng ngơi nghỉ với qu&atilde;ng đường di chuyển hơn 30.000 c&acirc;y số để đến được s&acirc;n MetLife. Anh rời Barcelona đến tập trung c&ugrave;ng đội tuyển rồi trở lại Barcelona để hầu t&ograve;a. V&igrave; phi&ecirc;n t&ograve;a m&agrave; Messi bỏ lỡ&nbsp; trận ra qu&acirc;n nhưng vẫn kịp ra s&acirc;n ở trận thứ hai để ghi một hat-trick si&ecirc;u đẳng. Kể từ đ&oacute;, anh lĩnh xướng h&agrave;ng c&ocirc;ng La Albiceleste đi đến trận chung kết. Trước ng&agrave;y quyết đấu, anh vẫn c&ograve;n một phen kh&oacute; chịu khi trễ chuyến bay hơn 2.000km đến New Jersey.</p>\r\n\r\n<p>Những giọt nước mắt đ&atilde; lăn tr&ecirc;n gương mặt Leo. &ldquo;4 trận chung kết đ&atilde; qua. T&ocirc;i đ&atilde; l&agrave;m việc cật lực bởi đ&oacute; [một danh hiệu c&ugrave;ng Argentina] l&agrave; thứ t&ocirc;i mong muốn hơn bất cứ thứ g&igrave;. Nhưng n&oacute; kh&ocirc;ng d&agrave;nh cho t&ocirc;i&rdquo;, Messi dường như kh&ocirc;ng thể chịu đựng th&ecirc;m được nữa. Kh&ocirc;ng chỉ l&agrave; nỗi đau th&acirc;n x&aacute;c, đ&oacute; c&ograve;n l&agrave; nỗi đau nơi s&acirc;u thẳm t&acirc;m hồn.</p>\r\n', 'b0219ab6f3b1bcd238e2e167dfcffd90.jpg', 1, 1, '2016-03-20 05:56:10', 2),
(3, 'Ra mắt lg g5', 'ra-mat-lg-g5', 'vnexpress.net', 'Loại trừ giả thiết nổ bình khí nén, bình gas, nhiều chuyên gia cho rằng thủ phạm khiến mặt đất toác rộng, 5 người chết, 36 ngôi nhà hư hại là vật liệu nổ, có thể là bom.', '<p>&lt;p&gt;&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;Khuya 19/3, h&amp;amp;amp;agrave;ng trăm bộ đội, c&amp;amp;amp;ocirc;ng an v&amp;amp;amp;agrave; l&amp;amp;amp;iacute;nh cứu hỏa vẫn đang t&amp;amp;amp;iacute;ch cực kh&amp;amp;amp;aacute;m nghiệm hiện trường, thu thập dấu vết t&amp;amp;amp;igrave;m nguy&amp;amp;amp;ecirc;n nh&amp;amp;amp;acirc;n vụ nổ ở H&amp;amp;amp;agrave; Đ&amp;amp;amp;ocirc;ng (H&amp;amp;amp;agrave; Nội). Nhiều mẫu vật được lấy để gi&amp;amp;amp;aacute;m định, như mảnh vỡ bằng sắt, nh&amp;amp;amp;ocirc;m c&amp;amp;amp;ugrave;ng nhiều đồ vật của nạn nh&amp;amp;amp;acirc;n. Một số giả thiết về nguy&amp;amp;amp;ecirc;n nh&amp;amp;amp;acirc;n vụ nổ được đưa ra, như nổ b&amp;amp;amp;igrave;nh kh&amp;amp;amp;iacute; n&amp;amp;amp;eacute;n, b&amp;amp;amp;igrave;nh gas v&amp;amp;amp;agrave; thậm ch&amp;amp;amp;iacute; cả bom.&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;table align=&amp;amp;quot;center&amp;amp;quot; border=&amp;amp;quot;0&amp;amp;quot; cellpadding=&amp;amp;quot;3&amp;amp;quot; cellspacing=&amp;amp;quot;0&amp;amp;quot;&amp;amp;gt; &amp;amp;lt;tbody&amp;amp;gt; &amp;amp;lt;tr&amp;amp;gt; &amp;amp;lt;td&amp;amp;gt;&amp;amp;lt;img alt=&amp;amp;quot;giai-thiet-nguyen-nhan-gay-ra-vu-no-o-ha-dong&amp;amp;quot; src=&amp;amp;quot;http://img.f29.vnecdn.net/2016/03/19/a1-6634-1458399357.jpg&amp;amp;quot; /&amp;amp;gt;&amp;amp;lt;/td&amp;amp;gt; &amp;amp;lt;/tr&amp;amp;gt; &amp;amp;lt;tr&amp;amp;gt; &amp;amp;lt;td&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Vụ nổ ph&amp;amp;amp;aacute; vỡ cống b&amp;amp;amp;ecirc; t&amp;amp;amp;ocirc;ng ở ph&amp;amp;amp;iacute;a dưới vỉa h&amp;amp;amp;egrave; v&amp;amp;amp;agrave; tạo th&amp;amp;amp;agrave;nh một số s&amp;amp;amp;acirc;u. Ảnh:&amp;amp;amp;nbsp;&amp;amp;lt;em&amp;amp;gt;B&amp;amp;amp;aacute; Đ&amp;amp;amp;ocirc;&amp;amp;lt;/em&amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;/td&amp;amp;gt; &amp;amp;lt;/tr&amp;amp;gt; &amp;amp;lt;/tbody&amp;amp;gt; &amp;amp;lt;/table&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Nhiều nh&amp;amp;amp;acirc;n chứng cho biết, trước vụ nổ, người đ&amp;amp;amp;agrave;n &amp;amp;amp;ocirc;ng của gia đ&amp;amp;amp;igrave;nh bu&amp;amp;amp;ocirc;n đồng n&amp;amp;amp;aacute;t đ&amp;amp;amp;atilde; mang một b&amp;amp;amp;igrave;nh dạng kh&amp;amp;amp;iacute; n&amp;amp;amp;eacute;n ra cưa ở vỉa h&amp;amp;amp;egrave; đường L&amp;amp;amp;ecirc; Trọng Tấn nối với phố Quang Trung (H&amp;amp;amp;agrave; Đ&amp;amp;amp;ocirc;ng). &amp;amp;amp;Iacute;t ph&amp;amp;amp;uacute;t sau vật thể được cho l&amp;amp;amp;agrave; b&amp;amp;amp;igrave;nh kh&amp;amp;amp;iacute; nổ tung, tạo một hố s&amp;amp;amp;acirc;u 2 m, rộng 4 m2, thi thể người đ&amp;amp;amp;agrave;n &amp;amp;amp;ocirc;ng bắn khắp nơi.&amp;amp;amp;nbsp;&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Tuy nhi&amp;amp;amp;ecirc;n, trao đổi với&amp;amp;amp;nbsp;&amp;amp;lt;em&amp;amp;gt;VnExpress&amp;amp;lt;/em&amp;amp;gt;, đại t&amp;amp;amp;aacute; Nguyễn Văn Sơn, Ph&amp;amp;amp;oacute; gi&amp;amp;amp;aacute;m đốc Sở Cảnh s&amp;amp;amp;aacute;t ph&amp;amp;amp;ograve;ng ch&amp;amp;amp;aacute;y chữa ch&amp;amp;amp;aacute;y H&amp;amp;amp;agrave; Nội cho rằng, đ&amp;amp;amp;acirc;y kh&amp;amp;amp;ocirc;ng phải l&amp;amp;amp;agrave; vụ nổ th&amp;amp;amp;ocirc;ng thường dạng b&amp;amp;amp;igrave;nh n&amp;amp;amp;eacute;n kh&amp;amp;amp;iacute;. Thường với b&amp;amp;amp;igrave;nh n&amp;amp;amp;eacute;n kh&amp;amp;amp;iacute;, hoặc b&amp;amp;amp;igrave;nh &amp;amp;amp;ocirc;xy, khi c&amp;amp;amp;oacute; lực t&amp;amp;amp;aacute;c động chỉ bị x&amp;amp;amp;igrave; hơi bay đi, hoặc bật tung nắp chứ kh&amp;amp;amp;ocirc;ng c&amp;amp;amp;oacute; sức c&amp;amp;amp;ocirc;ng ph&amp;amp;amp;aacute; lớn như trong vụ n&amp;amp;amp;agrave;y.&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Giả thiết nổ b&amp;amp;amp;igrave;nh gas cũng được đưa ra, bởi gần với hiện trường c&amp;amp;amp;oacute; cửa h&amp;amp;amp;agrave;ng kinh doanh gas. Thực tế H&amp;amp;amp;agrave; Nội từng xảy ra một số vụ nổ gas g&amp;amp;amp;acirc;y thiệt hại về người v&amp;amp;amp;agrave; t&amp;amp;amp;agrave;i sản. Tuy nhi&amp;amp;amp;ecirc;n, điều n&amp;amp;amp;agrave;y cũng nhanh ch&amp;amp;amp;oacute;ng bị loại bởi&amp;amp;amp;nbsp;hiện trường cho thấy c&amp;amp;amp;oacute; h&amp;amp;amp;agrave;ng chục b&amp;amp;amp;igrave;nh gas v&amp;amp;amp;agrave; b&amp;amp;amp;igrave;nh n&amp;amp;amp;eacute;n kh&amp;amp;amp;iacute; được chuyển ra ngo&amp;amp;amp;agrave;i vẫn c&amp;amp;amp;ograve;n nguy&amp;amp;amp;ecirc;n vẹn. Nhiều b&amp;amp;amp;igrave;nh do sức &amp;amp;amp;eacute;p vụ nổ văng xa v&amp;amp;amp;agrave;i chục m&amp;amp;amp;eacute;t song vẫn an to&amp;amp;amp;agrave;n.&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;&amp;amp;amp;quot;Khả năng lớn l&amp;amp;amp;agrave; vật liệu nổ, tuy nhi&amp;amp;amp;ecirc;n ở dạng bom m&amp;amp;amp;igrave;n hay như thế n&amp;amp;amp;agrave;o th&amp;amp;amp;igrave; cần gi&amp;amp;amp;aacute;m định c&amp;amp;amp;aacute;c mẫu vật mới c&amp;amp;amp;oacute; thể kết luận ch&amp;amp;amp;iacute;nh x&amp;amp;amp;aacute;c&amp;amp;amp;quot;,&amp;amp;amp;nbsp;một cảnh s&amp;amp;amp;aacute;t nhiều năm kinh nghiệm trong việc chữa ch&amp;amp;amp;aacute;y, cứu hộ cứu nạn của Bộ C&amp;amp;amp;ocirc;ng an ph&amp;amp;amp;acirc;n t&amp;amp;amp;iacute;ch.&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;table align=&amp;amp;quot;center&amp;amp;quot; border=&amp;amp;quot;0&amp;amp;quot; cellpadding=&amp;amp;quot;3&amp;amp;quot; cellspacing=&amp;amp;quot;0&amp;amp;quot;&amp;amp;gt; &amp;amp;lt;tbody&amp;amp;gt; &amp;amp;lt;tr&amp;amp;gt; &amp;amp;lt;td&amp;amp;gt;&amp;amp;lt;img alt=&amp;amp;quot;giai-thiet-nguyen-nhan-gay-ra-vu-no-o-ha-dong-1&amp;amp;quot; src=&amp;amp;quot;http://img.f29.vnecdn.net/2016/03/19/IMG-6933-3272-1458399357.jpg&amp;amp;quot; /&amp;amp;gt;&amp;amp;lt;/td&amp;amp;gt; &amp;amp;lt;/tr&amp;amp;gt; &amp;amp;lt;tr&amp;amp;gt; &amp;amp;lt;td&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Nhiều b&amp;amp;amp;igrave;nh gas v&amp;amp;amp;agrave; b&amp;amp;amp;igrave;nh n&amp;amp;amp;eacute;n kh&amp;amp;amp;iacute; kh&amp;amp;amp;ocirc;ng bị ph&amp;amp;amp;aacute;t nổ. Ảnh:&amp;amp;amp;nbsp;&amp;amp;lt;em&amp;amp;gt;B&amp;amp;amp;aacute; Đ&amp;amp;amp;ocirc;&amp;amp;lt;/em&amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;/td&amp;amp;gt; &amp;amp;lt;/tr&amp;amp;gt; &amp;amp;lt;/tbody&amp;amp;gt; &amp;amp;lt;/table&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Trong khi đ&amp;amp;amp;oacute;, tối 19/3 Bộ C&amp;amp;amp;ocirc;ng an ph&amp;amp;amp;aacute;t đi th&amp;amp;amp;ocirc;ng c&amp;amp;amp;aacute;o n&amp;amp;amp;ecirc;u r&amp;amp;amp;otilde;, nguy&amp;amp;amp;ecirc;n nh&amp;amp;amp;acirc;n ban đầu dẫn đến vụ nổ l&amp;amp;amp;agrave; chủ nh&amp;amp;amp;agrave; thu gom đồng n&amp;amp;amp;aacute;t đ&amp;amp;amp;atilde; mang một vật liệu nổ ra vỉa h&amp;amp;amp;egrave; cưa, sau đ&amp;amp;amp;oacute; vật liệu ph&amp;amp;amp;aacute;t nổ. Bộ C&amp;amp;amp;ocirc;ng an chưa thể x&amp;amp;amp;aacute;c định vật liệu nổ l&amp;amp;amp;agrave; g&amp;amp;amp;igrave;, hiện&amp;amp;amp;nbsp;giao c&amp;amp;amp;aacute;c đơn vị nghiệp vụ của C&amp;amp;amp;ocirc;ng an H&amp;amp;amp;agrave; Nội, Cảnh s&amp;amp;amp;aacute;t PCCC th&amp;amp;amp;agrave;nh phố khẩn trương l&amp;amp;amp;agrave;m r&amp;amp;amp;otilde;.&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Trước đ&amp;amp;amp;oacute; khoảng 15h chiều 19/3, sau tiếng nổ rất lớn, vỉa h&amp;amp;amp;egrave; đường L&amp;amp;amp;ecirc; Trọng Tấn bị to&amp;amp;amp;aacute;c rộng, kh&amp;amp;amp;oacute;i lửa từ đ&amp;amp;amp;acirc;y bốc cao. 5 nạn nh&amp;amp;amp;acirc;n gồm người đ&amp;amp;amp;agrave;n &amp;amp;amp;ocirc;ng cưa vật thể nổ v&amp;amp;amp;agrave; 4 người đi đường tử vong, 7 người kh&amp;amp;amp;aacute;c bị thương. 36 ng&amp;amp;amp;ocirc;i nh&amp;amp;amp;agrave; nằm hai b&amp;amp;amp;ecirc;n đường hư hỏng do sức &amp;amp;amp;eacute;p của vụ nổ.&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Chủ tịch th&amp;amp;amp;agrave;nh phố Nguyễn Đức Chung, B&amp;amp;amp;iacute; thư Ho&amp;amp;amp;agrave;ng Trung Hải đ&amp;amp;amp;atilde; xuống hiện trường chỉ đạo giải quyết vụ việc, thăm hỏi c&amp;amp;amp;aacute;c nạn nh&amp;amp;amp;acirc;n. Th&amp;amp;amp;agrave;nh phốhỗ trợ ban đầu người bị thương nhẹ 5 triệu đồng, người bị nặng 10 triệu v&amp;amp;amp;agrave; 20 triệu cho gia đ&amp;amp;amp;igrave;nh c&amp;amp;amp;oacute; người tử vong. 36 hộ d&amp;amp;amp;acirc;n bị hư hỏng nh&amp;amp;amp;agrave; được bố tr&amp;amp;amp;iacute; nơi ở tạm thời. &amp;amp;amp;nbsp;&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;table align=&amp;amp;quot;center&amp;amp;quot; border=&amp;amp;quot;0&amp;amp;quot; cellpadding=&amp;amp;quot;3&amp;amp;quot; cellspacing=&amp;amp;quot;0&amp;amp;quot;&amp;amp;gt; &amp;amp;lt;tbody&amp;amp;gt; &amp;amp;lt;tr&amp;amp;gt; &amp;amp;lt;td&amp;amp;gt;&amp;amp;lt;img alt=&amp;amp;quot;giai-thiet-nguyen-nhan-gay-ra-vu-no-o-ha-dong-2&amp;amp;quot; src=&amp;amp;quot;http://img.f29.vnecdn.net/2016/03/19/ff-6310-1458399357.jpg&amp;amp;quot; /&amp;amp;gt;&amp;amp;lt;/td&amp;amp;gt; &amp;amp;lt;/tr&amp;amp;gt; &amp;amp;lt;tr&amp;amp;gt; &amp;amp;lt;td&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;Một số mảnh vỡ bằng sắt v&amp;amp;amp;agrave; nh&amp;amp;amp;ocirc;m cỡ bằng b&amp;amp;amp;agrave;n tay bắn tung to&amp;amp;amp;eacute; khắp hiện trường, sau đ&amp;amp;amp;oacute; được c&amp;amp;amp;ocirc;ng an thu giữ để gi&amp;amp;amp;aacute;m định. Ảnh:&amp;amp;amp;nbsp;&amp;amp;lt;em&amp;amp;gt;B&amp;amp;amp;aacute; Đ&amp;amp;amp;ocirc;&amp;amp;lt;/em&amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;/td&amp;amp;gt; &amp;amp;lt;/tr&amp;amp;gt; &amp;amp;lt;/tbody&amp;amp;gt; &amp;amp;lt;/table&amp;amp;gt;&amp;lt;/p&amp;gt;&lt;/p&gt;</p>\r\n', '1393162c3d13f2b719aa8aee01d7a606.jpg', 199, 1, '2016-03-20 11:58:24', 2),
(5, 'Tiêu đề thôi mà', 'tieu-de-thoi-ma', 'vnexpress.net', 'Loại trừ giả thiết nổ bình khí nén, bình gas, nhiều chuyên gia cho rằng thủ phạm khiến mặt đất toác rộng, 5 người chết, 36 ngôi nhà hư hại là vật liệu nổ, có thể là bom.', '<p>&lt;p&gt;&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;Khuya 19/3, h&amp;amp;amp;amp;agrave;ng trăm bộ đội, c&amp;amp;amp;amp;ocirc;ng an v&amp;amp;amp;amp;agrave; l&amp;amp;amp;amp;iacute;nh cứu hỏa vẫn đang t&amp;amp;amp;amp;iacute;ch cực kh&amp;amp;amp;amp;aacute;m nghiệm hiện trường, thu thập dấu vết t&amp;amp;amp;amp;igrave;m nguy&amp;amp;amp;amp;ecirc;n nh&amp;amp;amp;amp;acirc;n vụ nổ ở H&amp;amp;amp;amp;agrave; Đ&amp;amp;amp;amp;ocirc;ng (H&amp;amp;amp;amp;agrave; Nội). Nhiều mẫu vật được lấy để gi&amp;amp;amp;amp;aacute;m định, như mảnh vỡ bằng sắt, nh&amp;amp;amp;amp;ocirc;m c&amp;amp;amp;amp;ugrave;ng nhiều đồ vật của nạn nh&amp;amp;amp;amp;acirc;n. Một số giả thiết về nguy&amp;amp;amp;amp;ecirc;n nh&amp;amp;amp;amp;acirc;n vụ nổ được đưa ra, như nổ b&amp;amp;amp;amp;igrave;nh kh&amp;amp;amp;amp;iacute; n&amp;amp;amp;amp;eacute;n, b&amp;amp;amp;amp;igrave;nh gas v&amp;amp;amp;amp;agrave; thậm ch&amp;amp;amp;amp;iacute; cả bom.&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;table align=&amp;amp;amp;quot;center&amp;amp;amp;quot; border=&amp;amp;amp;quot;0&amp;amp;amp;quot; cellpadding=&amp;amp;amp;quot;3&amp;amp;amp;quot; cellspacing=&amp;amp;amp;quot;0&amp;amp;amp;quot;&amp;amp;amp;gt; &amp;amp;amp;lt;tbody&amp;amp;amp;gt; &amp;amp;amp;lt;tr&amp;amp;amp;gt; &amp;amp;amp;lt;td&amp;amp;amp;gt;&amp;amp;amp;lt;img alt=&amp;amp;amp;quot;giai-thiet-nguyen-nhan-gay-ra-vu-no-o-ha-dong&amp;amp;amp;quot; src=&amp;amp;amp;quot;http://img.f29.vnecdn.net/2016/03/19/a1-6634-1458399357.jpg&amp;amp;amp;quot; /&amp;amp;amp;gt;&amp;amp;amp;lt;/td&amp;amp;amp;gt; &amp;amp;amp;lt;/tr&amp;amp;amp;gt; &amp;amp;amp;lt;tr&amp;amp;amp;gt; &amp;amp;amp;lt;td&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Vụ nổ ph&amp;amp;amp;amp;aacute; vỡ cống b&amp;amp;amp;amp;ecirc; t&amp;amp;amp;amp;ocirc;ng ở ph&amp;amp;amp;amp;iacute;a dưới vỉa h&amp;amp;amp;amp;egrave; v&amp;amp;amp;amp;agrave; tạo th&amp;amp;amp;amp;agrave;nh một số s&amp;amp;amp;amp;acirc;u. Ảnh:&amp;amp;amp;amp;nbsp;&amp;amp;amp;lt;em&amp;amp;amp;gt;B&amp;amp;amp;amp;aacute; Đ&amp;amp;amp;amp;ocirc;&amp;amp;amp;lt;/em&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;/td&amp;amp;amp;gt; &amp;amp;amp;lt;/tr&amp;amp;amp;gt; &amp;amp;amp;lt;/tbody&amp;amp;amp;gt; &amp;amp;amp;lt;/table&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Nhiều nh&amp;amp;amp;amp;acirc;n chứng cho biết, trước vụ nổ, người đ&amp;amp;amp;amp;agrave;n &amp;amp;amp;amp;ocirc;ng của gia đ&amp;amp;amp;amp;igrave;nh bu&amp;amp;amp;amp;ocirc;n đồng n&amp;amp;amp;amp;aacute;t đ&amp;amp;amp;amp;atilde; mang một b&amp;amp;amp;amp;igrave;nh dạng kh&amp;amp;amp;amp;iacute; n&amp;amp;amp;amp;eacute;n ra cưa ở vỉa h&amp;amp;amp;amp;egrave; đường L&amp;amp;amp;amp;ecirc; Trọng Tấn nối với phố Quang Trung (H&amp;amp;amp;amp;agrave; Đ&amp;amp;amp;amp;ocirc;ng). &amp;amp;amp;amp;Iacute;t ph&amp;amp;amp;amp;uacute;t sau vật thể được cho l&amp;amp;amp;amp;agrave; b&amp;amp;amp;amp;igrave;nh kh&amp;amp;amp;amp;iacute; nổ tung, tạo một hố s&amp;amp;amp;amp;acirc;u 2 m, rộng 4 m2, thi thể người đ&amp;amp;amp;amp;agrave;n &amp;amp;amp;amp;ocirc;ng bắn khắp nơi.&amp;amp;amp;amp;nbsp;&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Tuy nhi&amp;amp;amp;amp;ecirc;n, trao đổi với&amp;amp;amp;amp;nbsp;&amp;amp;amp;lt;em&amp;amp;amp;gt;VnExpress&amp;amp;amp;lt;/em&amp;amp;amp;gt;, đại t&amp;amp;amp;amp;aacute; Nguyễn Văn Sơn, Ph&amp;amp;amp;amp;oacute; gi&amp;amp;amp;amp;aacute;m đốc Sở Cảnh s&amp;amp;amp;amp;aacute;t ph&amp;amp;amp;amp;ograve;ng ch&amp;amp;amp;amp;aacute;y chữa ch&amp;amp;amp;amp;aacute;y H&amp;amp;amp;amp;agrave; Nội cho rằng, đ&amp;amp;amp;amp;acirc;y kh&amp;amp;amp;amp;ocirc;ng phải l&amp;amp;amp;amp;agrave; vụ nổ th&amp;amp;amp;amp;ocirc;ng thường dạng b&amp;amp;amp;amp;igrave;nh n&amp;amp;amp;amp;eacute;n kh&amp;amp;amp;amp;iacute;. Thường với b&amp;amp;amp;amp;igrave;nh n&amp;amp;amp;amp;eacute;n kh&amp;amp;amp;amp;iacute;, hoặc b&amp;amp;amp;amp;igrave;nh &amp;amp;amp;amp;ocirc;xy, khi c&amp;amp;amp;amp;oacute; lực t&amp;amp;amp;amp;aacute;c động chỉ bị x&amp;amp;amp;amp;igrave; hơi bay đi, hoặc bật tung nắp chứ kh&amp;amp;amp;amp;ocirc;ng c&amp;amp;amp;amp;oacute; sức c&amp;amp;amp;amp;ocirc;ng ph&amp;amp;amp;amp;aacute; lớn như trong vụ n&amp;amp;amp;amp;agrave;y.&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Giả thiết nổ b&amp;amp;amp;amp;igrave;nh gas cũng được đưa ra, bởi gần với hiện trường c&amp;amp;amp;amp;oacute; cửa h&amp;amp;amp;amp;agrave;ng kinh doanh gas. Thực tế H&amp;amp;amp;amp;agrave; Nội từng xảy ra một số vụ nổ gas g&amp;amp;amp;amp;acirc;y thiệt hại về người v&amp;amp;amp;amp;agrave; t&amp;amp;amp;amp;agrave;i sản. Tuy nhi&amp;amp;amp;amp;ecirc;n, điều n&amp;amp;amp;amp;agrave;y cũng nhanh ch&amp;amp;amp;amp;oacute;ng bị loại bởi&amp;amp;amp;amp;nbsp;hiện trường cho thấy c&amp;amp;amp;amp;oacute; h&amp;amp;amp;amp;agrave;ng chục b&amp;amp;amp;amp;igrave;nh gas v&amp;amp;amp;amp;agrave; b&amp;amp;amp;amp;igrave;nh n&amp;amp;amp;amp;eacute;n kh&amp;amp;amp;amp;iacute; được chuyển ra ngo&amp;amp;amp;amp;agrave;i vẫn c&amp;amp;amp;amp;ograve;n nguy&amp;amp;amp;amp;ecirc;n vẹn. Nhiều b&amp;amp;amp;amp;igrave;nh do sức &amp;amp;amp;amp;eacute;p vụ nổ văng xa v&amp;amp;amp;amp;agrave;i chục m&amp;amp;amp;amp;eacute;t song vẫn an to&amp;amp;amp;amp;agrave;n.&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;amp;quot;Khả năng lớn l&amp;amp;amp;amp;agrave; vật liệu nổ, tuy nhi&amp;amp;amp;amp;ecirc;n ở dạng bom m&amp;amp;amp;amp;igrave;n hay như thế n&amp;amp;amp;amp;agrave;o th&amp;amp;amp;amp;igrave; cần gi&amp;amp;amp;amp;aacute;m định c&amp;amp;amp;amp;aacute;c mẫu vật mới c&amp;amp;amp;amp;oacute; thể kết luận ch&amp;amp;amp;amp;iacute;nh x&amp;amp;amp;amp;aacute;c&amp;amp;amp;amp;quot;,&amp;amp;amp;amp;nbsp;một cảnh s&amp;amp;amp;amp;aacute;t nhiều năm kinh nghiệm trong việc chữa ch&amp;amp;amp;amp;aacute;y, cứu hộ cứu nạn của Bộ C&amp;amp;amp;amp;ocirc;ng an ph&amp;amp;amp;amp;acirc;n t&amp;amp;amp;amp;iacute;ch.&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;table align=&amp;amp;amp;quot;center&amp;amp;amp;quot; border=&amp;amp;amp;quot;0&amp;amp;amp;quot; cellpadding=&amp;amp;amp;quot;3&amp;amp;amp;quot; cellspacing=&amp;amp;amp;quot;0&amp;amp;amp;quot;&amp;amp;amp;gt; &amp;amp;amp;lt;tbody&amp;amp;amp;gt; &amp;amp;amp;lt;tr&amp;amp;amp;gt; &amp;amp;amp;lt;td&amp;amp;amp;gt;&amp;amp;amp;lt;img alt=&amp;amp;amp;quot;giai-thiet-nguyen-nhan-gay-ra-vu-no-o-ha-dong-1&amp;amp;amp;quot; src=&amp;amp;amp;quot;http://img.f29.vnecdn.net/2016/03/19/IMG-6933-3272-1458399357.jpg&amp;amp;amp;quot; /&amp;amp;amp;gt;&amp;amp;amp;lt;/td&amp;amp;amp;gt; &amp;amp;amp;lt;/tr&amp;amp;amp;gt; &amp;amp;amp;lt;tr&amp;amp;amp;gt; &amp;amp;amp;lt;td&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Nhiều b&amp;amp;amp;amp;igrave;nh gas v&amp;amp;amp;amp;agrave; b&amp;amp;amp;amp;igrave;nh n&amp;amp;amp;amp;eacute;n kh&amp;amp;amp;amp;iacute; kh&amp;amp;amp;amp;ocirc;ng bị ph&amp;amp;amp;amp;aacute;t nổ. Ảnh:&amp;amp;amp;amp;nbsp;&amp;amp;amp;lt;em&amp;amp;amp;gt;B&amp;amp;amp;amp;aacute; Đ&amp;amp;amp;amp;ocirc;&amp;amp;amp;lt;/em&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;/td&amp;amp;amp;gt; &amp;amp;amp;lt;/tr&amp;amp;amp;gt; &amp;amp;amp;lt;/tbody&amp;amp;amp;gt; &amp;amp;amp;lt;/table&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Trong khi đ&amp;amp;amp;amp;oacute;, tối 19/3 Bộ C&amp;amp;amp;amp;ocirc;ng an ph&amp;amp;amp;amp;aacute;t đi th&amp;amp;amp;amp;ocirc;ng c&amp;amp;amp;amp;aacute;o n&amp;amp;amp;amp;ecirc;u r&amp;amp;amp;amp;otilde;, nguy&amp;amp;amp;amp;ecirc;n nh&amp;amp;amp;amp;acirc;n ban đầu dẫn đến vụ nổ l&amp;amp;amp;amp;agrave; chủ nh&amp;amp;amp;amp;agrave; thu gom đồng n&amp;amp;amp;amp;aacute;t đ&amp;amp;amp;amp;atilde; mang một vật liệu nổ ra vỉa h&amp;amp;amp;amp;egrave; cưa, sau đ&amp;amp;amp;amp;oacute; vật liệu ph&amp;amp;amp;amp;aacute;t nổ. Bộ C&amp;amp;amp;amp;ocirc;ng an chưa thể x&amp;amp;amp;amp;aacute;c định vật liệu nổ l&amp;amp;amp;amp;agrave; g&amp;amp;amp;amp;igrave;, hiện&amp;amp;amp;amp;nbsp;giao c&amp;amp;amp;amp;aacute;c đơn vị nghiệp vụ của C&amp;amp;amp;amp;ocirc;ng an H&amp;amp;amp;amp;agrave; Nội, Cảnh s&amp;amp;amp;amp;aacute;t PCCC th&amp;amp;amp;amp;agrave;nh phố khẩn trương l&amp;amp;amp;amp;agrave;m r&amp;amp;amp;amp;otilde;.&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Trước đ&amp;amp;amp;amp;oacute; khoảng 15h chiều 19/3, sau tiếng nổ rất lớn, vỉa h&amp;amp;amp;amp;egrave; đường L&amp;amp;amp;amp;ecirc; Trọng Tấn bị to&amp;amp;amp;amp;aacute;c rộng, kh&amp;amp;amp;amp;oacute;i lửa từ đ&amp;amp;amp;amp;acirc;y bốc cao. 5 nạn nh&amp;amp;amp;amp;acirc;n gồm người đ&amp;amp;amp;amp;agrave;n &amp;amp;amp;amp;ocirc;ng cưa vật thể nổ v&amp;amp;amp;amp;agrave; 4 người đi đường tử vong, 7 người kh&amp;amp;amp;amp;aacute;c bị thương. 36 ng&amp;amp;amp;amp;ocirc;i nh&amp;amp;amp;amp;agrave; nằm hai b&amp;amp;amp;amp;ecirc;n đường hư hỏng do sức &amp;amp;amp;amp;eacute;p của vụ nổ.&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Chủ tịch th&amp;amp;amp;amp;agrave;nh phố Nguyễn Đức Chung, B&amp;amp;amp;amp;iacute; thư Ho&amp;amp;amp;amp;agrave;ng Trung Hải đ&amp;amp;amp;amp;atilde; xuống hiện trường chỉ đạo giải quyết vụ việc, thăm hỏi c&amp;amp;amp;amp;aacute;c nạn nh&amp;amp;amp;amp;acirc;n. Th&amp;amp;amp;amp;agrave;nh phốhỗ trợ ban đầu người bị thương nhẹ 5 triệu đồng, người bị nặng 10 triệu v&amp;amp;amp;amp;agrave; 20 triệu cho gia đ&amp;amp;amp;amp;igrave;nh c&amp;amp;amp;amp;oacute; người tử vong. 36 hộ d&amp;amp;amp;amp;acirc;n bị hư hỏng nh&amp;amp;amp;amp;agrave; được bố tr&amp;amp;amp;amp;iacute; nơi ở tạm thời. &amp;amp;amp;amp;nbsp;&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;table align=&amp;amp;amp;quot;center&amp;amp;amp;quot; border=&amp;amp;amp;quot;0&amp;amp;amp;quot; cellpadding=&amp;amp;amp;quot;3&amp;amp;amp;quot; cellspacing=&amp;amp;amp;quot;0&amp;amp;amp;quot;&amp;amp;amp;gt; &amp;amp;amp;lt;tbody&amp;amp;amp;gt; &amp;amp;amp;lt;tr&amp;amp;amp;gt; &amp;amp;amp;lt;td&amp;amp;amp;gt;&amp;amp;amp;lt;img alt=&amp;amp;amp;quot;giai-thiet-nguyen-nhan-gay-ra-vu-no-o-ha-dong-2&amp;amp;amp;quot; src=&amp;amp;amp;quot;http://img.f29.vnecdn.net/2016/03/19/ff-6310-1458399357.jpg&amp;amp;amp;quot; /&amp;amp;amp;gt;&amp;amp;amp;lt;/td&amp;amp;amp;gt; &amp;amp;amp;lt;/tr&amp;amp;amp;gt; &amp;amp;amp;lt;tr&amp;amp;amp;gt; &amp;amp;amp;lt;td&amp;amp;amp;gt; &amp;amp;amp;lt;p&amp;amp;amp;gt;Một số mảnh vỡ bằng sắt v&amp;amp;amp;amp;agrave; nh&amp;amp;amp;amp;ocirc;m cỡ bằng b&amp;amp;amp;amp;agrave;n tay bắn tung to&amp;amp;amp;amp;eacute; khắp hiện trường, sau đ&amp;amp;amp;amp;oacute; được c&amp;amp;amp;amp;ocirc;ng an thu giữ để gi&amp;amp;amp;amp;aacute;m định. Ảnh:&amp;amp;amp;amp;nbsp;&amp;amp;amp;lt;em&amp;amp;amp;gt;B&amp;amp;amp;amp;aacute; Đ&amp;amp;amp;amp;ocirc;&amp;amp;amp;lt;/em&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt; &amp;amp;amp;lt;/td&amp;amp;amp;gt; &amp;amp;amp;lt;/tr&amp;amp;amp;gt; &amp;amp;amp;lt;/tbody&amp;amp;amp;gt; &amp;amp;amp;lt;/table&amp;amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;&lt;/p&gt;</p>\r\n', 'bd821bcb2bb10bbac0b95b429b01ceeb.jpg', 4, 0, '2016-03-20 12:01:07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE IF NOT EXISTS `tbl_orders` (
  `id` int(11) NOT NULL,
  `BillingAddress_LastName` varchar(100) NOT NULL,
  `BillingAddress_Phone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `products` text NOT NULL,
  `BillingAddress_Address1` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `neworder` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `BillingAddress_LastName`, `BillingAddress_Phone`, `Email`, `products`, `BillingAddress_Address1`, `created_at`, `neworder`) VALUES
(1, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:1:{s:32:"c16deecb809044831d3c3eff4b3972d6";a:7:{s:2:"id";s:2:"20";s:3:"qty";d:12;s:5:"price";d:16000000;s:4:"name";s:9:"iphone 6S";s:7:"options";a:1:{s:5:"image";s:36:"c60b6448f158d22d5cf6b54b3062e0bc.jpg";}s:5:"rowid";s:32:"c16deecb809044831d3c3eff4b3972d6";s:8:"subtotal";d:192000000;}}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 12:38:01', 0),
(2, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 12:42:47', 0),
(3, 'laduong', '011', 'anhduong@gmail.com', 'a:1:{s:32:"94d783931d1f33763924a68d600e451e";a:7:{s:2:"id";s:2:"21";s:3:"qty";d:1;s:5:"price";d:19000000;s:4:"name";s:7:"Sony z5";s:7:"options";a:1:{s:5:"image";s:36:"ea6f9bbe5e048c8bbc94e06edb7143b8.jpg";}s:5:"rowid";s:32:"94d783931d1f33763924a68d600e451e";s:8:"subtotal";d:19000000;}}', '', '2016-06-28 12:47:53', 0),
(4, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:1:{s:32:"c16deecb809044831d3c3eff4b3972d6";a:7:{s:2:"id";s:2:"20";s:3:"qty";d:1;s:5:"price";d:16000000;s:4:"name";s:9:"iphone 6S";s:7:"options";a:1:{s:5:"image";s:36:"c60b6448f158d22d5cf6b54b3062e0bc.jpg";}s:5:"rowid";s:32:"c16deecb809044831d3c3eff4b3972d6";s:8:"subtotal";d:16000000;}}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:25:16', 0),
(5, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:31:03', 0),
(6, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:44:26', 0),
(7, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:45:52', 0),
(8, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:49:30', 0),
(9, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:49:37', 0),
(10, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:51:23', 0),
(11, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:53:45', 0),
(12, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:58:42', 0),
(13, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:59:09', 0),
(14, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 17:59:32', 0),
(15, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:00:07', 0),
(16, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:00:34', 0),
(17, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:02:10', 0),
(18, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:03:05', 0),
(19, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:16:05', 0),
(20, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:18:09', 0),
(21, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:19:01', 0),
(22, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:29:15', 0),
(23, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-28 18:35:01', 0),
(24, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:1:{s:32:"c16deecb809044831d3c3eff4b3972d6";a:7:{s:2:"id";s:2:"20";s:3:"qty";d:1;s:5:"price";d:16000000;s:4:"name";s:9:"iphone 6S";s:7:"options";a:1:{s:5:"image";s:36:"c60b6448f158d22d5cf6b54b3062e0bc.jpg";}s:5:"rowid";s:32:"c16deecb809044831d3c3eff4b3972d6";s:8:"subtotal";d:16000000;}}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-30 14:52:51', 0),
(25, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-06-30 15:04:07', 0),
(26, 'a', '01674135564', 'hongduong92vp@gmail.com', 'a:1:{s:32:"94d783931d1f33763924a68d600e451e";a:7:{s:2:"id";s:2:"21";s:3:"qty";d:1;s:5:"price";d:19000000;s:4:"name";s:7:"Sony z5";s:7:"options";a:1:{s:5:"image";s:36:"ea6f9bbe5e048c8bbc94e06edb7143b8.jpg";}s:5:"rowid";s:32:"94d783931d1f33763924a68d600e451e";s:8:"subtotal";d:19000000;}}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-07-03 18:04:44', 0),
(27, 'a', '01674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-07-03 18:06:27', 0),
(28, 'a', '01674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-07-03 18:06:50', 0),
(29, 'a', '01674135564', 'hongduong92vp@gmail.com', 'a:0:{}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-07-03 18:07:34', 0),
(30, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:1:{s:32:"c16deecb809044831d3c3eff4b3972d6";a:7:{s:2:"id";s:2:"20";s:3:"qty";d:1;s:5:"price";d:16000000;s:4:"name";s:9:"iphone 6S";s:7:"options";a:1:{s:5:"image";s:36:"c60b6448f158d22d5cf6b54b3062e0bc.jpg";}s:5:"rowid";s:32:"c16deecb809044831d3c3eff4b3972d6";s:8:"subtotal";d:16000000;}}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-07-04 05:11:22', 0),
(31, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:1:{s:32:"c16deecb809044831d3c3eff4b3972d6";a:7:{s:2:"id";s:2:"20";s:3:"qty";d:1;s:5:"price";d:16000000;s:4:"name";s:9:"iphone 6S";s:7:"options";a:1:{s:5:"image";s:36:"c60b6448f158d22d5cf6b54b3062e0bc.jpg";}s:5:"rowid";s:32:"c16deecb809044831d3c3eff4b3972d6";s:8:"subtotal";d:16000000;}}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-07-04 05:13:21', 0),
(32, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:1:{s:32:"c16deecb809044831d3c3eff4b3972d6";a:7:{s:2:"id";s:2:"20";s:3:"qty";d:1;s:5:"price";d:16000000;s:4:"name";s:9:"iphone 6S";s:7:"options";a:1:{s:5:"image";s:36:"c60b6448f158d22d5cf6b54b3062e0bc.jpg";}s:5:"rowid";s:32:"c16deecb809044831d3c3eff4b3972d6";s:8:"subtotal";d:16000000;}}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-07-04 05:15:01', 0),
(33, 'La', '1674135564', 'hongduong92vp@gmail.com', 'a:1:{s:32:"94d783931d1f33763924a68d600e451e";a:7:{s:2:"id";s:2:"21";s:3:"qty";d:1;s:5:"price";d:19000000;s:4:"name";s:7:"Sony z5";s:7:"options";a:1:{s:5:"image";s:36:"ea6f9bbe5e048c8bbc94e06edb7143b8.jpg";}s:5:"rowid";s:32:"94d783931d1f33763924a68d600e451e";s:8:"subtotal";d:19000000;}}', 'Dương quảng hàm - cầu giấy - Hà nội', '2016-07-14 14:56:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE IF NOT EXISTS `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `product_rewrite` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` double(11,0) NOT NULL,
  `product_info` text CHARACTER SET utf8,
  `product_image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `product_order` int(11) DEFAULT NULL,
  `products_saleoff` tinyint(4) NOT NULL DEFAULT '0',
  `products_bestsale` tinyint(4) NOT NULL DEFAULT '0',
  `products_hot` tinyint(4) NOT NULL DEFAULT '0',
  `products_new` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_rewrite`, `product_price`, `product_info`, `product_image`, `product_order`, `products_saleoff`, `products_bestsale`, `products_hot`, `products_new`, `created_at`, `status`) VALUES
(19, 'Samsung galaxy s7', 'samsung-galaxy-s7', 1200000, 'galay s7', '22275b5dc23d2b9391f5fc6151f3a601.jpg', 1, 1, 1, 0, 0, '2016-06-04 13:15:23', 1),
(20, 'iphone 6S', 'iphone-6s', 16000000, 'Phone 6s ???c Apple ra m?t vào ngày 10/10 v?a qua là s? nâng c?p ??c bi?t t? “ng??i ti?n nhi?m” iPhone 6 và l??c b? toàn b? nh?ng ?i?m y?u mà t?t c? iPhone ??i tr??c m?c ph?i. Không ch? m?nh m? v? c?u hình, ?a d?ng v? màu s?c, iPhone 6s v?i công ngh? c?m ?ng l?c thông minh còn t?o nên m?t xu h??ng tìm ki?m bùng n? m?nh m? trên internet trong su?t th?i gian qua.', 'c60b6448f158d22d5cf6b54b3062e0bc.jpg', 1, 1, 0, 1, 0, '2016-06-04 13:36:40', 0),
(21, 'Sony z5', 'sony-z5', 19000000, '?i?n tho?i sony\r\n', 'ea6f9bbe5e048c8bbc94e06edb7143b8.jpg', 3, 1, 1, 1, 1, '2016-06-07 11:34:26', 1),
(22, 'máy tính bảng samsung', 'may-tinh-bang-samsung', 9000000, 'máy tính b?ng samsung\r\n', '068906a6422629038e87e3eca73eb557.jpg', 2, 1, 1, 1, 1, '2016-06-08 20:20:56', 1),
(23, 'tab-z', 'tab-z', 7000000, 'máy tính b?ng sony', '5bc5ebb44ecc4c482474610eccd9872d.jpg', 2, 1, 1, 1, 1, '2016-06-08 20:21:23', 1),
(24, 'Ipad', 'ipad', 19000000, 'ipad pro', '5fb09b272283584728ee37c3ea918d4d.jpg', 2, 1, 1, 1, 1, '2016-06-08 20:22:07', 1),
(25, 'galaxys3', 'galaxys3', 10000000, 'galaxy s3', 'b4161fd9efa5be8131a71866a84fde51.jpg', 3, 1, 1, 1, 1, '2016-06-12 09:39:22', 1),
(26, 'Lg g5', 'lg-g5', 13000000, 'lg g5', '7cabfcfc01f9f41d370893a53079788d.jpg', 1, 0, 1, 0, 1, '2016-06-12 09:41:44', 1),
(27, 'Htc', 'htc', 10000000, '?i?n tho?i htc', 'de15b2d5aabb98025d65da12b75b9c61.jpg', 1, 0, 0, 0, 0, '2016-06-16 10:36:57', 1),
(29, 'Nokia', 'nokia', 10000, '?i?n tho?i nokia', '2379f13ca1c45c0d8be094744a042604.jpg', 1, 0, 1, 1, 1, '2016-06-18 10:54:13', 1),
(30, 'Máy tính bảng Lg', 'may-tinh-bang-lg', 11111111, 'máy tính b?ng  lg', '7b6ca3930c1618ab6141763b134234a4.jpg', 1, 1, 1, 1, 1, '2016-06-18 17:45:15', 1),
(31, 'Máy tính bảng HTC', 'may-tinh-bang-htc', 17000000, 'mtb jtc', '198d4a76460abe8e04bebd1dbf9c6998.jpg', 1, 1, 1, 1, 1, '2016-06-18 17:46:04', 1),
(32, 'Máy tinh bảng samsung', 'may-tinh-bang-samsung', 0, 'a', '6ba81c132ef0446678bde022204df709.jpg', 1, 1, 1, 1, 1, '2016-06-18 17:47:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_cate`
--

CREATE TABLE IF NOT EXISTS `tbl_product_cate` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_cate`
--

INSERT INTO `tbl_product_cate` (`id`, `product_id`, `cate_id`) VALUES
(59, 19, 2),
(60, 19, 13),
(61, 20, 2),
(62, 20, 14),
(63, 26, 2),
(64, 26, 15),
(65, 21, 2),
(66, 21, 15),
(67, 25, 2),
(68, 25, 13),
(77, 23, 12),
(78, 23, 18),
(79, 24, 12),
(80, 24, 17),
(81, 27, 2),
(82, 27, 19),
(86, 29, 2),
(87, 29, 14),
(96, 30, 21),
(97, 30, 12),
(98, 31, 22),
(99, 31, 12),
(100, 32, 12),
(101, 32, 16),
(102, 22, 12),
(103, 22, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scores`
--

CREATE TABLE IF NOT EXISTS `tbl_scores` (
  `score_id` int(11) unsigned NOT NULL,
  `score_cc` float NOT NULL,
  `score_tx` float NOT NULL,
  `score_gk` float NOT NULL,
  `score_ck` float NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE IF NOT EXISTS `tbl_students` (
  `student_id` int(11) unsigned NOT NULL,
  `student_code` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_birthday` date NOT NULL,
  `student_gender` tinyint(1) NOT NULL,
  `student_address` varchar(255) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`student_id`, `student_code`, `student_name`, `student_birthday`, `student_gender`, `student_address`, `student_email`, `class_id`) VALUES
(1, 'SV-001', 'Nguyễn Văn A', '1995-03-15', 1, 'Ba Đình - Hà Nội', 'anguyenvan@gmail.com', 1),
(2, 'SV-002', 'Nguyễn Văn B', '1995-03-25', 0, 'Cầu Giấy - Hà Nội', 'bnguyenvan@gmail.com', 5),
(3, 'SV-004', 'Hà Văn C', '1990-10-10', 1, 'Long Biên - Hà Nội', 'havanc@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE IF NOT EXISTS `tbl_subjects` (
  `subject_id` int(11) unsigned NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `subject_number` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`subject_id`, `subject_name`, `subject_number`) VALUES
(1, 'Lập trình pascal', 3),
(2, 'Đồ họa ứng dụng', 2),
(3, 'Kế toán tổng hợp', 3),
(4, 'Xác suất thống kê', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teachers`
--

CREATE TABLE IF NOT EXISTS `tbl_teachers` (
  `teacher_id` int(11) unsigned NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_birthday` date NOT NULL,
  `teacher_gender` tinyint(1) NOT NULL DEFAULT '1',
  `teacher_email` varchar(100) NOT NULL,
  `faculy_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_teachers`
--

INSERT INTO `tbl_teachers` (`teacher_id`, `teacher_name`, `teacher_birthday`, `teacher_gender`, `teacher_email`, `faculy_id`) VALUES
(1, 'Giảng Viên 1', '2016-03-28', 0, 'giangvien1@gmail.com', 2),
(2, 'Giảng Viên 2', '2016-04-19', 1, 'giangvien2@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test`
--

CREATE TABLE IF NOT EXISTS `tbl_test` (
  `test_id` int(11) unsigned NOT NULL,
  `test_status` tinyint(4) NOT NULL DEFAULT '1',
  `test_created` date NOT NULL,
  `test_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `user_id` int(11) unsigned NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `user_gender` tinyint(4) NOT NULL DEFAULT '1',
  `user_email` varchar(100) NOT NULL,
  `user_status` tinyint(4) NOT NULL DEFAULT '0',
  `user_level` tinyint(4) NOT NULL DEFAULT '2'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_pass`, `user_gender`, `user_email`, `user_status`, `user_level`) VALUES
(1, 'admin', '4297f44b13955235245b2497399d7a93', 1, 'haanhdon@gmail.com', 1, 1),
(2, 'tuankiet', 'd41d8cd98f00b204e9800998ecf8427e', 1, 'tuankiet@gmail.com', 1, 2),
(3, 'hadon', 'd41d8cd98f00b204e9800998ecf8427e', 0, 'haanhdon1@gmail.com', 1, 2),
(6, 'hongduong', 'd41d8cd98f00b204e9800998ecf8427e', 0, 'hongduong@gmail.com', 0, 1),
(7, 'hadon123', 'd41d8cd98f00b204e9800998ecf8427e', 0, 'haanhdon123@gmail.com', 1, 2),
(8, 'tienhung', '4297f44b13955235245b2497399d7a93', 1, 'tienhung@gmail.com', 1, 2),
(9, 'xuanbach', '4297f44b13955235245b2497399d7a93', 0, 'bachlx@gmail.com', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'hongduong92vp@gmail.com', '$2y$10$1MN5zDiZjAa55O7G8Oex4u7ihVTsVx1dULM5HLwiYGbX7VFPpYpHi', 'e03VYhM5zTfG5sabPosXPf0JzA6IyKtlaBdojBXIuOf8xlAY9CAt50VhkvZx', '2016-07-16 02:16:33', '2016-07-16 02:17:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `tbl_classes`
--
ALTER TABLE `tbl_classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `tbl_faculty_students`
--
ALTER TABLE `tbl_faculty_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`images_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_product_cate`
--
ALTER TABLE `tbl_product_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_scores`
--
ALTER TABLE `tbl_scores`
  ADD PRIMARY KEY (`score_id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `tbl_test`
--
ALTER TABLE `tbl_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

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
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_classes`
--
ALTER TABLE `tbl_classes`
  MODIFY `class_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_config`
--
ALTER TABLE `tbl_config`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  MODIFY `faculty_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_faculty_students`
--
ALTER TABLE `tbl_faculty_students`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `images_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_product_cate`
--
ALTER TABLE `tbl_product_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `tbl_scores`
--
ALTER TABLE `tbl_scores`
  MODIFY `score_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `student_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `subject_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  MODIFY `teacher_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_test`
--
ALTER TABLE `tbl_test`
  MODIFY `test_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
