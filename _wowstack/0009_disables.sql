DROP TABLE IF EXISTS `disables`;

CREATE TABLE `disables` (
  `sourceType` int(10) unsigned NOT NULL COMMENT 'Type of disable, see enum DisableType',
  `entry` int(10) unsigned NOT NULL COMMENT 'Main entry for disable, type-specific',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag bitfield, type-specific',
  `data` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Additional data, type-specific',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Description of disable cause',
  PRIMARY KEY (`sourceType`,`entry`,`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Content disable system';
