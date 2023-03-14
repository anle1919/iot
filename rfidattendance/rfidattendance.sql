-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2021 lúc 12:42 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `rfidattendance`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_email` varchar(80) NOT NULL,
  `admin_pwd` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'vdlaptrinh@gmail.com', '$2y$10$89uX3LBy4mlU/DcBveQ1l.32nSianDP/E1MfUh.Z.6B4Z0ql3y7PK');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `device_dep` varchar(20) NOT NULL,
  `device_uid` text NOT NULL,
  `device_date` date NOT NULL,
  `device_mode` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `device_dep`, `device_uid`, `device_date`, `device_mode`) VALUES
-- (1, 'ESP32', 'DTVT', '8f19e31055c56b05', '2021-06-21', 1),
-- (3, 'ESP8266', 'DTVT 20A', '8ceb36c810343326', '2021-06-22', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT 'None',
  `roomnumber` double NOT NULL DEFAULT 0,
  `email` varchar(50) NOT NULL DEFAULT 'None',
  `card_uid` varchar(30) NOT NULL,
  `card_select` tinyint(2) NOT NULL DEFAULT 0,
  `user_date` date NOT NULL,
  `device_uid` varchar(20) NOT NULL DEFAULT '0',
  `device_dep` varchar(20) NOT NULL DEFAULT '0',
  `add_card` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `roomnumber`, `email`, `card_uid`, `card_select`, `user_date`, `device_uid`, `device_dep`, `add_card`) VALUES
(2, 'Nguyen Van A', 1, 'vdlaptrinh@gmail.com', '911277', 0, '2021-06-21', '8ceb36c810343326', 'DTVT 20A', 1),
(4, 'Nguyen Van B', 2, ' vdlaptrinh@gmail.com', '4448724', 0, '2021-06-21', '8ceb36c810343326', 'DTVT 20A', 1),
(15, 'Nguyen Van C', 3, 'vdlaptrinh@gmail.com', '12715413', 0, '2021-06-22', '8ceb36c810343326', 'DTVT 20A', 1),
(17, 'Nguyen Van D', 4, 'vdlaptrinh@gmail.com', '8198525', 0, '2021-06-22', '8ceb36c810343326', 'DTVT 20A', 1),
(18, 'Nguyen Van E', 5, 'vdlaptrinh@gmail.com', '12715501', 1, '2021-06-22', '8ceb36c810343326', 'DTVT 20A', 1),
(30, 'Tran Van C', 7, 'vdlaptrinh@gmail.com', '2243724', 0, '2021-06-22', '8ceb36c810343326', 'DTVT 20A', 1),
(31, 'Tran Van A', 6,  'vdlaptrinh@gmail.com', '15198951', 0, '2021-06-23', '8ceb36c810343326', 'DTVT 20A', 1),
(32, 'Tran Van B', 8, 'vdlaptrinh@gmail.com', '12715493', 0, '2021-06-23', '8ceb36c810343326', 'DTVT 20A', 1),
(33, 'Tran Van D', 9, 'vdlaptrinh@gmail.com', '2249554', 0, '2021-06-23', '8ceb36c810343326', 'DTVT 20A', 1),
(34, 'Tran Van E', 10, 'vdlaptrinh@gmail.com', '15650647', 0, '2021-06-23', '8ceb36c810343326', 'DTVT 20A', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `roomnumber` double NOT NULL,
  `card_uid` varchar(30) NOT NULL,
  `device_uid` varchar(20) NOT NULL,
  `device_dep` varchar(20) NOT NULL,
  `checkindate` date NOT NULL,
  `time` time NOT NULL,
  `phone_number` int(10) NOT NULL,
  `card_out` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users_logs`
--

INSERT INTO `users_logs` (`id`, `username`, `roomnumber`, `card_uid`, `device_uid`, `device_dep`, `checkindate`, `time`,`phone_number`, `card_out`) VALUES
-- (0, 'Quang Hung', 101, '11520249173', '8ceb36c810343326', 'DTVT 20A', '2023-06-23', '12:16:44','09352096', 1),
-- (1, 'Bao An', 102, '19446210207', '8ceb36c810343326', 'DTVT 20A', '2021-06-23', '12:16:29','09876543', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
-- ALTER TABLE `admin`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Chỉ mục cho bảng `devices`
-- --
-- ALTER TABLE `devices`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Chỉ mục cho bảng `users`
-- --
-- ALTER TABLE `users`
--   ADD PRIMARY KEY (`id`);


-- Chỉ mục cho bảng `users_logs`

-- ALTER TABLE `users_logs`
--   ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;