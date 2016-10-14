-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 14 okt 2016 om 08:43
-- Serverversie: 10.1.16-MariaDB
-- PHP-versie: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craft`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_assetfiles`
--

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 1, 1, '20160912-145345-470-personeel.jpg', 'image', 270, 270, 23576, '2016-10-13 07:34:33', '2016-10-13 07:34:33', '2016-10-13 07:34:33', '52bb730f-0b56-458d-83e6-25a947157996'),
(7, 2, 2, 'GGB_old.jpg', 'image', 3000, 841, 1234090, '2016-10-13 09:44:46', '2016-10-13 09:31:12', '2016-10-13 09:44:50', '75e997a8-53b3-427e-87e1-013c71f42332'),
(11, 3, 3, '20160912-145345-470-personeel.jpg', 'image', 270, 270, 23576, '2016-10-13 12:46:51', '2016-10-13 12:46:51', '2016-10-13 12:46:51', '52083b2b-feca-497c-8f48-7f28397f85b6'),
(14, 3, 3, 'GGB_old.jpg', 'image', 3000, 841, 1234090, '2016-10-13 13:14:16', '2016-10-13 13:14:16', '2016-10-13 13:14:16', '70d5481a-c636-4650-934c-07b21c058e7b');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_assetfolders`
--

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'teamMembers', '', '2016-10-13 07:31:01', '2016-10-13 07:31:01', '0370b6d3-a48d-4af0-81c8-ce4c342dfa2f'),
(2, NULL, 2, 'banners', '', '2016-10-13 09:27:14', '2016-10-13 09:27:14', '005e318d-c2b3-4a7f-9970-c38df9030f85'),
(3, NULL, 3, 'site assets', '', '2016-10-13 12:43:43', '2016-10-13 12:43:43', 'b8006fe2-a047-4eae-94cd-f36aaa98dda2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_assetsources`
--

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'teamMembers', 'imagesTeamMembers', 'Local', '{"path":"images\\/","publicURLs":"","url":"\\/teamMembers\\/"}', 1, 21, '2016-10-13 07:31:01', '2016-10-13 09:27:29', 'fcedadb4-6b52-4f7d-8150-a30fa924057b'),
(2, 'banners', 'banners', 'Local', '{"path":"images\\/banners\\/","publicURLs":"1","url":"\\/images\\/banners\\/"}', 2, 24, '2016-10-13 09:27:14', '2016-10-13 09:47:06', '99defb8f-d293-492b-9d2f-602557641d72'),
(3, 'site assets', 'siteAssets', 'Local', '{"path":"images\\/siteAssets\\/","publicURLs":"1","url":"\\/images\\/siteAssets\\/"}', 3, 40, '2016-10-13 12:43:43', '2016-10-13 13:07:47', 'd79fdc4f-4358-4896-82b1-7908e8286207');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 7, 'GGB_old.jpg', NULL, '_1440x360_crop_center-center', 2, 1, 0, '2016-10-13 09:47:19', '2016-10-13 09:47:19', '2016-10-13 09:47:20', 'baefc567-0333-4a56-8a26-8316bf5cbd88'),
(2, 7, 'GGB_old.jpg', NULL, '_1440x260_crop_center-center', 2, 1, 0, '2016-10-13 09:55:43', '2016-10-13 09:55:43', '2016-10-13 09:55:43', 'a6ab1669-a6f8-4d16-821a-d318ff8fb2e4'),
(3, 11, '20160912-145345-470-personeel.jpg', NULL, '_600xAUTO_crop_center-center', 3, 1, 0, '2016-10-13 12:58:50', '2016-10-13 12:58:50', '2016-10-13 12:58:50', '07b16bec-dad5-466b-b644-cffb12003b41'),
(4, 11, '20160912-145345-470-personeel.jpg', NULL, '_360xAUTO_crop_center-center', 3, 1, 0, '2016-10-13 12:59:29', '2016-10-13 12:59:29', '2016-10-13 12:59:29', '0519c880-31c4-4c39-ba87-d5fbde9c2598'),
(5, 14, 'GGB_old.jpg', NULL, '_360xAUTO_crop_center-center', 3, 1, 0, '2016-10-13 13:14:18', '2016-10-13 13:14:18', '2016-10-13 13:14:19', 'f4b87810-8e79-4b8e-a53c-30ac1dda5965');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_categorygroups_i18n`
--

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_lastname` text COLLATE utf8_unicode_ci,
  `field_headerTitle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_shortDescription` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_lastname`, `field_headerTitle`, `field_shortDescription`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'nl', NULL, NULL, NULL, NULL, NULL, '2016-10-13 06:29:39', '2016-10-13 06:57:34', 'd2166238-3f34-4d99-9a15-e2bdc2720e1e'),
(2, 2, 'nl', 'Welcome to Localhost!', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, </p>\n\n<div>test</div>\n\n\n\n\n\n\n\n\n\n<p>sharp analyses, and astute opinions that will keep you coming back again and again.</p>', NULL, 'This is the header of the page', NULL, '2016-10-13 06:29:39', '2016-10-13 13:37:34', '6b90e190-a845-4c57-86e4-70c74bbb62f0'),
(3, 3, 'nl', 'We just installed Craft!', '<h5>Craft is the CMS that’s powering Localhost. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel &amp; Tonic. We can’t wait to dive in and see what it’s capable of!</h5>\n\n<p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<p>Craft: a nice alternative to Word, if you’re making a website.</p>', NULL, NULL, 'Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]', '2016-10-13 06:29:39', '2016-10-14 06:02:35', 'd449b2c0-2df6-4a50-893f-9b9006afbcb9'),
(4, 4, 'nl', 'Jeroen-Renier', NULL, 'abc', NULL, NULL, '2016-10-13 07:13:25', '2016-10-13 07:34:46', '3810261a-ff19-4935-9177-1faf5774fb4c'),
(5, 5, 'nl', '20160912 145345 470 Personeel', NULL, NULL, NULL, NULL, '2016-10-13 07:34:33', '2016-10-13 07:34:33', '1d12f0ab-677b-4a1e-91ab-6d307ce3b0b1'),
(6, 7, 'nl', 'Ggb Old', NULL, NULL, NULL, NULL, '2016-10-13 09:31:12', '2016-10-13 09:44:50', '191cf717-0d03-4a37-b738-b7aca9aba050'),
(9, 10, 'nl', 'test', '<p>test</p>', NULL, NULL, NULL, '2016-10-13 11:38:05', '2016-10-13 11:38:05', 'b9b4e44a-586b-4584-8ad0-f0e29aa0c918'),
(10, 11, 'nl', '20160912 145345 470 Personeel', NULL, NULL, NULL, NULL, '2016-10-13 12:46:51', '2016-10-13 12:46:51', 'b6512883-07e2-449f-9104-0c93cb147d47'),
(11, 14, 'nl', 'Ggb Old', NULL, NULL, NULL, NULL, '2016-10-13 13:14:16', '2016-10-13 13:14:16', '533191ed-c9e2-47c1-8d5b-5fee98f691b5'),
(12, 17, 'nl', 'We just installed Craft2!', '<h5>Craft is the CMS that’s powering Localhost. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel &amp; Tonic. We can’t wait to dive in and see what it’s capable of!</h5>\n\n<p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<p>Craft: a nice alternative to Word, if you’re making a website.</p>', NULL, NULL, 'Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]', '2016-10-13 13:45:58', '2016-10-14 06:10:04', '4e348675-f645-4c3a-9339-eb1cdb26c3a0'),
(13, 26, 'nl', 'Testpagina', NULL, NULL, NULL, NULL, '2016-10-14 06:03:34', '2016-10-14 06:04:41', '406dbe8e-f3c0-4577-8cbe-5f1ae3f9a6ff'),
(14, 28, 'nl', NULL, NULL, NULL, NULL, NULL, '2016-10-14 06:39:28', '2016-10-14 06:39:28', 'ca01e01e-b946-407c-b489-a4c300cbf2c6');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_elementindexsettings`
--

