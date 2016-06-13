ALTER TABLE `game_event`
DROP COLUMN `end_time`,
DROP COLUMN `start_time`,
CHANGE COLUMN `occurence` `occurrence` BIGINT(20) UNSIGNED NOT NULL DEFAULT '86400' COMMENT 'Delay in minutes between occurences of the event' ;

ALTER TABLE `game_event`
ADD COLUMN `start_time` DATETIME NOT NULL DEFAULT '2005-02-11 00:00:00' AFTER `entry`,
ADD COLUMN `end_time` DATETIME NOT NULL DEFAULT '2055-02-11 00:00:00' AFTER `start_time`;

UPDATE `game_event`
SET
	`start_time` = '2007-06-20 20:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 1;

UPDATE `game_event`
SET
	`start_time` = '2006-12-14 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 2;

UPDATE `game_event`
SET
	`start_time` = '2006-02-08 21:00:00',
	`end_time` = '2020-12-31 04:59:59'
WHERE `entry` = 3;

UPDATE `game_event`
SET
	`start_time` = '2006-02-08 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 4;

UPDATE `game_event`
SET
	`start_time` = '2006-01-07 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 5;

UPDATE `game_event`
SET
	`start_time` = '2007-12-31 21:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 6;

UPDATE `game_event`
SET
	`start_time` = '2006-01-27 22:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 7;

UPDATE `game_event`
SET
	`start_time` = '2006-02-10 22:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 8;

UPDATE `game_event`
SET
	`start_time` = '2006-04-16 20:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 9;

UPDATE `game_event`
SET
	`start_time` = '2007-05-01 20:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 10;

UPDATE `game_event`
SET
	`start_time` = '2006-10-18 20:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 12;

UPDATE `game_event`
SET
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 13;

UPDATE `game_event`
SET
	`start_time` = '2006-01-02 05:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 14;

UPDATE `game_event`
SET
	`start_time` = '2006-01-01 11:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 15;

UPDATE `game_event`
SET
	`start_time` = '2005-12-31 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 16;

UPDATE `game_event`
SET
	`start_time` = '2006-01-19 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 18;

UPDATE `game_event`
SET
	`start_time` = '2006-01-26 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 19;

UPDATE `game_event`
SET
	`start_time` = '2006-01-05 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 20;

UPDATE `game_event`
SET
	`start_time` = '2006-12-25 16:00:00',
	`end_time` = '2020-12-31 16:00:00'
WHERE `entry` = 21;

UPDATE `game_event`
SET
	`start_time` = '2006-02-05 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 23;

UPDATE `game_event`
SET
	`start_time` = '2008-01-01 19:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 27;

UPDATE `game_event`
SET
	`start_time` = '2006-01-23 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 29;

UPDATE `game_event`
SET
	`start_time` = '2006-01-06 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 30;

UPDATE `game_event`
SET
	`start_time` = '2006-01-20 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 31;

UPDATE `game_event`
SET
	`start_time` = '2006-01-04 23:00:00',
	`end_time` = '2020-12-31 22:59:59'
WHERE `entry` = 32;

UPDATE `game_event`
SET
	`start_time` = '2006-10-05 22:00:00',
	`end_time` = '2020-10-05 22:00:00'
WHERE `entry` = 33;

UPDATE `game_event`
SET
	`start_time` = '2006-01-04 14:00:00',
	`end_time` = '2020-12-30 23:00:00'
WHERE `entry` = 34;

UPDATE `game_event`
SET
	`start_time` = '2010-09-23 01:00:00',
	`end_time` = '2020-12-30 23:00:00'
WHERE `entry` = 35;

UPDATE `game_event`
SET
	`start_time` = '2010-03-21 01:00:00',
	`end_time` = '2020-12-30 23:00:00'
WHERE `entry` = 36;

UPDATE `game_event`
SET
	`start_time` = '2010-12-31 23:58:00',
	`end_time` = '2020-12-30 23:00:00'
WHERE `entry` = 61;
