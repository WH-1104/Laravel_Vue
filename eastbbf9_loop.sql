-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2019 at 11:13 AM
-- Server version: 5.7.28
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eastbbf9_loop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bag`
--

CREATE TABLE `bag` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bag`
--

INSERT INTO `bag` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-04 17:18:54', '2019-06-04 17:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `bag_items`
--

CREATE TABLE `bag_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `options` varchar(255) NOT NULL,
  `bag_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bag_items`
--

INSERT INTO `bag_items` (`id`, `product_id`, `quantity`, `price`, `total`, `options`, `bag_id`, `created_at`, `updated_at`) VALUES
(5, 1, 20, 30.30, 606.00, '{\"Weight\":{\"name\":\"5 kg\",\"price\":\"13.00\"},\"Color\":{\"name\":\"black\",\"price\":\"5.30\"}}', 1, '2019-06-08 17:44:45', '2019-06-08 14:44:45'),
(6, 1, 7, 12.00, 84.00, '[]', 1, '2019-06-13 07:30:44', '2019-06-13 04:30:44'),
(8, 2, 1, 125.00, 125.00, '[]', 1, '2019-06-15 14:56:26', '2019-06-15 14:56:26'),
(9, 15, 1, 123.00, 123.00, '[]', 1, '2019-08-07 10:17:53', '2019-08-07 10:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `blog_articles`
--

CREATE TABLE `blog_articles` (
  `id` int(11) NOT NULL,
  `article_header` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `article_thumb` varchar(255) NOT NULL,
  `article_seo_url` varchar(255) NOT NULL,
  `blog_cat_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_articles`
--

INSERT INTO `blog_articles` (`id`, `article_header`, `article_text`, `article_thumb`, `article_seo_url`, `blog_cat_id`, `created_at`, `updated_at`) VALUES
(1, 'Blog Post - Fashion Feature', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/blog1.png', 'blog-post-fashion-feature', 1, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(2, 'Blog Post - Interview', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/blog2.png', 'blog-post-interview', 1, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(3, 'Blog Post - Trend Editorial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/blog3.png', 'blog-post-trend-editorial', 1, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(4, 'Blog Post - Emerging Designer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/blog4.png', 'blog-post-emerging-designer', 1, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(5, 'Community 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/scoop1.png', 'community-1', 2, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(6, 'Community 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/scoop2.png', 'community-2', 2, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(7, 'Community 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/scoop3.png', 'community-3', 2, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(8, 'Fashion Editorial 1\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/editorial1.png', 'fashion-editorial-1', 3, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(9, 'Fashion Editorial 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/editorial2.png', 'fashion-editorial-2', 3, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(10, 'Fashion scoop 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/scoop1.png', 'fashion-scoop-1', 4, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(11, 'Fashion scoop 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/scoop2.png', 'fashion-scoop-2', 4, '2019-07-08 06:49:52', '2019-07-08 06:49:52'),
(12, 'Fashion scoop 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt praesent semper feugiat nibh. Ut aliquam purus sit amet luctus venenatis lectus magna. Cursus euismod quis viverra nibh. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Cursus eget nunc scelerisque viverra mauris in. Egestas congue quisque egestas diam in arcu. Lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Tellus mauris a diam maecenas sed. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nullam ac tortor vitae purus faucibus ornare suspendisse sed. Arcu non sodales neque sodales ut etiam sit. Bibendum enim facilisis gravida neque. Cursus in hac habitasse platea.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. In hac habitasse platea dictumst. Tortor vitae purus faucibus ornare suspendisse. Et netus et malesuada fames ac turpis egestas. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Faucibus nisl tincidunt eget nullam non nisi est. Tellus mauris a diam maecenas sed enim. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Egestas pretium aenean pharetra magna ac placerat vestibulum. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus.\r\n\r\nArcu non odio euismod lacinia at. Eu non diam phasellus vestibulum lorem sed risus ultricies. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Integer vitae justo eget magna fermentum. Nullam non nisi est sit amet facilisis magna etiam tempor. Fermentum iaculis eu non diam phasellus. Purus sit amet luctus venenatis lectus magna fringilla urna. Dui accumsan sit amet nulla. Id leo in vitae turpis massa sed elementum tempus egestas. Sodales ut etiam sit amet nisl purus in mollis. Arcu risus quis varius quam quisque id. Porttitor rhoncus dolor purus non enim praesent elementum. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. At volutpat diam ut venenatis tellus in metus. Ut morbi tincidunt augue interdum velit. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. Sem integer vitae justo eget magna. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare.', 'assets/img/fashion/scoop3.png', 'fashion-scoop-3', 4, '2019-07-08 06:49:52', '2019-07-08 06:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `blog_cat_name` varchar(255) NOT NULL,
  `blog_cat_thumb` varchar(255) NOT NULL,
  `blog_cat_seo_url` varchar(255) NOT NULL,
  `blog_type` int(1) NOT NULL COMMENT '1- hautu culture 0 - spotline on ',
  `limit_on_page` int(11) NOT NULL,
  `preview_length` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_cat_name`, `blog_cat_thumb`, `blog_cat_seo_url`, `blog_type`, `limit_on_page`, `preview_length`, `created_at`, `updated_at`) VALUES
(1, 'Blog', '', 'blog', 0, 4, 100, '2019-07-08 07:00:39', '2019-07-08 06:36:08'),
(2, 'Community news', '', 'community-news', 0, 3, 30, '2019-07-08 07:00:41', '2019-07-08 06:36:08'),
(3, 'Fashion Editorials', '', 'fashion-Editorials', 1, 2, 100, '2019-07-08 07:00:45', '2019-07-08 06:37:34'),
(4, 'Fashion Scoop', '', 'fashion-scoop', 1, 3, 30, '2019-07-08 07:00:47', '2019-07-08 06:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Stay', '2019-05-22 13:16:13', '2019-05-22 10:16:13'),
(3, 'Events', '2019-05-22 13:15:58', '2019-05-22 13:15:58'),
(5, 'Explore', '2019-05-29 13:27:42', '2019-05-29 13:27:42'),
(6, 'Fashion', '2019-05-29 16:28:08', '2019-05-29 13:28:08'),
(7, 'Taste', '2019-05-29 13:28:35', '2019-05-29 13:28:35'),
(8, 'Marketplace', '2019-05-29 13:28:59', '2019-05-29 13:28:59'),
(9, 'Music', '2019-05-29 13:29:14', '2019-05-29 13:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_seo_url` varchar(255) NOT NULL,
  `company_type` int(11) NOT NULL,
  `company_thumb` varchar(255) NOT NULL,
  `company_desc` text NOT NULL,
  `company_short_desc` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_web` varchar(255) NOT NULL,
  `company_phone` varchar(255) NOT NULL,
  `company_place` varchar(255) NOT NULL,
  `company_opened` varchar(255) NOT NULL,
  `company_fb` varchar(255) NOT NULL,
  `company_ytb` varchar(255) NOT NULL,
  `company_twt` varchar(255) NOT NULL,
  `company_on_main` int(1) NOT NULL,
  `company_appointment_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `company_seo_url`, `company_type`, `company_thumb`, `company_desc`, `company_short_desc`, `company_email`, `company_web`, `company_phone`, `company_place`, `company_opened`, `company_fb`, `company_ytb`, `company_twt`, `company_on_main`, `company_appointment_url`, `created_at`, `updated_at`) VALUES
