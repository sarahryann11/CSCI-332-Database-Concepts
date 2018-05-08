-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2018 at 08:31 AM
-- Server version: 5.6.36-82.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarahn74_legendOfZelda`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`sarahn74`@`localhost` PROCEDURE `bossCheck` (OUT `message` VARCHAR(255))  BEGIN
	IF numOfBosses() > 1 THEN 
    	SET message = 'There are bosses';
	ELSE 
    	SET message = 'There are no bosses';
    END IF;
END$$

CREATE DEFINER=`sarahn74`@`localhost` PROCEDURE `characterCheck` (OUT `message` VARCHAR(255))  BEGIN
	IF numOfCharacters() > 1 THEN 
    	SET message = 'There are characters';
	ELSE 
    	SET message = 'There are no characters';
    END IF;
END$$

CREATE DEFINER=`sarahn74`@`localhost` PROCEDURE `enemyCheck` (OUT `message` VARCHAR(255))  BEGIN
	IF numOfEnemies() > 1 THEN 
    	SET message = 'There are enemies';
	ELSE 
    	SET message = 'There are no enemies';
    END IF;
END$$

--
-- Functions
--
CREATE DEFINER=`sarahn74`@`localhost` FUNCTION `numOfBosses` () RETURNS INT(11) BEGIN
DECLARE numBoss INT;
SET numBoss = (SELECT COUNT(DISTINCT name) FROM Bosses);
RETURN numBoss;
END$$

CREATE DEFINER=`sarahn74`@`localhost` FUNCTION `numOfCharacters` () RETURNS INT(11) BEGIN
DECLARE numChar INT;
SET numChar = (SELECT COUNT(DISTINCT name) FROM Characters);
RETURN numChar;
END$$

CREATE DEFINER=`sarahn74`@`localhost` FUNCTION `numOfEnemies` () RETURNS INT(11) BEGIN
DECLARE numEnemy INT;
SET numEnemy = (SELECT COUNT(DISTINCT name) FROM Enemies);
RETURN numEnemy;
END$$

CREATE DEFINER=`sarahn74`@`localhost` FUNCTION `numOfGames` () RETURNS INT(11) BEGIN
DECLARE numGames INT;
SET numGames = (SELECT COUNT(DISTINCT title) FROM Games);
RETURN numGames;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Bosses`
--

CREATE TABLE `Bosses` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `appearances` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `spoils` varchar(255) NOT NULL,
  `effectiveWeapon` varchar(255) NOT NULL,
  `dateAdded` date NOT NULL,
  `dateUpdated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Bosses`
--