INSERT INTO `craft_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Asset', '{"sourceOrder":[["key","folder:1"],["key","folder:2"],["heading","test"]],"sources":{"folder:2":{"tableAttributes":{"1":"filename","2":"size","3":"dateModified"}}}}', '2016-10-13 09:46:03', '2016-10-13 09:46:10', '6cbc91ef-2ef3-4b9d-9e6a-c2e58f8dd854');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2016-10-13 06:29:39', '2016-10-13 06:57:34', '11b48223-fadb-497b-979e-3203e8fdbc62'),
(2, 'Entry', 1, 0, '2016-10-13 06:29:39', '2016-10-13 13:37:34', '3ff2de01-522a-4c65-9a93-7f69807e8117'),
(3, 'Entry', 1, 0, '2016-10-13 06:29:39', '2016-10-14 06:02:35', 'd23a1050-47e5-45d5-ab16-edfd70e483c1'),
(4, 'Entry', 1, 0, '2016-10-13 07:13:25', '2016-10-13 07:34:46', 'a84b9af9-01ca-4c1e-8993-cdd6927a895e'),
(5, 'Asset', 1, 0, '2016-10-13 07:34:33', '2016-10-13 07:34:33', '600eb51c-6960-457c-ba26-863e950534fb'),
(6, 'MatrixBlock', 1, 0, '2016-10-13 07:34:46', '2016-10-13 07:34:46', 'ffbc3d3f-c259-488f-90d0-41082fc32eb9'),
(7, 'Asset', 1, 0, '2016-10-13 09:31:12', '2016-10-13 09:44:50', 'a939087b-e2e2-4237-994c-6689e2b5af87'),
(10, 'Entry', 1, 0, '2016-10-13 11:38:05', '2016-10-13 11:38:05', '2a700b7f-fc06-4f0e-80ff-7aca6a7f8391'),
(11, 'Asset', 1, 0, '2016-10-13 12:46:51', '2016-10-13 12:46:51', '759104ab-fae2-4dd4-8032-4e77aa34d1d7'),
(12, 'MatrixBlock', 1, 0, '2016-10-13 12:48:17', '2016-10-14 06:02:35', '85439d28-32d4-4804-8802-b4943b7df007'),
(13, 'MatrixBlock', 1, 0, '2016-10-13 12:48:17', '2016-10-14 06:02:35', 'a383981f-b92c-46d5-91c6-ce9b7abce838'),
(14, 'Asset', 1, 0, '2016-10-13 13:14:16', '2016-10-13 13:14:16', '000fe90b-ff8b-4394-8acc-14291ca31eb7'),
(15, 'MatrixBlock', 1, 0, '2016-10-13 13:30:44', '2016-10-14 06:02:35', '94efe3c5-93d2-4832-af42-336c0bec35d7'),
(17, 'Entry', 1, 0, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '772859c7-a8cf-46ed-87e1-e8cd5070ef77'),
(18, 'MatrixBlock', 1, 0, '2016-10-13 13:45:58', '2016-10-14 06:10:04', 'cd89b130-72ee-420b-ad3a-48191e835da7'),
(19, 'MatrixBlock', 1, 0, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '2cb11b2f-11b8-4c7e-8320-69d4414e60e1'),
(20, 'MatrixBlock', 1, 0, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '1feef332-8a1c-44f1-974c-e42aa24af303'),
(21, 'MatrixBlock', 1, 0, '2016-10-13 15:47:19', '2016-10-14 06:10:04', 'd0f620f4-81ec-4036-8d72-ea8744ab3358'),
(22, 'MatrixBlock', 1, 0, '2016-10-13 16:09:27', '2016-10-14 06:02:35', 'caf70d96-366c-4852-bf92-ac4ac2845eae'),
(23, 'MatrixBlock', 1, 0, '2016-10-13 16:11:30', '2016-10-14 06:02:35', 'a81323e7-95f8-4410-b8b4-9c97d79c5541'),
(24, 'MatrixBlock', 1, 0, '2016-10-13 16:15:54', '2016-10-14 06:02:35', '929043f9-892a-4d3c-8232-9cf2134717aa'),
(25, 'MatrixBlock', 1, 0, '2016-10-14 06:02:35', '2016-10-14 06:02:35', '592e9b28-1017-40b7-ad4f-22f171e4edcf'),
(26, 'Entry', 1, 0, '2016-10-14 06:03:34', '2016-10-14 06:04:41', 'e9838892-2b3a-4b53-82f3-c7cb520bf535'),
(27, 'MatrixBlock', 1, 0, '2016-10-14 06:04:41', '2016-10-14 06:04:41', '5ad1befd-fb73-42ed-b475-e7124047c998'),
(28, 'User', 1, 0, '2016-10-14 06:39:28', '2016-10-14 06:39:28', 'fda15dd5-98b7-48c6-a31d-b5214a381271');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_elements_i18n`
--

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'nl', '', NULL, 1, '2016-10-13 06:29:39', '2016-10-13 06:57:34', '22a7185e-4b30-42b0-91b1-58502db5840b'),
(2, 2, 'nl', 'homepage', '__home__', 1, '2016-10-13 06:29:39', '2016-10-13 13:37:34', 'e114612b-35b4-4e1c-956f-60eb9bbb13f4'),
(3, 3, 'nl', 'we-just-installed-craft', 'news/2016/we-just-installed-craft', 1, '2016-10-13 06:29:39', '2016-10-14 06:02:35', '0fb8f9bc-b084-4cc2-90fa-9f89d6ce81b4'),
(4, 4, 'nl', 'jeroen-renier', 'team-members/jeroen-renier', 1, '2016-10-13 07:13:25', '2016-10-13 07:34:46', 'a8fa9d5e-b2bb-4ca0-bb29-54bbd805d5c5'),
(5, 5, 'nl', '20160912-145345-470-personeel', NULL, 1, '2016-10-13 07:34:33', '2016-10-13 07:34:33', '0050ae2e-aabb-4c2d-ac79-fe0d199365e0'),
(6, 6, 'nl', '', NULL, 1, '2016-10-13 07:34:46', '2016-10-13 07:34:46', 'cbb3ba83-6062-4b40-be11-8acc398aeed2'),
(7, 7, 'nl', 'ggb-old', NULL, 1, '2016-10-13 09:31:12', '2016-10-13 09:44:50', '56c51322-3818-4c9d-82e3-e537eb55da9d'),
(10, 10, 'nl', 'test', 'news/2016/test', 1, '2016-10-13 11:38:05', '2016-10-13 11:38:05', '91d33cb3-3f2c-4772-803b-d1e1b87ec885'),
(11, 11, 'nl', '20160912-145345-470-personeel', NULL, 1, '2016-10-13 12:46:51', '2016-10-13 12:46:51', '132b23a5-8de2-4620-a621-412eae25dd86'),
(12, 12, 'nl', '', NULL, 1, '2016-10-13 12:48:17', '2016-10-14 06:02:35', '6708ffc4-afba-40b9-8a16-240d981ea19b'),
(13, 13, 'nl', '', NULL, 1, '2016-10-13 12:48:17', '2016-10-14 06:02:35', '720d055c-7d24-4372-880f-ab59cdb47b46'),
(14, 14, 'nl', 'ggb-old', NULL, 1, '2016-10-13 13:14:16', '2016-10-13 13:14:16', '78cb6eee-37f6-43fb-88ca-c3bf3f685d4a'),
(15, 15, 'nl', '', NULL, 1, '2016-10-13 13:30:44', '2016-10-14 06:02:35', '9f4918c7-7f44-4edd-a960-73ce6f345424'),
(17, 17, 'nl', 'we-just-installed-craft-1', 'news/2016/we-just-installed-craft-1', 1, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '39d5b06d-e732-482a-8262-a620b75a854e'),
(18, 18, 'nl', '', NULL, 1, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '48542bbe-da45-4bf2-b668-f397d53d5c59'),
(19, 19, 'nl', '', NULL, 1, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '7793f6dd-eaac-4d7f-a4b1-26d8ef8cfd8d'),
(20, 20, 'nl', '', NULL, 1, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '142f0006-a8ee-4b3a-9693-44c927fe1ce8'),
(21, 21, 'nl', '', NULL, 1, '2016-10-13 15:47:19', '2016-10-14 06:10:04', '833626f3-e02c-44fc-aa4e-648537e3383e'),
(22, 22, 'nl', '', NULL, 1, '2016-10-13 16:09:27', '2016-10-14 06:02:35', 'a7657b85-bb61-4bc8-b306-a2fb36777452'),
(23, 23, 'nl', '', NULL, 1, '2016-10-13 16:11:30', '2016-10-14 06:02:35', 'a6e8d07c-3a7e-4f80-997d-001d3417867c'),
(24, 24, 'nl', '', NULL, 1, '2016-10-13 16:15:54', '2016-10-14 06:02:35', '16970a2a-3d49-4358-b50c-33cfff0445fd'),
(25, 25, 'nl', '', NULL, 1, '2016-10-14 06:02:35', '2016-10-14 06:02:35', '38f4bb40-9964-4c71-bf99-4150674e3b7b'),
(26, 26, 'nl', 'testpagina', 'testpagina', 1, '2016-10-14 06:03:34', '2016-10-14 06:04:41', '02d0ef4d-2f06-428d-9aff-83b78b001a57'),
(27, 27, 'nl', '', NULL, 1, '2016-10-14 06:04:41', '2016-10-14 06:04:41', 'dab69119-2496-4e3c-aa75-deed67776e17'),
(28, 28, 'nl', '', NULL, 1, '2016-10-14 06:39:28', '2016-10-14 06:39:28', '26872652-006d-460d-ac37-00abfa1c4a3b');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_emailmessages`
--

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, NULL, '2016-10-13 06:29:39', NULL, '2016-10-13 06:29:39', '2016-10-13 13:37:34', 'a3f053dd-4e89-4e44-89b0-2dc651c56f42'),
(3, 2, 2, 1, '2016-10-12 06:29:00', NULL, '2016-10-13 06:29:39', '2016-10-14 06:02:36', '8ffb505d-45ea-44c3-af50-3e9f1d6b4425'),
(4, 4, 4, 1, '2016-10-13 07:13:00', NULL, '2016-10-13 07:13:25', '2016-10-13 07:34:46', 'fab8a426-ccc9-44d5-9bfd-6c047d735392'),
(10, 2, 2, 1, '2016-10-13 11:38:05', NULL, '2016-10-13 11:38:05', '2016-10-13 11:38:05', 'ab93994b-c69f-45ee-a72a-969a0bab4d3c'),
(17, 2, 2, 1, '2016-10-15 13:00:00', NULL, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '5ed797bb-bde0-4525-bb8b-7c486fa08f1f'),
(26, 5, NULL, NULL, '2016-10-14 06:03:34', NULL, '2016-10-14 06:03:34', '2016-10-14 06:04:41', 'a6dd4ed9-d767-4131-9904-97c2716d20e9');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_entrydrafts`
--

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 25, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2016-10-13 06:29:39', '2016-10-13 11:27:54', '414d0d2d-956e-471a-8c5f-ef84f732988a'),
(2, 2, 51, 'News', 'news', 1, 'Titel', NULL, 1, '2016-10-13 06:29:39', '2016-10-13 15:47:00', '7bdfd38a-65a6-4b63-b70b-9c258a695e30'),
(4, 4, 13, 'Team Members', 'teamMembers', 1, 'Titel', NULL, 1, '2016-10-13 07:04:31', '2016-10-13 07:27:22', '3e7b42b2-842b-4941-98d3-31606358eb26'),
(6, 5, 57, 'Testpagina', 'testpagina', 0, NULL, '{section.name|raw}', 1, '2016-10-14 06:03:34', '2016-10-14 06:04:25', '7b14fdbd-4a06-4795-a66a-449601e0c18a');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_entryversions`
--

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) UNSIGNED NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'nl', 1, NULL, '{"typeId":"1","authorId":null,"title":"Homepage","slug":"homepage","postDate":1476340179,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-10-13 06:29:39', '2016-10-13 06:29:39', '9ed1b873-ce5b-4fc1-ab2a-f4de4a57e6dd'),
(2, 2, 1, 1, 'nl', 2, NULL, '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1476340179,"expiryDate":null,"enabled":"1","parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2016-10-13 06:29:39', '2016-10-13 06:29:39', '4e58c484-caf2-41d4-b8c0-fd615e12f2fb'),
(3, 3, 2, 1, 'nl', 1, NULL, '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476340179,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-10-13 06:29:39', '2016-10-13 06:29:39', '643ca376-0df2-4412-b601-e09791627739'),
(4, 4, 4, 1, 'nl', 1, '', '{"typeId":null,"authorId":"1","title":"Jeroen-Renier","slug":"jeroen-renier","postDate":1476342805,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"3":"Jeroen"}}', '2016-10-13 07:13:25', '2016-10-13 07:13:25', 'b0017050-f330-4749-8e4c-a0ee16fae358'),
(5, 4, 4, 1, 'nl', 2, '', '{"typeId":"4","authorId":"1","title":"Jeroen-Renier","slug":"jeroen-renier","postDate":1476342780,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"3":"Jeroen","4":"abc"}}', '2016-10-13 07:23:14', '2016-10-13 07:23:14', '76a369c5-5728-49c5-9055-7ac142c13232'),
(6, 4, 4, 1, 'nl', 3, '', '{"typeId":"4","authorId":"1","title":"Jeroen-Renier","slug":"jeroen-renier","postDate":1476342780,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"5":{"new1":{"type":"general","enabled":"1","fields":{"info":"<p>this is my text<\\/p>","image":["5"]}}},"3":"Jeroen","4":"abc"}}', '2016-10-13 07:34:46', '2016-10-13 07:34:46', '2d00f1b9-ba91-4501-b765-429f2a626526'),
(7, 2, 1, 1, 'nl', 3, '', '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1476340179,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":["7"],"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2016-10-13 09:37:30', '2016-10-13 09:37:30', '9a92aca1-5668-4113-a045-0b8d82b1c1c5'),
(8, 2, 1, 1, 'nl', 4, '', '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1476340179,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":["7"],"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, <div>test<\\/div>sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2016-10-13 11:03:08', '2016-10-13 11:03:08', '179eac29-eba3-4c20-88c3-7ffef56e70b3'),
(9, 2, 1, 1, 'nl', 5, '', '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1476340179,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":["7"],"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, <\\/p>\\r\\n\\r\\n<div>test<\\/div>\\r\\n\\r\\n<p>sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","9":"This is the header of the page"}}', '2016-10-13 11:29:38', '2016-10-13 11:29:38', '468fd9e8-c2fa-42f7-bebf-2e8be9acc836'),
(10, 2, 1, 1, 'nl', 6, '', '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1476340179,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":["7"],"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, <\\/p>\\r\\n\\r\\n<div>test<\\/div>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","9":"This is the header of the page"}}', '2016-10-13 11:32:56', '2016-10-13 11:32:56', '2cd9fcb6-cf70-4714-8590-b4a37e35178b'),
(11, 10, 2, 1, 'nl', 1, '', '{"typeId":null,"authorId":"1","title":"test","slug":"test","postDate":1476358685,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>test<\\/p>","2":""}}', '2016-10-13 11:38:05', '2016-10-13 11:38:05', 'fac5b461-b5c1-4bee-8126-483e2c25d1bc'),
(12, 3, 2, 1, 'nl', 2, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476426540,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","2":""}}', '2016-10-13 11:50:15', '2016-10-13 11:50:15', '2ac4ae43-f17d-46bb-bc4b-e54cd2410c73'),
(13, 3, 2, 1, 'nl', 3, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n\\r\\n\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","2":""}}', '2016-10-13 11:50:37', '2016-10-13 11:50:37', '768e167a-f6f1-4d04-846c-dfbd0ede905a'),
(14, 3, 2, 1, 'nl', 4, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","2":""}}', '2016-10-13 11:56:59', '2016-10-13 11:56:59', 'ece26519-315f-4c6d-a42a-f915ce1f0739'),
(15, 3, 2, 1, 'nl', 5, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"new1":{"type":"text","enabled":"1","fields":{"text":"<p>qsdfqsdfqsdfqsdfqsdfqsdf<\\/p>","position":"left"}},"new2":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"center"}}},"10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 12:48:17', '2016-10-13 12:48:17', '0a972267-b14b-402b-9988-63bccda6cefd'),
(16, 3, 2, 1, 'nl', 6, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"12":{"type":"text","enabled":"1","fields":{"text":"<p>qsdfqsdfqsdfqsdfqsdfqsdf<\\/p>","position":"left"}},"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"center"}}},"1":"<p>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:06:18', '2016-10-13 13:06:18', 'ef009371-7527-4b03-80d7-bf3156d42edf'),
(17, 3, 2, 1, 'nl', 7, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p>made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>","position":"left"}},"new1":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}},"new2":{"type":"image","enabled":"1","fields":{"image":["14"],"position":"left"}}},"1":"<p>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:30:44', '2016-10-13 13:30:44', '6ea7cc4b-530f-4485-8b83-0ddf039bec41'),
(18, 3, 2, 1, 'nl', 8, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p>made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<p>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:31:11', '2016-10-13 13:31:11', 'ab65f9b8-398c-4cc2-92bf-ee6139c21efd'),
(19, 2, 1, 1, 'nl', 7, '', '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1476340179,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":["7"],"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, <\\/p>\\r\\n\\r\\n<div>test<\\/div>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","9":"This is the header of the page"}}', '2016-10-13 13:37:34', '2016-10-13 13:37:34', '5842927f-2d9b-4f5b-8f7b-ff6ea9932e20'),
(20, 3, 2, 1, 'nl', 9, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p><p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<span><\\/span><br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5><p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:40:13', '2016-10-13 13:40:13', 'ac135619-4609-43fa-bc7a-2ee51af1054a'),
(21, 17, 2, 1, 'nl', 1, '', '{"typeId":null,"authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft-1","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:45:58', '2016-10-13 13:45:58', '0ab35a28-1e73-4139-bf57-45f4a0575a27'),
(22, 17, 2, 1, 'nl', 2, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:46:03', '2016-10-13 13:46:03', '5e7f860e-b245-4ce2-9b91-b2f77bd40421'),
(23, 17, 2, 1, 'nl', 3, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476340140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:46:14', '2016-10-13 13:46:14', 'b527dcb9-d628-4c96-92de-8a8bf4e7a4d0'),
(24, 17, 2, 1, 'nl', 4, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476376200,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:47:00', '2016-10-13 13:47:00', '46b41b10-ce83-4773-ac66-bad0e346f67b'),
(25, 17, 2, 1, 'nl', 5, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476372600,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:47:47', '2016-10-13 13:47:47', 'bfcaf544-efa0-41a4-81b0-c7e37a44d9de'),
(26, 17, 2, 1, 'nl', 6, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476372600,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:48:07', '2016-10-13 13:48:07', 'bbff8d30-5cc2-4639-bbdb-f0c6d7c31474'),
(27, 17, 2, 1, 'nl', 7, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476286200,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:49:25', '2016-10-13 13:49:25', '8d9b5b8b-2d24-4c70-bea1-93514b191cc7'),
(28, 17, 2, 1, 'nl', 8, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476324000,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:49:38', '2016-10-13 13:49:38', 'f2ee90d1-7a2d-430c-b538-d4d9167018c1'),
(29, 17, 2, 1, 'nl', 9, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476363600,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 13:49:55', '2016-10-13 13:49:55', 'b8fce8e4-ceae-4745-be23-82e02eb4df84'),
(30, 17, 2, 1, 'nl', 10, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476363600,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]"}}', '2016-10-13 14:06:35', '2016-10-13 14:06:35', 'acecbb0c-39ac-4bd8-99b1-75b50744c844'),
(31, 17, 2, 1, 'nl', 11, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476363600,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"new1":{"type":"text","enabled":"1","fields":{"text":"<p>qsdfjklqjsdfmqsdf<\\/p><p>qsdfqsd<\\/p><p>fqd<\\/p><p>sfqdsf<\\/p>"}}}}}', '2016-10-13 15:47:19', '2016-10-13 15:47:19', '21657049-ba9c-4bad-baf9-f1abc738755e'),
(32, 3, 2, 1, 'nl', 10, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"new1":{"type":"text","enabled":"1","fields":{"text":"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\"de Finibus Bonorum et Malorum\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\"Lorem ipsum dolor sit amet..\\", comes from a line in section 1.10.32.<\\/p>"}}}}}', '2016-10-13 16:09:27', '2016-10-13 16:09:27', 'f4b5575e-2b37-42b3-8f67-09cf7e395125'),
(33, 3, 2, 1, 'nl', 11, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"22":{"type":"text","enabled":"1","fields":{"text":"<p><strong>Contrary to popular <\\/strong>belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}}}}}', '2016-10-13 16:10:13', '2016-10-13 16:10:13', 'abc14f78-1143-4971-8a16-209e01c256ae'),
(34, 3, 2, 1, 'nl', 12, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"22":{"type":"text","enabled":"1","fields":{"text":"<p><strong>Contrary to popular <\\/strong>belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}},"new1":{"type":"image","enabled":"1","fields":{"image":["5"]}}}}}', '2016-10-13 16:11:30', '2016-10-13 16:11:30', 'cb38c763-19b8-4c40-ad5d-90f53bfbcd19');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(35, 3, 2, 1, 'nl', 13, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"22":{"type":"text","enabled":"1","fields":{"text":"<p><strong>Contrary to popular <\\/strong>belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}},"23":{"type":"image","enabled":"1","fields":{"image":["11"]}}}}}', '2016-10-13 16:13:55', '2016-10-13 16:13:55', '5dc0fbe7-db38-4282-a262-e3cdfb339dfc'),
(36, 3, 2, 1, 'nl', 14, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p><p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"23":{"type":"image","enabled":"1","fields":{"image":["11"]}},"22":{"type":"text","enabled":"1","fields":{"text":"<p><strong>Contrary to popularr&nbsp;<\\/strong>belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}}}}}', '2016-10-13 16:15:26', '2016-10-13 16:15:26', '511fb08a-4910-414c-9dc2-38e437075489'),
(37, 3, 2, 1, 'nl', 15, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"new1":{"type":"text","enabled":"1","fields":{"text":"<p>Contrary to popularr&nbsp;belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}},"23":{"type":"image","enabled":"1","fields":{"image":["11"]}},"22":{"type":"text","enabled":"1","fields":{"text":"<p><strong>Contrary to popularr&nbsp;<\\/strong>belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}}}}}', '2016-10-13 16:15:54', '2016-10-13 16:15:54', '55e3fcb2-f365-47b4-a430-43a49017f3c6'),
(38, 3, 2, 1, 'nl', 16, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"24":{"type":"text","enabled":"1","fields":{"text":"<p>Contrary to popularr&nbsp;belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}},"23":{"type":"image","enabled":"1","fields":{"image":["11"]}},"22":{"type":"text","enabled":"1","fields":{"text":"<p><strong>Contrary to popularr&nbsp;<\\/strong>belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}}}}}', '2016-10-13 16:16:04', '2016-10-13 16:16:04', 'b4994e3b-208b-4987-a6f0-163a7f27fc40'),
(39, 3, 2, 1, 'nl', 17, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1476253740,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"13":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"12":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"15":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"24":{"type":"text","enabled":"1","fields":{"text":"<p>Contrary to popularr&nbsp;belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}},"23":{"type":"image","enabled":"1","fields":{"image":["11"]}},"22":{"type":"text","enabled":"1","fields":{"text":"<p><strong>Contrary to popularr&nbsp;<\\/strong>belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.<\\/p>"}},"new1":{"type":"text","enabled":"1","fields":{"text":"<p>slkdmfqsdjflkmqsdjf<\\/p>"}}}}}', '2016-10-14 06:02:36', '2016-10-14 06:02:36', '35e4ea86-341e-40fe-8205-621497a52bf4'),
(40, 26, 5, 1, 'nl', 1, NULL, '{"typeId":"6","authorId":null,"title":"Testpagina","slug":"testpagina","postDate":1476425014,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-10-14 06:03:34', '2016-10-14 06:03:34', '49dd7f1c-f4b8-46a1-9e34-5d3b5f7045e0'),
(41, 26, 5, 1, 'nl', 2, '', '{"typeId":null,"authorId":null,"title":"Testpagina","slug":"testpagina","postDate":1476425014,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"new1":{"type":"text","enabled":"1","fields":{"text":"<p>qsdlfjqlmksdfjklmqjsdlkfjqslmkdfj<\\/p>","position":"left"}}}}}', '2016-10-14 06:04:41', '2016-10-14 06:04:41', 'ae719329-f0a8-4b93-bda0-73ede337be1d'),
(42, 17, 2, 1, 'nl', 12, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft2!","slug":"we-just-installed-craft-1","postDate":1476536400,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"11":{"18":{"type":"image","enabled":"1","fields":{"image":["11"],"position":"left"}},"19":{"type":"text","enabled":"1","fields":{"text":"<p><br><\\/p>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br><\\/p>","position":"left"}},"20":{"type":"text","enabled":"1","fields":{"text":"<p>abc<\\/p>","position":"left"}}},"1":"<h5>Craft is the CMS that\\u2019s powering Localhost. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/h5>\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","16":"","10":"Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. [...]","17":{"21":{"type":"text","enabled":"1","fields":{"text":"<p>qsdfjklqjsdfmqsdf<\\/p>\\r\\n\\r\\n<p>qsdfqsd<\\/p>\\r\\n\\r\\n<p>fqd<\\/p>\\r\\n\\r\\n<p>sfqdsf<\\/p>"}}}}}', '2016-10-14 06:10:04', '2016-10-14 06:10:04', '89dc80a4-892e-4f89-869a-36e7557af5c9');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2016-10-13 06:29:39', '2016-10-13 06:29:39', 'e101842d-952e-412c-b73b-5e63f9e28bba'),
(3, 'TeamMember', '2016-10-13 07:10:27', '2016-10-13 07:10:27', 'c5ff0031-9a6d-4f42-957a-d1f7565b6b2c'),
(5, 'News', '2016-10-13 11:54:11', '2016-10-13 11:54:11', 'ec134738-50d0-43d2-92ad-7f327a10595f');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(9, 13, 7, 4, 0, 2, '2016-10-13 07:27:22', '2016-10-13 07:27:22', 'd0e1663d-6010-471b-a2ea-ed96e66e75df'),
(10, 13, 7, 5, 0, 3, '2016-10-13 07:27:22', '2016-10-13 07:27:22', '51bce73e-d5d7-4f18-a913-2b8a10140d52'),
(13, 16, 9, 6, 0, 1, '2016-10-13 07:31:39', '2016-10-13 07:31:39', '4be6ad65-7bd2-487e-9c31-76a7c16ec272'),
(14, 16, 9, 7, 0, 2, '2016-10-13 07:31:39', '2016-10-13 07:31:39', '8c8316df-d251-44ec-9954-801b28b144dd'),
(17, 25, 12, 9, 0, 1, '2016-10-13 11:27:54', '2016-10-13 11:27:54', '0bb68cd0-0fcc-4d2d-a72d-a01ded49ff39'),
(18, 25, 12, 1, 1, 2, '2016-10-13 11:27:54', '2016-10-13 11:27:54', '54025909-d035-4e1d-937d-fe4fc4c4d0ea'),
(19, 25, 13, 8, 0, 1, '2016-10-13 11:27:54', '2016-10-13 11:27:54', 'ca0c3e8d-43b6-4184-b2ba-a64dcce564ef'),
(50, 45, 33, 12, 0, 1, '2016-10-13 13:44:41', '2016-10-13 13:44:41', '5d51605c-fefe-4579-9944-e5af52111d29'),
(51, 45, 33, 13, 0, 2, '2016-10-13 13:44:41', '2016-10-13 13:44:41', '25d1e054-1b87-4bc5-850f-62b99629f9b5'),
(52, 46, 34, 14, 0, 1, '2016-10-13 13:44:41', '2016-10-13 13:44:41', 'ba1ba61c-821b-4778-bcc1-140a7c8eeb69'),
(53, 46, 34, 15, 0, 2, '2016-10-13 13:44:41', '2016-10-13 13:44:41', 'c4c6c491-204c-4f13-89ea-884e9e7db9b2'),
(61, 51, 40, 1, 0, 1, '2016-10-13 15:47:00', '2016-10-13 15:47:00', '657d5f14-8c80-411b-b32a-9fac0c78d952'),
(62, 51, 40, 11, 0, 2, '2016-10-13 15:47:00', '2016-10-13 15:47:00', '7bbf1725-6e73-4484-ba8d-2a8926baa16c'),
(63, 51, 40, 16, 0, 3, '2016-10-13 15:47:00', '2016-10-13 15:47:00', '786060f6-93c5-4699-985a-5b3bd8f9eb6f'),
(64, 51, 41, 10, 1, 1, '2016-10-13 15:47:00', '2016-10-13 15:47:00', '47cb618d-449e-4bbe-ac09-947ce1f942e3'),
(65, 51, 42, 17, 0, 1, '2016-10-13 15:47:00', '2016-10-13 15:47:00', '856ee1d7-af56-4465-95dd-f02bd7b5e0e9'),
(67, 53, 44, 18, 0, 1, '2016-10-13 16:11:12', '2016-10-13 16:11:12', 'd6d7da65-86a5-4d92-99e4-fc93785b5f81'),
(68, 54, 45, 19, 0, 1, '2016-10-13 16:11:12', '2016-10-13 16:11:12', '5f21f513-c7d3-4bdf-979d-911ad7de81f2'),
(70, 57, 47, 11, 0, 1, '2016-10-14 06:04:25', '2016-10-14 06:04:25', '92334603-e4b6-4b20-888c-2eb66a85dac9');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2016-10-13 06:29:39', '2016-10-13 06:29:39', '1d3f6dad-ba8f-4c36-bec7-da16f7bfcf0a'),
(13, 'Entry', '2016-10-13 07:27:22', '2016-10-13 07:27:22', 'c8e149a4-e8b1-4317-a0cc-1222ae888a4c'),
(16, 'MatrixBlock', '2016-10-13 07:31:39', '2016-10-13 07:31:39', '9ff4fdc2-5a9b-432a-af6d-0c88f98f7a62'),
(21, 'Asset', '2016-10-13 09:27:29', '2016-10-13 09:27:29', '75680c28-7756-424c-86fb-a4e24db75912'),
(24, 'Asset', '2016-10-13 09:47:06', '2016-10-13 09:47:06', '8dfa023a-f075-48e2-b624-6b06aa4f716a'),
(25, 'Entry', '2016-10-13 11:27:54', '2016-10-13 11:27:54', 'cee68ee7-cd41-416a-8c5f-dd9c98d81972'),
(40, 'Asset', '2016-10-13 13:07:47', '2016-10-13 13:07:47', 'e8110db5-10d0-4903-ae1a-02651347875f'),
(45, 'MatrixBlock', '2016-10-13 13:44:41', '2016-10-13 13:44:41', '725f1883-05f0-4866-9b27-c25e6905fb04'),
(46, 'MatrixBlock', '2016-10-13 13:44:41', '2016-10-13 13:44:41', 'ab7b8504-6a12-4c94-a675-fa7c2eea80bd'),
(51, 'Entry', '2016-10-13 15:47:00', '2016-10-13 15:47:00', '327d0c9c-d657-46c8-a7dc-d6d7985a10ef'),
(53, 'MatrixBlock', '2016-10-13 16:11:12', '2016-10-13 16:11:12', '614e2857-40ba-4e20-88fc-4eb8dcae318a'),
(54, 'MatrixBlock', '2016-10-13 16:11:12', '2016-10-13 16:11:12', 'a8f76502-6256-49e7-98d9-b08ee17d0200'),
(57, 'Entry', '2016-10-14 06:04:25', '2016-10-14 06:04:25', '418e61dc-f256-483d-ac52-a1ef331400b3');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 13, 'TeamMember', 1, '2016-10-13 07:27:22', '2016-10-13 07:27:22', 'cf844c83-7574-45e5-b0ef-4add42c9bfd1'),
(9, 16, 'Content', 1, '2016-10-13 07:31:39', '2016-10-13 07:31:39', '19347e20-0bc8-4369-8a7a-27b403d0acc5'),
(12, 25, 'Content', 1, '2016-10-13 11:27:54', '2016-10-13 11:27:54', '86ea5716-e450-4505-aabd-e5f56642561b'),
(13, 25, 'Design', 2, '2016-10-13 11:27:54', '2016-10-13 11:27:54', 'e9b3308a-307a-49a0-ba9f-995379f92dba'),
(33, 45, 'Content', 1, '2016-10-13 13:44:41', '2016-10-13 13:44:41', '94683027-76c6-45b8-a3ef-a28e7bf19b20'),
(34, 46, 'Content', 1, '2016-10-13 13:44:41', '2016-10-13 13:44:41', 'fb4636ab-b075-4510-af0f-5cc4ece7fb63'),
(40, 51, 'Content', 1, '2016-10-13 15:47:00', '2016-10-13 15:47:00', 'dff2ab72-17d9-40db-923c-028a73d604d3'),
(41, 51, 'Short Description', 2, '2016-10-13 15:47:00', '2016-10-13 15:47:00', '42afdb82-66ea-4519-bf33-0a438f697a98'),
(42, 51, 'Sidebar', 3, '2016-10-13 15:47:00', '2016-10-13 15:47:00', 'e3b3f138-f4e3-4749-b7d7-866e0fe819d3'),
(44, 53, 'Content', 1, '2016-10-13 16:11:12', '2016-10-13 16:11:12', '64f7c2cd-e636-4f68-88f9-ab156eeabfc3'),
(45, 54, 'Content', 1, '2016-10-13 16:11:12', '2016-10-13 16:11:12', '18244308-8fe4-4eae-9ac9-3e1f8d2e7eb0'),
(47, 57, 'Content', 1, '2016-10-14 06:04:25', '2016-10-14 06:04:25', 'a5809b44-7b19-48a8-804d-e5b4df5f23bc');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', '', 0, 'RichText', '{"configFile":"Standard.json","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-10-13 06:29:39', '2016-10-13 13:44:15', '5c41a107-6e6a-426b-bd1a-d51c8eb3780d'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2016-10-13 06:29:39', '2016-10-13 06:29:39', '3ed99b7d-93a4-433a-8db8-604e411054bd'),
(4, 3, 'lastname', 'lastname', 'global', 'The lastname of the user', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-10-13 07:22:10', '2016-10-13 07:22:10', 'd92c1f31-58d4-4a66-8aa4-5d930dfdf2e1'),
(5, 3, 'Bio', 'bio', 'global', 'the biography for the user', 0, 'Matrix', '{"maxBlocks":null}', '2016-10-13 07:26:58', '2016-10-13 07:31:39', 'ce8cacb0-47b4-4519-b949-bdbc7cd18790'),
(6, NULL, 'info', 'info', 'matrixBlockType:1', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-10-13 07:29:52', '2016-10-13 07:31:39', '07f14c1c-1cdf-47ef-9969-a073ddb0b1c4'),
(7, NULL, 'image', 'image', 'matrixBlockType:1', 'an image you want to add to the biography', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:1"],"defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","viewMode":"list","selectionLabel":""}', '2016-10-13 07:29:52', '2016-10-13 07:31:39', '4ea445f7-776d-41b8-9f40-d56f5f2ae458'),
(8, 1, 'Banner Image', 'bannerImage', 'global', 'A banner Image', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:2"],"defaultUploadLocationSource":"2","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"list","selectionLabel":""}', '2016-10-13 09:28:39', '2016-10-13 09:28:39', '7b74c7cd-f9cf-4c2e-88a1-37816fdfaac3'),
(9, 1, 'Header title', 'headerTitle', 'global', 'The title shown as header of the page', 0, 'PlainText', '{"placeholder":"","maxLength":"100","multiline":"","initialRows":"4"}', '2016-10-13 11:27:29', '2016-10-13 11:27:29', 'f1f28340-d344-4c80-a097-db972353b7ea'),
(10, 5, 'Short Description', 'shortDescription', 'global', 'This is the short description of a news item', 0, 'PlainText', '{"placeholder":"","maxLength":"440","multiline":"","initialRows":"4"}', '2016-10-13 11:55:52', '2016-10-13 11:55:52', 'a89ac1d2-17aa-457d-934f-3f0fc458e371'),
(11, 1, 'Article Body', 'articleBody', 'global', '', 0, 'Matrix', '{"maxBlocks":null}', '2016-10-13 12:41:15', '2016-10-13 13:44:41', 'ddf6a6e4-792c-493f-93fd-6f57e1dc7b6e'),
(12, NULL, 'Text', 'text', 'matrixBlockType:2', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-10-13 12:41:15', '2016-10-13 13:44:41', '7770cd9c-cb93-4563-8b4c-48b42d2ce258'),
(13, NULL, 'Position', 'position', 'matrixBlockType:2', '', 0, 'PositionSelect', '{"options":["left","center","right"]}', '2016-10-13 12:41:15', '2016-10-13 13:44:41', '7f9e7c67-2628-4874-8961-c523652fdc66'),
(14, NULL, 'image', 'image', 'matrixBlockType:3', '', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:3"],"defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"","viewMode":"list","selectionLabel":""}', '2016-10-13 12:42:20', '2016-10-13 13:44:41', '04d8e85d-f2c6-4679-8ffb-45270abb2d5c'),
(15, NULL, 'Position', 'position', 'matrixBlockType:3', '', 0, 'PositionSelect', '{"options":["left","center","right"]}', '2016-10-13 12:48:00', '2016-10-13 13:44:41', 'a4133714-b4ef-4ba3-a89c-6cc8bfcc1498'),
(16, 1, 'newsitems', 'newsitems', 'global', '', 0, 'Entries', '{"sources":["section:2"],"limit":"3","selectionLabel":""}', '2016-10-13 14:07:15', '2016-10-13 14:07:15', 'dc571624-569d-4758-855c-c4753389bfc9'),
(17, 1, 'Sidebar Body', 'sidebarBody', 'global', '', 0, 'Matrix', '{"maxBlocks":null}', '2016-10-13 15:45:32', '2016-10-13 16:11:12', 'b1af6c80-7f7b-406c-85c6-4dbfb34b8269'),
(18, NULL, 'text', 'text', 'matrixBlockType:4', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-10-13 15:45:32', '2016-10-13 16:11:12', '53cd0158-885b-46d7-bcb9-d545efbb943a'),
(19, NULL, 'image', 'image', 'matrixBlockType:5', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"3","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"","viewMode":"list","selectionLabel":""}', '2016-10-13 16:11:12', '2016-10-13 16:11:12', 'be6e03b6-ae33-407a-8dae-0ea38b9302f6');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `build` int(11) UNSIGNED NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `releaseDate` datetime NOT NULL,
  `edition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `track` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `build`, `schemaVersion`, `releaseDate`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `track`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.6', 2949, '2.6.7', '2016-10-05 17:47:04', 2, 'Start It Fund', 'http://localhost', 'UTC', 1, 0, 'stable', '2016-10-13 06:29:38', '2016-10-13 13:53:02', '963dc7db-a93d-4a8d-b146-dc00fc5c818a');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_locales`
