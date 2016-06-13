ALTER TABLE `areatrigger_teleport`
	DROP COLUMN `required_quest_done`,
	DROP COLUMN `required_item2`,
	DROP COLUMN `required_item`,
	DROP COLUMN `required_level`,
	ADD COLUMN `condition_id` MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `target_orientation`
;

DELETE FROM `server_messages` WHERE `entry` IN (49, 50, 67, 68, 69, 70, 367, 368, 369);
INSERT INTO `server_messages`
	(`entry`, `content_default`)
VALUES
	 (49, 'You must be at least level %u to enter.')
	,(50, 'You must have item %s to enter.')
	,(67, 'You must be member of the Horde to enter.')
	,(68, 'You must be member of the Alliance to enter.')
	,(69, 'You must be at most level %u to enter.')
	,(70, 'You must have level %u to enter.')
	,(367, 'Condition %u')
;
