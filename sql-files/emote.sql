CREATE TABLE IF NOT EXISTS `account_emote` (
    `account_id` INT UNSIGNED NOT NULL,
    `pack_id` INT UNSIGNED NOT NULL,
    `expire_time` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`account_id`, `pack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `char_emote` (
    `char_id` INT UNSIGNED NOT NULL,
    `pack_id` INT UNSIGNED NOT NULL,
    `expire_time` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`char_id`, `pack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