--

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('nl', 1, '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'af0a6670-1c25-4f49-80d0-2b86b9e978cf');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_matrixblocks`
--

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `ownerLocale`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 4, 5, 1, 1, NULL, '2016-10-13 07:34:46', '2016-10-13 07:34:46', 'e80c6b60-f363-4191-b3b8-dc704be06380'),
(12, 3, 11, 2, 2, NULL, '2016-10-13 12:48:17', '2016-10-14 06:02:35', '3fd11cba-aae6-40fb-9ed1-c3efbf786279'),
(13, 3, 11, 3, 1, NULL, '2016-10-13 12:48:17', '2016-10-14 06:02:35', '2ae4e88a-06d9-4b48-91c9-98a735aab8dc'),
(15, 3, 11, 2, 3, NULL, '2016-10-13 13:30:44', '2016-10-14 06:02:35', '44b14b98-e84c-4482-8b90-6fe612788ea9'),
(18, 17, 11, 3, 1, NULL, '2016-10-13 13:45:58', '2016-10-14 06:10:04', 'f5645f6a-8d44-4818-87cd-bdf580bb7111'),
(19, 17, 11, 2, 2, NULL, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '6bcce1ea-0ee5-4cf9-865d-af23f6b4249a'),
(20, 17, 11, 2, 3, NULL, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '0166343b-969c-44c3-b81d-1a6f4f169f16'),
(21, 17, 17, 4, 1, NULL, '2016-10-13 15:47:19', '2016-10-14 06:10:04', 'b424c2c2-b660-4172-8c1d-613a2d7dd384'),
(22, 3, 17, 4, 3, NULL, '2016-10-13 16:09:27', '2016-10-14 06:02:35', '1e1150c3-7f3f-4cca-aea9-346e6a428f8c'),
(23, 3, 17, 5, 2, NULL, '2016-10-13 16:11:30', '2016-10-14 06:02:35', '454cd3a8-ce43-42df-b4a7-4670cd74f639'),
(24, 3, 17, 4, 1, NULL, '2016-10-13 16:15:54', '2016-10-14 06:02:35', 'feffa05f-b932-4d38-a2d1-bc2506259182'),
(25, 3, 17, 4, 4, NULL, '2016-10-14 06:02:36', '2016-10-14 06:02:36', 'e4364465-1bef-44e4-b240-22641748dc24'),
(27, 26, 11, 2, 1, NULL, '2016-10-14 06:04:41', '2016-10-14 06:04:41', '2314637a-8639-40da-a1dc-464d02488006');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 5, 16, 'general', 'general', 1, '2016-10-13 07:26:58', '2016-10-13 07:31:39', 'c03aac46-734b-404b-9a11-0b2e62842617'),
(2, 11, 45, 'Text', 'text', 1, '2016-10-13 12:41:15', '2016-10-13 13:44:41', 'e53f77c7-949d-4538-84ed-eb95ad0b03fb'),
(3, 11, 46, 'Image', 'image', 2, '2016-10-13 12:42:20', '2016-10-13 13:44:41', 'c3b13ce6-aa31-4ca1-a772-893ab567e949'),
(4, 17, 53, 'text', 'text', 1, '2016-10-13 15:45:32', '2016-10-13 16:11:12', '1000ee94-554c-4ce2-bd70-4cec2168e90b'),
(5, 17, 54, 'image', 'image', 2, '2016-10-13 16:11:12', '2016-10-13 16:11:12', '169ab1c6-234f-451d-a201-f618907f6c81');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_matrixcontent_articlebody`
--

CREATE TABLE `craft_matrixcontent_articlebody` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_text_text` text COLLATE utf8_unicode_ci,
  `field_text_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_image_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_matrixcontent_articlebody`
