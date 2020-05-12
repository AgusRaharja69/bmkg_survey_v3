-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 06:46 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmkg_survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$5Gh7ujc4l0Wu$BSBgXZw2kaZDVd9/OPOxfzgqy2mQQamqqFG+WLfjiDQ=', '2020-02-15 00:59:36.262342', 0, 'agus', '', '', '', 0, 1, '2020-01-16 14:44:58.227950'),
(3, 'pbkdf2_sha256$180000$ufZC48QVPH5k$wtO3k7aO1sktHDNm1fL91ot0vbtUWACaNnZcR1w0xDE=', '2020-05-08 21:06:21.438430', 0, 'admin', '', '', '', 0, 1, '2020-01-17 20:18:07.943737'),
(4, 'pbkdf2_sha256$120000$ccFNjnEzAWzu$EcgJko4N7aNZ0Jj2Alo8iQAKgpLGReAggaavyf3rMcU=', NULL, 0, 'adminadmin', '', '', '', 0, 1, '2020-02-01 22:35:33.591197'),
(5, 'pbkdf2_sha256$180000$xvRaeUVsoAEw$m/B81IM3bRgGOgdEA4R8j2XstPO05HCVSkexYTwASbc=', '2020-02-05 20:33:54.021514', 0, 'asdfghjkl', '', '', '', 0, 1, '2020-02-01 22:40:13.746087');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-16 14:43:06.527683'),
(2, 'auth', '0001_initial', '2020-01-16 14:43:07.646692'),
(3, 'admin', '0001_initial', '2020-01-16 14:43:07.907992'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-16 14:43:07.919961'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-16 14:43:07.944892'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-16 14:43:08.077538'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-16 14:43:08.179266'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-16 14:43:08.269026'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-16 14:43:08.280994'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-16 14:43:08.344824'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-16 14:43:08.350808'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-16 14:43:08.361784'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-16 14:43:08.541297'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-16 14:43:08.651004'),
(15, 'sessions', '0001_initial', '2020-01-16 14:43:08.714834');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('76vhmyp1cmdr1hzsytr9a9gzehb9oa0w', 'Nzk4NTVjMGUxNzE1NDJmMzVlNWVhNWZhNjRkZDVkZTAzY2Q1ZmYxMDp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkN2FjYzc4ODhlZjJkNzk4ZTc5OWQzZTMwYmRlNTBhNmY1ZWFjYWMwIn0=', '2020-02-17 03:45:57.868010'),
('80cgbnfvnik0nxrsvuo0hppi143893q3', 'YTg3YmM2ZmJhYjAwZWU3MTQwMGQ3YjFjMzc4MDUzMWY1MjBhNGE0ODp7fQ==', '2020-02-28 11:59:42.479636'),
('91r5ugrohyy86v0r15nt3eettmg28ije', 'YTg3YmM2ZmJhYjAwZWU3MTQwMGQ3YjFjMzc4MDUzMWY1MjBhNGE0ODp7fQ==', '2020-02-01 04:31:53.024170'),
('bl9w6iz7obdnxd3xlq059fhus6n77786', 'YjYxZWEyMDI0YmY3ZTYyOWYwODUwOWYxMWIwMjJlZjdhZTBhZWE0MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZGJjYjZhZDdkZTJlZGQyMmU3YjAyNWU2ODA5ZjNjYmY4ZGI3Yzk2In0=', '2020-01-31 13:21:23.534608'),
('i2f6uh47u13q65aa5fe9lf3dy4t39tk7', 'MzNhYTUzOTJhN2JlOGRlMDZhNjViOWViMDg1NmI0YTNmMTA5ZjVjNzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNWQ5ZjY0MDA0M2I1NDRiOTc0MGEyNzNmODYyMzQ4MGM5OTEwNzZlIn0=', '2020-01-31 20:44:48.392431'),
('izby2gzgfcbg3ka0qowd5hphnuepp8mq', 'YTg3YmM2ZmJhYjAwZWU3MTQwMGQ3YjFjMzc4MDUzMWY1MjBhNGE0ODp7fQ==', '2020-02-28 12:06:00.759742'),
('omlwsbx8pdiyebpk8qedvfpqotuolmgt', 'YTg3YmM2ZmJhYjAwZWU3MTQwMGQ3YjFjMzc4MDUzMWY1MjBhNGE0ODp7fQ==', '2020-02-01 04:27:46.431427'),
('st3owkvwcpp8rbc9scch6lfsf0jl5yhp', 'Mzg3NDI4MGRmNWM3MWMzZDM0MzY3ZjY2MTAyNzc4Mzg1YTg5Mjk0MTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxODU2NmZlOTNhZDg3MTllNjUwMzAzMDI4OWU4NTExN2EwOGVhNWE2In0=', '2020-03-06 21:25:19.793749'),
('sw93licmzcmt7aeincqciynk1nbn6sct', 'Mzg3NDI4MGRmNWM3MWMzZDM0MzY3ZjY2MTAyNzc4Mzg1YTg5Mjk0MTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxODU2NmZlOTNhZDg3MTllNjUwMzAzMDI4OWU4NTExN2EwOGVhNWE2In0=', '2020-05-22 21:06:21.451542'),
('umtu04olamquzkt7tbg9izrqdzw46idd', 'YjYxZWEyMDI0YmY3ZTYyOWYwODUwOWYxMWIwMjJlZjdhZTBhZWE0MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZGJjYjZhZDdkZTJlZGQyMmU3YjAyNWU2ODA5ZjNjYmY4ZGI3Yzk2In0=', '2020-01-31 19:11:35.131285'),
('v5hhqpb55d5aez489tkm4guy59xtr0zq', 'NmQwNGJjZGQyNDIzNTE5ZjJhNWVkNTcwNDY4M2U3Njg1ZWYzOGM3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYmM1OTlmZWIzYjkyYzA0YmM4ZjM4ZmQ0NzcwNTlhOGE2Njk3NTNhIn0=', '2020-02-28 19:22:36.912511');

-- --------------------------------------------------------

--
-- Table structure for table `survey_data`
--

CREATE TABLE `survey_data` (
  `id` int(11) NOT NULL,
  `NIP` text NOT NULL,
  `U1` int(11) NOT NULL,
  `U2` int(11) NOT NULL,
  `U3` int(11) NOT NULL,
  `U4` int(11) NOT NULL,
  `U5` int(11) NOT NULL,
  `U6` int(11) NOT NULL,
  `U7` int(11) NOT NULL,
  `U8` int(11) NOT NULL,
  `U9` int(11) NOT NULL,
  `U10` int(11) NOT NULL,
  `U11` int(11) NOT NULL,
  `U12` int(11) NOT NULL,
  `U13` int(11) NOT NULL,
  `U14` int(11) NOT NULL,
  `date` date NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_data`
--

INSERT INTO `survey_data` (`id`, `NIP`, `U1`, `U2`, `U3`, `U4`, `U5`, `U6`, `U7`, `U8`, `U9`, `U10`, `U11`, `U12`, `U13`, `U14`, `date`, `code`) VALUES
(1, '7647658', 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 1, 1, '2020-01-31', '436772'),
(2, '757', 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, '2020-01-31', '436772'),
(3, '87867665', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-01-31', '436772'),
(4, '12345678', 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, '2020-02-01', '436772'),
(5, '876544322', 2, 2, 2, 2, 1, 1, 1, 2, 3, 3, 3, 3, 3, 3, '2020-02-01', '436772'),
(6, '245435465578', 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, '2020-02-01', '436772'),
(7, '98967543234568790', 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, '2020-02-15', '436772'),
(8, '1234567890', 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, '2020-02-16', '436772'),
(9, '123', 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, '2020-02-16', '436772'),
(10, '1234', 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, '2020-02-16', '436772'),
(11, '12397798098', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-02-16', '436772'),
(12, '1239779809898999', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-02-16', '436772'),
(13, '12397798098989', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-02-16', '436772'),
(14, '12390987654', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-02-16', '436772'),
(15, '345645', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-02-17', '436772'),
(16, '12309876543', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-02-17', '436772'),
(17, '1230987654386', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-02-17', '436772'),
(18, '134356579875645323', 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, '2020-02-21', '436772'),
(19, '1111111111111111111', 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, '2020-02-22', '436772'),
(20, '33333333333', 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, '2020-02-22', '436772'),
(21, '999999999', 4, 4, 4, 4, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, '2020-02-22', '436772');

-- --------------------------------------------------------

--
-- Table structure for table `survey_koresponden`
--

CREATE TABLE `survey_koresponden` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `NIP` text NOT NULL,
  `sex` text NOT NULL,
  `age` int(50) NOT NULL,
  `study` text NOT NULL,
  `job` text NOT NULL,
  `code` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_koresponden`
--

INSERT INTO `survey_koresponden` (`id`, `name`, `NIP`, `sex`, `age`, `study`, `job`, `code`, `date`) VALUES
(1, 'uygkugi', '7657565897', 'L', 56, 'D1', 'PNS', '', '2020-01-31'),
(2, 'blablajhgkj', '76986990', 'P', 67, 'D2', 'BUMN', '436772', '2020-01-31'),
(3, 'asdfg', '3456', 'L', 56, 'D2', 'PNS', '436772', '2020-01-31'),
(4, 'asdfg', '7647658', 'P', 56, 'D2', 'BUMN', '436772', '2020-01-31'),
(5, 'uygkugi', '757', 'L', 67, 'D2', 'BUMN', '436772', '2020-01-31'),
(6, 'fwe', '87867665', 'L', 56, 'S2', 'PNS', '436772', '2020-01-31'),
(7, 'hgfhgfjgoihoilnk', '12345678', 'L', 56, 'S2', 'BUMN', '436772', '2020-02-01'),
(8, 'asdfg', '876544322', 'L', 12, 'S2', 'BUMN', '436772', '2020-02-01'),
(9, 'agagagag', '245435465578', 'L', 34, 'D2', 'BUMN', '436772', '2020-02-01'),
(10, 'ddddddkkkkkkk', '98967543234568790', 'P', 44, 'S2', 'BUMN', '436772', '2020-02-15'),
(11, 'agus', '1234567890', 'L', 45, 'SLTA', 'BUMN', '436772', '2020-02-16'),
(12, 'agus', '123', 'L', 33, 'SLTA', 'BUMN', '436772', '2020-02-16'),
(13, 'agus', '1234', 'L', 21, 'S2', 'BUMN', '436772', '2020-02-16'),
(14, 'agus', '12397798098', 'L', 12, 'S2', 'BUMN', '436772', '2020-02-16'),
(15, 'agus', '1239779809898999', 'L', 12, 'S2', 'BUMN', '436772', '2020-02-16'),
(16, 'gfjhgkgji', '12397798098989', 'L', 12, 'S2', 'BUMN', '436772', '2020-02-16'),
(17, '', '12390987654', 'L', 12, 'S2', 'BUMN', '436772', '2020-02-16'),
(18, '', '345645', 'L', 34, 'SLTA', 'BUMN', '436772', '2020-02-17'),
(19, '', '12309876543', 'L', 12, 'S2', 'BUMN', '436772', '2020-02-17'),
(20, '', '1230987654386', 'L', 12, 'S2', 'BUMN', '436772', '2020-02-17'),
(21, 'qwertyuiop', '134356579875645323', 'P', 12, 'SLTP', 'Wiraswasta', '436772', '2020-02-21'),
(22, 'qwertyuiop', '1111111111111111111', 'P', 12, 'SLTP', 'Wiraswasta', '436772', '2020-02-22'),
(23, 'qwertyuiop', '33333333333', 'L', 21, 'SLTA', 'Mahasiswa', '436772', '2020-02-22'),
(24, 'qwertyuiop', '999999999', 'L', 56, 'S2', 'BUMN', '436772', '2020-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `survey_link`
--

CREATE TABLE `survey_link` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `code` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_link`
--

INSERT INTO `survey_link` (`id`, `username`, `code`, `date`) VALUES
(1, 'admin', '436772', '2020-01-31'),
(2, 'admin', '436772', '2020-01-31'),
(3, 'admin', '436772', '2020-01-31'),
(4, 'admin', '436766', '2020-01-31'),
(5, 'admin', '436766', '2020-01-31'),
(6, 'admin', '436772', '2020-01-31'),
(7, 'admin', '436772', '2020-01-31'),
(8, 'admin', '436766', '2020-01-31'),
(9, 'admin', '436772', '2020-01-31'),
(10, 'admin', '436772', '2020-01-31'),
(11, 'admin', '436772', '2020-01-31'),
(12, 'admin', '436772', '2020-02-01'),
(13, 'admin', '436772', '2020-02-01'),
(14, 'admin', '436772', '2020-02-01'),
(15, 'asdfghjkl', '436772', '2020-02-01'),
(16, 'asdfghjkl', '436772', '2020-02-02'),
(17, 'asdfghjkl', '436772', '2020-02-05'),
(18, 'agus', '436772', '2020-02-14'),
(19, 'agus', '436772', '2020-02-14'),
(20, 'agus', '436766', '2020-02-14'),
(21, 'agus', '436772', '2020-02-14'),
(22, 'agus', '436772', '2020-02-14'),
(23, 'agus', '436772', '2020-02-14'),
(24, 'agus', '436772', '2020-02-14'),
(25, 'agus', '436772', '2020-02-14'),
(26, 'agus', '436772', '2020-02-14'),
(27, 'admin', '436772', '2020-02-14'),
(28, 'admin', '436772', '2020-02-14'),
(29, 'agus', '436772', '2020-02-15'),
(30, 'admin', '436772', '2020-02-15'),
(31, 'admin', '436772', '2020-02-15'),
(32, 'admin', '436772', '2020-02-15'),
(33, 'admin', '436772', '2020-02-15'),
(34, 'admin', '436772', '2020-02-15'),
(35, 'admin', '436766', '2020-02-16'),
(36, 'admin', '123', '2020-02-16'),
(37, 'admin', '123', '2020-02-16'),
(38, 'admin', '123', '2020-02-16'),
(39, 'admin', '123', '2020-02-16'),
(40, 'admin', '436772', '2020-02-16'),
(41, 'admin', '436772', '2020-02-16'),
(42, 'admin', '436772', '2020-02-16'),
(43, 'admin', '436772', '2020-02-16'),
(44, 'admin', '436772', '2020-02-16'),
(45, 'admin', '436772', '2020-02-16'),
(46, 'admin', '436772', '2020-02-16'),
(47, 'admin', '436772', '2020-02-16'),
(48, 'admin', '436772', '2020-02-16'),
(49, 'admin', '436772', '2020-02-17'),
(50, 'admin', '436772', '2020-02-17'),
(51, 'admin', '436772', '2020-02-17'),
(52, 'admin', '436772', '2020-02-17'),
(53, 'admin', '43677', '2020-02-21'),
(54, 'admin', '436772', '2020-02-21'),
(55, 'admin', '436772', '2020-02-21'),
(56, 'admin', '436772', '2020-02-21'),
(57, 'admin', '436772', '2020-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `survey_subwil`
--

CREATE TABLE `survey_subwil` (
  `id` int(50) NOT NULL,
  `kode` text NOT NULL,
  `wilayah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_subwil`
--

INSERT INTO `survey_subwil` (`id`, `kode`, `wilayah`) VALUES
(1, '436766', 'SEKRETARIAT UTAMA BMKG'),
(2, '436772', 'STASIUN METEOROLOGI MARITIM TANJUNG PRIOK - JAKARTA');

-- --------------------------------------------------------

--
-- Table structure for table `survey_wilayah`
--

CREATE TABLE `survey_wilayah` (
  `id` int(50) NOT NULL,
  `kode` text NOT NULL,
  `wilayah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_wilayah`
--

INSERT INTO `survey_wilayah` (`id`, `kode`, `wilayah`) VALUES
(1, '01', 'DKI JAKARTA'),
(2, '02', 'JAWA BARAT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `survey_data`
--
ALTER TABLE `survey_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_koresponden`
--
ALTER TABLE `survey_koresponden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_link`
--
ALTER TABLE `survey_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_subwil`
--
ALTER TABLE `survey_subwil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_wilayah`
--
ALTER TABLE `survey_wilayah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `survey_data`
--
ALTER TABLE `survey_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `survey_koresponden`
--
ALTER TABLE `survey_koresponden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `survey_link`
--
ALTER TABLE `survey_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `survey_subwil`
--
ALTER TABLE `survey_subwil`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survey_wilayah`
--
ALTER TABLE `survey_wilayah`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