INSERT INTO `Bosses` (`name`, `id`, `appearances`, `location`, `spoils`, `effectiveWeapon`, `dateAdded`, `dateUpdated`) VALUES
('Helmaroc King', 1, 'The Wind Waker', 'Forsaken Fortress', 'Heart Container', 'Skull Hammer, Sword, Arrows, Grappling Hook, Boomerang', '0000-00-00', '0000-00-00'),
('Ganondorf', 3, 'The Wind Waker', 'Ganon\'s Tower', 'none', 'Master Sword, Light Arrows, Mirror Shield', '0000-00-00', '0000-00-00'),
('Aquamentus', 5, 'The Legend of Zelda', 'Dungeons', 'Heart Container, Triforce Shard', 'Bombs, Sword', '0000-00-00', '2018-04-12'),
('Possessed Zelda', 6, 'Twilight Princess', 'Hyrule Casle', 'none', 'Deflecting her energy balls', '2018-04-05', '0000-00-00'),
('Big Green ChuChu', 7, 'The Minish Cap', 'Deepwood Shrine', 'Heart Container, Earth Element', 'Gust Jar, Sword', '2018-04-12', '0000-00-00'),
('Molgera', 8, 'The Wind Waker', 'Wind Temple, Ganon\'s Tower', 'Heart Container', 'Hookshot, Sword', '2018-04-13', '0000-00-00'),
('Digdogger', 9, 'The Legend of Zelda', 'Level 5', 'Heart Container, Triforce Shard', 'Recorder, sword', '2018-04-13', '0000-00-00'),
('Gleeok', 10, 'The Legend of Zelda', 'First Quest - Level 4, 6, 8; Second Quest - Level 2, 5, 6, 7', 'Heart Container, Triforce Shard', 'Sword, Bombs', '2018-04-13', '2018-04-13'),
('Ganon', 11, 'A Link to the Past', 'Pyramid', 'none', 'Silver Arrows, Sword', '2018-04-13', '0000-00-00'),
('Moldorm', 12, 'Link\'s Awakening', 'Tail Cave', 'Full Moon Cello, Heart Container', 'Sword', '2018-04-13', '0000-00-00'),
('King Dodongo', 13, 'Ocarina of Time', 'Dodongo\'s Cavern', 'Heart Container, Goron\'s Ruby', 'Bomb, Kokiri Sword, Deku Stick', '2018-04-13', '2018-04-13'),
('Goht', 14, 'Majora\'s Mask', 'Snowhead Temple', 'Heart Container, Goht\'s Remains', 'Goron Mask, Fire Arrows, Fierce Diety\'s Mask', '2018-04-13', '0000-00-00'),
('Eyesoar', 15, 'Oracle of Ages', 'Skull Dungeon', 'Heart Container, Burning Flame', 'Switch Hook, Sword', '2018-04-13', '0000-00-00'),
('Digdogger', 16, 'Oracle of Seasons', 'Unicorn\'s Cave', 'Heart Container, Nurturing Warmth', 'Magnetic Gloves, Sword (only effective on mini-Digdoggers)', '2018-04-13', '0000-00-00'),
('Deguchitato', 17, 'Four Swords', 'Sea of Trees', 'Silver, Golden, or Hero\'s Key', 'Sword', '2018-04-13', '0000-00-00'),
('Puppet Ganon', 18, 'The Wind Waker', 'Ganon\'s Tower', 'none', 'Boomerang, Light Arrows', '2018-04-13', '0000-00-00'),
('Helmaroc King', 19, 'Four Swords Adventures', '', 'Force Gems', 'Bombs, Magic Hammer, Four Sword', '2018-04-13', '0000-00-00'),
('Mazaal', 20, 'The Minish Cap', 'Fortress of Winds', 'Heart Container, Ocarina of Wind', 'Arrows, Sword', '2018-04-13', '0000-00-00'),
('Zant', 21, 'Twilight Princess', 'Palace of Twilight', 'Heart Container', 'Sword, Gale Boomerang, Double Clawshots, Ball and Chain', '2018-04-13', '0000-00-00'),
('Dongorongo', 22, 'Phantom Hourglass', 'Goron Temple', 'Heart Container, Sand of Hours, Crimsonine', 'Bombchus, Bombs, Oshus\'s Sword', '2018-04-13', '0000-00-00'),
('Stagnox', 23, 'Spirit Tracks', 'Forest Temple', 'Heart Container, Force Gem', 'Whirlwind, Sword', '2018-04-13', '0000-00-00'),
('Moldarach', 24, 'Skyward Sword', 'Lanayru Mining Facility, Shipyard', 'Heart Container', 'Sword, Gust Bellows', '2018-04-13', '0000-00-00'),
('Margomill', 25, 'A Link Between Worlds', 'House of Gales', 'Heart Container, Pendant of Wisdom', 'Sword, Tornado Rod', '2018-04-13', '0000-00-00'),
('Windblight Ganon', 26, 'Breath of the Wild', 'Divine Beast Vah Medoh, Hyrule Castle Sanctum (if not defeated at Vah Medoh)', 'Heart Container', 'Swords, Bomb Arrows, Paraglider', '2018-04-13', '0000-00-00');