--

INSERT INTO `craft_matrixcontent_articlebody` (`id`, `elementId`, `locale`, `field_text_text`, `field_text_position`, `field_image_position`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 12, 'nl', '<p><br /></p>\n\n<p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br /></p>', 'left', NULL, '2016-10-13 12:48:17', '2016-10-14 06:02:35', '2f3f264b-0ccb-40a6-be6c-37e1706efe98'),
(2, 13, 'nl', NULL, NULL, 'left', '2016-10-13 12:48:17', '2016-10-14 06:02:35', '31d071b8-965e-4bca-9d21-9cc0bf04b450'),
(3, 15, 'nl', '<p>abc</p>', 'left', NULL, '2016-10-13 13:30:44', '2016-10-14 06:02:35', 'f9e85fea-4914-4ffe-bf65-b33414de4af1'),
(5, 18, 'nl', NULL, NULL, 'left', '2016-10-13 13:45:58', '2016-10-14 06:10:04', '430edf8e-eee1-4610-80ae-3394cac84490'),
(6, 19, 'nl', '<p><br /></p>\n\n<p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<br /></p>', 'left', NULL, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '6c633e1b-1683-46ac-a8a5-1f5c9638d9e0'),
(7, 20, 'nl', '<p>abc</p>', 'left', NULL, '2016-10-13 13:45:58', '2016-10-14 06:10:04', '16e63729-f627-4adb-b1a3-2741d2172a96'),
(8, 27, 'nl', '<p>qsdlfjqlmksdfjklmqjsdlkfjqslmkdfj</p>', 'left', NULL, '2016-10-14 06:04:41', '2016-10-14 06:04:41', '0ae38764-d412-4e2f-82e3-a1ab13139741');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_matrixcontent_bio`
--

CREATE TABLE `craft_matrixcontent_bio` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_general_info` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_matrixcontent_bio`
--

INSERT INTO `craft_matrixcontent_bio` (`id`, `elementId`, `locale`, `field_general_info`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 6, 'nl', '<p>this is my text</p>', '2016-10-13 07:34:46', '2016-10-13 07:34:46', 'b74a1229-4949-4abb-8f62-4d73c40ee3cc');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_matrixcontent_sidebarbody`
--

