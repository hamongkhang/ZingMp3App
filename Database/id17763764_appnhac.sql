-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 29, 2021 lúc 06:53 AM
-- Phiên bản máy phục vụ: 10.5.12-MariaDB
-- Phiên bản PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id17763764_appnhac`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `IdAlbum` int(11) NOT NULL,
  `TenAlbum` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenCaSiAlbum` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HinhAlbum` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`IdAlbum`, `TenAlbum`, `TenCaSiAlbum`, `HinhAlbum`) VALUES
(1, 'Man On The Moon', 'Alan Walker, Benjamin Ingrosso', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBos504bJM8wVayw4lHNUXLwqedj2WKOk-Tg&usqp=CAU'),
(2, 'Những ca khúc của Sơn Tùng', 'Sơn Tùng MTP', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSvi4hPBfT06-oGslLN1RcRTJifFu_3fs1Zg&usqp=CAU'),
(3, 'Đêm hội trăng vàng', 'Bé Xuân Mai', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0U_Rw9UL5LsOZw_qabQWKkSL_fAdG3d-cxQ&usqp=CAU'),
(4, 'Đồng hành cùng Jack', 'Jack, J97', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqrH7n7B9jZpesW3nKZeNtzmkMdAFhG9Igeg&usqp=CAU'),
(5, 'Album nhạc Rap Việt 2020', 'Nhiều ca sĩ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzCbbPN9Rbpjx-7hrdgwwu1aPhq9r84cIvTw&usqp=CAU');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihat`
--

CREATE TABLE `baihat` (
  `IdBaiHat` int(11) NOT NULL,
  `IdAlbum` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IdTheLoai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IdPlayList` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenBaiHat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HinhBaiHat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CaSi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LinkBaiHat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Luotthich` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `baihat`
--

INSERT INTO `baihat` (`IdBaiHat`, `IdAlbum`, `IdTheLoai`, `IdPlayList`, `TenBaiHat`, `HinhBaiHat`, `CaSi`, `LinkBaiHat`, `Luotthich`) VALUES
(1, '4', '1', '1', 'Em gi oi', 'https://amnhactv.com/wp-content/uploads/2019/10/H%E1%BB%A3p-%C3%A2m-Em-g%C3%AC-%C6%A1i-%E2%80%93-K-ICM-x-JACK-2.jpg', 'Jack, J97', 'https://hamongkhang.000webhostapp.com/Em%20Gi%20Oi%20Doan%20Hat%20Nhac%20Chuong%20-%20Jack%20K%20ICM%20(NhacPro.net).mp3', 11),
(2, '4', '1', '1', 'Hoa Hai Duong', 'https://i.ytimg.com/vi/Bhg-Gw953b0/maxresdefault.jpg', 'Jack, J97', 'https://hamongkhang.000webhostapp.com/HoaHaiDuongLive-JackG5R-6929496.mp3', 8),
(3, '3', '2', '1', 'Hong Nhan', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGae9J3KsFSF4kQvC-rUdqj4a_e_jtRrdo6w&usqp=CAU', 'Jack, J97', 'https://hamongkhang.000webhostapp.com/Hong%20Nhan%20-%20Jack%20(NhacPro.net).mp3', 7),
(4, '1', '2', '2', 'La mot thang con trai', 'https://static2.yan.vn/YanNews/2167221/202003/loi-bai-hat-la-1-thang-con-trai-jack-lyrics-moi-nhat-965ff975.jpeg', 'Jack, J97', 'https://hamongkhang.000webhostapp.com/La%201%20Thang%20Con%20Trai%20Doan%20Rap%20N...%20-%20Jack%20(NhacPro.net).mp3', 7),
(5, '1', '1', '1', 'Laylalay', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU-gSHfmI4M6G4vkAzW6-Qn48q2Xb12pAEKw&usqp=CAU', 'Jack, J97', 'https://hamongkhang.000webhostapp.com/LayLaLay%20-%20Jack%20(NhacPro.net).mp3', 5),
(6, '1', '2', '2', 'Sao em vo tinh', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxDoAVhxQemXrXg-7dKPFaFCSQR3uh0a6rFQ&usqp=CAU', 'Jack, J97', 'https://hamongkhang.000webhostapp.com/Sao%20Em%20Vo%20Tinh%20-%20Jack%20Liam%20(NhacPro.net).mp3', 3),
(7, '1', '1', '2', 'Song gio', 'https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/8/8/landscape-avatar-copy-1-162840983004420363276.jpg', 'Jack, J97', 'https://hamongkhang.000webhostapp.com/Song%20Gio%20Doan%20Hat%20Nhac%20Chuong%20-%20Jack%20K%20ICM%20(NhacPro.net).mp3', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `IdChuDe` int(11) NOT NULL,
  `TenChuDe` varchar(223) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhChuDe` varchar(223) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`IdChuDe`, `TenChuDe`, `HinhChuDe`) VALUES
(1, 'Jack number one', 'https://file.tinnhac.com/resize/600x-/2019/06/24/20190624081508-ce80.jpg'),
(2, 'Sơn Tùng number one', 'https://cdn-www.vinid.net/4220164d-top-nhac-remix-cua-son-tung-mtp-khien-sky-dien-dao-2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `IdPlayList` int(11) NOT NULL,
  `Ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinhnen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinhicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`IdPlayList`, `Ten`, `Hinhnen`, `Hinhicon`) VALUES
(1, 'Nhạc của tôi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQk2W7nvybG1o2LB3yKMbtyqMBbPGiM3AqfQ&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQk2W7nvybG1o2LB3yKMbtyqMBbPGiM3AqfQ&usqp=CAU'),
(2, 'Playlist yêu thích nhất', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQk2W7nvybG1o2LB3yKMbtyqMBbPGiM3AqfQ&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQk2W7nvybG1o2LB3yKMbtyqMBbPGiM3AqfQ&usqp=CAU'),
(6, '2', '2', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `Id` int(11) NOT NULL,
  `Hinhanh` varchar(255) NOT NULL,
  `Noidung` varchar(255) NOT NULL,
  `Idbaihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`Id`, `Hinhanh`, `Noidung`, `Idbaihat`) VALUES
(1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8uJJgifeS8MVjq0KmH2fCLPVk2HigNpCBvQ&usqp=CAU', 'This is a very good song, welcome to my app', 1),
(2, 'https://cuoifly.tuoitre.vn/820/0/ttc/r/2020/12/28/133357831-235511468025941-7213312615632706410-o-1609117478.jpg', 'This is a very good song, welcome to my app', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `IdTheLoai` int(11) NOT NULL,
  `IdChuDe` int(11) NOT NULL,
  `TenTheLoai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhTheLoai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`IdTheLoai`, `IdChuDe`, `TenTheLoai`, `HinhTheLoai`) VALUES
(1, 1, 'Jack', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNxxi6XIbJ9B17vi2XEDLhV_3rokgdHhySjx67y5nvYbHDo7aqm9U68VCqFXvfYjihpgg&usqp=CAU'),
(2, 2, 'Jack', 'https://i.pinimg.com/originals/6c/d2/5a/6cd25a71ad06f43a5a9d68b949195f47.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`IdAlbum`);

--
-- Chỉ mục cho bảng `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`IdBaiHat`);

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`IdChuDe`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`IdPlayList`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`IdTheLoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `IdAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `baihat`
--
ALTER TABLE `baihat`
  MODIFY `IdBaiHat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `IdChuDe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `playlist`
--
ALTER TABLE `playlist`
  MODIFY `IdPlayList` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `IdTheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
