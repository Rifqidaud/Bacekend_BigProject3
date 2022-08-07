-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Agu 2022 pada 07.07
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokocilsy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`) VALUES
(1, '01ee8923-09a4-11ed-8c7d-239ca5671531', 12, 1),
(2, '01ee8923-09a4-11ed-8c7d-239ca5671531', 13, 8),
(3, '01ee8923-09a4-11ed-8c7d-239ca5671531', 14, 2),
(4, '01ee8923-09a4-11ed-8c7d-239ca5671531', 19, 1),
(5, '01ee8923-09a4-11ed-8c7d-239ca5671531', 22, 1),
(6, '01ee8923-09a4-11ed-8c7d-239ca5671531', 23, 20),
(13, '5306d3ef-0bd6-11ed-a96a-9a757e1900b5', 23, 2),
(14, 'e4d41e08-0bd2-11ed-a96a-9a757e1900b5', 23, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf16_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `data_product` text COLLATE utf16_bin DEFAULT NULL,
  `datauser` text COLLATE utf16_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='total';

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `status`, `user_id`, `total`, `data_product`, `datauser`) VALUES
(2, 'pending', 23, 1800000, '[{\"id\":6,\"product_id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"user_id\":23,\"quantity\":18,\"product\":{\"id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"name\":\"Baju Kemeja kantoran\",\"price\":\" 100000\",\"image\":\"https://images.tokopedia.net/img/cache/500-square/product-1/2021/1/27/inv/inv_641330e7-56bc-4903-b9ab-56960e58a846_680_680.jpg\",\"category\":\"2\",\"description\":\"Ukuran M, Stok tersedia\\r\\nDiscout 50%\",\"quantity\":\"100\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(3, 'pending', 23, 1800000, '[{\"id\":6,\"product_id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"user_id\":23,\"quantity\":18,\"product\":{\"id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"name\":\"Baju Kemeja kantoran\",\"price\":\" 100000\",\"image\":\"https://images.tokopedia.net/img/cache/500-square/product-1/2021/1/27/inv/inv_641330e7-56bc-4903-b9ab-56960e58a846_680_680.jpg\",\"category\":\"2\",\"description\":\"Ukuran M, Stok tersedia\\r\\nDiscout 50%\",\"quantity\":\"100\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(4, 'pending', 23, 1800000, '[{\"id\":6,\"product_id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"user_id\":23,\"quantity\":18,\"product\":{\"id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"name\":\"Baju Kemeja kantoran\",\"price\":\" 100000\",\"image\":\"https://images.tokopedia.net/img/cache/500-square/product-1/2021/1/27/inv/inv_641330e7-56bc-4903-b9ab-56960e58a846_680_680.jpg\",\"category\":\"2\",\"description\":\"Ukuran M, Stok tersedia\\r\\nDiscout 50%\",\"quantity\":\"100\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(5, 'pending', 23, 2050000, '[{\"id\":13,\"product_id\":\"5306d3ef-0bd6-11ed-a96a-9a757e1900b5\",\"user_id\":23,\"quantity\":1,\"product\":{\"id\":\"5306d3ef-0bd6-11ed-a96a-9a757e1900b5\",\"name\":\"Baju Sport\",\"price\":\"150000\",\"image\":\"https://p-id.ipricegroup.com/1ce60d40a8da67bf6c2c3f8a7d8882da60bb2dbe_0.jpg?position=13\",\"category\":\"1\",\"description\":\"Baju Sport dengan teknologi fiber\\r\\nstok trbatas sebanyak 10 \\r\\nVariasi ukuran M dan XL\",\"quantity\":\"100\"},\"cekBeli\":false},{\"id\":6,\"product_id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"user_id\":23,\"quantity\":19,\"product\":{\"id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"name\":\"Baju Kemeja kantoran\",\"price\":\" 100000\",\"image\":\"https://images.tokopedia.net/img/cache/500-square/product-1/2021/1/27/inv/inv_641330e7-56bc-4903-b9ab-56960e58a846_680_680.jpg\",\"category\":\"2\",\"description\":\"Ukuran M, Stok tersedia\\r\\nDiscout 50%\",\"quantity\":\"100\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(6, 'pending', 23, 2050000, '[{\"id\":6,\"product_id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"user_id\":23,\"quantity\":19,\"product\":{\"id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"name\":\"Baju Kemeja kantoran\",\"price\":\" 100000\",\"image\":\"https://images.tokopedia.net/img/cache/500-square/product-1/2021/1/27/inv/inv_641330e7-56bc-4903-b9ab-56960e58a846_680_680.jpg\",\"category\":\"2\",\"description\":\"Ukuran M, Stok tersedia\\r\\nDiscout 50%\",\"quantity\":\"100\"},\"cekBeli\":false},{\"id\":13,\"product_id\":\"5306d3ef-0bd6-11ed-a96a-9a757e1900b5\",\"user_id\":23,\"quantity\":1,\"product\":{\"id\":\"5306d3ef-0bd6-11ed-a96a-9a757e1900b5\",\"name\":\"Baju Sport\",\"price\":\"150000\",\"image\":\"https://p-id.ipricegroup.com/1ce60d40a8da67bf6c2c3f8a7d8882da60bb2dbe_0.jpg?position=13\",\"category\":\"1\",\"description\":\"Baju Sport dengan teknologi fiber\\r\\nstok trbatas sebanyak 10 \\r\\nVariasi ukuran M dan XL\",\"quantity\":\"100\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(7, 'pending', 23, 1900000, '[{\"id\":6,\"product_id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"user_id\":23,\"quantity\":19,\"product\":{\"id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"name\":\"Baju Kemeja kantoran\",\"price\":\" 100000\",\"image\":\"https://images.tokopedia.net/img/cache/500-square/product-1/2021/1/27/inv/inv_641330e7-56bc-4903-b9ab-56960e58a846_680_680.jpg\",\"category\":\"2\",\"description\":\"Ukuran M, Stok tersedia\\r\\nDiscout 50%\",\"quantity\":\"100\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(8, 'pending', 23, 2050000, '[{\"id\":13,\"product_id\":\"5306d3ef-0bd6-11ed-a96a-9a757e1900b5\",\"user_id\":23,\"quantity\":1,\"product\":{\"id\":\"5306d3ef-0bd6-11ed-a96a-9a757e1900b5\",\"name\":\"Baju Sport\",\"price\":\"150000\",\"image\":\"https://p-id.ipricegroup.com/1ce60d40a8da67bf6c2c3f8a7d8882da60bb2dbe_0.jpg?position=13\",\"category\":\"1\",\"description\":\"Baju Sport dengan teknologi fiber\\r\\nstok trbatas sebanyak 10 \\r\\nVariasi ukuran M dan XL\",\"quantity\":\"100\"},\"cekBeli\":false},{\"id\":6,\"product_id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"user_id\":23,\"quantity\":19,\"product\":{\"id\":\"01ee8923-09a4-11ed-8c7d-239ca5671531\",\"name\":\"Baju Kemeja kantoran\",\"price\":\" 100000\",\"image\":\"https://images.tokopedia.net/img/cache/500-square/product-1/2021/1/27/inv/inv_641330e7-56bc-4903-b9ab-56960e58a846_680_680.jpg\",\"category\":\"2\",\"description\":\"Ukuran M, Stok tersedia\\r\\nDiscout 50%\",\"quantity\":\"100\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(9, 'pending', 23, 150000, '[{\"id\":13,\"product_id\":\"5306d3ef-0bd6-11ed-a96a-9a757e1900b5\",\"user_id\":23,\"quantity\":1,\"product\":{\"id\":\"5306d3ef-0bd6-11ed-a96a-9a757e1900b5\",\"name\":\"Baju Sport\",\"price\":\"150000\",\"image\":\"https://p-id.ipricegroup.com/1ce60d40a8da67bf6c2c3f8a7d8882da60bb2dbe_0.jpg?position=13\",\"category\":\"1\",\"description\":\"Baju Sport dengan teknologi fiber\\r\\nstok trbatas sebanyak 10 \\r\\nVariasi ukuran M dan XL\",\"quantity\":\"100\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(10, 'pending', 23, 0, '[]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(11, 'pending', 23, 0, '[]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(12, 'pending', 23, 100, '[{\"id\":14,\"product_id\":\"e4d41e08-0bd2-11ed-a96a-9a757e1900b5\",\"user_id\":23,\"quantity\":1,\"product\":{\"id\":\"e4d41e08-0bd2-11ed-a96a-9a757e1900b5\",\"name\":\"Baju Lebaran Cewek Pink\",\"price\":\" 100.000\",\"image\":\"https://s1.bukalapak.com/img/60808706022/s-330-330/Baju_Gamis_Wanita_Terbaru_Gamis_Pesta_Busui_Gamis_Balotelli_.jpg.webp\",\"category\":\"2\",\"description\":\"Variasi warna tersedia pink, merah dan cokelat\\r\\nStok tersedia 5 baju\\r\\n\",\"quantity\":\"10\"},\"cekBeli\":false}]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(13, 'pending', 23, 0, '[]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(14, 'pending', 23, 0, '[]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(15, 'pending', 23, 0, '[]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(16, 'pending', 23, 0, '[]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(17, 'pending', 23, 0, '[]', '{\"nama\":\"M Rifqi\",\"nomor\":\"081392772114\",\"pengiriman\":\"Express\",\"Pilih pembayaran\":\"Tokopedia\",\"alamat\":\"Palembang\"}'),
(18, 'pending', 23, 0, '[]', NULL),
(19, 'pending', 23, 0, '[]', NULL),
(20, 'pending', 23, 0, '[]', NULL),
(21, 'pending', 23, 0, '[]', NULL),
(22, 'pending', 23, 0, '[]', NULL),
(23, 'pending', 23, 0, '[]', NULL),
(24, 'pending', 23, 0, '[]', NULL),
(25, 'pending', 23, 0, '[]', NULL),
(26, 'pending', 23, 0, '[]', NULL),
(27, 'pending', 23, 0, '[]', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Category` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `Category`, `description`, `quantity`) VALUES
('01ee8923-09a4-11ed-8c7d-239ca5671531', 'Baju Kemeja kantoran', ' 100000', 'https://images.tokopedia.net/img/cache/500-square/product-1/2021/1/27/inv/inv_641330e7-56bc-4903-b9ab-56960e58a846_680_680.jpg', '2', 'Ukuran M, Stok tersedia\r\nDiscout 50%', '100'),
('5306d3ef-0bd6-11ed-a96a-9a757e1900b5', 'Baju Sport', '150.000', 'https://p-id.ipricegroup.com/1ce60d40a8da67bf6c2c3f8a7d8882da60bb2dbe_0.jpg?position=13', '1', 'Baju Sport dengan teknologi fiber\r\nstok trbatas sebanyak 10 \r\nVariasi ukuran M dan XL', '100'),
('5e9401f9-09a2-11ed-8c7d-239ca5671531', 'Baju Lebaran putih', '150.000', 'https://ceklist.id/wp-content/uploads/2022/02/Outfit-Lebaran-Pria-Terbaik.jpg', '1', 'Ukuran S,M,L dan XL tersedia\r\nStok tersedia\r\nDiscout 50%', '6'),
('e4d41e08-0bd2-11ed-a96a-9a757e1900b5', 'Baju Lebaran Cewek Pink', ' 100.000', 'https://s1.bukalapak.com/img/60808706022/s-330-330/Baju_Gamis_Wanita_Terbaru_Gamis_Pesta_Busui_Gamis_Balotelli_.jpg.webp', '2', 'Variasi warna tersedia pink, merah dan cokelat\r\nStok tersedia 5 baju\r\n', '10'),
('e79a420a-0998-11ed-92e0-a336251706d9', 'Baju Kaos Polo', ' 100.000', 'https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q4Mi8xMDgvNjg1MDQ4MTA2MC8zMjY2Ny8xMWFiMDI2Ni82MGFmMTIyN043MDZkZDM0ZQ.jpg.dpg.webp', '3', 'Ukuran S dan M tersedia\r\nDiscout 60%\r\nStok tesedia 2', '25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizedata`
--

CREATE TABLE `sequelizedata` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizedata`
--

INSERT INTO `sequelizedata` (`name`) VALUES
('20220615144445-users.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('create-products.js'),
('create-users.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `type` enum('admin','user') NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `type`, `password`) VALUES
(6, 'admin', 'admin', 'admin', '$2b$12$VXSR2yeLdRvaCWAMtBBvBuXdV6OoYnT2RkjWm45Zd9avCYbuBTrhO'),
(9, '', 'Budi', 'user', '$2b$12$7EDYB34nxCZH3QrzPivffuUDuZDzVomUQsPyu.n.FHpyE2662OFKC'),
(11, '', 'Redi', 'user', '$2b$12$bRlj9rG4UAdRYJvbHoHvgOXQfGKTWijTsZxOKEL1iy7ptiYTbXCgm'),
(12, '', 'diki', 'user', '$2b$12$pBGInSnpNlPLSPmD25zGfej52JjCFBuspjJgSKZHrfDvgfinO0Efe'),
(13, '', 'rudi', 'user', '$2b$12$dCf2WO69O7N9ry9y4.TI4ubhAQNKE66nvB5dIJo2Qz3pOKuIQ9sKC'),
(14, '', 'toni', 'user', '$2b$12$i8Z725n/4O3gNBHK7lw48Od1mqudXd9PFnE9CShtiiIKMT4bLxMJK'),
(15, '', 'dadu', 'user', '$2b$12$YobD7JxzpGCR1yX7pPbU.efmHMibwFAtzTacDWYOMUXMqY743Y79e'),
(16, '', 'daru', 'user', '$2b$12$xzbEZbY/q3arWWKdwjEmHOpwqG6A9Vply5ETbClLVjD4w0vXfiZ5K'),
(17, '', 'didi', 'user', '$2b$12$UOPIkPTn8Ve1exHt03yCxO14u1IJ/Z7fRvzORMheJKo7v96VLrKJS'),
(18, '', 'fira', 'user', '$2b$12$X1Rdr52CKDoAyiXkmmoM5uf.BjP1Q6mNoey8j7FoY8Dr/rXf6AQM.'),
(19, '', 'nini', 'user', '$2b$12$/QA6eVVoh0rvvs38SpjHOuWUeGmX0jLNl/K6F8wQsFnk8knd.AJBq'),
(20, '', 'nini', 'user', '$2b$12$dYgTUPDsKJszdpcnC/ShWOtiyC1/mHLOaZwR0Rgd6kvNIqVNEsnii'),
(21, '', 'nini', 'user', '$2b$12$GxbvuuI7yJifq8niZN4Dveca3wAAUU4JY56o6G7jkl7Tc.fveyxvu'),
(22, '', 'dono', 'user', '$2b$12$8C3IZ3BLPeGL61rprffngOz095KQ.QKWC5mYt5HGe7DteGu4FYCP.'),
(23, '', 'dodon', 'user', '$2b$12$ecwY2ph98q9sZ6LVLdE9EeKbYZzRZZ3eYrzt4RQE8bBdv5FM4SzXC'),
(24, '', 'dodon', 'user', '$2b$12$L9tRova7rbC5O63cLHQBZe0cuv6XGAJewTuR5DAIu1nuXp2ncwkOW'),
(25, '', 'dodon', 'user', '$2b$12$dtXl6f.ybabhYlPDH2MRguX89HfItGIVVk.nOdOXifUJy68YuvSt6'),
(26, '', 'dodon', 'user', '$2b$12$llQPD74R1RoFnslhYbbOde90bpjmQwAW6oA8At3rSp2HP90ZCQIq.'),
(27, '', 'dodon', 'user', '$2b$12$GzTYfHczvr4fDutQuZz1N.5P/Xf9miuE2iUI5EA04VvvRzs8n0.vK'),
(28, '', 'dodon', 'user', '$2b$12$gHYdwck/EZZ0Ooy7jJxnT.x6fDy1IUx7CNKJf7u08Vht2bbXcWBZi'),
(29, '', 'dodon', 'user', '$2b$12$3UByJSgl3cm/ZjsGQ1moGuphdzP7rPKOPKC.5wfp.Pjw8MnTiqbt2'),
(30, '', 'dodon', 'user', '$2b$12$HYLCF40H8W8ECIGP1OjAMen7QxfzmnCphDZE.WHLroZkgBXO458bm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`,`order_id`),
  ADD KEY `orderdetails_ibfk_1` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sequelizedata`
--
ALTER TABLE `sequelizedata`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