CREATE TABLE `craft_matrixcontent_sidebarbody` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_text_text` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_matrixcontent_sidebarbody`
--

INSERT INTO `craft_matrixcontent_sidebarbody` (`id`, `elementId`, `locale`, `field_text_text`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 21, 'nl', '<p>qsdfjklqjsdfmqsdf</p>\n\n<p>qsdfqsd</p>\n\n<p>fqd</p>\n\n<p>sfqdsf</p>', '2016-10-13 15:47:19', '2016-10-14 06:10:04', '5bcec0a0-af88-4ab7-ab5d-20de561bed7e'),
(2, 22, 'nl', '<p><strong>Contrary to popularr </strong>belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.</p>', '2016-10-13 16:09:27', '2016-10-14 06:02:35', 'b9d7e7a7-b1d0-497b-83c4-44052039dcb0'),
(3, 23, 'nl', NULL, '2016-10-13 16:11:30', '2016-10-14 06:02:35', '931e77d0-2e17-45ff-a7e5-4dc8feccda12'),
(4, 24, 'nl', '<p>Contrary to popularr belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words.</p>', '2016-10-13 16:15:54', '2016-10-14 06:02:35', '5388865f-e970-4805-9015-363043aca971'),
(5, 25, 'nl', '<p>slkdmfqsdjflkmqsdjf</p>', '2016-10-14 06:02:35', '2016-10-14 06:02:35', '95a83711-cf63-46a6-9c1f-ec8ce6e48d3d');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '10c50833-f272-4044-94f3-5f72aa3fa98c'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '4306fc50-7cad-4b97-958f-39e9b7d0ec20'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'b7124df3-5755-4ddc-84cc-29bd55093e89'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '4da41cbe-2f9a-4f10-bf37-32c69a2598d4'),
(5, NULL, 'm140829_000001_single_title_formats', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '54a3f060-a8ec-4aa3-b45a-02352193aa9b'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '3f44f18c-69c0-4bd1-95b7-5b7c860f076a'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '429bcf21-1429-4582-9d71-eedb5973ede4'),
(8, NULL, 'm141008_000001_elements_index_tune', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'aad7c3d4-4c2c-45e5-af5f-5eb34ff083b1'),
(9, NULL, 'm141009_000001_assets_source_handle', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '16f234a7-0b9c-4409-9896-d9786aac6edf'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '9db4f318-0633-46ca-971e-b35a8f50b380'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '01976f51-0b04-46a9-9b8c-7aaea3e8cf49'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2abd6517-48f4-4478-9327-53fff3b931c6'),
(13, NULL, 'm141103_000001_tag_titles', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'b467b235-f927-4065-a9fb-5f05dd115696'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '1ef5d5ec-4733-45ea-8021-c9a41bab9ec3'),
(15, NULL, 'm141126_000001_user_week_start_day', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '8ce7ef1a-a387-41aa-a586-81bfcc961640'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '8a9b553c-75f8-47fd-a668-fdc22dd92c48'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '4aacea39-02aa-4d2c-acff-278645437fc1'),
(18, NULL, 'm150827_000000_element_index_settings', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '29659017-d8a7-43a1-b9b6-62192bc5378e'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '5a71cb50-23ff-477f-9fd6-6aa13e1bf195'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '382a0514-b00b-4ceb-9b54-f7fc534bb301'),
(21, NULL, 'm151109_000000_text_url_formats', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '528996f9-46b1-4aed-883b-436cbc629ea9'),
(22, NULL, 'm151110_000000_move_logo', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'ad203ca6-365c-4eeb-ba71-d7e28a52466e'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '76f116f6-6520-4f21-8d2f-bb90f3164970'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '75d200ab-d451-4c82-85ca-f3c4536a4b4a'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '8d445c0a-4723-4dd0-835f-74ffa8a09906'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'a88ad64a-6516-4268-8cd4-0b90bd5b40fc'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2970f490-2016-4e58-949b-3c75378b60b4'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'f3c891f0-170b-47be-aa0f-d3f307e872a4'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '921ce45c-635f-4ba5-93db-2e77ec8afb91'),
(30, NULL, 'm160304_000000_client_permissions', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'c53499d9-940e-401f-8d70-abb66e14b385'),
(31, NULL, 'm160322_000000_asset_filesize', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '6df98538-2fd6-4174-afed-b317acb1ee79'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '84a4357c-9fa1-422d-997f-8a7f22198ad6'),
(33, NULL, 'm160510_000000_tasksettings', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '59af693a-78c7-408b-a728-eebaca2e6a43'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '3c7f8d6b-2a1f-48b7-8de5-66f6d3b1ae1f'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', 'd68b0cfd-7a76-46be-bc02-3095d6f4a6a2'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '2016-10-13 06:29:38', '98df829a-3a40-4af5-bac5-4072a178a660');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_rackspaceaccess`
--

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 7, 6, NULL, 5, 1, '2016-10-13 07:34:46', '2016-10-13 07:34:46', '16d9388f-7b94-46aa-820a-c7aec4b6472d'),
(11, 8, 2, NULL, 7, 1, '2016-10-13 13:37:34', '2016-10-13 13:37:34', '0e14ddfc-14f0-454d-b63f-447489d43afc'),
(36, 14, 13, NULL, 11, 1, '2016-10-14 06:02:35', '2016-10-14 06:02:35', '326eeba0-8a9e-404e-8b16-24eb8774b6ba'),
(37, 19, 23, NULL, 11, 1, '2016-10-14 06:02:35', '2016-10-14 06:02:35', '535cbf69-5e1f-4c0b-856a-fb22dac89fae'),
(38, 14, 18, NULL, 11, 1, '2016-10-14 06:10:04', '2016-10-14 06:10:04', '9fc9d24e-0b0e-4c0d-8571-4b7679d11189');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_routes`
--

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'nl', ' jochenf36 '),
(1, 'firstname', 0, 'nl', ''),
(1, 'lastname', 0, 'nl', ''),
(1, 'fullname', 0, 'nl', ''),
(1, 'email', 0, 'nl', ' jochen francois gmail com '),
(1, 'slug', 0, 'nl', ''),
(2, 'slug', 0, 'nl', ' homepage '),
(2, 'title', 0, 'nl', ' welcome to localhost '),
(2, 'field', 1, 'nl', ' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon localhost will be an oasis of fresh perspectives test sharp analyses and astute opinions that will keep you coming back again and again '),
(3, 'field', 1, 'nl', ' craft is the cms that s powering localhost it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
(3, 'field', 2, 'nl', ''),
(3, 'slug', 0, 'nl', ' we just installed craft '),
(3, 'title', 0, 'nl', ' we just installed craft '),
(4, 'field', 3, 'nl', ' jeroen '),
(4, 'slug', 0, 'nl', ' jeroen renier '),
(4, 'title', 0, 'nl', ' jeroen renier '),
(4, 'field', 4, 'nl', ' abc '),
(5, 'filename', 0, 'nl', ' 20160912 145345 470 personeel jpg '),
(5, 'extension', 0, 'nl', ' jpg '),
(5, 'kind', 0, 'nl', ' image '),
(5, 'slug', 0, 'nl', ''),
(5, 'title', 0, 'nl', ' 20160912 145345 470 personeel '),
(4, 'field', 5, 'nl', ' 20160912 145345 470 personeel this is my text '),
(6, 'field', 6, 'nl', ' this is my text '),
(6, 'field', 7, 'nl', ' 20160912 145345 470 personeel '),
(6, 'slug', 0, 'nl', ''),
(7, 'filename', 0, 'nl', ' ggb_old jpg '),
(7, 'extension', 0, 'nl', ' jpg '),
(7, 'kind', 0, 'nl', ' image '),
(7, 'slug', 0, 'nl', ' ggb old '),
(7, 'title', 0, 'nl', ' ggb old '),
(2, 'field', 8, 'nl', ' ggb old '),
(10, 'field', 2, 'nl', ''),
(10, 'field', 1, 'nl', ' test '),
(2, 'field', 9, 'nl', ' this is the header of the page '),
(10, 'slug', 0, 'nl', ' test '),
(10, 'title', 0, 'nl', ' test '),
(3, 'field', 10, 'nl', ' euismod atras vulputate iltricies etri elit class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos nulla nunc dui tristique in semper vel congue sed ligula nam dolor ligula faucibus id sodales in auctor fringilla libero pellentesque pellentesque tempor tellus eget hendrerit morbi id aliquam ligula aliquam id dui sem proin rhoncus consequat nisl eu ornare mauris tincidunt vitae '),
(11, 'filename', 0, 'nl', ' 20160912 145345 470 personeel jpg '),
(11, 'extension', 0, 'nl', ' jpg '),
(11, 'kind', 0, 'nl', ' image '),
(11, 'slug', 0, 'nl', ''),
(11, 'title', 0, 'nl', ' 20160912 145345 470 personeel '),
(3, 'field', 11, 'nl', ' 20160912 145345 470 personeel left left this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page left abc '),
(12, 'field', 12, 'nl', ' this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page '),
(12, 'field', 13, 'nl', ' left '),
(12, 'slug', 0, 'nl', ''),
(13, 'field', 14, 'nl', ' 20160912 145345 470 personeel '),
(13, 'field', 15, 'nl', ' left '),
(13, 'slug', 0, 'nl', ''),
(14, 'filename', 0, 'nl', ' ggb_old jpg '),
(14, 'extension', 0, 'nl', ' jpg '),
(14, 'kind', 0, 'nl', ' image '),
(14, 'slug', 0, 'nl', ''),
(14, 'title', 0, 'nl', ' ggb old '),
(17, 'field', 1, 'nl', ' craft is the cms that s powering localhost it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
(15, 'field', 12, 'nl', ' abc '),
(15, 'field', 13, 'nl', ' left '),
(15, 'slug', 0, 'nl', ''),
(17, 'field', 11, 'nl', ' 20160912 145345 470 personeel left left this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page left abc '),
(17, 'field', 10, 'nl', ' euismod atras vulputate iltricies etri elit class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos nulla nunc dui tristique in semper vel congue sed ligula nam dolor ligula faucibus id sodales in auctor fringilla libero pellentesque pellentesque tempor tellus eget hendrerit morbi id aliquam ligula aliquam id dui sem proin rhoncus consequat nisl eu ornare mauris tincidunt vitae '),
(17, 'slug', 0, 'nl', ' we just installed craft 1 '),
(17, 'title', 0, 'nl', ' we just installed craft2 '),
(18, 'field', 14, 'nl', ' 20160912 145345 470 personeel '),
(18, 'field', 15, 'nl', ' left '),
(18, 'slug', 0, 'nl', ''),
(19, 'field', 12, 'nl', ' this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page '),
(19, 'field', 13, 'nl', ' left '),
(19, 'slug', 0, 'nl', ''),
(20, 'field', 12, 'nl', ' abc '),
(20, 'field', 13, 'nl', ' left '),
(20, 'slug', 0, 'nl', ''),
(17, 'field', 16, 'nl', ''),
(17, 'field', 17, 'nl', ' qsdfjklqjsdfmqsdf qsdfqsd fqd sfqdsf '),
(21, 'field', 18, 'nl', ' qsdfjklqjsdfmqsdf qsdfqsd fqd sfqdsf '),
(21, 'slug', 0, 'nl', ''),
(3, 'field', 16, 'nl', ''),
(3, 'field', 17, 'nl', ' contrary to popularr belief lorem ipsum is not simply random text it has roots in a piece of classical latin literature from 45 bc making it over 2000 years old richard mcclintock a latin professor at hampden sydney college in virginia looked up one of the more obscure latin words 20160912 145345 470 personeel contrary to popularr belief lorem ipsum is not simply random text it has roots in a piece of classical latin literature from 45 bc making it over 2000 years old richard mcclintock a latin professor at hampden sydney college in virginia looked up one of the more obscure latin words slkdmfqsdjflkmqsdjf '),
(23, 'field', 19, 'nl', ' 20160912 145345 470 personeel '),
(23, 'slug', 0, 'nl', ''),
(22, 'field', 18, 'nl', ' contrary to popularr belief lorem ipsum is not simply random text it has roots in a piece of classical latin literature from 45 bc making it over 2000 years old richard mcclintock a latin professor at hampden sydney college in virginia looked up one of the more obscure latin words '),
(24, 'field', 18, 'nl', ' contrary to popularr belief lorem ipsum is not simply random text it has roots in a piece of classical latin literature from 45 bc making it over 2000 years old richard mcclintock a latin professor at hampden sydney college in virginia looked up one of the more obscure latin words '),
(24, 'slug', 0, 'nl', ''),
(25, 'field', 18, 'nl', ' slkdmfqsdjflkmqsdjf '),
(22, 'slug', 0, 'nl', ''),
(25, 'slug', 0, 'nl', ''),
(26, 'slug', 0, 'nl', ' testpagina '),
(26, 'title', 0, 'nl', ' testpagina '),
(26, 'field', 11, 'nl', ' left qsdlfjqlmksdfjklmqjsdlkfjqslmkdfj '),
(27, 'field', 12, 'nl', ' qsdlfjqlmksdfjklmqjsdlkfjqslmkdfj '),
(27, 'field', 13, 'nl', ' left '),
(27, 'slug', 0, 'nl', ''),
(28, 'username', 0, 'nl', ' arya '),
(28, 'firstname', 0, 'nl', ' arya '),
(28, 'lastname', 0, 'nl', ' you know what it is '),
(28, 'fullname', 0, 'nl', ' arya you know what it is '),
(28, 'email', 0, 'nl', ' arya localhost com '),
(28, 'slug', 0, 'nl', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2016-10-13 06:29:39', '2016-10-13 06:29:39', '8c0b630e-37e4-4cfb-8d79-e602e4e948ce'),
(2, NULL, 'News', 'news', 'channel', 1, 'news/_entry', 1, '2016-10-13 06:29:39', '2016-10-13 06:29:39', '0afce219-e132-412a-9d02-a701d61bc862'),
(4, NULL, 'Team Members', 'teamMembers', 'channel', 1, 'teamMembers/_entry', 1, '2016-10-13 07:04:31', '2016-10-13 07:20:54', '82bd33be-6963-4c7d-a5c2-a0dd8a4c8c09'),
(5, NULL, 'Testpagina', 'testpagina', 'single', 1, 'testpagina', 1, '2016-10-14 06:03:34', '2016-10-14 06:03:34', '773f7cb2-b6a7-40b8-ba8b-06d0c1e395bc');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_sections_i18n`
--

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'nl', 1, '__home__', NULL, '2016-10-13 06:29:39', '2016-10-13 06:29:39', '8ecc4612-e1ad-4b21-8d91-f7a7af383f59'),
(2, 2, 'nl', 1, 'news/{postDate.year}/{slug}', NULL, '2016-10-13 06:29:39', '2016-10-13 06:29:39', '5fd446a8-2505-4aae-b76a-f6303abfffaf'),
(4, 4, 'nl', 1, 'team-members/{slug}', NULL, '2016-10-13 07:04:31', '2016-10-13 07:04:31', '327dca2e-1547-4d7e-b047-ec27e81751dc'),
(5, 5, 'nl', 1, 'testpagina', NULL, '2016-10-14 06:03:34', '2016-10-14 06:03:34', '07404143-4167-4805-8dab-953ec02d267a');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, '00370c3805c6748d79dc90fb96920dd23bd4ed33czozMjoiREV1bkpIdHJiX2h3NzVuaDRaaXNQN1JBZjFqMXdWbHUiOw==', '2016-10-13 06:29:39', '2016-10-13 06:29:39', 'e2df0716-7f4e-42d6-8236-0ce7ae4b13e7'),
(2, 1, '8e354f6ecb0551e16b2e844226a1184931a80b4cczozMjoiaUh5c0Nqbl9QSm9CVXFnZkFDdm40ang3RV9rS3RKeVgiOw==', '2016-10-13 15:42:38', '2016-10-13 15:42:38', '24a63a0a-ff68-47e8-a3ab-256066b8c7cd'),
(3, 1, 'fb94d96f6e4bcc71a8a8ce6e5d20c2cce91a40f9czozMjoia1hzUTVDdGY4R2dmNXJrenJFbGJHU1RjYzVXeG95VUMiOw==', '2016-10-13 18:08:01', '2016-10-13 18:08:01', 'aac51a51-6287-464c-b6d0-04ad8f30cb4e'),
(4, 1, '2900615515ae5b69dcf7da9e8816f605ca625eeaczozMjoiUjYyeGhXfktSQ01aSFJMVjhhQjJsRTZ1emFCYzM2VzYiOw==', '2016-10-14 06:00:30', '2016-10-14 06:00:30', 'ab114ec3-ddd8-4be0-b8cb-78ec12e0f91c'),
(6, 1, '77fd2117d81ea0645873a65e772ce79aba917f17czozMjoienJCX0RTRThXNlI0WWJuSmM2OWE3MGhHaVNlMjJRdTEiOw==', '2016-10-14 06:41:14', '2016-10-14 06:41:14', 'e97fdefe-9659-4379-b02b-8a9a410d2695');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_systemsettings`
--

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"protocol":"php","emailAddress":"jochen.francois@gmail.com","senderName":"Start It Fund"}', '2016-10-13 06:29:39', '2016-10-13 06:29:39', 'c9b624f0-5e21-4442-b46d-3f5f6683da21');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2016-10-13 06:29:39', '2016-10-13 06:29:39', '63227e28-8b8f-4a65-a3bc-a9bb8c7c87e6');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_tasks`
--

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `currentStep` int(11) UNSIGNED DEFAULT NULL,
  `totalSteps` int(11) UNSIGNED DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_templatecachecriteria`
--

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_usergroups`
--

