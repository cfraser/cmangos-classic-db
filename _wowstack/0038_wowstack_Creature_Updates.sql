-- Kimberly Hiett will no longer sell explosive sheep
DELETE FROM `npc_vendor` WHERE `entry`='789' and`item`='4384';

-- Syndicate Assasin will now drop Cloaked Hood
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('2246', '1280', '1.3', '1', '1', '1', '0');

-- Master Smith Burninate will now repair items
UPDATE `creature_template` SET `UnitFlags` = 20487 WHERE `entry` = 14624;

-- Galvan the Ancient now has his work emote
UPDATE `creature_addon` SET `emote`='173' WHERE `guid`='384';

-- Skullsplitter Headhunter will now flee on low HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('78101', '781', '2', '0', '100', '0', '0', '15', '0', '0', '25', '1', '-47', 'Skullsplitter Headhunter - Flee on low HP');

-- Added AI for Bloodsail Swabby
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('450601', '4506', '0', '0', '100', '1', '2000', '3000', '10000', '15000', '11', '11978', '1', 'Bloodsail Swabby - Cast Kick');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('450602', '4506', '2', '0', '100', '0', '0', '15', '0', '0', '25', '1', '-47', 'Bloodsail Swabby - Flee at 15% HP');
