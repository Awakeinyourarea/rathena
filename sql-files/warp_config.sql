-- --------------------------------------------------------

--
-- Table structure for table `warp_guild`
--

CREATE TABLE `warp_guild` (
  `map` varchar(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warp_guild`
--

INSERT INTO `warp_guild` (`map`, `state`) VALUES
('aldeg_cas01', 0),
('aldeg_cas02', 0),
('aldeg_cas03', 0),
('aldeg_cas04', 0),
('aldeg_cas05', 0),
('gefg_cas01', 0),
('gefg_cas02', 0),
('gefg_cas03', 0),
('gefg_cas04', 0),
('gefg_cas05', 0),
('payg_cas01', 0),
('payg_cas02', 0),
('payg_cas03', 0),
('payg_cas04', 0),
('payg_cas05', 0),
('prtg_cas01', 0),
('prtg_cas02', 0),
('prtg_cas03', 0),
('prtg_cas04', 0),
('prtg_cas05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `woe_battle`
--

CREATE TABLE `woe_battle` (
  `guild_id1` mediumint(6) NOT NULL DEFAULT '0',
  `guild_id2` mediumint(6) NOT NULL DEFAULT '0',
  `guild_id3` mediumint(6) NOT NULL DEFAULT '0',
  `guild_id4` mediumint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------