INSERT INTO `craft_usergroups` (`id`, `name`, `handle`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Callboys', 'callboys', '2016-10-14 06:38:07', '2016-10-14 06:38:07', '3cef582e-547a-43ae-8a3e-07e30f551eae');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `client` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `suspended` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'jochenf36', NULL, '', '', 'jochen.francois@gmail.com', '$2y$13$5HEKfdvEchOWzDzMKTwGHe35ZgT8pwmysAbilMSh5uZ1CLgXjffn6', NULL, 1, 1, 0, 0, 0, 0, 0, '2016-10-14 06:41:14', '::1', NULL, NULL, '2016-10-14 06:00:20', NULL, NULL, NULL, NULL, 0, '2016-10-13 06:57:34', '2016-10-13 06:29:39', '2016-10-14 06:41:14', '834423f8-2269-4d03-bcf2-e6755508a245'),
(28, 'Arya', NULL, 'Arya', 'You know what it is', 'Arya@localhost.com', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '2016-10-14 06:40:10', '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2016-10-14 06:39:28', '2016-10-14 06:40:10', '6a698d6b-0f6f-44b8-ad66-bdf62f0226f6');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(4) UNSIGNED DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, '{"section":"*","limit":"10"}', 1, '2016-10-13 06:29:42', '2016-10-13 14:08:20', '8db0e5ed-13ba-4f8d-bb50-4a7ba4f520b6'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2016-10-13 06:29:42', '2016-10-13 06:29:42', '43d720d6-25e9-41e8-9939-8559cf4b71b3'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2016-10-13 06:29:42', '2016-10-13 06:29:42', '8615ef39-488f-42d0-bfcc-feffc6548af0'),
(4, 1, 'Feed', 4, NULL, '{"url":"https:\\/\\/craftcms.com\\/news.rss","title":"Craft News"}', 1, '2016-10-13 06:29:42', '2016-10-13 06:29:42', 'c8c1e734-8ab2-4d23-a0cc-0d601af43f18');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Indexen voor tabel `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `craft_assetfolders_parentId_fk` (`parentId`),
  ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Indexen voor tabel `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Indexen voor tabel `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexen voor tabel `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Indexen voor tabel `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Indexen voor tabel `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Indexen voor tabel `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexen voor tabel `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_content_title_idx` (`title`),
  ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexen voor tabel `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Indexen voor tabel `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Indexen voor tabel `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Indexen voor tabel `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexen voor tabel `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Indexen voor tabel `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Indexen voor tabel `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Indexen voor tabel `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Indexen voor tabel `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_context_idx` (`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Indexen voor tabel `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexen voor tabel `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `craft_locales`
