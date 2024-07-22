--
-- Table structure for table `runes`
--

CREATE TABLE `runes` (
  `char_id` int(10) UNSIGNED NOT NULL,
  `rune_id` int(10) UNSIGNED NOT NULL,
  `set_id` int(10) UNSIGNED NOT NULL,
  `selected` tinyint(4) NOT NULL DEFAULT '0',
  `upgrade` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `failcount` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `runes_book`
--

CREATE TABLE `runes_book` (
  `char_id` int(10) UNSIGNED NOT NULL,
  `rune_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------