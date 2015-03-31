-- Prevent Blood Elf Reclaimer from fleeing
DELETE FROM `creature_ai_scripts` WHERE `id`='619912';
UPDATE `creature_ai_scripts` SET `id`='619912' WHERE `id`='619913';

-- Correct Greater Thunderhawk Thunderclap initial timer
UPDATE creature_ai_scripts SET event_param1 = 3000, event_param2 = 6000 WHERE id = 324901;

-- Correct AI for Blood Elf Surveyor and prevent it from fleeing
UPDATE `creature_ai_scripts` SET `event_param1`='3000', `event_param2`='10000' WHERE `id`='619801';
DELETE FROM `creature_ai_scripts` WHERE `id`='619802';

-- Add AI for Captain Gerogg Hammertoe
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('585101', '5851', '11', '0', '100', '0', '11', '71', '0', 'Captain Gerogg Hammertoe - Cast Defensive Stance on Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('585102', '5851', '0', '0', '100', '1', '6000', '10000', '13000', '17000', '11', '3419', '0', 'Captain Gerogg Hammertoe - Cast Improved Blocking');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('585103', '5851', '13', '0', '100', '1', '10000', '20000', '11', '1672', '1', 'Captain Gerogg Hammertoe - Cast Shield Bash');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('585104', '5851', '0', '0', '100', '1', '10000', '20000', '13000', '17000', '11', '15062', '0', 'Captain Gerogg Hammertoe - Cast Shield Wall');

UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 5851;

-- Update Immune Mask for Hagg Taurenbane
UPDATE creature_template SET MechanicImmuneMask = 603991583 WHERE entry = 5859;

-- Hagg Taurenbane Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('585905', '5859', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Hagg Taurenbane - Flee at 15% HP');

-- Greater Plainstrider Flee at 15% HP
DELETE FROM creature_ai_scripts WHERE creature_id = 3244;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('324401', '3244', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Greater Plainstrider - Flee at 15% HP');

-- Add AI for Jaguero Stalker
UPDATE creature_template_spells SET spell2 = 22766 WHERE entry = 2522;
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 2522;

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('252201', '2522', '11', '0', '100', '0', '11', '22766', '0', 'Jaguero Stalker - Cast Sneak on Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('252202', '2522', '4', '0', '100', '0', '11', '3417', '0', 'Jaguero Stalker - Cast Thrash on Aggro');

-- Silithid Swarmer cast Silithid Swarm on Spawn
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('325202', '3252', '11', '0', '100', '0', '11', '6589', '0', 'Silithid Swarmer Cast - Silithid Swarm on Spawn');

-- Stop deeprun Rat from instantly respawning
UPDATE creature SET spawntimesecs = 10 WHERE id = 13016;

-- Tinkerer Sniggles flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('347101', '3471', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Tinkerer Sniggles - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entryr = 3471;

-- Venture Co. Mercenary Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('328207', '3282', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Venture Co. Mercenary - Flee at 15% HP');

-- Venture Co. Peon Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('328501', '3285', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Venture Co. Peon - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3285;

-- Add AI text for Kul Tiras Sailor
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('-1322', '%s Charges!', '0', '1', '0', '0', 'Kul Tiras Sailor');
UPDATE `creature_ai_scripts` SET `action2_type`='1', `action2_param1`='-1322' WHERE `id`='312801';

-- Mist Howler Call for Help at 50% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('1064404', '10644', '2', '0', '100', '0', '50', '50', '50', '50', '39', '30', '1', '-551', 'Mist Howler - Call for help at 50% HP');

-- Venture Co. Enforcer Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('328303', '3283', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Venture Co. Enforcer - Flee at 15% HP');

-- Add Gossip for Remy "Two Times"
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('921062', 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES ('80326', '921062');

-- Correct Position for Marez Cowl
UPDATE creature SET position_x =-1644.56, position_y =-1933.05, position_z =68.1722, orientation =0.174533, WHERE guid = 14652;