--
-- Triggers `Bosses`
--
DELIMITER $$
CREATE TRIGGER `lastUpdatedBoss` BEFORE UPDATE ON `Bosses` FOR EACH ROW BEGIN
SET new.dateUpdated = now();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `timeAddedBoss` BEFORE INSERT ON `Bosses` FOR EACH ROW BEGIN
SET new.dateAdded = now();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Characters`
--

CREATE TABLE `Characters` (
  `name` varchar(255) NOT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `appearances` varchar(255) DEFAULT NULL,
  `race` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `dateAdded` date NOT NULL,
  `dateUpdated` date NOT NULL,
  `titles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Characters`
--

INSERT INTO `Characters` (`name`, `hometown`, `appearances`, `race`, `gender`, `id`, `dateAdded`, `dateUpdated`, `titles`) VALUES
('Link', 'Hyrule Castle', 'Majora\'s Mask', 'Hylian', 'Male', 4, '0000-00-00', '2018-04-11', 'Grasshopper, Master of the Rosa Sisters'),
('Skull Kid', 'Lost Woods', 'Majora\'s Mask', 'Skull Kid', 'Male', 5, '0000-00-00', '2018-04-11', 'Majora\'s Puppet'),
('Link', 'Hyrule Castle', 'The Legend of Zelda', 'Hylian', 'Male', 6, '0000-00-00', '2018-04-10', 'Hero of Hyrule'),
('Skull Kid', 'Lost Woods', 'Twilight Princess', 'Skull Kid', 'Male', 7, '0000-00-00', '2018-04-11', 'Imp'),
('Tetra', 'Great Sea', 'The Wind Waker', 'Hylian', 'Female', 8, '0000-00-00', '2018-04-11', ' Miss Tetra the Pirate Leader'),
('Zelda', 'Skyloft', 'Skyward Sword', 'Hylian', 'Female', 10, '2018-04-05', '2018-04-11', 'Spirit Maiden'),
('Ganon', 'Hyrule', 'The Legend of Zelda', 'Demon', 'Male', 13, '2018-04-11', '2018-04-15', 'Prince of Darkness'),
('Link', 'Aboda Village', 'Spirit Tracks', 'Hylian', 'Male', 14, '2018-04-12', '2018-04-12', 'Royal Engineer, Captain'),
('Zelda', 'Hyrule Castle', 'Ocarina of Time', 'Hylian', 'Female', 15, '2018-04-15', '2018-04-15', 'The Seventh Sage');

--
-- Triggers `Characters`
--
DELIMITER $$
CREATE TRIGGER `lastUpdatedCharacter` BEFORE UPDATE ON `Characters` FOR EACH ROW BEGIN
SET new.dateUpdated = now();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `timeAddedCharacter` BEFORE INSERT ON `Characters` FOR EACH ROW BEGIN
SET new.dateAdded = now();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Enemies`
--

