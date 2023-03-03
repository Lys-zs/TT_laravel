-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2017 at 01:24 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php20_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2, 'Tin Xã hội'),
(3, 'Tin Thế giới'),
(4, 'Tin Khoa học'),
(5, 'Tin Sự kiện'),
(6, 'Tin Thể thao'),
(7, 'Tin Giáo dục'),
(8, 'Tin Nhân ái');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `content` text,
  `photo` varchar(500) DEFAULT NULL,
  `hot` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `name`, `description`, `content`, `photo`, `hot`) VALUES
(7, 2, 'Game thủ Trung Quốc hack GPS để trà trộn chơi Pokemon Go tại Nhật', '<p>(D&acirc;n tr&iacute;) - Game thủ Pokemon Go tại Nhật Bản đ&atilde; v&ocirc; c&ugrave;ng bức xức khi ph&aacute;t hiện ra c&oacute; nhiều người chơi tại c&aacute;c nước l&aacute;ng giềng, đặc biệt l&agrave; Trung Quốc đang sử dụng phần mềm hack GPS để đăng nhập v&agrave;o tr&ograve; chơi, thậm ch&iacute; chiếm c&aacute;c ph&ograve;ng tập gym ảo với Pokemon cấp độ cao.</p>', '<p>(D&acirc;n tr&iacute;) - Game thủ Pokemon Go tại Nhật Bản đ&atilde; v&ocirc; c&ugrave;ng bức xức khi ph&aacute;t hiện ra c&oacute; nhiều người chơi tại c&aacute;c nước l&aacute;ng giềng, đặc biệt l&agrave; Trung Quốc đang sử dụng phần mềm hack GPS để đăng nhập v&agrave;o tr&ograve; chơi, thậm ch&iacute; chiếm c&aacute;c ph&ograve;ng tập gym ảo với Pokemon cấp độ cao.&nbsp; (D&acirc;n tr&iacute;) - Game thủ Pokemon Go tại Nhật Bản đ&atilde; v&ocirc; c&ugrave;ng bức xức khi ph&aacute;t hiện ra c&oacute; nhiều người chơi tại c&aacute;c nước l&aacute;ng giềng, đặc biệt l&agrave; Trung Quốc đang sử dụng phần mềm hack GPS để đăng nhập v&agrave;o tr&ograve; chơi, thậm ch&iacute; chiếm c&aacute;c ph&ograve;ng tập gym ảo với Pokemon cấp độ cao.&nbsp; (D&acirc;n tr&iacute;) - Game thủ Pokemon Go tại Nhật Bản đ&atilde; v&ocirc; c&ugrave;ng bức xức khi ph&aacute;t hiện ra c&oacute; nhiều người chơi tại c&aacute;c nước l&aacute;ng giềng, đặc biệt l&agrave; Trung Quốc đang sử dụng phần mềm hack GPS để đăng nhập v&agrave;o tr&ograve; chơi, thậm ch&iacute; chiếm c&aacute;c ph&ograve;ng tập gym ảo với Pokemon cấp độ cao.</p>', '1505474379cat-img-7.jpg', 1),
(8, 2, 'Tuyển FIFA Online 3 Việt Nam: Bắt đầu hành trình EACC 2016', '<p>(D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng.</p>', '<p>(D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng. (D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng.&nbsp; (D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng. (D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng.&nbsp;</p>', '1505474369cat-img-6.jpg', 1),
(9, 2, '@Thị trường smartwatch sụt giảm mạnh trong quý II/2016, Apple vẫn tiếp tục dẫn đầu', '<p>(D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.</p>', '<p>(D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.&nbsp; (D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.&nbsp; (D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.</p>', '1505474362cat-img-5.jpg', 1),
(10, 2, 'Hãng bảo mật của Nhật phát hành công cụ giải mã Ransomware miễn phí', '<p>(D&acirc;n tr&iacute;) - Nhận thức được t&aacute;c động cũng như ph&aacute;t triển của ransomware, h&atilde;ng bảo mật Trend Micro đ&atilde; ph&aacute;t h&agrave;ng c&ocirc;ng cụ giải m&atilde; ransomware miễn ph&iacute;, c&oacute; thể giải m&atilde; c&aacute;c tập tin bị m&atilde; h&oacute;a bởi c&aacute;c ransomware nhất định.</p>', '<p>(D&acirc;n tr&iacute;) - Nhận thức được t&aacute;c động cũng như ph&aacute;t triển của ransomware, h&atilde;ng bảo mật Trend Micro đ&atilde; ph&aacute;t h&agrave;ng c&ocirc;ng cụ giải m&atilde; ransomware miễn ph&iacute;, c&oacute; thể giải m&atilde; c&aacute;c tập tin bị m&atilde; h&oacute;a bởi c&aacute;c ransomware nhất định.&nbsp; (D&acirc;n tr&iacute;) - Nhận thức được t&aacute;c động cũng như ph&aacute;t triển của ransomware, h&atilde;ng bảo mật Trend Micro đ&atilde; ph&aacute;t h&agrave;ng c&ocirc;ng cụ giải m&atilde; ransomware miễn ph&iacute;, c&oacute; thể giải m&atilde; c&aacute;c tập tin bị m&atilde; h&oacute;a bởi c&aacute;c ransomware nhất định. (D&acirc;n tr&iacute;) - Nhận thức được t&aacute;c động cũng như ph&aacute;t triển của ransomware, h&atilde;ng bảo mật Trend Micro đ&atilde; ph&aacute;t h&agrave;ng c&ocirc;ng cụ giải m&atilde; ransomware miễn ph&iacute;, c&oacute; thể giải m&atilde; c&aacute;c tập tin bị m&atilde; h&oacute;a bởi c&aacute;c ransomware nhất định.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '1505474353cat-img-4.jpg', 1),
(11, 4, 'Facebook cất cánh thành công siêu máy bay không người lái', '<p>(D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh</p>', '<p>(D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh&nbsp; (D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh&nbsp; (D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh &nbsp; (D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh</p>', '1505474345cat-img-3.jpg', 1),
(14, 4, 'Tư vấn cách mua iPhone 5/5s cũ tránh hàng dựng', '<p>(D&acirc;n tr&iacute;) - Kh&ocirc;ng phải ai cũng sẵn tiền để mua một chiếc iPhone mới. Nhiều độc giả đang đứng trước ph&acirc;n v&acirc;n c&oacute; n&ecirc;n mua iPhone cũ từ 3, 4 triệu đồng tại c&aacute;c cửa h&agrave;ng điện thoại hay kh&ocirc;ng, v&agrave; nếu mua th&igrave; n&ecirc;n mua ở đ&acirc;u cho uy t&iacute;n. Xin mời bạn đọc c&ugrave;ng tham gia tư vấn.</p>', '<p>(D&acirc;n tr&iacute;) - Kh&ocirc;ng phải ai cũng sẵn tiền để mua một chiếc iPhone mới. Nhiều độc giả đang đứng trước ph&acirc;n v&acirc;n c&oacute; n&ecirc;n mua iPhone cũ từ 3, 4 triệu đồng tại c&aacute;c cửa h&agrave;ng điện thoại hay kh&ocirc;ng, v&agrave; nếu mua th&igrave; n&ecirc;n mua ở đ&acirc;u cho uy t&iacute;n. Xin mời bạn đọc c&ugrave;ng tham gia tư vấn.&nbsp;(D&acirc;n tr&iacute;) - Kh&ocirc;ng phải ai cũng sẵn tiền để mua một chiếc iPhone mới. Nhiều độc giả đang đứng trước ph&acirc;n v&acirc;n c&oacute; n&ecirc;n mua iPhone cũ từ 3, 4 triệu đồng tại c&aacute;c cửa h&agrave;ng điện thoại hay kh&ocirc;ng, v&agrave; nếu mua th&igrave; n&ecirc;n mua ở đ&acirc;u cho uy t&iacute;n. Xin mời bạn đọc c&ugrave;ng tham gia tư vấn.&nbsp;(D&acirc;n tr&iacute;) - Kh&ocirc;ng phải ai cũng sẵn tiền để mua một chiếc iPhone mới. Nhiều độc giả đang đứng trước ph&acirc;n v&acirc;n c&oacute; n&ecirc;n mua iPhone cũ từ 3, 4 triệu đồng tại c&aacute;c cửa h&agrave;ng điện thoại hay kh&ocirc;ng, v&agrave; nếu mua th&igrave; n&ecirc;n mua ở đ&acirc;u cho uy t&iacute;n. Xin mời bạn đọc c&ugrave;ng tham gia tư vấn.</p>', '1504877515cat-img-2.jpg', 1),
(15, 4, 'Thay vì mua iPhone X, 50 triệu đồng có thể mua được những gì?', '<p>(D&acirc;n tr&iacute;) - Một số nh&agrave; b&aacute;n lẻ đ&atilde; cho đặt gạch iPhone X với gi&aacute; l&ecirc;n đến 50 triệu đồng d&agrave;nh cho phi&ecirc;n bản 256 GB. Đ&acirc;y thực sự l&agrave; một số tiền cực lớn d&agrave;nh cho một chiếc điện thoại th&ocirc;ng minh. Với 50 triệu đồng, người d&ugrave;ng c&oacute; thể mua được rất nhiều thứ thay v&igrave; mua iPhone X.</p>', '<p><img alt="" id="img_625160a0-99ff-11e7-965b-1b54d46f10d3" src="https://dantricdn.com/thumb_w/640/2017/a1-1505470720354-1505470779278.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gia Hưng</strong></p>\r\n\r\n<p>Tag :<a href="http://dantri.com.vn/iphone-x.tag" title="iPhone X">iPhone X</a>,&nbsp;<a href="http://dantri.com.vn/iphone-moi.tag" title="iPhone mới">iPhone mới</a>,&nbsp;<a href="http://dantri.com.vn/iphone-the-he-moi.tag" title="iPhone thế hệ mới">iPhone thế hệ mới</a>,&nbsp;<a href="http://dantri.com.vn/the-he-iphone-moi.tag" title="thế hệ iphone mới">thế hệ iphone mới</a>,&nbsp;<a href="http://dantri.com.vn/the-he-moi.tag" title="thế hệ mới">thế hệ mới</a>,<a href="http://dantri.com.vn/mua-iphone-x.tag" title="mua iPhone X">mua iPhone X</a>,&nbsp;<a href="http://dantri.com.vn/gia-50-trieu-dong.tag" title="giá 50 triệu đồng">gi&aacute; 50 triệu đồng</a></p>', '1505474479cat-img-9.jpg', 1),
(16, 4, 'Sony trình diễn loạt thiết bị công nghệ mới tại Sony Show 2017', '<p>(D&acirc;n tr&iacute;) - Triển l&atilde;m Sony Show 2017 đ&atilde; ch&iacute;nh thức mở cửa đ&oacute;n kh&aacute;ch v&agrave;o s&aacute;ng nay 15/9 tại TPHCM. Tại đ&acirc;y, thương hiệu đến từ Nhật Bản đ&atilde; tr&igrave;nh diễn h&agrave;ng lọat thiết bị mới vừa được ra mắt tr&ecirc;n to&agrave;n cầu d&agrave;nh cho người ti&ecirc;u d&ugrave;ng trong nước.</p>', '<p>Đại diện từ Sony cho biết, Sony Show 2017 l&agrave; nơi quy tụ những ph&aacute;t kiến c&ocirc;ng nghệ mới nhất của Sony vừa được giới thiệu tại IFA 2017. Triển l&atilde;m năm nay lấy &yacute; tưởng kết hợp c&ocirc;ng nghệ với &acirc;m nhạc, đến từ c&aacute;c nghệ sĩ của Sony Music v&agrave; đi c&ugrave;ng nhiều hoạt động hướng đến trải nghiệm của người d&ugrave;ng.</p>\r\n\r\n<p><img alt="Xperia XZ1" id="img_164723" src="https://dantricdn.com/thumb_w/640/2017/img-5024-1505444215026.jpg" /></p>\r\n\r\n<p>Xperia XZ1</p>\r\n\r\n<p>Nổi bật trong đ&oacute; l&agrave; sự xuất hiện của bộ đ&ocirc;i Xperia XZ1 v&agrave; Xperia XA1 Plus - bộ đ&ocirc;i smartphone mới tr&igrave;nh l&agrave;ng tại IFA năm nay. Xperia XZ1 l&agrave; chiếc điện thoại đầu ti&ecirc;n mở ra kỷ nguy&ecirc;n 3D Creator mới tr&ecirc;n smartphone. Người d&ugrave;ng c&oacute; thể tự tay chụp 3D c&aacute;c vật thể hay ch&iacute;nh gương mặt m&igrave;nh để gh&eacute;p linh hoạt v&agrave;o nhiều nh&acirc;n vật hoạt h&igrave;nh với ứng dụng AR, tạo ra sticker 3D sống động, hay h&igrave;nh động để chia sẻ l&ecirc;n mạng x&atilde; hội</p>\r\n\r\n<p>Trong khi đ&oacute;, Xperia XA1 Plus l&agrave; sự kết hợp giữa Xperia XA1 v&agrave; Xperia XA1 Ultra với thiết kế viền mỏng, camera c&oacute; độ ph&acirc;n giải cao l&ecirc;n đến 23MP, cấu h&igrave;nh m&aacute;y được n&acirc;ng cấp mạnh mẽ c&ugrave;ng cảm biến v&acirc;n tay v&agrave; dung lượng pin lớn.</p>\r\n\r\n<p><img alt="Xperia Touch" id="img_164953" src="https://dantricdn.com/thumb_w/640/2017/img-5069-1505451387483.jpg" /></p>\r\n\r\n<p>Xperia Touch</p>\r\n\r\n<p>Sony cũng mang đến cho người tham dự trải nghiệm c&ocirc;ng nghệ từ tương lai v&ocirc; c&ugrave;ng th&uacute; vị với thiết bị Xperia Touch. Sản phẩm độc đ&aacute;o n&agrave;y hoạt động như một m&aacute;y chiếu tương t&aacute;c chạy tr&ecirc;n nền Android Nougat c&oacute; thể biến mọi mặt phẳng th&agrave;nh m&agrave;n h&igrave;nh cảm ứng l&ecirc;n đến 80 inch v&agrave; điều khiển như một m&aacute;y t&iacute;nh bảng lớn.</p>\r\n\r\n<p><img alt="TV Bravia OLED 77 inch" id="img_164954" src="https://dantricdn.com/thumb_w/640/2017/img-5085-1505451478779.jpg" /></p>\r\n\r\n<p>TV Bravia OLED 77 inch</p>\r\n\r\n<p>B&ecirc;n cạnh smartphone, Sony cũng mang đến triển l&atilde;m TV Bravia OLED 77 inch lần đầu xuất hiện tại Việt Nam. D&ograve;ng sản phẩm n&agrave;y sử dụng tấm nền OLED, kết hợp giữa bộ xử l&yacute; h&igrave;nh ảnh X1 Extreme v&agrave; hệ thống loa khổng lồ th&ocirc;ng qua c&ocirc;ng nghệ Acoustic Surface độc đ&aacute;o.</p>\r\n\r\n<p><img alt="Gian trải nghiệm tai nghe của Sony" id="img_164955" src="https://dantricdn.com/thumb_w/640/2017/img-5111-1505451635820.jpg" /></p>\r\n\r\n<p>Gian trải nghiệm tai nghe của Sony</p>\r\n\r\n<p>Một gian h&agrave;ng kh&aacute;c trong triển l&atilde;m năm nay cũng để trưng b&agrave;y những sản phẩm tai nghe kh&ocirc;ng d&acirc;y mới như True Wireless WF-1000X, headset đeo cổ WI-1000X, tai nghe tr&ugrave;m đầu WH-1000XM2, Soundbar ST5000, tai nghe h.ear phi&ecirc;n bản mới. Ngo&agrave;i ra, sự g&oacute;p mặt của c&aacute;c d&ograve;ng m&aacute;y Walkman thế hệ mới như ZX300, A40 series sẽ mang đến &acirc;m thanh cực chất cho giới trẻ v&agrave; audiophile.</p>\r\n\r\n<p><img alt="Khu trưng bày máy ảnh có những mô hình dựng sẵn để người dùng thử nghiệm" id="img_164956" src="https://dantricdn.com/thumb_w/640/2017/img-5091-1505451519359.jpg" /></p>\r\n\r\n<p>Khu trưng b&agrave;y m&aacute;y ảnh c&oacute; những m&ocirc; h&igrave;nh dựng sẵn để người d&ugrave;ng thử nghiệm</p>\r\n\r\n<p>Sony cũng mang đến triển l&atilde;m mẫu m&aacute;y ảnh A9 mới, với khả năng chụp tốc độ cao đến 20 ảnh/gi&acirc;y v&agrave; hệ thống 693 điểm lấy n&eacute;t. V&agrave; một chiếc m&aacute;y ảnh RX0 với sự &ldquo;toan t&iacute;nh&rdquo; đầy t&aacute;o bạo của Sony với khối lượng chỉ 100g. Khả năng chống sốc, chống nước 10 m&eacute;t m&agrave; kh&ocirc;ng cần d&ugrave;ng vỏ bảo vệ sẽ gi&uacute;p bạn thực hiện những g&oacute;c quay độc đ&aacute;o m&agrave; những d&ograve;ng m&aacute;y lớn kh&oacute; c&oacute; thể thực hiện. RX0 được trang bị cảm biến Exmor RS CMOS 1&rdquo; c&ugrave;ng ống k&iacute;nh ZEISS Tessar T* 24mm g&oacute;c rộng cho khả năng chụp với tốc độ tối đa l&agrave; 1/32.000 gi&acirc;y v&agrave; chụp ảnh RAW li&ecirc;n tục 16 fps, hỗ trợ quay chậm 40 lần so với chuẩn 24fps, profile quay phim chuy&ecirc;n dụng S-log2 v&agrave; chất lượng h&igrave;nh ảnh 4K.</p>\r\n\r\n<p><img alt="Khu trải nghiệm khả năng chơi game trên PlayStation" id="img_164957" src="https://dantricdn.com/thumb_w/640/2017/img-5100-1505451539842.jpg" /></p>\r\n\r\n<p>Khu trải nghiệm khả năng chơi game tr&ecirc;n PlayStation</p>\r\n\r\n<p>Ngo&agrave;i ra, một số kh&ocirc;ng gian trải nghiệm game PlayStation cũng được trưng b&agrave;y để kh&aacute;ch tham quan trải nghiệm c&aacute;c tựa game nổi tiếng Farpoint, Destiny 2, Knack 2, Tekken 7, PES 2018, GT Sport... Đặc biệt, Sony c&ograve;n mang đến c&ocirc;ng nghệ k&iacute;nh thực tế ảo PlayStation VR, để n&acirc;ng cao trải nghiệm c&aacute;c game h&agrave;nh động bắn s&uacute;ng trở n&ecirc;n h&agrave;o hứng v&agrave; kịch t&iacute;nh hơn.</p>\r\n\r\n<p><strong>Gia Hưng</strong></p>', '1505474528cat-img-10.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