--
ALTER TABLE `craft_locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Indexen voor tabel `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Indexen voor tabel `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexen voor tabel `craft_matrixcontent_articlebody`
--
ALTER TABLE `craft_matrixcontent_articlebody`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_articlebody_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_matrixcontent_articlebody_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_matrixcontent_bio`
--
ALTER TABLE `craft_matrixcontent_bio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_bio_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_matrixcontent_bio_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_matrixcontent_sidebarbody`
--
ALTER TABLE `craft_matrixcontent_sidebarbody`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_sidebarbody_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_matrixcontent_sidebarbody_locale_idx` (`locale`);

--
-- Indexen voor tabel `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Indexen voor tabel `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Indexen voor tabel `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Indexen voor tabel `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  ADD KEY `craft_routes_locale_idx` (`locale`);

--
-- Indexen voor tabel `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Indexen voor tabel `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Indexen voor tabel `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Indexen voor tabel `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexen voor tabel `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Indexen voor tabel `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Indexen voor tabel `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexen voor tabel `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Indexen voor tabel `craft_tasks`
--
ALTER TABLE `craft_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tasks_root_idx` (`root`),
  ADD KEY `craft_tasks_lft_idx` (`lft`),
  ADD KEY `craft_tasks_rgt_idx` (`rgt`),
  ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Indexen voor tabel `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Indexen voor tabel `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Indexen voor tabel `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Indexen voor tabel `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexen voor tabel `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`);

--
-- Indexen voor tabel `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Indexen voor tabel `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Indexen voor tabel `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Indexen voor tabel `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Indexen voor tabel `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Indexen voor tabel `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT voor een tabel `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT voor een tabel `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT voor een tabel `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT voor een tabel `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT voor een tabel `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT voor een tabel `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT voor een tabel `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT voor een tabel `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `craft_matrixcontent_articlebody`
--
ALTER TABLE `craft_matrixcontent_articlebody`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT voor een tabel `craft_matrixcontent_bio`
--
ALTER TABLE `craft_matrixcontent_bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `craft_matrixcontent_sidebarbody`
--
ALTER TABLE `craft_matrixcontent_sidebarbody`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT voor een tabel `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT voor een tabel `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `craft_tasks`
--
ALTER TABLE `craft_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT voor een tabel `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `craft_matrixcontent_articlebody`
--
ALTER TABLE `craft_matrixcontent_articlebody`
  ADD CONSTRAINT `craft_matrixcontent_articlebody_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_articlebody_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_matrixcontent_bio`
--
ALTER TABLE `craft_matrixcontent_bio`
  ADD CONSTRAINT `craft_matrixcontent_bio_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_bio_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_matrixcontent_sidebarbody`
--
ALTER TABLE `craft_matrixcontent_sidebarbody`
  ADD CONSTRAINT `craft_matrixcontent_sidebarbody_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_sidebarbody_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Beperkingen voor tabel `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
