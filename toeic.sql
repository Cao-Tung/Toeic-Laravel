-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2017 lúc 02:02 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `toeic`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '<p>Bài Thi Toeic</p>', '2017-05-09 11:16:58', '2017-05-10 15:29:23'),
(3, '<p>Toeic 350+</p>', '2017-05-10 15:36:08', '2017-05-10 15:36:08'),
(4, '<p>Toeic 450+</p>', '2017-05-10 15:42:21', '2017-05-10 15:42:21'),
(5, '<p>Toeic 600+</p>', '2017-05-10 16:21:23', '2017-05-10 16:21:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `title`, `url`, `source`, `content`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Khóa luyện thi TOEIC 350+ (TOEIC Starter) – 20 buổi', 'http://cfl.edu.vn/luyen-thi/toeic-350/', 'http://cfl.edu.vn/', 'Khóa luyện thi TOEIC 350+ (TOEIC Starter)', 1, '2017-05-10 15:58:28', '2017-05-10 15:58:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `files`
--

INSERT INTO `files` (`id`, `name`, `url`, `post_id`, `created_at`, `updated_at`) VALUES
(5, 'TOEIC là gì? Tại sao lại phải học và thi TOEIC?', '/files/YyfgWbuP89Fn2alfnIQOWQgNJZHb8QfB0eg8jkVE.jpeg', -1, '2017-05-09 12:37:50', '2017-05-09 12:37:50'),
(10, 'file.pdf', '/files/g0y6EplSuCmBN3HuIsuLf6llaYqIg2Oyhbh0kbr8.pdf', 4, '2017-05-10 10:22:31', '2017-05-10 11:15:23'),
(12, 'TOEIC là gì? Tại sao lại phải học và thi TOEIC?', '/files/uUpJWp9mztM2PR7DA1nZ4uJ41P7GWtZgmMnm2cMa.jpeg', -1, '2017-05-10 11:25:43', '2017-05-10 11:25:43'),
(13, 'TOEIC là gì? Tại sao lại phải học và thi TOEIC?', '/files/poLtkpIWh1WruW6VUdS49C2frmrmLWXlmR1wxecN.jpeg', -1, '2017-05-10 11:27:15', '2017-05-10 11:27:15'),
(14, 'TOEIC là gì? Tại sao lại phải học và thi TOEIC?', '/files/dyUsXdT3UzgxKpkvuWKO0GT7XPuPUcGXkBGoqzQh.jpeg', -1, '2017-05-10 11:28:31', '2017-05-10 11:28:31'),
(15, 'Cấu trúc đề thi TOEIC – Nội dung của bài thi TOEIC', '/files/cfyclvJxjKIGzpyKP3nkpExOttLig1VSACMJvDyJ.jpeg', -1, '2017-05-10 15:31:48', '2017-05-10 15:31:48'),
(16, 'Thang điểm và cách tính điểm bài thi TOEIC', '/files/oHMCazmiKB8svKHWjXTIZLCmOZqv1gp9GvNmqjwy.png', -1, '2017-05-10 15:34:16', '2017-05-10 15:34:16'),
(17, 'Từ vựng theo chủ đề luyện thi Toeic - Thời tiết', '/files/85fdi9E1M5jKawy0qNX30pYEuApyFbcpVQOSeEVP.jpeg', -1, '2017-05-10 15:40:39', '2017-05-10 15:40:39'),
(18, 'Very-easy-Toeic.pdf', '/files/oyC9ZxUliPR3R7ZpDyVRznfbUlEdXdOljhdP3jqC.pdf', 10, '2017-05-10 15:41:38', '2017-05-10 15:41:38'),
(19, 'Kỹ năng nghe câu hỏi xác định nguyên nhân (Identifying Reasons) - Phần Short Conversation', '/files/yKvYIkEgrXZ7AOrC5rNwnAqIXeQhFsOL8OZAMsrj.jpeg', -1, '2017-05-10 15:44:09', '2017-05-10 15:44:09'),
(20, 'Kỹ năng nghe câu hỏi xác định nguyên nhân (Identifying Reasons) - Phần Short Conversation', '/files/7x0ZV9OvLyPjZ0t9hDW4ZIKj2rDE3EvqWPNorBAW.jpeg', -1, '2017-05-10 15:45:04', '2017-05-10 15:45:04'),
(21, 'Lộ trình 990 TOEIC dành cho người mất gốc', '/files/h61IJkmxfZ6MdKiDbQqmI1pUoWVcGQqQ2VgZyyVn.jpeg', -1, '2017-05-10 15:56:28', '2017-05-10 15:56:28'),
(22, 'Sách ETS.pdf', '/files/dekaKRijgfa7ajBVtcbeyByUHQ0u11zTNet1e1DN.pdf', 7, '2017-05-10 15:57:34', '2017-05-10 15:57:34'),
(23, 'ADJECTIVE.pdf', '/files/6Gems6NkLJG6MgfVwo7fYcUiTiS4pv6VIbGBgdjB.pdf', 7, '2017-05-10 16:10:50', '2017-05-10 16:10:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2017_04_11_101022_create_categories_table', 1),
(14, '2017_04_12_101456_create_posts_table', 1),
(15, '2017_04_12_101509_create_files_table', 1),
(16, '2017_04_12_101517_create_webs_table', 1),
(17, '2017_04_12_101526_create_courses_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `description`, `view`, `avatar`, `category_id`, `created_at`, `updated_at`) VALUES
(7, 'TOEIC là gì? Tại sao lại phải học và thi TOEIC?', '<p><img src=\"http://cfl.edu.vn/xmedia/2013/12/english-test-key.jpg\" style=\"width: 322px;\"></p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Lịch sử hình thành</h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Chương trình thi TOEIC được xây dựng và phát triển bởi&nbsp;Viện Khảo thí Giáo dục (ETS – Educational Testing Service), Hoa Kỳ – một tổ chức nổi tiếng và uy tín chuyên cung cấp các chương trình kiểm tra trắc nghiệm như TOEFL, GRE, GMAT… theo đề nghị từ Liên đoàn Tổ chức Kinh tế Nhật Bản (Keidanren) kết hợp với Bộ Công thương Quốc tế Nhật Bản – MITI (nay là Bộ Kinh tế, Thương mại và Công nghiệp Nhật Bản – METI) vào năm 1979.&nbsp;&nbsp;Bài thi TOEIC được thiết kế dựa trên cơ sở tiền thân của nó là chương trình trắc nghiệm TOEFL.&nbsp;Và tính đến nay, sau hơn 35&nbsp;năm, ETS đã tổ chức kiểm tra cho nhiều triệu lượt người tham dự trên khắp thế giới. Ở Việt Nam, TOEIC bắt đầu được tổ chức thi từ năm 2001 thông qua đại&nbsp;diện là IIG Việt Nam, được ưa thích và phổ biến rộng rãi hơn khoảng 5 năm sau đó.</p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">TOEIC dùng để làm gì?</h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Trước đây tại Việt Nam, nhiều công ty, doanh nghiệp, tổ chức…&nbsp;thường sử dụng chứng chỉ tiếng Anh phân chia theo cấp độ A, B, C (chứng chỉ ABC) như một tiêu chí ngoại ngữ để đưa ra quyết định về tuyển dụng, bổ nhiệm, sắp xếp nhân sự&nbsp;hay bố trí nhân viên tu nghiệp tại nước ngoài.&nbsp;Tuy nhiên trong khoảng 07 năm trở lại đây, chứng chỉ TOEIC nổi lên như một tiêu chuẩn phổ biến hơn để đánh giá trình độ thông thạo tiếng Anh của người lao động.</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><img src=\"http://cfl.edu.vn/xmedia/2013/12/test-english.png\" style=\"width: 322px;\"></p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Xuất phát từ thực tế đó, nhiều trường Đại học, Cao đẳng đã đưa TOEIC vào chương trình giảng dạy và lựa chọn bài thi TOEIC để theo dõi&nbsp;sự tiến bộ trong việc học tiếng Anh đối với sinh viên theo từng học kỳ, năm học hoặc sử dụng làm chuẩn đầu ra tiếng Anh cho sinh viên tốt nghiệp. Chính vì những lý do đó nên việc&nbsp;<strong>học TOEIC</strong>,&nbsp;<strong>luyện thi TOEIC</strong>&nbsp;và tham dự&nbsp;<strong>kỳ thi TOEIC</strong>&nbsp;đóng vai trò quan trọng trong việc chuẩn bị hành trang kiến thức&nbsp;với nhiều sinh viên và người đi làm.</p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Cấu trúc của bài thi TOEIC</h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Bài thi TOEIC truyền thống là một bài kiểm tra trắc nghiệm bao gồm 02 phần:&nbsp;<strong>phần thi Listening</strong>&nbsp;(nghe hiểu) gồm 100 câu, thực hiện trong 45 phút và&nbsp;<strong>phần thi Reading</strong>&nbsp;(đọc hiểu) cũng gồm 100 câu nhưng thực hiện trong 75 phút. Tổng thời gian làm bài là 120 phút (2 tiếng).</p><ul style=\"margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><li><strong>Phần thi Nghe hiểu</strong>&nbsp;<em>(100 câu / 45 phút)</em>: Gồm 4 phần nhỏ được đánh số từ&nbsp;<em><strong>Part&nbsp;1</strong></em>&nbsp;đến&nbsp;<em><strong>Part&nbsp;4</strong></em>. Thí sinh phải&nbsp;lần lượt&nbsp;lắng nghe các đoạn hội thoại ngắn, các đoạn thông tin, các câu hỏi với các ngữ âm khác nhau như: Anh – Mỹ, Anh – Anh, Anh – Canada &amp; Anh – Úc để trả lời.</li><li><strong>Phần thi Đọc hiểu</strong>&nbsp;<em>(100 câu / 75 phút)</em>: Gồm 3 phần nhỏ được đánh số từ&nbsp;<em><strong>Part 5</strong></em>&nbsp;đến&nbsp;<em><strong>Part 7</strong></em>&nbsp;tương ứng với 3 loại là câu chưa hoàn chỉnh, nhận ra lỗi sai và đọc hiểu các đoạn thông tin. Thí sinh&nbsp;<strong>không nhất thiết phải làm tuần tự</strong>&nbsp;mà có thể chọn câu bất kỳ để làm trước.</li></ul><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Mỗi câu hỏi đều cung cấp&nbsp;<strong>4 phương án trả lời A-B-C-D</strong>&nbsp;<em>(trừ các câu từ 11-40 của part 2 chỉ có 3 phương án trả lời A-B-C)</em>. Nhiệm vụ của thí sinh là phải chọn ra phương án trả lời đúng nhất và dùng bút chì để tô đậm ô đáp án&nbsp;của mình. Bài thi TOEIC không đòi hỏi kiến thức và vốn từ vựng chuyên ngành mà chỉ tập trung với các ngôn từ sử dụng trong công việc và giao tiếp hàng ngày. Chi tiết về nội dung của từng phần thi có thể tham khảo tại đây &gt;&gt;&nbsp;<a title=\"Cấu trúc đề thi TOEIC – Nội dung của bài thi TOEIC\" href=\"http://cfl.edu.vn/toeic/cau-truc-de-thi-toeic/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">http://cfl.edu.vn/toeic/cau-truc-de-thi-toeic/</a></p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Bài thi TOEIC Speaking &amp; Writing</h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Ngoài bài thi TOEIC truyền thống (Listening &amp; Reading), bạn có thể tham dự thêm bài thi TOEIC Speaking (Nói) &amp; Writing (Viết) để có thể đáp ứng cả 4 kỹ năng Nghe – Nói – Đọc – Viết mà nhiều vị trí ứng tuyển đòi hỏi. Bạn cũng cần lưu ý: Theo khuyến nghị của ETS, nếu đạt trên 500 điểm với bài thi TOEIC Listening &amp; Reading thì bạn nên tham dự cả bài thi TOEIC Speaking &amp; Writing để đánh giá đầy đủ cả 2 kỹ năng Nói &amp; Viết. Điểm số của bài thi này&nbsp;được chia ra các cấp độ khác nhau được gọi là “các cấp độ thành thạo” (proficiency levels) chứ không dùng thang điểm như bài thi TOEIC Listening &amp; Reading.</p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Điểm thi TOEIC &amp; cách tính điểm bài thi</h3><p style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\"><img src=\"http://cfl.edu.vn/xmedia/2013/12/toeic-certificate.jpg\" style=\"width: 322px;\"></p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Điểm của bài thi TOEIC được tính và quy đổi dựa trên số câu trả lời đúng, bao gồm hai điểm độc lập: điểm của phần thi Nghe hiểu và điểm của phần thi Đọc hiểu. Bắt đầu từ 5, 10, 15… cho tới&nbsp;<strong>495 điểm</strong>&nbsp;mỗi phần. Tổng điểm của cả 2 phần thi sẽ có thang&nbsp;<strong>từ 10 đến 990 điểm</strong>. Sau khi có kết quả, thí sinh sẽ nhận được chứng chỉ TOEIC (phiếu điểm) được gửi riêng cho từng thí sinh (không công bố công khai). Việc quy đổi điểm số từ số câu trả lời đúng có thể tham khảo tại đây &gt;&gt;&nbsp;<a title=\"Thang điểm và cách tính điểm bài thi TOEIC\" href=\"http://cfl.edu.vn/toeic/thang-diem-va-cach-tinh-diem-bai-thi-toeic/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">http://cfl.edu.vn/toeic/thang-diem-va-cach-tinh-diem-bai-thi-toeic/</a></p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Chuẩn TOEIC? Cần đạt bao nhiêu điểm TOEIC để được cấp chứng chỉ</h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Cũng giống như bài thi IELTS, kết quả của bài thi TOEIC không có mức điểm để quy định đỗ hay trượt mà chỉ phản ánh trình độ sử dụng tiếng Anh của người tham dự. Tuy nhiên tại nhiều trường Đại học tại Việt Nam, đều có quy định chuẩn đầu ra tiếng Anh. Theo đó, sinh viên khi tốt nghiệp phải đạt chuẩn tiếng Anh tương đương với&nbsp;<strong>TOEIC 450</strong>&nbsp;hoặc cao hơn tùy theo chuyên ngành. Khi&nbsp;tham dự thi TOEIC bạn cũng cần lưu ý: Nếu muốn cung cấp thêm phiếu điểm để nộp Hồ sơ tuyển dụng cho&nbsp;các đơn vị tuyển dụng, thí sinh phải đạt&nbsp;<strong>điểm TOEIC từ 200 trở lên</strong>.<strong>&nbsp;</strong>Nếu muốn cung cấp thêm phiếu điểm để nộp Hồ sơ du học, thí sinh phải đạt&nbsp;<strong>điểm TOEIC từ 500 trở lên</strong>. Lệ phí cho mỗi phiếu điểm in thêm là&nbsp;<strong>50.000 đồng</strong>, nếu cần chuyển phát nhanh thì nộp thêm&nbsp;<strong>15.000 đồng</strong>.</p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Một số mức điểm TOEIC tham khảo</h3><ul style=\"margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><li>TOEIC 100 –&nbsp;300 điểm: Trình độ cơ bản. Khả năng giao tiếp tiếng Anh kém.</li><li>TOEIC 300 – 450 điểm: Có khả năng hiểu &amp; giao tiếp tiếng Anh mức độ trung bình. Là yêu cầu đối với học viên tốt nghiệp các trường nghề, cử nhân các trường Cao đẳng (hệ đào tạo 3 năm).</li><li>TOEIC 450 – 650 điểm: Có khả năng giao tiếp tiếng Anh khá. Là yêu cầu chung đối với SV&nbsp;tốt nghiệp Đại học hệ đào tạo 4-5 năm; nhân viên, trưởng nhóm tại các doanh nghiệp có yếu tố nước ngoài.</li><li>TOEIC 650 – 850 điểm: Có khả năng giao tiếp tiếng Anh tốt. Là yêu cầu đối với cấp trưởng phòng, quản lý điều hành cao cấp, giám đốc trong môi trường làm việc quốc tế.</li><li>TOEIC 850 – 990 điểm: Có khả năng giao tiếp tiếng Anh rất tốt. Sử dụng gần như người bản ngữ dù tiếng Anh không phải tiếng mẹ đẻ.</li></ul>', 'TOEIC là gì? Tại sao lại phải học và thi TOEIC?', 0, '/files/dyUsXdT3UzgxKpkvuWKO0GT7XPuPUcGXkBGoqzQh.jpeg', 1, '2017-05-10 11:28:31', '2017-05-10 11:28:31'),
(8, 'Cấu trúc đề thi TOEIC – Nội dung của bài thi TOEIC', '<p><img src=\"http://cfl.edu.vn/xmedia/2014/08/toeic.jpg\" style=\"width: 322px; float: none;\"></p><p><span style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Một bài thi TOEIC đầy đủ gồm hai phần thi:&nbsp;</span><strong style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Phần thi Listening</strong><span style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">&nbsp;(nghe hiểu) trong&nbsp;</span><em style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>45 phút</strong></em><span style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">&nbsp;và&nbsp;</span><strong style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">phần thi Reading</strong><span style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">&nbsp;(đọc hiểu) trong&nbsp;</span><em style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>75 phút</strong></em><span style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">. Mỗi phần thi có 100 câu. Tổng số câu hỏi của cả hai phần thi là&nbsp;</span><em style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>200 câu</strong></em><span style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">. Tổng thời gian làm bài là&nbsp;</span><em style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>120 phút</strong></em><span style=\"color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">&nbsp;hay 2 tiếng. Cấu trúc và nội dung chi tiết của từng phần thi như sau:</span></p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Phần A&nbsp;– Listening (100 câu / 45 phút)</h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>Phần thi Listening</strong>&nbsp;được dùng để đánh giá kỹ năng nghe. Thí sinh sẽ được nghe các câu miêu tả, câu hỏi, hội thoại và đoạn thông tin bằng tiếng Anh&nbsp;được đọc trực tiếp trên đài cassette hoặc loa. Thí sinh chỉ có&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>45 phút</strong></span>&nbsp;để vừa nghe vừa trả lời&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>100 câu</strong></span>&nbsp;bằng cách khoanh vào các đáp án A-B-C-D.</p><table border=\"1\" cellspacing=\"0\" cellpadding=\"5\" style=\"margin: 0px 0px 1.5em; width: 771px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221); width: 50px;\"><strong>Phần A</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221); width: 150px;\"><strong>Nội dung thi</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221); width: 50px;\"><strong>Số câu</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Chi tiết</strong></td></tr><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Phần 1</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Hình ảnh</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">10 câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Tương ứng với mỗi bức ảnh, bạn sẽ được nghe 04&nbsp;câu mô tả về nó. Nhiệm vụ của bạn là phải chọn câu mô tả đúng nhất cho bức ảnh.</td></tr><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Phần 2</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Hỏi đáp</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">30 câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Bạn sẽ nghe một câu hỏi (hoặc câu nói) và 03 lựa chọn trả lời. Nhiệm vụ của bạn là phải chọn ra câu trả lời đúng nhất trong ba đáp án A-B-C.</td></tr><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Phần 3</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Hội thoại ngắn</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">30 câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Bạn sẽ nghe 10&nbsp;đoạn hội thoại ngắn. Mỗi đoạn có 03 câu hỏi. Nhiệm vụ của bạn là chọn ra câu trả lời đúng nhất trong 04 đáp án của đề thi.</td></tr><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Phần 4</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Đoạn thông tin ngắn</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">30 câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Bạn sẽ nghe 10&nbsp;đoạn thông tin ngắn. Mỗi đoạn có 03 câu hỏi. Nhiệm vụ của bạn là chọn ra câu trả lời đúng nhất trong số 04 đáp án được cung cấp.</td></tr></tbody></table><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Trong phần thi nghe hiểu sẽ có một số ví dụ sử dụng giọng Anh – Mỹ (Bắc Mỹ), giọng Anh – Anh, giọng Anh – Úc và giọng Anh – Canada. Những ngữ âm này xuất hiện không nhiều nhưng phản ánh những kiểu giọng đặc trưng&nbsp;khác nhau trong thực tế ở môi trường làm việc quốc tế. Chính vì vậy đòi hỏi người học phải có phương pháp tổng hợp và khả năng nhận biết một cách linh hoạt, nhạy bén.</p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Phần B&nbsp;– Reading (100 câu / 75 phút)</h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>Phần thi Reading</strong>&nbsp;(đọc hiểu) được thực hiện ngay sau khi thí sinh kết thúc phần thi nghe. Phần thi này dùng để đánh giá vốn từ vựng, ngữ pháp tiếng Anh và khả năng đọc hiểu các đoạn văn ngắn. Các câu hỏi và phần thông tin liên quan đều được in trực tiếp trên đề thi. Có tất cả&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>100 câu</strong></span>&nbsp;và thí sinh có&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>75 phút</strong></span>&nbsp;để hoàn thành.</p><table border=\"1\" cellspacing=\"0\" cellpadding=\"5\" style=\"margin: 0px 0px 1.5em; width: 771px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221); width: 50px;\"><strong>Phần B</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221); width: 150px;\"><strong>Nội dung thi</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221); width: 50px;\"><strong>Số câu</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Chi tiết</strong></td></tr><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Phần 5</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Hoàn thành câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">40 câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Bạn cần phải chọn từ đúng nhất để hoàn thành câu.</td></tr><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Phần 6</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Hoàn thành đoạn văn</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">12 câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Mỗi đoạn văn có 03 chỗ trống.&nbsp;Bạn phải điền từ thích hợp còn thiếu vào mỗi chỗ trống trong đoạn văn đó.</td></tr><tr><td rowspan=\"2\" style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\"><strong>Phần 7</strong></td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Đoạn đơn</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">28 câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Đề thi có thể có từ 7-10 đoạn văn đơn. Hết mỗi đoạn văn sẽ có 2-5 câu hỏi.</td></tr><tr><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Đoạn kép</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">20 câu</td><td style=\"padding: 5px; border: 1px solid rgb(221, 221, 221);\">Trong phần này sẽ có từ 04 cặp đoạn văn. Hết mỗi cặp đoạn văn sẽ có 5 câu hỏi.</td></tr></tbody></table><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">&nbsp;</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Thí sinh trả lời&nbsp;bằng cách sử dụng bút chì tô vào các lựa chọn (A), (B), (C) hoặc (D) vào phiếu trả lời. Tổng số câu cần trả lời là&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>200 câu</strong></span>. Tổng thời gian làm bài là&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>120 phút</strong></span>&nbsp;hay&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>02 tiếng</strong></span>.</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Sau khi hoàn thành bài thi, nếu có đáp án bạn có thể tự quy đổi ra điểm số bài thi của mình theo bảng quy đổi sau &gt;&gt;&nbsp;<a title=\"Thang điểm và cách tính điểm bài thi TOEIC\" href=\"http://cfl.edu.vn/toeic/thang-diem-va-cach-tinh-diem-bai-thi-toeic/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">Thang điểm TOEIC</a></p>', 'Khi dự thi TOEIC, một trong những điều kiện tiên quyết để dành được tối đa điểm số đó là hiểu rõ về cấu trúc đề thi TOEIC.', 0, '/files/cfyclvJxjKIGzpyKP3nkpExOttLig1VSACMJvDyJ.jpeg', 1, '2017-05-10 15:31:48', '2017-05-10 15:31:48'),
(9, 'Thang điểm và cách tính điểm bài thi TOEIC', '<p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Trong quá trình tổ chức các&nbsp;<strong>khóa luyện thi TOEIC</strong>, Trung tâm Ngoại ngữ CFL đã nhận được rất nhiều câu hỏi của các bạn Sinh viên Đại học Bách Khoa và các bạn học viên của CFL về&nbsp;<strong>thang điểm</strong>&nbsp;và&nbsp;<strong>cách tính điểm bài thi TOEIC</strong>. Đây cũng là băn khoăn và thắc mắc của nhiều bạn Sinh viên các trường Đại học khác đang có nhu cầu tìm hiểu về bài thi TOEIC. Tuy nhiên để hiểu rõ về cách tính điểm, trước tiên chúng ta cần tìm hiểu về bài thi TOEIC.</p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\"><a title=\"Cấu trúc đề thi TOEIC – Nội dung của bài thi TOEIC\" href=\"http://cfl.edu.vn/toeic/cau-truc-de-thi-toeic/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">Cấu trúc của bài thi TOEIC</a></h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Một bài thi TOEIC truyền thống gồm 02 phần:</p><ul style=\"margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\"><strong>Phần 1 – Listening</strong></span>: Phần thi nghe được dùng để kiểm tra kỹ năng nghe tiếng Anh của thí sinh, bao&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>gồm 100 câu</strong></span>, các câu hỏi này được đọc trực tiếp trên đài cassette (không in trên đề thi). Thí sinh có tất cả&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>45 phút</strong></span>&nbsp;để vừa nghe vừa điền các phương án trả lời.</li><li><span style=\"color: rgb(0, 0, 0);\"><strong>Phần 2 – Reading</strong></span>: Phần đọc hiểu được dùng để kiểm tra vốn từ vựng, ngữ pháp tiếng Anh và khả năng đọc hiểu các đoạn văn ngắn. Phần này bao gồm&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>100 câu hỏi</strong></span>&nbsp;được in trực tiếp trên đề thi, và thí sinh có tất cả&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>75 phút</strong></span>&nbsp;để làm bài.</li></ul><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Như vậy một bài thi TOEIC hoàn chỉnh bao gồm&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>200 câu hỏi</strong></span>&nbsp;và thí sinh sẽ cần hoàn thành trong&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>120 phút</strong></span>&nbsp;hay&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>2 giờ</strong>&nbsp;</span>đồng hồ.</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Chi tiết về cấu trúc đề thi TOEIC xem tại đây &gt;&gt;&nbsp;<a title=\"Cấu trúc đề thi TOEIC – Nội dung của bài thi TOEIC\" href=\"http://cfl.edu.vn/toeic/cau-truc-de-thi-toeic/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">http://cfl.edu.vn/toeic/cau-truc-de-thi-toeic/</a></p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Theo tư duy thông thường chúng ta sẽ cho rằng nếu mỗi câu được tính 1 điểm thì bài thi TOEIC tối đa sẽ đạt 200 điểm, hoặc nếu mỗi câu tính 5 điểm thì bài thi TOEIC tối đa sẽ đạt 1000 điểm. Tuy nhiên không phải như vậy! Theo quy định&nbsp;<strong>bài thi TOEIC tối đa chỉ có&nbsp;<span style=\"color: rgb(153, 51, 0);\">990 điểm</span></strong>&nbsp;và được quy đổi theo một cách riêng để đánh giá đúng trình độ của thí sinh.</p><h3 style=\"margin: 0px 0px 15px; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; font-weight: 400; font-size: 20px;\">Thang điểm và cách tính điểm bài thi TOEIC</h3><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Mỗi câu hỏi trong bài thi TOEIC sẽ đưa ra 4 đáp án A-B-C-D (trừ các câu từ 11-40 sẽ chỉ có 3 đáp án A-B-C). Thí sinh cần khoanh vào phương án đúng duy nhất A,B,C hoặc D. Khi chấm điểm thay vì cộng một cách cơ học, chúng ta cần đối chiếu số câu trả lời đúng với thang điểm dưới đây để quy đổi ra điểm số các phần thi của mình.</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><img src=\"http://cfl.edu.vn/xmedia/2015/03/thang-diem-toeic-2015.png\" style=\"width: 322px;\"></p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif; text-align: center;\"><em><strong>Bảng quy đổi điểm nghe, điểm đọc của bài thi TOEIC năm 2015</strong></em></p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Như vậy điểm TOEIC là một con số chẵn, giống như hồi trẻ con chúng ta hay chơi trò chơi “bịt mắt bắt dê” và được tính từ 5 điểm, 10 điểm, 15 điểm… cho tới&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>450 điểm</strong></span>&nbsp;và cuối cùng là&nbsp;<span style=\"color: rgb(153, 51, 0);\"><strong>990 điểm</strong></span>. Những câu trả lời đúng đầu tiên có giá trị điểm rất thấp, càng trả lời được nhiều câu chúng ta càng có cơ hội đạt tới những điểm số cao hơn rất nhiều.</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>VD1: Thí sinh Mai Phương T tham dự kỳ thi kiểm tra đầu vào và đạt kết quả như sau:</strong></p><ul style=\"margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><li>Phần thi nghe: đúng 30 câu / 100 được quy đổi thành 125 điểm</li><li>Phần thi đọc: đúng 40 câu / 100 được quy đổi thành 175&nbsp;điểm</li></ul><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Vậy thí sinh này được tất cả là&nbsp;<strong>125+175</strong>&nbsp;=&nbsp;<strong>300&nbsp;điểm TOEIC</strong>. Thí sinh T sẽ phải nỗ lực rất nhiều và nên tham gia các&nbsp;<a title=\"Tiếng Anh sơ trung cấp GE2\" href=\"http://cfl.edu.vn/khoa-hoc/tieng-anh-so-trung-cap-ge2/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">khóa học tiếng Anh cơ bản GE2</a>&nbsp;và&nbsp;<a title=\"Tiếng Anh sơ trung cấp GE3\" href=\"http://cfl.edu.vn/khoa-hoc/tieng-anh-so-trung-cap-ge3/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">GE3</a>&nbsp;để bổ sung kiến thức nền trước khi bước vào luyện thi TOEIC</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>VD2: Thí sinh Đàm Vĩnh H tham dự kỳ thi TOEIC tại trung tâm Ngoại ngữ CFL năm 2014 và đạt kết quả như sau:</strong></p><ul style=\"margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><li>Phần thi nghe: đúng 40 câu / 100 được quy đổi thành 185 điểm</li><li>Phần thi đọc: đúng 35&nbsp;câu /100 được quy đổi thành 145&nbsp;điểm</li></ul><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Vậy thí sinh này được tất cả là&nbsp;<strong>185 + 145</strong>&nbsp;=&nbsp;<strong>330 điểm TOEIC</strong>&nbsp;và chưa đạt chuẩn đầu ra tiếng Anh. Thí sinh H cần tham gia thêm khóa&nbsp;<a title=\"Khóa luyện thi TOEIC 400+ (trong 20 buổi)\" href=\"http://cfl.edu.vn/luyen-thi/toeic-400/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">luyện thi TOEIC 400+</a>&nbsp;và&nbsp;<a title=\"Khóa luyện thi TOEIC 450+ (trong 20 buổi)\" href=\"http://cfl.edu.vn/luyen-thi/toeic-450/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">khóa luyện thi TOEIC 450+</a>&nbsp;để có thể đạt 450 điểm</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><img src=\"http://cfl.edu.vn/xmedia/2013/12/trinh-do-toeic-tren-350.png\" style=\"width: 322px;\"></p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><strong>VD3: Thí sinh Lý Nhã K tham dự kỳ thi TOEIC tại trung tâm Ngoại ngữ CFL năm 2014 và đạt kết quả như sau:</strong></p><ul style=\"margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\"><li>Phần thi nghe: đúng 60 câu / 100 được quy đổi thành 305 điểm</li><li>Phần thi đọc: đúng 56 câu /100 được quy đổi thành 275 điểm</li></ul><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Vậy thí sinh Lý Nhã K được tất cả là&nbsp;<strong>315 + 275</strong>&nbsp;=&nbsp;<strong>590 điểm TOEIC</strong>&nbsp;và đạt chuẩn đầu ra tiếng Anh. Tuy nhiên nếu muốn đạt TOEIC 650 thì thí sinh này cần tham gia thêm&nbsp;<a title=\"Khóa luyện thi TOEIC 650+ (trong 20 buổi)\" href=\"http://cfl.edu.vn/luyen-thi/toeic-650/\" style=\"color: rgb(39, 39, 39); text-decoration: inherit;\">khóa luyện thi TOEIC 650+</a>.</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Chúng ta cũng cần lưu ý: thang điểm TOEIC này không phải là thang quy đổi duy nhất mà có thể có sự khác biệt giữa các đề thi / bộ đề thi, tùy thuộc vào mức độ khó dễ của từng đề / bộ đề mà có sự điều chỉnh cho phù hợp. Và với các kỳ thi cấp chứng chỉ tiếng Anh nội bộ (dạng thức TOEIC) tại trường ĐH Bách Khoa thì hiện tại ban chấm thi sử dụng thang điểm nói trên.</p><p style=\"margin: 0px 0px 15px; color: rgb(114, 114, 114); font-family: Roboto, sans-serif;\">Hi vọng những thông tin trên sẽ giúp các bạn hiểu rõ và có thể tự tính điểm bài thi TOEIC của mình, từ đó có thể lập kế hoạch để ôn luyện và tích lũy điểm số cao hơn sau mỗi lần tham dự các kỳ thi.</p>', 'Thang điểm và cách tính điểm bài thi TOEIC', 0, '/files/oHMCazmiKB8svKHWjXTIZLCmOZqv1gp9GvNmqjwy.png', 1, '2017-05-10 15:34:16', '2017-05-10 15:34:16'),
(10, 'Từ vựng theo chủ đề luyện thi Toeic - Thời tiết', '<h2 style=\"font-size: 13px; color: rgb(60, 60, 60); font-family: arial, sans-serif;\"><span style=\"font-size: 12px;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); line-height: 18px;\">Để phục vụ cho phần nghe bản tin dự báo thời tiết, rất hay xuất hiện trong Part 4 Listening khi&nbsp;<a href=\"http://www.mshoatoeic.com/\" style=\"color: rgb(27, 25, 25);\">luyện thi TOEIC</a>, chúng ta cùng cô ôn lại những từ vựng liên quan đến chủ đề Weather /’weðə/ nhé.</span></span></span></h2><h2 style=\"font-size: 13px; color: rgb(60, 60, 60); font-family: arial, sans-serif;\"><img src=\"http://www.mshoatoeic.com/uploads/images/userfiles/chia_se_kn/13825124233468.gif\" style=\"width: 322px;\"><span style=\"font-size: 12px;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); line-height: 18px;\"><br></span></span></span></h2><h2 style=\"font-size: 13px; color: rgb(60, 60, 60); font-family: arial, sans-serif;\">1. Rain /rein/ (v,n) mưa<br style=\"font-weight: normal; color: rgb(51, 51, 51); font-family: &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; line-height: 18px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12px; font-weight: normal; color: rgb(51, 51, 51); line-height: 18px;\">2. Snow /sn</span><span class=\"text_exposed_show\" style=\"font-family: arial, helvetica, sans-serif; font-size: 12px; font-weight: normal; display: inline; color: rgb(51, 51, 51); line-height: 18px;\">əʊ/ (v,n) tuyết<br>3. Hail /heɪl/ (v,n) mưa đá<br><br>4. Fog /fɒg/ (n) sương mù<br>5. Storm /stɔ:m/ (n) bão<br>6. Wind /wɪnd/ (n) gió<br><br>7. Thunder/’θʌndə(r)/ (n) sấm<br>8. Lightning /’laɪtniŋ/ (n) chớp, sét<br>9. Thermometer /θə’mɒmɪtə/ (n) nhiệt kế<br><br>10. Temperature /’temprətʃə/ (n) nhiệt độ<br>11. Hot /hɒt/ (adj) nóng<br>12. Warm /wɔ:m/ (adj) ấm<br><br>13. Cool /ku:l/ (adj) mát mẻ<br>14. Cold /kəʊld/ (adj) lạnh<br>15. Freezing /’fri:zɪŋ/ (adj) lạnh cóng<br><br>16. Dry /draɪ/ (adj) khô ráo<br>17. Wet / humid /’hju:mɪd/ (adj) ẩm</span></h2>', 'Từ vựng theo chủ đề luyện thi Toeic - Thời tiết', 0, '/files/85fdi9E1M5jKawy0qNX30pYEuApyFbcpVQOSeEVP.jpeg', 3, '2017-05-10 15:40:39', '2017-05-10 15:40:39'),
(11, 'Kỹ năng nghe câu hỏi xác định nguyên nhân (Identifying Reasons) - Phần Short Conversation', '<div style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px; text-align: justify;\">Từ tín hiệu để nhận biết câu trả lời đúng là trong bài nói xuất hiện các từ như:&nbsp;<span style=\"color: rgb(255, 0, 0);\"><strong>the reason is, due to, because, since…</strong></span><br><br>Một số dạng câu hỏi thường xuyên xuất hiện trong&nbsp;<a href=\"http://www.mshoatoeic.com/\" style=\"color: rgb(27, 25, 25);\">đề thi TOEIC</a>&nbsp;như sau:</div><ul style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><li style=\"text-align: justify;\">Why is the woman coming late?</li><li style=\"text-align: justify;\">Why is the woman unable to come at 10 o’clock?</li><li style=\"text-align: justify;\">Why did the man contact the woman?</li><li style=\"text-align: justify;\">Why must Ms.Lewis visit the human resources department?</li></ul><div style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px; text-align: justify;\"><br>Với dạng câu hỏi này thì câu hỏi nằm trực tiếp trong câu nói của một trong hai nhân vật đối thoại.<br><br><strong>Đáp án đúng</strong>&nbsp;cho câu hỏi này&nbsp;<span style=\"color: rgb(255, 0, 0);\"><strong>được trình bày ở ngay trước hoặc sau phần đề cập đến nội dung câu hỏi&nbsp;</strong></span>trong đoạn đối thoại.<br><br><strong>Sau đây là một ví dụ cụ thể:</strong></div><div style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px; text-align: justify;\"><img src=\"http://www.mshoatoeic.com/uploads/images/userfiles/chia_se_kn/13312642585129.jpg\" style=\"width: 322px;\"><strong><br></strong></div><div style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px; text-align: justify;\"><strong>Speaker A:&nbsp;</strong>&nbsp;&nbsp; Maria, I hear you are moving away. Did you get a new job?<br><strong>Speaker B:</strong>&nbsp;&nbsp;&nbsp; No, I am going back to school. I am going to get a degree in economics<br><strong>Speaker A:</strong>&nbsp;&nbsp;&nbsp; Oh, yes. I hear the university in that city is very good.<br><br><strong>Q:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Why is Maria moving to a new city?</strong><br><br>A.&nbsp;&nbsp; Because she got a new job<br>B.&nbsp;&nbsp; Because she wants to study at the university<br>C.&nbsp;&nbsp; Because the economy is bad<br>D.&nbsp;&nbsp; Because her old city isn’t very good<br><br>Câu trả lời là&nbsp;<span style=\"color: rgb(255, 0, 0);\"><strong>B</strong></span>. Lựa chọn A vẫn nhắc lại từ&nbsp;<strong>“a new job nhưng Maria nói rằng đó không phải là lí do cô ấy chuyển đi</strong>. Lựa chọn C cố gắng làm bạn bối rối bằng cách sử dụng từ<strong>&nbsp;“economy”- tương tự với “economics”</strong>. Lựa chọn D nhắc lại những từ&nbsp;<strong>“very good”</strong>&nbsp;ở trong một ngữ cảnh khác.<br></div>', 'Câu hỏi xác định nguyên nhân là dạng câu hỏi khó', 0, '/files/7x0ZV9OvLyPjZ0t9hDW4ZIKj2rDE3EvqWPNorBAW.jpeg', 4, '2017-05-10 15:45:04', '2017-05-10 15:45:04'),
(12, 'Lộ trình 990 TOEIC dành cho người mất gốc', '<p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Muốn nói,viết… để người ta hiểu đúng ý của mình, thì chắc chắn ngữ pháp phải đúng.Tuy nhiên, có những điểm ngữ pháp khó, không phổ biến trong cuộc sống hàng ngày, trong công việc và đặc biệt trong bài thi TOEIC.</p><div><img src=\"http://mshoatoeic.com/uploads/images/userfiles/baichiase/fb_post_t1_2-01.jpg\" style=\"width: 322px;\"></div><div><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong>Vì thế, quan trọng nhất là các em cần một người định hướng xem mình NÊN và KHÔNG NÊN học cái gì.</strong></p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(255, 0, 0);\"><strong>I. 0-200: Bắt đầu từ con số 0</strong></span></p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Thời gian mà cô mong muốn các bạn dành cho level này là khoảng 1.5 đến 2 tháng. Như một tờ giấy trắng, các em cần học những từ vựng và ngữ pháp cơ bản nhất.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Các điểm ngữ pháp mà các em ưu tiên tập trung gồm:</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong>A. Tenses (thì):&nbsp;</strong>Lại là thì, nhưng thì gắn với động từ. Và động từ trong một câu thì bao giờ cũng gắn liên với việc nó diễn ra ở hiện tại, quá khứ hay tương lai.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Ví dụ nhé: Nếu cô nói với một anh chàng nào đó là: I<strong>&nbsp;love</strong>&nbsp;you. (Thực ra anh chàng đó là chồng cô ý mà, ngày nào cũng nói các em ạ). Vậy động từ mà cô dùng ở đây là “Love”, diễn ra ở hiện tại, thể hiện một sự thật hiển nhiên :D</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Thế nhưng nếu cô dùng câu I&nbsp;<strong>loved</strong>&nbsp;you, thì có nghĩa là em đã từng yêu anh, giờ không còn nữa, dùng ở thì quá khứ đơn. Câu này chỉ nói với bạn trai cũ thôi các em ạ.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Còn câu I will love you (forever), cô sẽ dùng để nói với em Nhím và các em bé tương lai khác của cô, rằng: mẹ&nbsp;<strong>sẽ yêu</strong>&nbsp;con mãi mãi, nói về những việc sẽ diễn ra ở tương lai.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Vậy rõ ràng, việc dùng động từ theo các thì trong Tiếng Anh không phải vì người bản ngữ muốn thế, mà vì bản thân chúng ta muốn thế.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Nghe có vẻ đơn giản nhưng các em đừng tham lam học nhiều thì cũng một lúc. Đừng nóng vội nhé. Học từng thì một vì đây là thời gian xây dựng nền tảng, chậm mà chắc mới tốt. Trong tiếng Anh có rất nhiều thì, nhưng những thì mà cô kì vọng các em dành nhiều thời gian và công sức nhất (bởi vì những thì này hay dùng, phổ biến trong đời sống và công việc), theo thứ tự quan trọng bao gồm:</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong><em>1. Các thì đơn</em></strong>&nbsp;(Hiện tại đơn – Present simple, Quá khứ đơn – Past simple, Tương lai đơn – Future simple)</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong><em>2. Các thì tiếp diễn</em></strong>&nbsp;(Present continuous, Past continuous, Future continuous)</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong><em>3. Các thì hoàn thành&nbsp;</em></strong>(Present Perfect, Past perfect, Future Perfect)</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong><em>4. Động từ khuyết thiếu</em></strong>&nbsp;(Modal verb – chính là các từ như can, may, must..)</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong>B. Part of the speech</strong>: Các bộ phận của một câu</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Gồm các loại từ hết sức cơ bản: Adjective (Tính từ), Noun (Danh từ), Pronoun (Đại từ), Adverb (Trạng từ), Articles (Mạo từ), Preposition (Giới từ).</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Một số bạn thắc mắc tại sao không có Verb (Động từ) đúng không? Đấy chính là những bài học về thì mà các em đã học từ trước rồi. Ngoài ra còn liên quan đến một nội dung nữa là: Sentence structure (Cấu trúc câu), chúng mình nên học ở giai đoạn thứ 2 nhé.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Song song với việc luyện tập các kiến thức ngữ pháp, các em cũng nên để tai mình làm quen với Tiếng Anh. Phương pháp nghe mà cô áp dụng ở level này là chọn những bài tập dễ thở, nghe để bắt từ, chép lại từ, mở tape script (tức là phần ghi lại những gì người ta nói) để chép lại câu đầy đủ, nghe đến khi thuộc cả câu, thuộc theo kiểu nhắm mắt vẫn có thể nhớ người ta nói gì các em ạ. Tức là mỗi câu các em cần nghe khoảng ít nhất 3-4 lần. Kĩ năng nghe có thể lên rất nhanh, phụ thuộc vào mức độ thường xuyên mà các em dành cho việc nghe.Cô kì vọng các em sẽ dành ít nhất là 30 phút – 1h mỗi ngày để luyện nghe nhé.Nếu dành nhiều hơn, các em sẽ đạt kết quả nhanh hơn. Dễ mà đúng không các em?</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Dưới đây là một số sách các em NÊN HỌC, trong biển sách tràn lan trên thi thị trường nhé:</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">1.&nbsp;<strong>Ngữ pháp Tiếng Anh (Tác giả: Mai Lan Hương – Nguyễn Thanh Loan):</strong>&nbsp;Ưu điểm của quyển này là có tiếng Việt, sẽ không làm các em vã mồ hôi như mấy quyển sách toàn bằng Tiếng Anh. Gồm đầy đủ những phần mà cô gợi ý cho các em.Tuy nhiên, phần về các Thì bị gộp lại thành 1 bài, cô sợ sẽ hơi đồ sộ và phân tích không được kĩ. Các em nên tìm hiểu thêm từng thì trên Internet và làm thêm các bài tập ở ngoài cho kiến thức được chắc hơn.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Download tài liệu:&nbsp;<a href=\"http://bit.ly/1REbd3w\" style=\"color: rgb(27, 25, 25);\"><span style=\"background-color: rgb(255, 255, 0);\">TẠI ĐÂY</span></a></p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">2.&nbsp;<strong>Grammar in Use 4</strong>: Cực kì nhiều, cực kì đầy đủ, đến mức độ quá nhiều, các em nhớ chọn những chủ điểm mà cô đã nêu ra thôi nhé. Vì đây là một một quyển từ điển ngữ pháp dành cho người học tiếng Anh, tức là nội dung ngữ pháp gì cũng có, có nhiều phần nâng cao không phù hợp với sức đề kháng của các bạn mới bắt đầu đâu nhé.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Download tài liệu:&nbsp;<a href=\"http://bit.ly/1UwPrS0\" style=\"color: rgb(27, 25, 25);\"><span style=\"background-color: rgb(255, 255, 0);\">TẠI ĐÂY</span></a></p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">3.&nbsp;<strong>ABC TOEIC:</strong>&nbsp;Gồm 2 cuốn là ABC TOEIC Listening Comprehension (Nghe) và Reading Comprehension (Đọc). Bộ sách đơn giản, giống như giới thiệu các bạn mới chập chững bắt đầu luyện thi TOEIC, nên các em đừng lo bị nản trong quá trình học nhé. Là một quyển sách tốt để ôn cả&nbsp;<strong>từ vựng</strong>&nbsp;và&nbsp;<strong>luyện nghe</strong>.Cô chú ý thêm là những từ vựng trong sách đều là&nbsp;<strong>thói quen của bài thi TOEIC</strong>&nbsp;tức đều là những từ chọn lọc rồi nhé.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Cô ưu tiên các bạn trình độ 0-200 nhiều quá, và chia sẻ nhiều vì các bạn hay sợ hãi và dễ bỏ cuộc.Cố lên các em nhé. Các bạn ở các Level khác cũng đừng ghen tị nhé!</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(255, 0, 0);\"><strong>II. Lộ trình học TOEIC&nbsp;200 – 350:</strong></span></p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(255, 0, 0);\"><strong>II. Lộ trình học TOEIC&nbsp;500 – 650 - 750&nbsp;điểm</strong></span></p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Ngoài việc nắm chắc các nội dung ngữ pháp cả cơ bản và mở rộng, các em nên tập trung vào từng kĩ năng và luyện đề thường xuyên hơn.</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">Từ vựng: Bắt đầu học vào các chủ đề sâu hơn trong môi trường làm việc, gồm các chủ đề sau trong cuốn&nbsp;<strong>600 essential words for the TOEIC:</strong></p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">1. Personnel</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">2. Purchasing</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">3. Finance and Budgeting</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\">4. Management issues</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong>Bộ sách luyện kĩ năng:</strong></p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong>Big step 3</strong>: Độ khó cao, không quá dễ thở, như Big step 1,2. Tuy nhiên não người cũng như cơ vậy, muốn “to, đẹp, hiệu quả” thì phải chịu những căng thẳng nhất định rồi J</p><p style=\"color: rgb(60, 60, 60); font-family: arial, sans-serif; font-size: 12px;\"><strong>TOEIC ICON Intensive</strong>: Tên sách có chữ Intensive, tức là không nhẹ nhàng, nhưng càng học càng thấy lên, vì từ vựng và nội dung rất phù hợp các em nhé.</p></div>', 'Bắt đầu từ con số 0', 0, '/files/h61IJkmxfZ6MdKiDbQqmI1pUoWVcGQqQ2VgZyyVn.jpeg', 3, '2017-05-10 15:56:28', '2017-05-10 15:56:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cao tung', 'caotungjs@gmail.com', '$2y$10$xbx9aSXWAf6BivD1ibJXa.HEW0VywNSygdoMokgzXGK9uRxIjAUsW', 'OInnsrsw65yx445GXDWALnWAipmNBFZ7NdQwURMXNWYrjtSF4ExlHFzJvOIU', '2017-05-09 12:49:06', '2017-05-09 12:49:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `webs`
--

CREATE TABLE `webs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `webs`
--

INSERT INTO `webs` (`id`, `name`, `content`, `url`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'CFL', 'CFL', 'http://cfl.edu.vn/', 1, '2017-05-10 11:14:14', '2017-05-10 11:14:14'),
(3, 'Ms Hoa Toeic', 'Ms Hoa Toeic', 'http://www.mshoatoeic.com', 1, '2017-05-10 15:45:49', '2017-05-10 15:45:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `webs`
--
ALTER TABLE `webs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