(1, 'acme bread company', 'acme-bread-company', 4, 'assets/img/companies/acme_bread_company.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 1, '', '2019-06-15 13:08:06', '2019-06-15 06:32:42'),
(2, 'American Eatery at Prather Ranch', 'american-eatery-prather-ranch', 1, 'assets/img/companies/american_eatery.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 1, '', '2019-06-15 13:08:08', '2019-06-15 06:32:42'),
(3, 'Bay Crossings', 'bay-crossings', 5, 'assets/img/companies/bay_crossings.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 1, '', '2019-06-15 13:08:10', '2019-06-15 06:32:42'),
(4, 'acme bread company', 'acme-bread-company-two', 4, 'assets/img/companies/acme_bread_company.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:38:24', '2019-06-15 06:32:42'),
(5, 'American Eatery at Prather Ranch', 'american-eatery-prather-ranch-two', 1, 'assets/img/companies/american_eatery.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:38:26', '2019-06-15 06:32:42'),
(6, 'Bay Crossings', 'bay-crossings-two', 5, 'assets/img/companies/bay_crossings.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:38:29', '2019-06-15 06:32:42'),
(7, 'acme bread company', 'acme-bread-company-three', 4, 'assets/img/companies/acme_bread_company.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:38:57', '2019-06-15 06:32:42'),
(8, 'American Eatery at Prather Ranch', 'american-eatery-prather-ranch-three', 1, 'assets/img/companies/american_eatery.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:39:00', '2019-06-15 06:32:42'),
(9, 'Bay Crossings', 'bay-crossings-three', 5, 'assets/img/companies/bay_crossings.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:39:03', '2019-06-15 06:32:42'),
(10, 'acme bread company', 'acme-bread-company-four', 4, 'assets/img/companies/acme_bread_company.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:39:06', '2019-06-15 06:32:42'),
(11, 'American Eatery at Prather Ranch', 'american-eatery-prather-ranch-four', 1, 'assets/img/companies/american_eatery.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:39:10', '2019-06-15 06:32:42'),
(12, 'Bay Crossings', 'bay-crossings-four', 5, 'assets/img/companies/bay_crossings.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '2019-06-15 06:39:13', '2019-06-15 06:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `companies_to_sites_categories`
--

CREATE TABLE `companies_to_sites_categories` (
  `id` int(11) NOT NULL,
  `site_category_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upda` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies_to_sites_categories`
--

INSERT INTO `companies_to_sites_categories` (`id`, `site_category_id`, `company_id`, `created_at`, `upda`) VALUES
(1, 6, 12, '2019-07-08 08:53:04', '2019-07-05 12:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `companies_type`
--

CREATE TABLE `companies_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies_type`
--

INSERT INTO `companies_type` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'farm to table', '2019-06-13 09:23:10', '2019-06-13 09:23:10'),
(2, 'beverage', '2019-06-13 09:23:10', '2019-06-13 09:23:10'),
(3, 'events', '2019-06-13 09:23:36', '2019-06-13 09:23:36'),
(4, 'food', '2019-06-13 09:23:36', '2019-06-13 09:23:36'),
(5, 'goods', '2019-06-13 09:23:50', '2019-06-13 09:23:50'),
(6, 'sweets', '2019-06-13 09:23:50', '2019-06-13 09:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `explore_categories`
--

CREATE TABLE `explore_categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `cat_seo_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_categories`
--

INSERT INTO `explore_categories` (`id`, `cat_name`, `thumb`, `type_id`, `cat_seo_url`, `created_at`, `updated_at`) VALUES
(1, 'Bars', 'assets/img/nightlife/nightlife1.png', 2, 'bars', '2019-06-18 11:45:39', '2019-06-18 11:36:04'),
(2, 'Lounge', 'assets/img/nightlife/nightlife2.png', 2, 'lounge', '2019-06-18 11:45:39', '2019-06-18 11:36:04'),
(3, 'Dance Club', 'assets/img/nightlife/nightlife3.png', 2, 'dance-club', '2019-06-18 11:45:39', '2019-06-18 11:36:04'),
(4, 'Country Western Clubs', 'assets/img/nightlife/nightlife4.png', 2, 'country-western-clubs', '2019-06-18 11:45:39', '2019-06-18 11:36:04'),
(5, 'Adult Entertainment Clubs', 'assets/img/nightlife/nightlife5.png', 2, 'adult-entertainment-clubs', '2019-06-18 11:45:39', '2019-06-18 11:36:04'),
(6, 'Comedy Clubs', 'assets/img/nightlife/nightlife6.png', 2, 'comedy-clubs', '2019-06-18 11:45:39', '2019-06-18 11:36:04'),
(7, 'LIVE Music Venues', 'assets/img/nightlife/nightlife7.png', 2, 'live-music-venues', '2019-06-18 11:45:39', '2019-06-18 11:36:04'),
(8, 'LGBT Bars & Clubs', 'assets/img/nightlife/nightlife8.png', 2, 'lgbt-bars-clubs', '2019-06-18 11:45:39', '2019-06-18 11:36:04'),
(9, 'Jazz & Blues Clubs', 'assets/img/nightlife/nightlife9.png', 2, 'jazz-blues-clubs', '2019-06-18 11:45:39', '2019-06-18 11:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `explore_clients`
--

CREATE TABLE `explore_clients` (
  `id` int(11) NOT NULL,
  `cl_name` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cl_thumb` varchar(255) NOT NULL,
  `cl_desc` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0' COMMENT 'for nibhglive-daylive template',
  `cl_place` varchar(255) NOT NULL,
  `cl_open` varchar(255) NOT NULL,
  `cl_phone` varchar(255) NOT NULL,
  `cl_email` varchar(255) NOT NULL,
  `cl_web` varchar(255) NOT NULL,
  `cl_fb` varchar(255) NOT NULL,
  `cl_ytb` varchar(255) NOT NULL,
  `cl_twt` varchar(255) NOT NULL,
  `cl_seo_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_clients`
--

INSERT INTO `explore_clients` (`id`, `cl_name`, `type_id`, `cat_id`, `cl_thumb`, `cl_desc`, `type`, `cl_place`, `cl_open`, `cl_phone`, `cl_email`, `cl_web`, `cl_fb`, `cl_ytb`, `cl_twt`, `cl_seo_url`, `created_at`, `updated_at`) VALUES
(1, 'Adventure 1', 1, 0, 'assets/img/adventure/adventure1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-1', '2019-06-18 11:38:49', '2019-06-17 08:59:41'),
(2, 'Bar 1', 2, 1, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bar11', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(3, 'Venue 1', 2, 0, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(4, 'Adventure 2', 1, 0, 'assets/img/adventure/adventure2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-2', '2019-07-14 18:25:14', '2019-06-17 08:59:41'),
(5, 'Adventure 3', 1, 0, 'assets/img/adventure/adventure3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-3', '2019-07-14 18:25:26', '2019-06-17 08:59:41'),
(6, 'Adventure 4', 1, 0, 'assets/img/adventure/adventure4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-4', '2019-07-14 18:25:28', '2019-06-17 08:59:41'),
(7, 'Adventure 5', 1, 0, 'assets/img/adventure/adventure5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-5', '2019-07-14 18:25:33', '2019-06-17 08:59:41'),
(8, 'Adventure 6', 1, 0, 'assets/img/adventure/adventure6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-6', '2019-07-14 18:25:47', '2019-06-17 08:59:41'),
(9, 'Adventure 7', 1, 0, 'assets/img/adventure/adventure7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-7', '2019-07-14 18:25:43', '2019-06-17 08:59:41'),
(10, 'Adventure 8', 1, 0, 'assets/img/adventure/adventure8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-8', '2019-07-14 18:25:50', '2019-06-17 08:59:41'),
(11, 'Adventure 9', 1, 0, 'assets/img/adventure/adventure9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adventure-9', '2019-07-14 18:25:53', '2019-06-17 08:59:41'),
(12, 'Venue 2', 2, 0, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(13, 'Venue 3', 2, 0, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(14, 'Venue 4', 2, 0, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(15, 'Venue 5', 2, 0, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(16, 'Venue 6', 2, 0, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(17, 'Venue 7', 2, 0, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(18, 'Venue 8', 2, 0, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(19, 'Venue 9', 2, 0, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'venu-9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(20, 'Bars 2', 2, 1, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bars2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(21, 'Bars 3', 2, 1, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bars3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(22, 'Bars 4', 2, 1, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bars4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(23, 'Bars 5', 2, 1, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bars5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(24, 'Bars 6', 2, 1, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bars6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(25, 'Bars 7', 2, 1, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bars7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(26, 'Bars 8', 2, 1, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bars8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(27, 'Bars 9', 2, 1, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'bars9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(28, 'Lounge 1', 2, 2, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(29, 'Lounge 2', 2, 2, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(30, 'Lounge 3', 2, 2, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(31, 'Lounge 4', 2, 2, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(32, 'Lounge 5', 2, 2, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge5', '2019-06-18 14:02:05', '2019-06-17 08:59:41');
INSERT INTO `explore_clients` (`id`, `cl_name`, `type_id`, `cat_id`, `cl_thumb`, `cl_desc`, `type`, `cl_place`, `cl_open`, `cl_phone`, `cl_email`, `cl_web`, `cl_fb`, `cl_ytb`, `cl_twt`, `cl_seo_url`, `created_at`, `updated_at`) VALUES
(33, 'Lounge 6', 2, 2, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(34, 'Lounge 7', 2, 2, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(35, 'Lounge 8', 2, 2, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(36, 'Lounge 9', 2, 2, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lounge9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(37, 'Dance Club 1', 2, 3, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(38, 'Dance Club 2', 2, 3, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(39, 'Dance Club 3', 2, 3, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(40, 'Dance Club 4', 2, 3, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(41, 'Dance Club 5', 2, 3, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(42, 'Dance Club 6', 2, 3, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(43, 'Dance Club 7', 2, 3, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(44, 'Dance Club 8', 2, 3, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(45, 'Dance Club 9', 2, 3, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'dance-club9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(46, 'Country Western Clubs 1', 2, 4, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(47, 'Country Western Clubs 2', 2, 4, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(48, 'Country Western Clubs 3', 2, 4, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(49, 'Country Western Clubs 4', 2, 4, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(50, 'Country Western Clubs 5', 2, 4, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(51, 'Country Western Clubs 6', 2, 4, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(52, 'Country Western Clubs 7', 2, 4, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(53, 'Country Western Clubs 8', 2, 4, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(54, 'Country Western Clubs 9', 2, 4, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'country-western-clubs9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(55, 'Adult Entertainment Clubs 1', 2, 5, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(56, 'Adult Entertainment Clubs 2', 2, 5, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(57, 'Adult Entertainment Clubs 3', 2, 5, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(58, 'Adult Entertainment Clubs 4', 2, 5, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(59, 'Adult Entertainment Clubs 5', 2, 5, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(60, 'Adult Entertainment Clubs 6', 2, 5, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(61, 'Adult Entertainment Clubs 7', 2, 5, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(62, 'Adult Entertainment Clubs 8', 2, 5, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(63, 'Adult Entertainment Clubs 9', 2, 5, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'adult-entertainment-clubs9', '2019-06-18 14:02:05', '2019-06-17 08:59:41');
INSERT INTO `explore_clients` (`id`, `cl_name`, `type_id`, `cat_id`, `cl_thumb`, `cl_desc`, `type`, `cl_place`, `cl_open`, `cl_phone`, `cl_email`, `cl_web`, `cl_fb`, `cl_ytb`, `cl_twt`, `cl_seo_url`, `created_at`, `updated_at`) VALUES
(64, 'Comedy Clubs 1', 2, 6, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(65, 'Comedy Clubs 2', 2, 6, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(66, 'Comedy Clubs 3', 2, 6, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(67, 'Comedy Clubs 4', 2, 6, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(68, 'Comedy Clubs 5', 2, 6, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(69, 'Comedy Clubs 6', 2, 6, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(70, 'Comedy Clubs 7', 2, 6, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(71, 'Comedy Clubs 8', 2, 6, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(72, 'Comedy Clubs 9', 2, 6, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'comedy-clubs9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(73, 'LIVE Music Venues 1', 2, 7, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(74, 'LIVE Music Venues 2', 2, 7, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(75, 'LIVE Music Venues 3', 2, 7, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(76, 'LIVE Music Venues 4', 2, 7, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(77, 'LIVE Music Venues 5', 2, 7, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(78, 'LIVE Music Venues 6', 2, 7, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(79, 'LIVE Music Venues 7', 2, 7, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(80, 'LIVE Music Venues 8', 2, 7, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(81, 'LIVE Music Venues 9', 2, 7, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'live-music-venues9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(82, 'LGBT Bars & Clubs 1', 2, 8, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(83, 'LGBT Bars & Clubs 2', 2, 8, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(84, 'LGBT Bars & Clubs 3', 2, 8, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(85, 'LGBT Bars & Clubs 4', 2, 8, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(86, 'LGBT Bars & Clubs 5', 2, 8, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(87, 'LGBT Bars & Clubs 6', 2, 8, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(88, 'LGBT Bars & Clubs 7', 2, 8, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(89, 'LGBT Bars & Clubs 8', 2, 8, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(90, 'LGBT Bars & Clubs 9', 2, 8, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'lgbt-bars-clubs9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(91, 'Jazz & Blues Clubs 1', 2, 9, 'assets/img/nightlife/nightlife1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(92, 'Jazz & Blues Clubs 2', 2, 9, 'assets/img/nightlife/nightlife2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(93, 'Jazz & Blues Clubs 3', 2, 9, 'assets/img/nightlife/nightlife3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(94, 'Jazz & Blues Clubs 4', 2, 9, 'assets/img/nightlife/nightlife4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs4', '2019-06-18 14:02:05', '2019-06-17 08:59:41');
INSERT INTO `explore_clients` (`id`, `cl_name`, `type_id`, `cat_id`, `cl_thumb`, `cl_desc`, `type`, `cl_place`, `cl_open`, `cl_phone`, `cl_email`, `cl_web`, `cl_fb`, `cl_ytb`, `cl_twt`, `cl_seo_url`, `created_at`, `updated_at`) VALUES
(95, 'Jazz & Blues Clubs 5', 2, 9, 'assets/img/nightlife/nightlife5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(96, 'Jazz & Blues Clubs 6', 2, 9, 'assets/img/nightlife/nightlife6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(97, 'Jazz & Blues Clubs 7', 2, 9, 'assets/img/nightlife/nightlife7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(98, 'Jazz & Blues Clubs 8', 2, 9, 'assets/img/nightlife/nightlife8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(99, 'Jazz & Blues Clubs 9', 2, 9, 'assets/img/nightlife/nightlife9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'jazz-blues-clubs9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(100, 'Pet club 1', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(101, 'Pet club 2', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(102, 'Pet club 3', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(103, 'Pet club 4', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(104, 'Pet club 5', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(105, 'Pet club 6', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(106, 'Pet club 7', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(107, 'Pet club 8', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(108, 'Pet club 9', 3, 0, 'https://franceloop.com/old/assets/img/pets/pet9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pet-club9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(109, 'Pamper 1', 4, 0, 'assets/img/pamper/pamper1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(110, 'Pamper 2', 4, 0, 'assets/img/pamper/pamper2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(111, 'Pamper 3', 4, 0, 'assets/img/pamper/pamper3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(112, 'Pamper 4', 4, 0, 'assets/img/pamper/pamper4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(113, 'Pamper 5', 4, 0, 'assets/img/pamper/pamper5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(114, 'Pamper 6', 4, 0, 'assets/img/pamper/pamper6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(115, 'Pamper 7', 4, 0, 'assets/img/pamper/pamper7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(116, 'Pamper 8', 4, 0, 'assets/img/pamper/pamper8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(117, 'Pamper 9', 4, 0, 'assets/img/pamper/pamper9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'pamper9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(118, 'Golf & Recreation 1', 5, 0, 'assets/img/adventure/adventure1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(119, 'Golf & Recreation 2', 5, 0, 'assets/img/adventure/adventure2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(120, 'Golf & Recreation 3', 5, 0, 'assets/img/adventure/adventure3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(121, 'Golf & Recreation 4', 5, 0, 'assets/img/adventure/adventure4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(122, 'Golf & Recreation 5', 5, 0, 'assets/img/adventure/adventure5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(123, 'Golf & Recreation 6', 5, 0, 'assets/img/adventure/adventure6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(124, 'Golf & Recreation 7', 5, 0, 'assets/img/adventure/adventure7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(125, 'Golf & Recreation 8', 5, 0, 'assets/img/adventure/adventure8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation8', '2019-06-18 14:02:05', '2019-06-17 08:59:41');
INSERT INTO `explore_clients` (`id`, `cl_name`, `type_id`, `cat_id`, `cl_thumb`, `cl_desc`, `type`, `cl_place`, `cl_open`, `cl_phone`, `cl_email`, `cl_web`, `cl_fb`, `cl_ytb`, `cl_twt`, `cl_seo_url`, `created_at`, `updated_at`) VALUES
(126, 'Golf & Recreation 9', 5, 0, 'assets/img/adventure/adventure9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'golf-recreation9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(127, 'Loop Kids 1', 6, 0, 'assets/img/kids/kid_1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids1', '2019-07-16 13:14:41', '2019-06-17 08:59:41'),
(128, 'Loop Kids 2', 6, 0, 'assets/img/kids/kid_2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids2', '2019-07-16 13:14:46', '2019-06-17 08:59:41'),
(129, 'Loop Kids 3', 6, 0, 'assets/img/kids/kid_3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids3', '2019-07-16 13:14:49', '2019-06-17 08:59:41'),
(130, 'Loop Kids 4', 6, 0, 'assets/img/kids/kid_4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids4', '2019-07-16 13:14:53', '2019-06-17 08:59:41'),
(131, 'Loop Kids 5', 6, 0, 'assets/img/kids/kid_5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids5', '2019-07-16 13:15:26', '2019-06-17 08:59:41'),
(132, 'Loop Kids 6', 6, 0, 'assets/img/kids/kid_6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids6', '2019-07-16 13:15:30', '2019-06-17 08:59:41'),
(133, 'Loop Kids 7', 6, 0, 'assets/img/kids/kid_7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids7', '2019-07-16 13:15:34', '2019-06-17 08:59:41'),
(134, 'Loop Kids 8', 6, 0, 'assets/img/kids/kid_8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids8', '2019-07-16 13:15:37', '2019-06-17 08:59:41'),
(135, 'Loop Kids 9', 6, 0, 'assets/img/kids/kid_9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'loop-kids9', '2019-07-16 13:15:41', '2019-06-17 08:59:41'),
(136, 'Local Shops and Shopping 1', 7, 0, 'assets/img/adventure/adventure1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(137, 'Local Shops and Shopping 2', 7, 0, 'assets/img/adventure/adventure2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(138, 'Local Shops and Shopping 3', 7, 0, 'assets/img/adventure/adventure3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(139, 'Local Shops and Shopping 4', 7, 0, 'assets/img/adventure/adventure4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(140, 'Local Shops and Shopping 5', 7, 0, 'assets/img/adventure/adventure5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(141, 'Local Shops and Shopping 6', 7, 0, 'assets/img/adventure/adventure6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(142, 'Local Shops and Shopping 7', 7, 0, 'assets/img/adventure/adventure7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(143, 'Local Shops and Shopping 8', 7, 0, 'assets/img/adventure/adventure8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(144, 'Local Shops and Shopping 9', 7, 0, 'assets/img/adventure/adventure9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'local-shops-and-shopping9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(145, 'Fitness 1', 8, 0, 'assets/img/adventure/adventure1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(146, 'Fitness 2', 8, 0, 'assets/img/adventure/adventure2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(147, 'Fitness 3', 8, 0, 'assets/img/adventure/adventure3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(148, 'Fitness 4', 8, 0, 'assets/img/adventure/adventure4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness4', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(149, 'Fitness 5', 8, 0, 'assets/img/adventure/adventure5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(150, 'Fitness 6', 8, 0, 'assets/img/adventure/adventure6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(151, 'Fitness 7', 8, 0, 'assets/img/adventure/adventure7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(152, 'Fitness 8', 8, 0, 'assets/img/adventure/adventure8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(153, 'Fitness 9', 8, 0, 'assets/img/adventure/adventure9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'fitness9', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(154, 'Art 1', 9, 0, 'assets/img/adventure/adventure1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art1', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(155, 'Art 2', 9, 0, 'assets/img/adventure/adventure2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art2', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(156, 'Art 3', 9, 0, 'assets/img/adventure/adventure3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art3', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(157, 'Art 4', 9, 0, 'assets/img/adventure/adventure4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art4', '2019-06-18 14:02:05', '2019-06-17 08:59:41');
INSERT INTO `explore_clients` (`id`, `cl_name`, `type_id`, `cat_id`, `cl_thumb`, `cl_desc`, `type`, `cl_place`, `cl_open`, `cl_phone`, `cl_email`, `cl_web`, `cl_fb`, `cl_ytb`, `cl_twt`, `cl_seo_url`, `created_at`, `updated_at`) VALUES
(158, 'Art 5', 9, 0, 'assets/img/adventure/adventure5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art5', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(159, 'Art 6', 9, 0, 'assets/img/adventure/adventure6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art6', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(160, 'Art 7', 9, 0, 'assets/img/adventure/adventure7.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art7', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(161, 'Art 8', 9, 0, 'assets/img/adventure/adventure8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art8', '2019-06-18 14:02:05', '2019-06-17 08:59:41'),
(162, 'Art 9', 9, 0, 'assets/img/adventure/adventure9.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '445 Mount Eden Road, Mount Eden Auckland', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '23 4567 8901 / 123 4567 8901', 'olsovka@gmail.com', 'www.website.com', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', 'art9', '2019-06-18 14:02:05', '2019-06-17 08:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `explore_clients_gallery`
--

CREATE TABLE `explore_clients_gallery` (
  `id` int(11) NOT NULL,
  `exp_cl_id` int(11) NOT NULL,
  `item_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_clients_gallery`
--

INSERT INTO `explore_clients_gallery` (`id`, `exp_cl_id`, `item_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(2, 1, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(3, 1, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(4, 1, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(5, 1, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(6, 4, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(7, 4, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(8, 4, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(9, 4, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(10, 4, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(11, 5, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(12, 5, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(13, 5, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(14, 5, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(15, 5, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(16, 6, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(17, 6, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(18, 6, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(19, 6, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(20, 6, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(21, 7, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(22, 7, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(23, 7, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(24, 7, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(25, 7, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(26, 8, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(27, 8, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(28, 8, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(29, 8, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(30, 8, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(31, 9, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(32, 9, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(33, 9, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(34, 9, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(35, 9, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(36, 10, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(37, 10, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(38, 10, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(39, 10, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(40, 10, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(41, 11, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(42, 11, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(43, 11, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(44, 11, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(45, 11, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:15', '2019-06-18 11:25:15'),
(46, 12, 'assets/img/profile/gallery1.png', '2019-07-16 10:03:11', '2019-06-18 11:25:06'),
(47, 12, 'assets/img/profile/gallery2.png', '2019-07-16 10:03:19', '2019-06-18 11:25:06'),
(48, 12, 'assets/img/profile/gallery3.png', '2019-07-16 10:03:24', '2019-06-18 11:25:15'),
(49, 12, 'assets/img/profile/gallery4.png', '2019-07-16 10:03:30', '2019-06-18 11:25:06'),
(50, 12, 'assets/img/profile/gallery5.png', '2019-07-16 10:03:37', '2019-06-18 11:25:15'),
(51, 13, 'assets/img/profile/gallery1.png', '2019-07-16 10:03:58', '2019-06-18 11:25:06'),
(52, 13, 'assets/img/profile/gallery2.png', '2019-07-16 10:04:04', '2019-06-18 11:25:06'),
(53, 13, 'assets/img/profile/gallery3.png', '2019-07-16 10:04:10', '2019-06-18 11:25:15'),
(54, 13, 'assets/img/profile/gallery4.png', '2019-07-16 10:04:14', '2019-06-18 11:25:06'),
(55, 13, 'assets/img/profile/gallery5.png', '2019-07-16 10:04:19', '2019-06-18 11:25:15'),
(56, 14, 'assets/img/profile/gallery1.png', '2019-07-16 10:04:27', '2019-06-18 11:25:06'),
(57, 14, 'assets/img/profile/gallery2.png', '2019-07-16 10:04:32', '2019-06-18 11:25:06'),
(58, 14, 'assets/img/profile/gallery3.png', '2019-07-16 10:06:51', '2019-06-18 11:25:15'),
(59, 14, 'assets/img/profile/gallery4.png', '2019-07-16 10:06:43', '2019-06-18 11:25:06'),
(60, 14, 'assets/img/profile/gallery5.png', '2019-07-16 10:06:55', '2019-06-18 11:25:15'),
(61, 15, 'assets/img/profile/gallery1.png', '2019-07-16 10:08:29', '2019-06-18 11:25:06'),
(62, 15, 'assets/img/profile/gallery2.png', '2019-07-16 10:08:32', '2019-06-18 11:25:06'),
(63, 15, 'assets/img/profile/gallery3.png', '2019-07-16 10:08:36', '2019-06-18 11:25:15'),
(64, 15, 'assets/img/profile/gallery4.png', '2019-07-16 10:08:39', '2019-06-18 11:25:06'),
(65, 15, 'assets/img/profile/gallery5.png', '2019-07-16 10:08:43', '2019-06-18 11:25:15'),
(66, 16, 'assets/img/profile/gallery1.png', '2019-07-16 10:08:47', '2019-06-18 11:25:06'),
(67, 16, 'assets/img/profile/gallery2.png', '2019-07-16 10:08:50', '2019-06-18 11:25:06'),
(68, 16, 'assets/img/profile/gallery3.png', '2019-07-16 10:08:54', '2019-06-18 11:25:15'),
(69, 16, 'assets/img/profile/gallery4.png', '2019-07-16 10:08:56', '2019-06-18 11:25:06'),
(70, 16, 'assets/img/profile/gallery5.png', '2019-07-16 10:09:00', '2019-06-18 11:25:15'),
(71, 17, 'assets/img/profile/gallery1.png', '2019-07-16 10:09:13', '2019-06-18 11:25:06'),
(72, 17, 'assets/img/profile/gallery2.png', '2019-07-16 10:09:18', '2019-06-18 11:25:06'),
(73, 17, 'assets/img/profile/gallery3.png', '2019-07-16 10:09:23', '2019-06-18 11:25:15'),
(74, 17, 'assets/img/profile/gallery4.png', '2019-07-16 10:09:27', '2019-06-18 11:25:06'),
(75, 17, 'assets/img/profile/gallery5.png', '2019-07-16 10:09:30', '2019-06-18 11:25:15'),
(76, 18, 'assets/img/profile/gallery1.png', '2019-07-16 10:09:32', '2019-06-18 11:25:06'),
(77, 18, 'assets/img/profile/gallery2.png', '2019-07-16 10:09:36', '2019-06-18 11:25:06'),
(78, 18, 'assets/img/profile/gallery3.png', '2019-07-16 10:09:47', '2019-06-18 11:25:15'),
(79, 18, 'assets/img/profile/gallery4.png', '2019-07-16 10:09:51', '2019-06-18 11:25:06'),
(80, 18, 'assets/img/profile/gallery5.png', '2019-07-16 10:09:55', '2019-06-18 11:25:15'),
(81, 19, 'assets/img/profile/gallery1.png', '2019-07-16 10:09:58', '2019-06-18 11:25:06'),
(82, 19, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:01', '2019-06-18 11:25:06'),
(83, 19, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:05', '2019-06-18 11:25:15'),
(84, 19, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:08', '2019-06-18 11:25:06'),
(85, 19, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:11', '2019-06-18 11:25:15'),
(86, 3, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:12', '2019-06-18 11:25:06'),
(87, 3, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:16', '2019-06-18 11:25:06'),
(88, 3, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:24', '2019-06-18 11:25:15'),
(89, 3, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:28', '2019-06-18 11:25:06'),
(90, 3, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(91, 20, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(92, 20, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(93, 20, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(94, 20, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(95, 20, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(96, 20, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(97, 21, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(98, 21, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(99, 21, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(100, 21, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(101, 21, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(102, 21, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(103, 22, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(104, 22, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(105, 22, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(106, 22, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(107, 22, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(108, 22, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(109, 23, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(110, 23, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(111, 23, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(112, 23, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(113, 23, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(114, 23, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(115, 24, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(116, 24, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(117, 24, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(118, 24, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(119, 24, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(120, 24, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(121, 25, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(122, 25, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(123, 25, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(124, 25, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(125, 25, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(126, 25, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(127, 26, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(128, 26, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(129, 26, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(130, 26, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(131, 26, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(132, 26, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(133, 27, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(134, 27, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(135, 27, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(136, 27, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(137, 27, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(138, 27, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(139, 28, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(140, 28, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(141, 28, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(142, 28, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(143, 28, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(144, 28, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(145, 29, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(146, 29, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(147, 29, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(148, 29, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(149, 29, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(150, 29, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(151, 30, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(152, 30, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(153, 30, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(154, 30, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(155, 30, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(156, 30, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(157, 31, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(158, 31, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(159, 31, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(160, 31, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(161, 31, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(162, 31, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(163, 32, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(164, 32, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(165, 32, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(166, 32, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(167, 32, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(168, 32, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(169, 33, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(170, 33, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(171, 33, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(172, 33, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(173, 33, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(174, 33, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(175, 34, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(176, 34, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(177, 34, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(178, 34, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(179, 34, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(180, 34, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(181, 35, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(182, 35, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(183, 35, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(184, 35, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(185, 35, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(186, 35, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(187, 36, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(188, 36, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(189, 36, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(190, 36, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(191, 36, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(192, 36, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(193, 37, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(194, 37, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(195, 37, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(196, 37, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(197, 37, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(198, 37, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(199, 38, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(200, 38, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(201, 38, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(202, 38, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(203, 38, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(204, 38, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(205, 39, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(206, 39, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(207, 39, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(208, 39, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(209, 39, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(210, 39, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(211, 40, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(212, 40, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(213, 40, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(214, 40, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(215, 40, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(216, 40, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(217, 41, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(218, 41, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(219, 41, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(220, 41, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(221, 41, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(222, 41, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(223, 42, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(224, 42, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(225, 42, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(226, 42, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(227, 42, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(228, 42, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(229, 43, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(230, 43, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(231, 43, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(232, 43, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(233, 43, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(234, 43, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(235, 44, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(236, 44, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(237, 44, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(238, 44, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(239, 44, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(240, 44, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(241, 45, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(242, 45, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(243, 45, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(244, 45, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(245, 45, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(246, 45, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(247, 46, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(248, 46, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(249, 46, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(250, 46, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(251, 46, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(252, 46, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(253, 47, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(254, 47, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(255, 47, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(256, 47, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(257, 47, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(258, 47, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(259, 48, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(260, 48, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(261, 48, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(262, 48, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(263, 48, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(264, 48, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(265, 49, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(266, 49, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(267, 49, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(268, 49, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(269, 49, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(270, 49, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(271, 50, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(272, 50, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(273, 50, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(274, 50, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(275, 50, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(276, 50, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(277, 51, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(278, 51, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(279, 51, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(280, 51, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(281, 51, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(282, 51, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(283, 52, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(284, 52, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(285, 52, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(286, 52, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(287, 52, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(288, 52, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(289, 53, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(290, 53, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(291, 53, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(292, 53, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(293, 53, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(294, 53, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(295, 54, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(296, 54, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(297, 54, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(298, 54, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(299, 54, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(300, 54, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(301, 55, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(302, 55, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(303, 55, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(304, 55, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(305, 55, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(306, 55, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(307, 56, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(308, 56, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(309, 56, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(310, 56, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(311, 56, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(312, 56, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(313, 57, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(314, 57, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(315, 57, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(316, 57, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(317, 57, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(318, 57, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(319, 58, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(320, 58, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(321, 58, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(322, 58, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(323, 58, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(324, 58, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(325, 59, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(326, 59, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(327, 59, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(328, 59, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(329, 59, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(330, 59, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(331, 60, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(332, 60, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(333, 60, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(334, 60, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(335, 60, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(336, 60, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(337, 61, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(338, 61, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(339, 61, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(340, 61, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(341, 61, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(342, 61, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(343, 62, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(344, 62, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(345, 62, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(346, 62, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(347, 62, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(348, 62, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(349, 63, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(350, 63, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(351, 63, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(352, 63, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(353, 63, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(354, 63, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(355, 64, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(356, 64, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(357, 64, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(358, 64, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(359, 64, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(360, 64, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(361, 65, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(362, 65, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(363, 65, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(364, 65, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(365, 65, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(366, 65, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(367, 66, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(368, 66, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(369, 66, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(370, 66, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(371, 66, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(372, 66, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(373, 67, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(374, 67, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(375, 67, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(376, 67, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(377, 67, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(378, 67, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(379, 68, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(380, 68, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(381, 68, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(382, 68, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(383, 68, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(384, 68, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(385, 69, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(386, 69, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(387, 69, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(388, 69, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(389, 69, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(390, 69, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(391, 70, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(392, 70, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(393, 70, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(394, 70, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(395, 70, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(396, 70, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(397, 71, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(398, 71, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(399, 71, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(400, 71, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(401, 71, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(402, 71, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(403, 72, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(404, 72, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(405, 72, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(406, 72, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(407, 72, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(408, 72, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(409, 73, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(410, 73, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(411, 73, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(412, 73, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(413, 73, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(414, 73, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(415, 74, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(416, 74, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(417, 74, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(418, 74, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(419, 74, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(420, 74, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(421, 75, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(422, 75, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(423, 75, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(424, 75, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(425, 75, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(426, 75, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(427, 76, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(428, 76, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(429, 76, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(430, 76, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(431, 76, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(432, 76, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(433, 77, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(434, 77, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(435, 77, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(436, 77, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(437, 77, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(438, 77, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(439, 78, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(440, 78, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(441, 78, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(442, 78, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(443, 78, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(444, 78, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(445, 79, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(446, 79, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(447, 79, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(448, 79, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(449, 79, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(450, 79, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(451, 80, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(452, 80, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(453, 80, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(454, 80, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(455, 80, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(456, 80, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(457, 81, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(458, 81, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(459, 81, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(460, 81, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(461, 81, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(462, 81, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(463, 82, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(464, 82, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(465, 82, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(466, 82, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(467, 82, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(468, 82, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(469, 83, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(470, 83, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(471, 83, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(472, 83, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(473, 83, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(474, 83, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(475, 84, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(476, 84, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(477, 84, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(478, 84, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(479, 84, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(480, 84, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(481, 85, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(482, 85, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(483, 85, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(484, 85, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(485, 85, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(486, 85, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(487, 86, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(488, 86, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(489, 86, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(490, 86, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(491, 86, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(492, 86, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(493, 87, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(494, 87, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(495, 87, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(496, 87, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(497, 87, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(498, 87, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(499, 88, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(500, 88, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(501, 88, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(502, 88, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(503, 88, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(504, 88, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(505, 89, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(506, 89, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(507, 89, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(508, 89, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(509, 89, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(510, 89, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(511, 90, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(512, 90, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(513, 90, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(514, 90, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(515, 90, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(516, 90, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(517, 91, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(518, 91, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(519, 91, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(520, 91, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(521, 91, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(522, 91, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(523, 92, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(524, 92, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(525, 92, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(526, 92, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(527, 92, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(528, 92, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(529, 93, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(530, 93, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(531, 93, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(532, 93, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(533, 93, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(534, 93, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(535, 94, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(536, 94, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(537, 94, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(538, 94, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(539, 94, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(540, 94, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(541, 95, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(542, 95, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(543, 95, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(544, 95, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(545, 95, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(546, 95, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(547, 96, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(548, 96, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(549, 96, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(550, 96, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(551, 96, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(552, 96, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(553, 97, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(554, 97, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15');
INSERT INTO `explore_clients_gallery` (`id`, `exp_cl_id`, `item_url`, `created_at`, `updated_at`) VALUES
(555, 97, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(556, 97, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(557, 97, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(558, 97, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(559, 98, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(560, 98, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(561, 98, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(562, 98, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(563, 98, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(564, 98, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(565, 99, 'assets/img/profile/gallery1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(566, 99, 'assets/img/profile/gallery2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(567, 99, 'assets/img/profile/gallery3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(568, 99, 'assets/img/profile/gallery4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(569, 99, 'assets/img/profile/gallery5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(570, 99, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(571, 100, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(572, 100, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(573, 100, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(574, 100, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(575, 100, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(576, 100, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(577, 101, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(578, 101, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(579, 101, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(580, 101, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(581, 101, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(582, 101, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(583, 102, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(584, 102, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(585, 102, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(586, 102, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(587, 102, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(588, 102, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(589, 103, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(590, 103, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(591, 103, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(592, 103, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(593, 103, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(594, 103, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(595, 104, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(596, 104, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(597, 104, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(598, 104, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(599, 104, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(600, 104, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(601, 105, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(602, 105, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(603, 105, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(604, 105, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(605, 105, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(606, 105, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(607, 106, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(608, 106, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(609, 106, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(610, 106, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(611, 106, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(612, 106, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(613, 107, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(614, 107, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(615, 107, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(616, 107, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(617, 107, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(618, 107, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(619, 108, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(620, 108, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(621, 108, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(622, 108, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(623, 108, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(624, 108, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(625, 109, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(626, 109, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(627, 109, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(628, 109, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(629, 109, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(630, 109, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(631, 110, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(632, 110, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(633, 110, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(634, 110, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(635, 110, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(636, 110, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(637, 111, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(638, 111, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(639, 111, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(640, 111, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(641, 111, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(642, 111, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(643, 112, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(644, 112, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(645, 112, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(646, 112, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(647, 112, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(648, 112, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(649, 113, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(650, 113, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(651, 113, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(652, 113, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(653, 113, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(654, 113, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(655, 114, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(656, 114, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(657, 114, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(658, 114, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(659, 114, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(660, 114, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(661, 115, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(662, 115, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(663, 115, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(664, 115, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(665, 115, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(666, 115, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(667, 116, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(668, 116, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(669, 116, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(670, 116, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(671, 116, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(672, 116, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(673, 117, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(674, 117, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(675, 117, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(676, 117, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(677, 117, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(678, 117, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(679, 118, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(680, 118, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(681, 118, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(682, 118, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(683, 118, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(684, 118, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(685, 119, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(686, 119, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(687, 119, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(688, 119, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(689, 119, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(690, 119, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(691, 120, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(692, 120, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(693, 120, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(694, 120, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(695, 120, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(696, 120, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(697, 121, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(698, 121, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(699, 121, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(700, 121, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(701, 121, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(702, 121, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(703, 122, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(704, 122, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(705, 122, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(706, 122, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(707, 122, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(708, 122, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(709, 123, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(710, 123, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(711, 123, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(712, 123, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(713, 123, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(714, 123, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(715, 124, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(716, 124, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(717, 124, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(718, 124, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(719, 124, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(720, 124, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(721, 125, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(722, 125, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(723, 125, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(724, 125, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(725, 125, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(726, 125, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(727, 126, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(728, 126, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(729, 126, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(730, 126, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(731, 126, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(732, 126, 'assets/img/adventure/adventure6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(733, 127, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(734, 127, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(735, 127, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(736, 127, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(737, 127, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(738, 128, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(739, 128, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(740, 128, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(741, 128, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(742, 128, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(743, 129, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(744, 129, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(745, 129, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(746, 129, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(747, 129, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(748, 130, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(749, 130, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(750, 130, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(751, 130, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(752, 130, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(753, 131, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(754, 131, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(755, 131, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(756, 131, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(757, 131, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(758, 132, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(759, 132, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(760, 132, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(761, 132, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(762, 132, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(763, 133, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(764, 133, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(765, 133, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(766, 133, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(767, 133, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(768, 134, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(769, 134, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(770, 134, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(771, 134, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(772, 134, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(773, 135, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(774, 135, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(775, 135, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(776, 135, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(777, 135, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(778, 136, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(779, 136, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(780, 136, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(781, 136, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(782, 136, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(783, 137, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(784, 137, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(785, 137, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(786, 137, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(787, 137, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(788, 138, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(789, 138, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(790, 138, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(791, 138, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(792, 138, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(793, 139, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(794, 139, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(795, 139, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(796, 139, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(797, 139, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(798, 140, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(799, 140, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(800, 140, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(801, 140, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(802, 140, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(803, 141, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(804, 141, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(805, 141, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(806, 141, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(807, 141, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(808, 142, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(809, 142, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(810, 142, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(811, 142, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(812, 142, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(813, 143, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(814, 143, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(815, 143, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(816, 143, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(817, 143, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(818, 144, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(819, 144, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(820, 144, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(821, 144, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(822, 144, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(823, 145, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(824, 145, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(825, 145, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(826, 145, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(827, 145, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(828, 146, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(829, 146, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(830, 146, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(831, 146, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(832, 146, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(833, 147, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(834, 147, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(835, 147, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(836, 147, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(837, 147, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(838, 148, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(839, 148, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(840, 148, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(841, 148, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(842, 148, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(843, 149, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(844, 149, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(845, 149, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(846, 149, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(847, 149, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(848, 150, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(849, 150, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(850, 150, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(851, 150, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(852, 150, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(853, 151, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(854, 151, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(855, 151, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(856, 151, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(857, 151, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(858, 152, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(859, 152, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(860, 152, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(861, 152, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(862, 152, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(863, 153, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(864, 153, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(865, 153, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(866, 153, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(867, 153, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(868, 154, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(869, 154, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(870, 154, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(871, 154, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(872, 154, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(873, 155, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(874, 155, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(875, 155, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(876, 155, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(877, 155, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(878, 156, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(879, 156, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(880, 156, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(881, 156, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(882, 156, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(883, 157, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(884, 157, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(885, 157, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(886, 157, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(887, 157, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(888, 158, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(889, 158, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(890, 158, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(891, 158, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(892, 158, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(893, 159, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(894, 159, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(895, 159, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(896, 159, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(897, 159, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(898, 160, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(899, 160, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(900, 160, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(901, 160, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(902, 160, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(903, 161, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(904, 161, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(905, 161, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(906, 161, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(907, 161, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(908, 162, 'assets/img/adventure/adventure1.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(909, 162, 'assets/img/adventure/adventure2.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(910, 162, 'assets/img/adventure/adventure3.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(911, 162, 'assets/img/adventure/adventure4.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(912, 162, 'assets/img/adventure/adventure5.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(913, 12, 'assets/img/profile/gallery6.png', '2019-07-16 10:03:37', '2019-06-18 11:25:15'),
(914, 13, 'assets/img/profile/gallery6.png', '2019-07-16 10:04:19', '2019-06-18 11:25:15'),
(915, 14, 'assets/img/profile/gallery6.png', '2019-07-16 10:06:55', '2019-06-18 11:25:15'),
(916, 15, 'assets/img/profile/gallery6.png', '2019-07-16 10:08:43', '2019-06-18 11:25:15'),
(917, 16, 'assets/img/profile/gallery6.png', '2019-07-16 10:09:00', '2019-06-18 11:25:15'),
(918, 17, 'assets/img/profile/gallery6.png', '2019-07-16 10:09:30', '2019-06-18 11:25:15'),
(919, 18, 'assets/img/profile/gallery6.png', '2019-07-16 10:09:55', '2019-06-18 11:25:15'),
(920, 19, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:11', '2019-06-18 11:25:15'),
(921, 3, 'assets/img/profile/gallery6.png', '2019-07-16 10:10:39', '2019-06-18 11:25:15'),
(922, 2, 'assets/img/adventure/adventure1.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(923, 2, 'assets/img/adventure/adventure2.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(924, 2, 'assets/img/adventure/adventure3.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(925, 2, 'assets/img/adventure/adventure4.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(926, 2, 'assets/img/adventure/adventure5.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06'),
(927, 2, 'assets/img/adventure/adventure6.png', '2019-06-18 11:25:06', '2019-06-18 11:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `explore_clients_services`
--

CREATE TABLE `explore_clients_services` (
  `id` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_thumb` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_clients_services`
--

INSERT INTO `explore_clients_services` (`id`, `cl_id`, `service_name`, `service_thumb`, `created_at`, `updated_at`) VALUES
(1, 1, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(2, 1, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(3, 1, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(4, 4, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(5, 4, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(6, 4, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(7, 5, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(8, 5, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(9, 5, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(10, 6, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(11, 6, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(12, 6, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(13, 7, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(14, 7, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(15, 7, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(16, 8, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(17, 8, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(18, 8, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(19, 9, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(20, 9, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(21, 9, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(22, 10, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(23, 10, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(24, 10, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(25, 2, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-08-25 19:28:31', '2019-06-17 17:06:54'),
(26, 11, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(27, 11, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(28, 12, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(29, 12, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:57:14', '2019-06-17 17:06:54'),
(30, 12, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:57:37', '2019-06-17 17:06:54'),
(31, 13, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 10:00:26', '2019-06-17 17:06:54'),
(32, 13, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 10:01:09', '2019-06-17 17:06:54'),
(33, 13, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 10:01:47', '2019-06-17 17:06:54'),
(34, 14, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 10:00:29', '2019-06-17 17:06:54'),
(35, 14, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 10:01:15', '2019-06-17 17:06:54'),
(36, 14, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 10:01:50', '2019-06-17 17:06:54'),
(37, 15, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 10:00:32', '2019-06-17 17:06:54'),
(38, 15, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 10:01:18', '2019-06-17 17:06:54'),
(39, 15, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 10:01:53', '2019-06-17 17:06:54'),
(40, 16, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 10:00:36', '2019-06-17 17:06:54'),
(41, 16, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 10:01:21', '2019-06-17 17:06:54'),
(42, 16, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 10:01:56', '2019-06-17 17:06:54'),
(43, 17, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 10:00:41', '2019-06-17 17:06:54'),
(44, 17, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 10:01:25', '2019-06-17 17:06:54'),
(45, 17, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 10:01:59', '2019-06-17 17:06:54'),
(46, 18, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 10:00:45', '2019-06-17 17:06:54'),
(47, 18, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 10:01:28', '2019-06-17 17:06:54'),
(48, 18, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 10:02:02', '2019-06-17 17:06:54'),
(49, 19, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 10:00:49', '2019-06-17 17:06:54'),
(50, 19, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 10:01:32', '2019-06-17 17:06:54'),
(51, 19, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 10:02:05', '2019-06-17 17:06:54'),
(52, 3, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 10:00:54', '2019-06-17 17:06:54'),
(53, 3, 'Group Admision\r\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 10:01:35', '2019-06-17 17:06:54'),
(54, 3, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 10:02:08', '2019-06-17 17:06:54'),
(55, 20, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(56, 20, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(57, 20, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(58, 21, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(59, 21, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(60, 21, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(61, 22, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(62, 22, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(63, 22, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(64, 23, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(65, 23, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(66, 23, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(67, 24, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(68, 24, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(69, 24, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(70, 25, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(71, 25, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(72, 25, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(73, 26, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(74, 26, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(75, 26, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(76, 27, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(77, 27, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(78, 27, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(79, 28, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(80, 28, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(81, 28, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(82, 29, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(83, 29, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(84, 29, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(85, 30, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(86, 30, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(87, 30, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(88, 31, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(89, 31, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(90, 31, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(91, 32, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(92, 32, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(93, 32, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(94, 33, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(95, 33, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(96, 33, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(97, 34, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(98, 34, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(99, 34, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(100, 35, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(101, 35, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(102, 35, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(103, 36, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(104, 36, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(105, 36, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(106, 37, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(107, 37, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(108, 37, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(109, 38, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(110, 38, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(111, 38, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(112, 39, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(113, 39, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(114, 39, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(115, 40, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(116, 40, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(117, 40, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(118, 41, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(119, 41, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(120, 41, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(121, 42, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(122, 42, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(123, 42, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(124, 43, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(125, 43, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(126, 43, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(127, 44, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(128, 44, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(129, 44, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(130, 45, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(131, 45, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(132, 45, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(133, 46, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(134, 46, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(135, 46, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(136, 47, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(137, 47, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(138, 47, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(139, 48, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(140, 48, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(141, 48, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(142, 49, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(143, 49, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(144, 49, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(145, 50, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(146, 50, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(147, 50, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(148, 51, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(149, 51, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(150, 51, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(151, 52, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(152, 52, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(153, 52, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(154, 53, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(155, 53, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(156, 53, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(157, 54, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(158, 54, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(159, 54, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(160, 55, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(161, 55, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(162, 55, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(163, 56, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(164, 56, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(165, 56, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(166, 57, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(167, 57, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(168, 57, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(169, 58, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(170, 58, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(171, 58, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(172, 59, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(173, 59, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(174, 59, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(175, 60, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(176, 60, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(177, 60, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(178, 61, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(179, 61, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(180, 61, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(181, 62, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(182, 62, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(183, 62, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(184, 63, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(185, 63, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(186, 63, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(187, 64, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(188, 64, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(189, 64, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(190, 65, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(191, 65, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(192, 65, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(193, 66, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(194, 66, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(195, 66, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(196, 67, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(197, 67, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(198, 67, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(199, 68, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(200, 68, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(201, 68, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(202, 69, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(203, 69, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(204, 69, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(205, 70, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(206, 70, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(207, 70, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(208, 71, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(209, 71, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(210, 71, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(211, 72, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(212, 72, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(213, 72, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(214, 73, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(215, 73, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(216, 73, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(217, 74, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(218, 74, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(219, 74, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(220, 75, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(221, 75, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(222, 75, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(223, 76, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(224, 76, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(225, 76, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(226, 77, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(227, 77, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(228, 77, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(229, 78, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(230, 78, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(231, 78, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(232, 79, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(233, 79, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(234, 79, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(235, 80, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(236, 80, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(237, 80, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(238, 81, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(239, 81, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(240, 81, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(241, 82, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(242, 82, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(243, 82, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(244, 83, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(245, 83, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(246, 83, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(247, 84, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(248, 84, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(249, 84, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(250, 85, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(251, 85, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(252, 85, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(253, 86, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(254, 86, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(255, 86, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(256, 87, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(257, 87, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(258, 87, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(259, 88, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(260, 88, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(261, 88, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(262, 89, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(263, 89, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(264, 89, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(265, 90, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(266, 90, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(267, 90, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(268, 91, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(269, 91, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(270, 91, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(271, 92, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(272, 92, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(273, 92, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(274, 93, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(275, 93, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(276, 93, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(277, 94, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(278, 94, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(279, 94, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(280, 95, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(281, 95, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(282, 95, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(283, 96, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(284, 96, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(285, 96, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(286, 97, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(287, 97, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(288, 97, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(289, 98, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(290, 98, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(291, 98, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(292, 99, 'Table Bottle Service', 'assets/img/profile/dayclub_service1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(293, 99, 'Group Admision\n', 'assets/img/profile/dayclub_service2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(294, 99, 'Private Party', 'assets/img/profile/dayclub_service3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(295, 100, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(296, 100, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(297, 100, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(298, 101, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(299, 101, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(300, 101, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(301, 102, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(302, 102, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(303, 102, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(304, 103, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(305, 103, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(306, 103, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(307, 104, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(308, 104, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(309, 104, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(310, 105, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(311, 105, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(312, 105, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(313, 106, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(314, 106, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(315, 106, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(316, 107, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(317, 107, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(318, 107, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(319, 108, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(320, 108, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(321, 108, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(322, 109, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(323, 109, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(324, 109, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(325, 110, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(326, 110, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(327, 110, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(328, 111, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(329, 111, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(330, 111, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(331, 112, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(332, 112, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(333, 112, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(334, 113, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(335, 113, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(336, 113, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(337, 114, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(338, 114, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(339, 114, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(340, 115, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(341, 115, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(342, 115, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(343, 116, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(344, 116, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(345, 116, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(346, 117, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(347, 117, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(348, 117, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(349, 118, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(350, 118, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(351, 118, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(352, 119, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(353, 119, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(354, 119, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(355, 120, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(356, 120, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(357, 120, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(358, 121, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(359, 121, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(360, 121, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(361, 122, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(362, 122, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(363, 122, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(364, 123, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(365, 123, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(366, 123, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(367, 124, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(368, 124, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(369, 124, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(370, 125, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(371, 125, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(372, 125, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(373, 126, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(374, 126, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(375, 126, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(376, 127, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(377, 127, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(378, 127, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(379, 128, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(380, 128, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(381, 128, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(382, 129, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(383, 129, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(384, 129, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(385, 130, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(386, 130, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(387, 130, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(388, 131, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(389, 131, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(390, 131, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(391, 132, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(392, 132, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(393, 132, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(394, 133, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(395, 133, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(396, 133, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(397, 134, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(398, 134, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(399, 134, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(400, 135, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(401, 135, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(402, 135, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(403, 136, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(404, 136, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(405, 136, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(406, 137, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(407, 137, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(408, 137, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(409, 138, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(410, 138, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(411, 138, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(412, 139, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(413, 139, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(414, 139, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(415, 140, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(416, 140, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(417, 140, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(418, 141, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(419, 141, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(420, 141, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(421, 142, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(422, 142, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(423, 142, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(424, 143, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(425, 143, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(426, 143, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(427, 144, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(428, 144, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(429, 144, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(430, 145, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(431, 145, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(432, 145, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(433, 146, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(434, 146, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(435, 146, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(436, 147, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(437, 147, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54');
INSERT INTO `explore_clients_services` (`id`, `cl_id`, `service_name`, `service_thumb`, `created_at`, `updated_at`) VALUES
(438, 147, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(439, 148, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(440, 148, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(441, 148, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(442, 149, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(443, 149, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(444, 149, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(445, 150, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(446, 150, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(447, 150, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(448, 151, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(449, 151, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(450, 151, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(451, 152, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(452, 152, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(453, 152, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(454, 153, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(455, 153, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(456, 153, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(457, 154, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(458, 154, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(459, 154, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(460, 155, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(461, 155, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(462, 155, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(463, 156, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(464, 156, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(465, 156, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(466, 157, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(467, 157, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(468, 157, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(469, 158, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(470, 158, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(471, 158, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(472, 159, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(473, 159, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(474, 159, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(475, 160, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(476, 160, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(477, 160, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(478, 161, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(479, 161, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(480, 161, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(481, 162, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(482, 162, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(483, 162, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-16 09:56:40', '2019-06-17 17:06:54'),
(485, 2, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-06-17 17:06:54', '2019-06-17 17:06:54'),
(487, 2, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-08-25 19:30:55', '2019-06-17 17:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `explore_filters`
--

CREATE TABLE `explore_filters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_filters`
--

INSERT INTO `explore_filters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'type', '2019-06-18 13:48:11', '2019-06-18 13:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `explore_filters_to_items`
--

CREATE TABLE `explore_filters_to_items` (
  `id` int(11) NOT NULL,
  `filter_value_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_filters_to_items`
--

INSERT INTO `explore_filters_to_items` (`id`, `filter_value_id`, `cat_id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(2, 2, 0, 3, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(3, 1, 2, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(4, 1, 3, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(5, 1, 4, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(6, 1, 5, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(7, 1, 6, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(8, 1, 7, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(9, 1, 8, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(10, 1, 9, 0, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(11, 2, 0, 12, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(12, 2, 0, 13, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(13, 2, 0, 14, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(14, 2, 0, 15, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(15, 2, 0, 16, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(16, 2, 0, 17, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(17, 2, 0, 18, '2019-06-18 14:04:52', '2019-06-18 14:04:52'),
(18, 2, 0, 19, '2019-06-18 14:04:52', '2019-06-18 14:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `explore_filters_value`
--

CREATE TABLE `explore_filters_value` (
  `id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_filters_value`
--

INSERT INTO `explore_filters_value` (`id`, `filter_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nightlife', '2019-06-18 13:59:57', '2019-06-18 13:59:57'),
(2, 1, 'Dayclubs/Parties', '2019-06-18 13:59:57', '2019-06-18 13:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `explore_kids`
--

CREATE TABLE `explore_kids` (
  `id` int(11) NOT NULL,
  `img` varchar(512) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `explore_kids`
--

INSERT INTO `explore_kids` (`id`, `img`) VALUES
(1, '4k-wallpaper-adorable-blur-1148998.jpg'),
(2, 'abigail-miller-754887-unsplash.jpg'),
(3, 'activity-beauty-blue-61129.jpg'),
(4, 'anna-samoylova-535880-unsplash.jpg'),
(5, 'ashton-bingham-113943-unsplash.jpg'),
(6, 'hannah-tasker-333889-unsplash.jpg'),
(7, 'markus-spiske-117324-unsplash.jpg'),
(8, 'pan-xiaozhen-423533-unsplash.jpg'),
(9, 'rawpixel-477806-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `explore_types`
--

CREATE TABLE `explore_types` (
  `id` int(11) NOT NULL,
  `explore_type_name` varchar(255) NOT NULL,
  `explore_type_thumb` varchar(255) NOT NULL,
  `explore_type_shor_desc` varchar(255) NOT NULL,
  `explore_type_seourl` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_types`
--

INSERT INTO `explore_types` (`id`, `explore_type_name`, `explore_type_thumb`, `explore_type_shor_desc`, `explore_type_seourl`, `created_at`, `updated_at`) VALUES
(1, 'adventure', 'assets/img/explore/explore-img1.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'adventure', '2019-07-16 08:48:42', '2019-06-15 13:27:50'),
(2, 'NIGHTLIFE/DAYCLUB', 'assets/img/explore/explore-img2.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'nightlife-dayclub', '2019-07-16 08:48:43', '2019-06-15 13:27:50'),
(3, 'PET CLUB', 'assets/img/explore/explore-img3.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'pet-club', '2019-07-16 08:48:46', '2019-06-15 13:27:50'),
(4, 'PAMPER', 'assets/img/explore/explore-img4.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'pamper', '2019-08-25 17:46:44', '2019-06-15 13:27:50'),
(5, 'GOLF/RECREATION', 'assets/img/explore/explore-img5.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'golf-recreation', '2019-07-16 08:48:49', '2019-06-15 13:27:50'),
(6, 'LOOP KIDS', 'assets/img/explore/explore-img6.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'loop-kids', '2019-07-16 08:48:51', '2019-06-15 13:27:50'),
(7, 'LOCAL SHOPS AND SHOPPING', 'assets/img/explore/explore-img7.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'local-shops-shopping', '2019-08-04 23:50:28', '2019-06-15 13:27:50'),
(8, 'FITNESS', 'assets/img/explore/explore-img8.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'fitness', '2019-08-25 17:28:08', '2019-06-15 13:27:50'),
(9, 'THE ARTS', 'assets/img/explore/explore-img9.png', '\r\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit lorem.\r\n                                ', 'the-arts', '2019-07-16 08:49:00', '2019-06-15 13:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `explore_types_gallery`
--

CREATE TABLE `explore_types_gallery` (
  `id` int(11) NOT NULL,
  `explore_type_id` int(11) NOT NULL,
  `item_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explore_types_gallery`
--

INSERT INTO `explore_types_gallery` (`id`, `explore_type_id`, `item_url`, `created_at`, `updated_at`) VALUES
(1, 3, 'assets/img/sliders/pet3.png', '2019-07-16 12:08:04', '2019-07-16 12:08:04'),
(2, 3, 'assets/img/sliders/pet1.png', '2019-07-16 12:08:04', '2019-07-16 12:08:04'),
(3, 3, 'assets/img/sliders/pet2.png', '2019-07-16 12:09:10', '2019-07-16 12:09:10'),
(4, 1, 'assets/img/sliders/banner7', '2019-07-16 12:16:15', '2019-07-16 12:16:15'),
(5, 2, 'assets/img/sliders/client-banner.jpeg', '2019-07-16 12:17:19', '2019-07-16 12:17:19'),
(6, 4, 'assets/img/sliders/client-banner.jpeg', '2019-07-16 13:12:49', '2019-07-16 12:18:10'),
(7, 5, 'assets/img/sliders/banner7.jpeg', '2019-07-16 12:18:44', '2019-07-16 12:18:44'),
(8, 6, 'assets/img/kids/kid_main.png', '2019-07-16 13:13:10', '2019-07-16 12:19:04'),
(9, 7, 'assets/img/sliders/banner7.jpeg', '2019-07-16 12:19:32', '2019-07-16 12:19:32'),
(10, 8, 'assets/img/sliders/banner7.jpeg', '2019-07-16 12:20:20', '2019-07-16 12:20:20'),
(11, 9, 'assets/img/sliders/banner7.jpeg', '2019-07-16 12:20:20', '2019-07-16 12:20:20');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fashion_exclusive_products`
--

CREATE TABLE `fashion_exclusive_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fashion_exclusive_products`
--

INSERT INTO `fashion_exclusive_products` (`id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 14, '2019-07-04 18:19:51', '2019-07-04 18:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `fashion_must_products`
--

CREATE TABLE `fashion_must_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fashion_must_products`
--

INSERT INTO `fashion_must_products` (`id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 15, '2019-07-04 18:20:01', '2019-07-04 18:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `local_shops`
--

CREATE TABLE `local_shops` (
  `id` int(11) NOT NULL,
  `thumbnail_image` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `local_shops`
--

INSERT INTO `local_shops` (`id`, `thumbnail_image`, `user_id`, `title`) VALUES
(1, 'client-localshop-1.png', 2, 'Local Shops and Shopping 1'),
(2, 'client-localshop-2.png', 3, 'Local Shops and Shopping 2'),
(3, 'client-localshop-3.png', 4, 'Local Shops and Shopping 3'),
(4, 'client-localshop-4.png', 5, 'Local Shops and Shopping 4'),
(5, 'client-localshop-5.png', 6, 'Local Shops and Shopping 5'),
(6, 'client-localshop-6.png', 7, 'Local Shops and Shopping 6'),
(7, 'client-localshop-7.png', 8, 'Local Shops and Shopping 7'),
(8, 'client-localshop-8.png', 9, 'Local Shops and Shopping 8'),
(9, 'client-localshop-9.png', 10, 'Local Shops and Shopping 9');

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
(3, '2018_09_01_200926_edit_users_table', 1),
(4, '2018_09_02_083734_create_role_user_table', 1),
(5, '2018_09_02_083937_create_roles_table', 1),
(6, '2018_10_23_124933_update_users_table', 1),
(7, '2018_10_24_134159_add_foreign_keys_to_role_user_table', 1),
(8, '2018_10_26_134640_add_social_tokens_columns_to_users_table', 1),
(9, '2018_11_02_140608_create_permission_tables', 1),
(10, '2018_11_02_144146_crete_pages_table', 1),
(11, '2018_11_07_151634_add_confirmation_fields_to_users', 1),
(12, '2018_11_08_092424_create_jobs_table', 1),
(13, '2018_11_08_093428_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_group_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_name`, `option_group_id`, `created_at`, `updated_at`) VALUES
(1, 'red', 1, '2019-06-04 08:03:13', '2019-06-04 08:03:13'),
(2, 'black', 1, '2019-06-04 08:03:13', '2019-06-04 08:03:13'),
(3, '3 kg', 2, '2019-06-04 08:03:25', '2019-06-04 08:03:25'),
(4, '5 kg ', 2, '2019-06-04 08:03:25', '2019-06-04 08:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `options_group`
--

CREATE TABLE `options_group` (
  `id` int(11) NOT NULL,
  `option_group_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options_group`
--

INSERT INTO `options_group` (`id`, `option_group_name`, `created_at`, `updated_at`) VALUES
(1, 'Color', '2019-06-04 08:02:26', '2019-06-04 08:02:26'),
(2, 'Weight', '2019-06-04 08:02:26', '2019-06-04 08:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `craeted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Privacy policy', 'privacy_policy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere ex sit amet lorem aliquet, nec molestie diam viverra. Donec volutpat, tortor eget fringilla facilisis, tortor purus pharetra elit, et posuere massa augue sit amet lectus. Pellentesque tempor in eros sit amet sodales. Vivamus sed eros vitae lacus sodales ultrices. Vivamus vitae mauris aliquet, hendrerit odio a, imperdiet velit. Aenean libero ex, iaculis eget ex congue, porta mattis lacus. Etiam ut ligula accumsan, eleifend ante nec, blandit diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi fermentum justo ipsum, ut feugiat justo ultrices vitae. Sed iaculis, nunc id pulvinar commodo, orci neque euismod dui, in ornare dui arcu eget tellus. Nullam viverra nisi sem, at rutrum mauris rutrum sed. Suspendisse potenti. Praesent massa augue, dapibus in sem vitae, condimentum rutrum orci. Suspendisse mattis interdum nunc, a tincidunt magna vulputate non. Proin ullamcorper imperdiet pretium.</p>\n<hr>\nDonec a erat sit amet lectus finibus tincidunt in sit amet justo. Praesent iaculis sit amet mi vitae tincidunt. Phasellus dapibus nisi id varius rhoncus. Etiam posuere diam sed ligula dapibus, efficitur commodo erat tincidunt. Nullam nec nibh vel velit lacinia finibus. Vivamus justo turpis, dignissim a ligula nec, dictum convallis orci. Aenean eget tempor sapien. Quisque posuere facilisis auctor. Praesent eget ullamcorper leo. Donec consequat nisl dolor, vel iaculis tellus sodales non. Quisque imperdiet ipsum leo. Integer vel accumsan sapien, non tempus augue.\n<hr>\n<h3>Proin dolor leo, tincidunt ut lacinia id, laoreet ac dui.</h3>\n<ul>\n<li>Aenean elementum arcu massa, gravida tincidunt metus aliquet et.</li>\n<li>Fusce accumsan purus semper elementum congue.</li>\n<li>Interdum et malesuada fames ac ante ipsum primis in faucibus.</li>\n<li>Vestibulum viverra consequat mi, id suscipit enim porttitor ac.</li>\n<li>Curabitur quis fermentum libero. Etiam accumsan tortor ac rhoncus bibendum.</li>\n</ul>\nNam pretium mattis leo, nec dictum justo feugiat ac. Nam sit amet bibendum elit. Nulla in ipsum eget ipsum efficitur fermentum. Etiam viverra tincidunt porta. Proin tempus, risus sit amet dapibus gravida, nibh enim hendrerit erat, vel egestas nibh ipsum in nibh. Morbi lacinia leo nulla, in interdum ex viverra sed. Maecenas hendrerit risus laoreet ligula dapibus porttitor. Nulla facilisi. Nunc condimentum orci sed eros tristique tempor.\n\nCras consectetur, neque vel pretium ultrices, ligula sapien consectetur justo, sed ultrices eros ligula at libero. Maecenas luctus dui lorem, non porttitor dolor varius id. Mauris efficitur, nisi id mattis placerat, mi augue vehicula nisl, ut feugiat nibh nisl id nibh. Mauris enim quam, pellentesque ac nisi consectetur, consectetur vestibulum risus. Sed vulputate, quam at feugiat hendrerit, sapien eros sagittis urna, eu elementum mi arcu eu nunc. Nunc maximus lectus arcu, et bibendum metus malesuada sit amet. Nulla facilisi.\n\nProin ut erat in sem viverra mollis in sed eros. Aliquam erat volutpat. Mauris blandit orci finibus egestas ultricies. Praesent in metus pharetra, venenatis nisi vel, luctus felis. Maecenas bibendum congue urna eget accumsan. Maecenas nec lacinia ex, non accumsan libero. Nam non libero mi. Mauris ac sodales nunc. Pellentesque mattis mi a purus dictum mollis. In ultrices dignissim nisl in sodales.', '2019-06-03 04:49:40', '2019-06-03 04:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `pampers`
--

CREATE TABLE `pampers` (
  `id` int(11) NOT NULL,
  `thumbnail_image` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pampers`
--

INSERT INTO `pampers` (`id`, `thumbnail_image`, `user_id`, `title`) VALUES
(1, 'client-pamper-1.png', 2, 'Pamper 1'),
(2, 'client-pamper-2.png', 3, 'Pamper 2'),
(3, 'client-pamper-3.png', 4, 'Pamper 3'),
(4, 'client-pamper-4.png', 5, 'Pamper 4'),
(5, 'client-pamper-5.png', 6, 'Pamper 5'),
(6, 'client-pamper-6.png', 7, 'Pamper 6'),
(7, 'client-pamper-7.png', 8, 'Pamper 7'),
(8, 'client-pamper-8.png', 9, 'Pamper 8'),
(9, 'client-pamper-9.png', 10, 'Pamper 9');

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `seo_url` varchar(255) NOT NULL,
  `simple_desc` varchar(100) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `price` decimal(11,2) NOT NULL,
  `sales` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `on_main` int(1) NOT NULL DEFAULT '0',
  `sites_categories` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `seo_url`, `simple_desc`, `thumb_url`, `points`, `price`, `sales`, `company_id`, `on_main`, `sites_categories`, `created_at`, `updated_at`) VALUES
(1, 'Test product', 'Laravel it\'s test description for products', 'product-1', 'simple desc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUoYjlyPc83gwMckqbLP07QmcB3ckuWKs9CZN96FsDhil5PSzpNQ', 12, 12.00, 0, 1, 1, '', '2019-06-15 09:59:59', '2019-06-04 07:56:38'),
(2, 'Test product  2 ', 'Test product 2 description', 'product-2', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 255, 125.00, 0, 1, 0, '', '2019-06-15 10:00:02', '2019-06-13 11:41:53'),
(3, 'Test product', 'Laravel it\'s test description for products', 'product-3', 'simple desc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUoYjlyPc83gwMckqbLP07QmcB3ckuWKs9CZN96FsDhil5PSzpNQ', 12, 12.00, 0, 1, 1, '', '2019-06-15 09:59:59', '2019-06-04 07:56:38'),
(4, 'Test product  2 ', 'Test product 2 description', 'product-4', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 255, 125.00, 0, 1, 0, '', '2019-06-15 10:00:02', '2019-06-13 11:41:53'),
(5, 'Test product', 'Laravel it\'s test description for products', 'product-5', 'simple desc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUoYjlyPc83gwMckqbLP07QmcB3ckuWKs9CZN96FsDhil5PSzpNQ', 12, 12.00, 0, 1, 1, '', '2019-06-15 09:59:59', '2019-06-04 07:56:38'),
(6, 'Test product  2 ', 'Test product 2 description', 'product-6', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 255, 125.00, 0, 1, 0, '', '2019-06-15 10:00:02', '2019-06-13 11:41:53'),
(7, 'Test product', 'Laravel it\'s test description for products', 'product-7', 'simple desc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUoYjlyPc83gwMckqbLP07QmcB3ckuWKs9CZN96FsDhil5PSzpNQ', 12, 12.00, 0, 1, 1, '', '2019-06-15 09:59:59', '2019-06-04 07:56:38'),
(8, 'Test product  2 ', 'Test product 2 description', 'product-8', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 255, 125.00, 0, 1, 0, '', '2019-06-15 10:00:02', '2019-06-13 11:41:53'),
(9, 'Test product  2 ', 'Test product 2 description', 'product-9', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 255, 125.00, 0, 1, 0, '', '2019-06-15 10:00:02', '2019-06-13 11:41:53'),
(10, 'Test product', 'Laravel it\'s test description for products', 'product-10', 'simple desc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUoYjlyPc83gwMckqbLP07QmcB3ckuWKs9CZN96FsDhil5PSzpNQ', 12, 12.00, 0, 1, 1, '', '2019-06-15 09:59:59', '2019-06-04 07:56:38'),
(11, 'Test product  2 ', 'Test product 2 description', 'product-11', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 255, 125.00, 0, 1, 0, '', '2019-06-15 10:00:02', '2019-06-13 11:41:53'),
(12, 'Test product', 'Laravel it\'s test description for products', 'product-12', 'simple desc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUoYjlyPc83gwMckqbLP07QmcB3ckuWKs9CZN96FsDhil5PSzpNQ', 12, 12.00, 0, 1, 1, '', '2019-06-15 09:59:59', '2019-06-04 07:56:38'),
(13, 'Test product  2 ', 'Test product 2 description', 'product-13', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 255, 125.00, 0, 1, 0, '', '2019-06-15 10:00:02', '2019-06-13 11:41:53'),
(14, 'Fashion product  ', 'Fashion 2 description', 'fashion-product', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 255, 125.00, 20, 1, 0, '6', '2019-07-08 08:55:51', '2019-06-13 11:41:53'),
(15, 'Fashion2 product  ', 'Fashion 3 description', 'fashion-2product', 'Simple test', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 21, 123.00, 12, 1, 0, '6', '2019-07-08 08:55:52', '2019-06-13 11:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_thumb` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `seo_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`id`, `name`, `category_thumb`, `sort_order`, `seo_url`, `created_at`, `updated_at`) VALUES
(1, 'Perfume', 'https://upload.wikimedia.org/wikipedia/commons/a/a4/White-tiger-2407799_1280.jpg', 1, 'perfume', '2019-07-04 09:36:13', '2019-06-13 12:06:25'),
(2, 'Bras & panties', 'https://images.unsplash.com/photo-1543869664-290274af6667?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 2, 'bras-panties', '2019-07-04 09:36:07', '2019-06-13 12:06:25'),
(3, 'Women', '', 1, 'women', '2019-07-04 09:35:38', '2019-07-04 09:02:21'),
(4, 'Men', '', 2, 'men', '2019-07-04 09:35:40', '2019-07-04 09:02:21'),
(5, 'Teen', '', 3, 'teen', '2019-07-04 09:35:43', '2019-07-04 09:02:50'),
(6, 'Kids', '', 4, 'kids', '2019-07-04 09:57:59', '2019-07-04 09:02:50'),
(7, 'Pets', '', 5, 'pets', '2019-07-04 09:35:51', '2019-07-04 09:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_to_company`
--

CREATE TABLE `products_categories_to_company` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_categories_to_company`
--

INSERT INTO `products_categories_to_company` (`id`, `company_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-06-15 09:58:14', '2019-06-15 09:58:14'),
(2, 1, 2, '2019-06-15 09:58:14', '2019-06-15 09:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_to_product`
--

CREATE TABLE `products_categories_to_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_categories_to_product`
--

INSERT INTO `products_categories_to_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(2, 2, 1, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(3, 3, 2, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(4, 4, 1, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(5, 5, 2, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(6, 6, 1, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(7, 7, 2, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(8, 8, 1, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(9, 9, 2, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(10, 10, 1, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(11, 11, 2, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(12, 12, 1, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(13, 13, 1, '2019-06-13 12:06:44', '2019-06-13 12:06:44'),
(14, 14, 3, '2019-07-04 13:57:58', '2019-07-04 13:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_to_site_categories`
--

CREATE TABLE `products_categories_to_site_categories` (
  `id` int(11) NOT NULL,
  `site_category_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_categories_to_site_categories`
--

INSERT INTO `products_categories_to_site_categories` (`id`, `site_category_id`, `product_category_id`, `created_at`, `updated_at`) VALUES
(1, 6, 3, '2019-07-08 08:53:27', '2019-07-04 09:13:21'),
(2, 6, 4, '2019-07-08 08:53:29', '2019-07-04 09:13:21'),
(3, 6, 5, '2019-07-08 08:53:30', '2019-07-04 09:13:21'),
(4, 6, 6, '2019-07-08 08:53:32', '2019-07-04 09:13:21'),
(5, 6, 7, '2019-07-08 08:53:33', '2019-07-04 09:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `products_featured`
--

CREATE TABLE `products_featured` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_featured`
--

INSERT INTO `products_featured` (`id`, `product_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-06-13 11:45:15', '2019-06-13 11:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `products_gallery_items`
--

CREATE TABLE `products_gallery_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_href` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_gallery_items`
--

INSERT INTO `products_gallery_items` (`id`, `product_id`, `item_href`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://media2.s-nbcnews.com/j/newscms/2018_20/1339477/puppy-cute-today-180515-main_a936531048fdb698635dd1b418abdee9.fit-760w.jpg', 1, '2019-06-14 08:34:22', '2019-06-14 08:34:22'),
(2, 1, 'https://images2.minutemediacdn.com/image/upload/c_crop,h_2276,w_4043,x_0,y_23/f_auto,q_auto,w_1100/v1553128862/shape/mentalfloss/536413-istock-459987119.jpg', 2, '2019-06-14 12:28:13', '2019-06-14 08:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `products_rating`
--

CREATE TABLE `products_rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` decimal(11,1) NOT NULL DEFAULT '0.5',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_rating`
--

INSERT INTO `products_rating` (`id`, `user_id`, `product_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.5, '2019-06-13 08:26:14', '2019-06-13 08:26:14'),
(2, 1, 2, 0.5, '2019-06-15 14:56:01', '2019-06-15 14:56:01'),
(3, 1, 14, 3.0, '2019-07-08 11:30:09', '2019-07-08 11:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_option_value`
--

CREATE TABLE `product_option_value` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_option_value`
--

INSERT INTO `product_option_value` (`id`, `product_id`, `option_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 15.00, '2019-06-04 08:04:02', '2019-06-04 08:04:02'),
(2, 1, 4, 13.00, '2019-06-04 09:26:08', '2019-06-04 08:04:02'),
(3, 1, 3, 20.00, '2019-06-04 08:04:37', '2019-06-04 08:04:37'),
(4, 1, 2, 5.30, '2019-06-04 09:26:06', '2019-06-04 08:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `access`, `created_at`, `updated_at`, `guard_name`) VALUES
(1, 'admin', '', NULL, NULL, 'jwt'),
(2, 'user', '', NULL, NULL, 'jwt'),
(3, 'vip_user', '', NULL, NULL, 'jwt'),
(4, 'business', '', NULL, NULL, 'jwt'),
(5, 'vip_business', '', NULL, NULL, 'jwt'),
(6, 'media', '', NULL, NULL, 'jwt');

-- --------------------------------------------------------

--
-- Table structure for table `role_buy`
--

CREATE TABLE `role_buy` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `thumbnail_image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `thumbnail_image`) VALUES
(1, 1, 'Service 1', 'assets/img/adventure/adventure1.png'),
(2, 1, 'Service 2', 'assets/img/adventure/adventure2.png'),
(3, 1, 'Service 3', 'assets/img/adventure/adventure3.png'),
(4, 4, 'Service 1', 'assets/img/adventure/adventure1.png'),
(5, 4, 'Service 2', 'assets/img/adventure/adventure2.png'),
(6, 4, 'Service 3', 'assets/img/adventure/adventure3.png'),
(7, 5, 'Service 1', 'assets/img/adventure/adventure1.png'),
(8, 5, 'Service 2', 'assets/img/adventure/adventure2.png'),
(9, 5, 'Service 3', 'assets/img/adventure/adventure3.png'),
(10, 6, 'Service 1', 'assets/img/adventure/adventure1.png'),
(11, 6, 'Service 2', 'assets/img/adventure/adventure2.png'),
(12, 6, 'Service 3', 'assets/img/adventure/adventure3.png'),
(13, 7, 'Service 1', 'assets/img/adventure/adventure1.png'),
(14, 7, 'Service 2', 'assets/img/adventure/adventure2.png'),
(15, 7, 'Service 3', 'assets/img/adventure/adventure3.png'),
(16, 8, 'Service 1', 'assets/img/adventure/adventure1.png'),
(17, 8, 'Service 2', 'assets/img/adventure/adventure2.png'),
(18, 8, 'Service 3', 'assets/img/adventure/adventure3.png'),
(19, 9, 'Service 1', 'assets/img/adventure/adventure1.png'),
(20, 9, 'Service 2', 'assets/img/adventure/adventure2.png'),
(21, 9, 'Service 3', 'assets/img/adventure/adventure3.png'),
(22, 10, 'Service 1', 'assets/img/adventure/adventure1.png'),
(23, 10, 'Service 2', 'assets/img/adventure/adventure2.png'),
(24, 10, 'Service 3', 'assets/img/adventure/adventure3.png'),
(25, 11, 'Service 1', 'assets/img/adventure/adventure1.png'),
(26, 11, 'Service 2', 'assets/img/adventure/adventure2.png'),
(27, 11, 'Service 3', 'assets/img/adventure/adventure3.png');

-- --------------------------------------------------------

--
-- Table structure for table `talents`
--

CREATE TABLE `talents` (
  `id` int(11) NOT NULL,
  `talent_name` varchar(255) NOT NULL,
  `talent_desc` text NOT NULL,
  `talent_thumb` varchar(255) NOT NULL,
  `ytb_link` varchar(255) NOT NULL,
  `twt_link` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `talent_seo_url` varchar(255) NOT NULL,
  `site_category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='for fashion talents and music artist';

--
-- Dumping data for table `talents`
--

INSERT INTO `talents` (`id`, `talent_name`, `talent_desc`, `talent_thumb`, `ytb_link`, `twt_link`, `fb_link`, `talent_seo_url`, `site_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Talent & Casting 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/img/fashion/talent1.png', '0', '0', '0', 'talent-casting-2', 6, '2019-07-08 08:49:09', '2019-07-08 08:48:25'),
(2, 'Talent & Casting 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/img/fashion/talent2.png', '0', '0', '0', 'talent-casting-1', 6, '2019-07-08 08:49:09', '2019-07-08 08:48:25'),
(3, 'Talent & Casting 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/img/fashion/talent3.png', '0', '0', '0', 'talent-casting-3', 6, '2019-07-08 08:49:09', '2019-07-08 08:48:25'),
(4, 'Talent & Casting 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/img/fashion/talent4.png', '0', '0', '0', 'talent-casting-4', 6, '2019-07-08 08:49:09', '2019-07-08 08:48:25'),
(5, 'Talent & Casting 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/img/fashion/talent1.png', '0', '0', '0', 'talent-casting-5', 6, '2019-07-08 08:49:09', '2019-07-08 08:48:25'),
(6, 'Talent & Casting 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/img/fashion/talent2.png', '0', '0', '0', 'talent-casting-6', 6, '2019-07-08 08:49:09', '2019-07-08 08:48:25'),
(7, 'Talent & Casting 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/img/fashion/talent3.png', '0', '0', '0', 'talent-casting-7', 6, '2019-07-08 08:49:09', '2019-07-08 08:48:25'),
(8, 'Talent & Casting 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/img/fashion/talent4.png', '0', '0', '0', 'talent-casting-8', 6, '2019-07-08 08:49:09', '2019-07-08 08:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `taste_comanies_reservation_sites`
--

CREATE TABLE `taste_comanies_reservation_sites` (
  `id` int(11) NOT NULL,
  `reserv_thumb` varchar(255) NOT NULL,
  `reserv_name` varchar(255) NOT NULL,
  `reserve_url` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taste_comanies_reservation_sites`
--

INSERT INTO `taste_comanies_reservation_sites` (`id`, `reserv_thumb`, `reserv_name`, `reserve_url`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'assets/img/taste/yelp.png', 'Yelp', 'https://www.chef.io/', 1, '2019-07-10 10:42:42', '2019-07-10 10:42:42'),
(2, 'assets/img/taste/open-table.png', 'Open Table', 'https://www.chef.io/', 1, '2019-07-10 10:42:42', '2019-07-10 10:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `taste_companies`
--

CREATE TABLE `taste_companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_seo_url` varchar(255) NOT NULL,
  `company_place_id` int(11) NOT NULL,
  `company_thumb` varchar(255) NOT NULL,
  `company_desc` text NOT NULL,
  `company_short_desc` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_web` varchar(255) NOT NULL,
  `company_phone` varchar(255) NOT NULL,
  `company_place` varchar(255) NOT NULL,
  `company_location` varchar(255) NOT NULL,
  `company_opened` varchar(255) NOT NULL,
  `company_fb` varchar(255) NOT NULL,
  `company_ytb` varchar(255) NOT NULL,
  `company_twt` varchar(255) NOT NULL,
  `company_on_main` int(1) NOT NULL,
  `company_book_url` varchar(255) NOT NULL,
  `company_cate_url` varchar(255) NOT NULL,
  `chef_thumb` varchar(255) NOT NULL,
  `chef_link` varchar(255) NOT NULL,
  `chef_menu_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taste_companies`
--

INSERT INTO `taste_companies` (`id`, `company_name`, `company_seo_url`, `company_place_id`, `company_thumb`, `company_desc`, `company_short_desc`, `company_email`, `company_web`, `company_phone`, `company_place`, `company_location`, `company_opened`, `company_fb`, `company_ytb`, `company_twt`, `company_on_main`, `company_book_url`, `company_cate_url`, `chef_thumb`, `chef_link`, `chef_menu_url`, `created_at`, `updated_at`) VALUES
(1, 'Restaurant 1', 'restaurant-1', 1, 'assets/img/taste/res1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'consectetur adipiscing elit', 'olsovka@gmail.com', 'www.website.com', '', '445 Mount Eden Road, Mount Eden Auckland', 'Location 1', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 1, 'https://www.resdiary.com/', 'https://www.takeout7.com/', 'assets/img/taste/reserve.png', 'https://www.royalcliff.com/restaurants/chef-profile', 'https://www.chilis.com/menu', '2019-07-10 06:12:35', '2019-06-15 06:32:42'),
(2, 'Coffee Shops and Bakery 1', 'coffee-shops-and-bakery-1', 2, 'assets/img/taste/coffee1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Location 2', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 1, '', '', '', '', '', '2019-07-09 11:22:44', '2019-06-15 06:32:42'),
(3, 'Food Truck 1', 'food-truck-1', 3, 'assets/img/taste/food1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Location 3', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 1, '', '', '', '', '', '2019-07-09 11:22:48', '2019-06-15 06:32:42'),
(4, 'Restaurant 2', 'restaurant-2', 1, 'assets/img/taste/res2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'consectetur adipiscing elit', 'olsovka@gmail.com', 'www.website.com', '', '445 Mount Eden Road, Mount Eden Auckland', 'Location 1', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:22:50', '2019-06-15 06:32:42'),
(5, 'Coffee Shops and Bakery 2', 'coffee-shops-and-bakery-2', 2, 'assets/img/taste/coffee2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Location 2', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:22:54', '2019-06-15 06:32:42'),
(6, 'Food Truck 2', 'food-truck-2', 3, 'assets/img/taste/food2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Location 3', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:22:58', '2019-06-15 06:32:42'),
(7, 'Restaurant 3', 'restaurant-3', 1, 'assets/img/taste/res3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'consectetur adipiscing elit', 'olsovka@gmail.com', 'www.website.com', '', '445 Mount Eden Road, Mount Eden Auckland', 'Location 2', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:23:03', '2019-06-15 06:32:42'),
(8, 'Coffee Shops and Bakery 3', 'сoffee-shops-and-bakery-3', 2, 'assets/img/taste/coffee3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Location 3', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:23:06', '2019-06-15 06:32:42'),
(9, 'Food Truck 3', 'food-truck-3', 3, 'assets/img/taste/food3.png\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Location 1', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:23:13', '2019-06-15 06:32:42'),
(10, 'Restaurant 4', 'restaurant-4', 1, 'assets/img/taste/res4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '', '445 Mount Eden Road, Mount Eden Auckland', 'Location 2', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:23:15', '2019-06-15 06:32:42'),
(11, 'Coffee Shops and Bakery 4', 'сoffee-shops-and-bakery-4', 2, 'assets/img/taste/coffee4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Location2', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', '', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:23:19', '2019-06-15 06:32:42'),
(12, 'Bay Crossings', 'bay-crossings-four', 3, 'assets/img/companies/bay_crossings.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consequat, mi a blandit sollicitudin, eros neque sodales felis, nec consequat ex urna eu ipsum. Fusce vel neque id tortor tempor pharetra eu non urna. Sed sed metus euismod, varius sem ac, cursus quam. Nulla eu orci sit amet purus aliquam gravida at lacinia odio. Duis non erat sem. Sed dignissim scelerisque libero, in ornare ligula aliquam vel. Fusce rutrum justo ac egestas malesuada. Pellentesque mi odio, suscipit in orci in, tincidunt semper enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Catherine felt trapped She had a key staff member request a rai', 'olsovka@gmail.com', 'www.website.com', '\r\n123 4567 8901 / 123 4567 8901', '445 Mount Eden Road, Mount Eden Auckland', 'Location 1', 'Monday - Friday 8AM - 9PM \r\nSaturday - Sunday 1PM - 10PM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 0, '', '', '', '', '', '2019-07-09 11:23:22', '2019-06-15 06:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `taste_companies_gallery`
--

CREATE TABLE `taste_companies_gallery` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `item_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taste_companies_gallery`
--

INSERT INTO `taste_companies_gallery` (`id`, `company_id`, `item_url`, `created_at`, `updated_at`) VALUES
(1, 2, 'assets/img/adventure/adventure1.png', '2019-07-09 13:39:21', '2019-06-18 11:25:06'),
(2, 2, 'assets/img/adventure/adventure2.png', '2019-07-09 13:39:22', '2019-06-18 11:25:06'),
(3, 2, 'assets/img/adventure/adventure3.png', '2019-07-09 13:39:24', '2019-06-18 11:25:15'),
(4, 2, 'assets/img/adventure/adventure4.png', '2019-07-09 13:39:25', '2019-06-18 11:25:06'),
(5, 2, 'assets/img/adventure/adventure5.png', '2019-07-09 13:39:26', '2019-06-18 11:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `taste_companies_services`
--

CREATE TABLE `taste_companies_services` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_thumb` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taste_companies_services`
--

INSERT INTO `taste_companies_services` (`id`, `company_id`, `service_name`, `service_thumb`, `created_at`, `updated_at`) VALUES
(1, 2, 'Service 1', 'assets/img/adventure/adventure1.png', '2019-07-09 13:39:30', '2019-06-17 17:06:54'),
(2, 2, 'Service 2', 'assets/img/adventure/adventure2.png', '2019-07-09 13:39:32', '2019-06-17 17:06:54'),
(3, 2, 'Service 3', 'assets/img/adventure/adventure3.png', '2019-07-09 13:39:33', '2019-06-17 17:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `taste_place_type`
--

CREATE TABLE `taste_place_type` (
  `id` int(11) NOT NULL,
  `place_thumb` varchar(255) NOT NULL COMMENT '0-restaurants 1- ',
  `place_name` varchar(255) NOT NULL,
  `place_seo_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taste_place_type`
--

INSERT INTO `taste_place_type` (`id`, `place_thumb`, `place_name`, `place_seo_url`, `created_at`, `updated_at`) VALUES
(1, 'assets/img/sliders/taste.png', 'Restaurants', 'restaurants', '2019-07-09 06:25:49', '2019-07-09 06:25:14'),
(2, 'assets/img/sliders/coffee.png', 'Coffee shops / bakeries', 'coffee-shops-bakeries', '2019-07-09 06:26:15', '2019-07-09 06:25:14'),
(3, 'assets/img/sliders/food-truck.png', 'Food Trucks', 'food-trucks', '2019-07-09 06:36:48', '2019-07-09 06:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `google_id`, `fb_id`, `password`, `roles`, `categories`, `remember_token`, `created_at`, `updated_at`, `phone`, `avatar`, `confirmed_at`, `confirmation_code`) VALUES
(1, 'Admin', 'admin@email.com', NULL, NULL, '$2y$10$K/KcnuOq6jO.wspMaZCBaOcIkhh2piG5.XC31i9Efa7ZjgPj8ZLVO', '1', '', '', '2019-06-03 04:49:40', '2019-11-02 01:53:44', NULL, 'public/avatars/5cf68af7b7e47.jpg', NULL, NULL),
(23, 'Jasara', 'jasara.navarro@theloopexclusive.com', NULL, NULL, '$2y$10$K/KcnuOq6jO.wspMaZCBaOcIkhh2piG5.XC31i9Efa7ZjgPj8ZLVO', '2', NULL, '', '2019-09-01 23:28:28', '2019-10-08 21:36:13', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_wishlist`
--

CREATE TABLE `users_wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_wishlist`
--

INSERT INTO `users_wishlist` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, '2019-06-13 04:22:45', '2019-06-13 04:22:45'),
(7, 1, 2, '2019-06-15 14:56:35', '2019-06-15 14:56:35'),
(8, 1, 14, '2019-07-06 14:08:52', '2019-07-06 14:08:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bag_items`
--
ALTER TABLE `bag_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_articles`
--
ALTER TABLE `blog_articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_seo_url` (`article_seo_url`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_seo_url` (`company_seo_url`);

--
-- Indexes for table `companies_to_sites_categories`
--
ALTER TABLE `companies_to_sites_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_type`
--
ALTER TABLE `companies_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_categories`
--
ALTER TABLE `explore_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_clients`
--
ALTER TABLE `explore_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cl_seo_url` (`cl_seo_url`);

--
-- Indexes for table `explore_clients_gallery`
--
ALTER TABLE `explore_clients_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_clients_services`
--
ALTER TABLE `explore_clients_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_filters`
--
ALTER TABLE `explore_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_filters_to_items`
--
ALTER TABLE `explore_filters_to_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_filters_value`
--
ALTER TABLE `explore_filters_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_kids`
--
ALTER TABLE `explore_kids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_types`
--
ALTER TABLE `explore_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `explore_type_seourl` (`explore_type_seourl`);

--
-- Indexes for table `explore_types_gallery`
--
ALTER TABLE `explore_types_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fashion_exclusive_products`
--
ALTER TABLE `fashion_exclusive_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fashion_must_products`
--
ALTER TABLE `fashion_must_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options_group`
--
ALTER TABLE `options_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pampers`
--
ALTER TABLE `pampers`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_url` (`seo_url`);

--
-- Indexes for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_categories_to_company`
--
ALTER TABLE `products_categories_to_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_categories_to_product`
--
ALTER TABLE `products_categories_to_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_categories_to_site_categories`
--
ALTER TABLE `products_categories_to_site_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_featured`
--
ALTER TABLE `products_featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_gallery_items`
--
ALTER TABLE `products_gallery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_rating`
--
ALTER TABLE `products_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_option_value`
--
ALTER TABLE `product_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_buy`
--
ALTER TABLE `role_buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talents`
--
ALTER TABLE `talents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `talent_seo_url` (`talent_seo_url`);

--
-- Indexes for table `taste_comanies_reservation_sites`
--
ALTER TABLE `taste_comanies_reservation_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taste_companies`
--
ALTER TABLE `taste_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_seo_url` (`company_seo_url`);

--
-- Indexes for table `taste_companies_gallery`
--
ALTER TABLE `taste_companies_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taste_companies_services`
--
ALTER TABLE `taste_companies_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taste_place_type`
--
ALTER TABLE `taste_place_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_wishlist`
--
ALTER TABLE `users_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bag`
--
ALTER TABLE `bag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bag_items`
--
ALTER TABLE `bag_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_articles`
--
ALTER TABLE `blog_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `companies_to_sites_categories`
--
ALTER TABLE `companies_to_sites_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies_type`
--
ALTER TABLE `companies_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `explore_categories`
--
ALTER TABLE `explore_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `explore_clients`
--
ALTER TABLE `explore_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `explore_clients_gallery`
--
ALTER TABLE `explore_clients_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=928;

--
-- AUTO_INCREMENT for table `explore_clients_services`
--
ALTER TABLE `explore_clients_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `explore_filters`
--
ALTER TABLE `explore_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `explore_filters_to_items`
--
ALTER TABLE `explore_filters_to_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `explore_filters_value`
--
ALTER TABLE `explore_filters_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `explore_kids`
--
ALTER TABLE `explore_kids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `explore_types`
--
ALTER TABLE `explore_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `explore_types_gallery`
--
ALTER TABLE `explore_types_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fashion_exclusive_products`
--
ALTER TABLE `fashion_exclusive_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fashion_must_products`
--
ALTER TABLE `fashion_must_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `options_group`
--
ALTER TABLE `options_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pampers`
--
ALTER TABLE `pampers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_categories_to_company`
--
ALTER TABLE `products_categories_to_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_categories_to_product`
--
ALTER TABLE `products_categories_to_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_categories_to_site_categories`
--
ALTER TABLE `products_categories_to_site_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_featured`
--
ALTER TABLE `products_featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products_gallery_items`
--
ALTER TABLE `products_gallery_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_rating`
--
ALTER TABLE `products_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_option_value`
--
ALTER TABLE `product_option_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_buy`
--
ALTER TABLE `role_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `talents`
--
ALTER TABLE `talents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `taste_comanies_reservation_sites`
--
ALTER TABLE `taste_comanies_reservation_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taste_companies`
--
ALTER TABLE `taste_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `taste_companies_gallery`
--
ALTER TABLE `taste_companies_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taste_companies_services`
--
ALTER TABLE `taste_companies_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taste_place_type`
--
ALTER TABLE `taste_place_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_wishlist`
--
ALTER TABLE `users_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