CREATE TABLE `Enemies` (
  `name` varchar(255) NOT NULL,
  `appearances` varchar(255) DEFAULT NULL,
  `locations` varchar(255) NOT NULL,
  `weapons` varchar(255) NOT NULL,
  `spoils` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `dateAdded` date NOT NULL,
  `dateUpdated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Enemies`
--

INSERT INTO `Enemies` (`name`, `appearances`, `locations`, `weapons`, `spoils`, `id`, `dateAdded`, `dateUpdated`) VALUES
('Darknut', 'The Wind Waker', 'Dungeons, Hidden Holes', 'Darknut Sword', 'Hero\'s Bow, Knight\'s Crest', 1, '0000-00-00', '2018-04-05'),
('Keese', 'The Legend of Zelda', 'Caves, Dungeons', 'Fangs', 'none', 3, '0000-00-00', '2018-04-12'),
('Moblin', 'The Wind Waker', 'Forsaken Fortress', 'Long spear', 'Skull Necklaces', 4, '2018-04-05', '2018-04-11'),
('Octorok', 'Phantom Hourglass', 'Land, water', 'Projectiles, charging', 'Rupees', 5, '2018-04-11', '0000-00-00'),
('Keese', 'Breath of the Wild', 'Caves, Dungeons', 'Swarm', 'Keese Wing, Keese Eyeball (Rare)', 6, '2018-04-11', '0000-00-00'),
('Stalfos', 'Four Swords', 'Trial of Seas Level', 'Contact, bones', 'none', 7, '2018-04-13', '2018-04-13'),
('Tektite', 'Oracle of Seasons', 'Overworld, Underworld', 'Jumping Attack', 'Rupees, hearts', 8, '2018-04-13', '2018-04-16'),
('Wizzrobe', 'Four Swords Adventures', 'Temples', 'Magic spells, magic wand, staves', 'none', 9, '2018-04-13', '0000-00-00'),
('Armos', 'Twilight Princess', 'Temple of Time, Cave of Ordeals', 'Sword, Shield, Jumping attack', 'Rupees', 10, '2018-04-16', '0000-00-00');

--
-- Triggers `Enemies`
--
DELIMITER $$
CREATE TRIGGER `lastUpdatedEnemy` BEFORE UPDATE ON `Enemies` FOR EACH ROW BEGIN
SET new.dateUpdated = now();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `timeAddedEnemy` BEFORE INSERT ON `Enemies` FOR EACH ROW BEGIN
SET new.dateAdded = now();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Games`
--

CREATE TABLE `Games` (
  `title` varchar(255) NOT NULL,
  `yearReleased` int(4) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `numOfChars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Games`
--

INSERT INTO `Games` (`title`, `yearReleased`, `platform`, `rating`, `id`, `numOfChars`) VALUES
('A Link Between Worlds', 2013, 'Nintendo 3DS', 'E', 15, 0),
('A Link to the Past ', 1991, 'Super Nintendo Entertainment System', 'E', 5, 0),
('Breath of the Wild', 2017, 'Wii U/Nintendo Switch', 'E10+', 19, 0),
('Four Swords', 2002, 'Game Boy Advance', 'E', 18, 0),
('Four Swords Adventures', 2004, 'Nintendo Gamecube', 'E', 16, 0),
('Link\'s Awakening', 1993, 'Game Boy', 'E', 17, 0),
('Majora\'s Mask', 2000, 'Nintendo 64', 'E', 1, 0),
('Ocarina of Time', 1998, 'Nintendo 64', 'E', 6, 0),
('Oracle of Ages', 2001, 'Game Boy Color', 'E', 7, 0),
('Oracle of Seasons', 2001, 'Game Boy Color', 'E', 8, 0),
('Phantom Hourglass', 2007, 'Nintendo DS', 'E', 10, 0),
('Skyward Sword', 2011, 'Nintendo Wii', 'E10+', 11, 0),
('Spirit Tracks', 2009, 'Nintendo DS', 'E10+', 13, 0),
('The Adventure of Link', 1988, 'Nintendo Entertainment System', 'E', 3, 0),
('The Legend of Zelda', 1987, 'Nintendo Entertainment System', 'E', 4, 0),
('The Minish Cap', 2004, 'Game Boy Advance', 'E', 14, 0),
('The Wind Waker', 2003, 'Nintendo Gamecube', 'E', 2, 0),
('Tri Force Heroes', 2015, 'Nintendo 3DS', 'E', 9, 0),
('Twilight Princess', 2006, 'Nintendo GameCube/Wii', 'T', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `name` varchar(255) NOT NULL,
  `found` varchar(255) NOT NULL,
  `uses` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `appearances` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`name`, `found`, `uses`, `id`, `appearances`) VALUES
('Heart Container', 'Boss spoils, Collecting Pieces of Heart', 'Increase life meter', 1, 'The Wind Waker'),
('Heart Container', 'Goddess Hylia statues, Trading Stamina Vessels with the Horned Statue', 'Increase Link\'s life meter', 3, 'Breath of the Wild'),
('Wind Waker', 'Dragon Roost Island', 'Invoking the power of songs', 4, 'The Wind Waker'),
('Ocarina of Time', 'Hyrule Field', 'Playing songs with different effects', 5, 'Ocarina of Time'),
('Ocarina of Time', 'Clock Tower', 'Playing songs with different effects', 6, 'Majora\'s Mask'),
('Goddess\'s Harp', 'Temple of Time', 'Playing songs with various effects', 7, 'Skyward Sword'),
('Master Sword', 'Lost Woods', 'Sword, Damages enemies, Repels & seals evil', 8, 'A Link to the Past'),
('Master Sword', 'Temple of Time', 'Sword, Damages enemies, Repels & seals evil', 9, 'Ocarina of Time'),
('Dungeon Map', 'One of the first few rooms of their dungeon', 'Displays dungeon layout', 10, 'The Legend of Zelda'),
('Compass', 'Dungeons', 'Locates treasure chests in dungeons and the Nightmare\'s lair is', 11, 'Link\'s Awakening'),
('Hylian Shield', 'Turtle Rock', 'Guard against magical attacks', 12, 'A Link Between Worlds'),
('Hylian Shield', 'Hyrule Castle Lockup, Rare Armor Shop, amiibo Rune', 'Metal Shield, Shield Surfing', 13, 'Breath of the Wild'),
('Hylian Shield', 'Malo Mart, Hyrule Castle Town', 'Blocks enemy attacks, protects Link from Boulders', 14, 'Twilight Princess'),
('Hylian Shield', 'Bazaar, Kakariko Graveyard', 'Blocks enemy attacks when playing adult Link', 15, 'Ocarina of Time'),
('Hylian Shield', 'Lanayru Gorge', 'Blocks enemy attacks, Protects Link from Boulders', 16, 'Skyward Sword'),
('Bomb Arrow', 'Made by combining Arrows and Bombs', 'Hitting distant targets with explosive force', 17, 'Twilight Princess');

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `name` varchar(255) NOT NULL,
  `appearances` varchar(255) DEFAULT NULL,
  `pointsOfInterest` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`name`, `appearances`, `pointsOfInterest`, `country`, `id`) VALUES
('Lost Woods', 'Ocarina of Time', 'Forest Stage, Forest Temple, Sacred Forest Meadow', 'Hyrule', 1),
('Lake Hylia', 'Ocarina of Time', 'Fishing Pond, Lakeside Laboratory, Water Temple', 'Hyrule', 2),
('Gerudo Desert', 'Twilight Princess', 'Arbiter\'s Grounds, Bulblin Camp, Cave of Ordeals, Gerudo Mesa', 'Hyrule', 4),
('Gerudo Desert', 'Breath of the Wild', 'Gerudo Town, Kara Kara Bazaar, Northern Icehouse, Gerudo Great Skeleton, Divine Beast Vah Naboris', 'Hyrule', 5),
('Lon Lon Ranch', 'The Minish Cap', 'Goron Cave', 'Hyrule', 6),
('Forest Haven', 'The Wind Waker', 'Hollo\'s Forest Potion Shop, Forbidden Woods, Nintendo Gallery', 'Great Sea', 7),
('Islet of Steel', 'The Wind Waker', 'none', 'Great Sea', 8),
('Gale Isle', 'The Wind Waker', 'Wind Temple', 'Great Sea', 9),
('Castle Town', 'Spirit Tracks', 'Castle Town Shop, Take \'Em All On, Stamp Station', 'New Hyrule', 10),
('Death Mountain', 'The Legend of Zelda', 'Level 9, Spectacle, Rock Waterfall', 'Hyrule', 11),
('Eastmost Penninsula', 'The Wind Waker', 'Triforce Piece, Heart Container, 2nd Potion, 100 Rupees', 'Hyrule', 12),
('Sea of Storms', 'Oracle of Ages', 'Pirate Ship', 'Labrynna', 13),
('Eastern Hyrule', 'The Adventure of Link', 'Town of Nabooru, Mountain Town of Darunia, Kasuto, Hidden Town of Kasuto, Ocean Palace, Hidden Palace, Great Palace, Valley of Death', 'Hyrule', 14);

-- --------------------------------------------------------

--
-- Table structure for table `Races`
--

CREATE TABLE `Races` (
  `name` varchar(255) NOT NULL,
  `homeland` varchar(255) DEFAULT NULL,
  `precededBy` varchar(255) DEFAULT NULL,
  `succeededBy` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `distinctions` varchar(255) DEFAULT NULL,
  `appearances` varchar(255) NOT NULL,
  `notableMembers` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Races`
--

INSERT INTO `Races` (`name`, `homeland`, `precededBy`, `succeededBy`, `id`, `distinctions`, `appearances`, `notableMembers`) VALUES
('Hylian', 'Hyrule', ' Either the gods or the Oocca', 'Humans', 1, 'Long pointed ears', 'The Legend of Zelda', 'Link, Zelda'),
('Skull Kid', 'Lost Woods', 'none', 'none', 3, 'Childlike appearance, Carry woodwind instruments', 'Ocarina of Time', 'Skull Kid'),
('Gerudo', 'Desert of Doubt', 'none', 'none', 4, 'Almost exclusively female, Tan, brown, Greenish-brown, or white skin, Gold or Green eyes, Red or pink hair, Bird-like pointed nose, Round or long pointed ears', 'Four Swords Adventures', 'Ganondorf'),
('Demon', 'Dark Realm, New Hyrule', 'none', 'none', 5, 'Humanoid bodies', 'Spirit Tracks', 'Malladus'),
('Zora', 'Zora\'s Domin', 'none', 'none', 6, 'Fins, Fish-like yet humanoid bodies', 'Twilight Princess', 'Prince Ralis'),
('Kokiri', 'Hyrule', 'Greak Deku Tree', 'Skull Kid, Korok', 7, ' Elf-like, Ageless children, Accompanied by Fairies', 'The Wind Waker', 'Fado'),
('Rito', 'Great Sea', 'Zora', 'none', 8, 'Beaks Wings', 'The Wind Waker', 'Quill'),
('Diety', 'none', 'none', 'none', 9, 'Divine powers', 'Twilight Princess', 'Ordona, Faron, Eldin, Lanayru'),
('Goron', 'Hyrule', 'none', 'none', 10, 'Rock eaters, Large girth, Immune to heat, Rock-like bodies', 'Ocarina of Time', 'Medigoron, Biggoron, Darunia'),
('Lokomo', 'New Hyrule', 'none', 'none', 11, 'Long-pointed ears, Sharp, thin noses, Short legs', 'Spirit Tracks', 'Anjean, Byrne, Carben, Embrose, Gage, Rael, Steem'),
('Cucco', 'Hyrule', 'none', 'Bone Cucco', 12, 'Have white feathers, can fly', 'A Link to the Past', 'none'),
('Minish', 'Minish World', 'none', 'none', 13, 'Only visible to children and are the size of a thumb. Have large, beady eyes.', 'The Minish Cap', 'Belari, Ezlo, Festari, Gentari, Jotari, Librari, Melari, Vaati'),
('Fairy', 'Hyrule', 'none', 'none', 14, ' Insect-like wings, Healing properties', 'Oracle of Ages', 'The Hide N Seek Fairies'),
('Deku', 'Termina', 'none', 'none', 15, 'Plant-like body, Ability to shoot Deku Nuts', 'Majora\'s Mask', 'Decci, Dekki, Deku Butler, Deku Butler\'s Son, Deku King, Deku Palace Guards, Deku Princess, Deku Scrub Brothers, Deppi'),
('Sheikah', 'Hyrule', 'Hylians', 'none', 16, 'Similar to Hylian, Long, pointed ears, Red eyes, White hair, Tan skin', 'Ocarina of Time', 'Sheik, Impa');

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalsInGames`
-- (See below for the actual view)
--
CREATE TABLE `totalsInGames` (
`title` varchar(255)
,`numOfCharacters` bigint(21)
,`numOfBosses` bigint(21)
,`numOfEnemies` bigint(21)
,`numOfLocations` bigint(21)
,`numOfRaces` bigint(21)
,`numOfItems` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `totalsInGames`
--
DROP TABLE IF EXISTS `totalsInGames`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sarahn74`@`localhost` SQL SECURITY DEFINER VIEW `totalsInGames`  AS  select `Games`.`title` AS `title`,count(distinct `Characters`.`name`) AS `numOfCharacters`,count(distinct `Bosses`.`name`) AS `numOfBosses`,count(distinct `Enemies`.`name`) AS `numOfEnemies`,count(distinct `Locations`.`name`) AS `numOfLocations`,count(distinct `Races`.`name`) AS `numOfRaces`,count(distinct `Items`.`name`) AS `numOfItems` from ((((((`Games` left join `Characters` on((`Games`.`title` = `Characters`.`appearances`))) left join `Bosses` on((`Games`.`title` = `Bosses`.`appearances`))) left join `Enemies` on((`Games`.`title` = `Enemies`.`appearances`))) left join `Locations` on((`Games`.`title` = `Locations`.`appearances`))) left join `Races` on((`Games`.`title` = `Races`.`appearances`))) left join `Items` on((`Games`.`title` = `Items`.`appearances`))) group by `Games`.`title` order by `Games`.`yearReleased` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bosses`
--
ALTER TABLE `Bosses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC_Boss` (`name`,`appearances`),
  ADD KEY `Bosses_ibfk_1` (`appearances`);

--
-- Indexes for table `Characters`
--
ALTER TABLE `Characters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC_Character` (`name`,`appearances`),
  ADD KEY `Characters_ibfk_1` (`appearances`),
  ADD KEY `Characters_ibfk_2` (`race`);

--
-- Indexes for table `Enemies`
--
ALTER TABLE `Enemies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC_Enemy` (`name`,`appearances`),
  ADD KEY `Enemies_ibfk_1` (`appearances`);

--
-- Indexes for table `Games`
--
ALTER TABLE `Games`
  ADD PRIMARY KEY (`title`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC_Item` (`name`,`appearances`),
  ADD KEY `Items_ibfk_1` (`appearances`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC_Location` (`name`,`appearances`),
  ADD KEY `Locations_ibfk_1` (`appearances`);

--
-- Indexes for table `Races`
--
ALTER TABLE `Races`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bosses`
--
ALTER TABLE `Bosses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `Characters`
--
ALTER TABLE `Characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `Enemies`
--
ALTER TABLE `Enemies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Games`
--
ALTER TABLE `Games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `Locations`
--
ALTER TABLE `Locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Races`
--
ALTER TABLE `Races`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bosses`
--
ALTER TABLE `Bosses`
  ADD CONSTRAINT `Bosses_ibfk_1` FOREIGN KEY (`appearances`) REFERENCES `Games` (`title`);

--
-- Constraints for table `Characters`
--
ALTER TABLE `Characters`
  ADD CONSTRAINT `Characters_ibfk_1` FOREIGN KEY (`appearances`) REFERENCES `Games` (`title`),
  ADD CONSTRAINT `Characters_ibfk_2` FOREIGN KEY (`race`) REFERENCES `Races` (`name`);

--
-- Constraints for table `Enemies`
--
ALTER TABLE `Enemies`
  ADD CONSTRAINT `Enemies_ibfk_1` FOREIGN KEY (`appearances`) REFERENCES `Games` (`title`);

--
-- Constraints for table `Items`
--
ALTER TABLE `Items`
  ADD CONSTRAINT `Items_ibfk_1` FOREIGN KEY (`appearances`) REFERENCES `Games` (`title`);

--
-- Constraints for table `Locations`
--
ALTER TABLE `Locations`
  ADD CONSTRAINT `Locations_ibfk_1` FOREIGN KEY (`appearances`) REFERENCES `Games` (`title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
