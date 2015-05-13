-- Adjusted drop chance for Flawless Fel Essence
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE `entry`='9862' and`item`='18622';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `entry`='6011' and`item`='18623';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-5' WHERE `entry`='6200' and`item`='18624';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-5' WHERE `entry`='6201' and`item`='18624';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-5' WHERE `entry`='6202' and`item`='18624';

-- Added reward text for "Flash Bomb Recipe"
UPDATE `quest_template` SET `OfferRewardText`='So you''re an engineer, eh? Well, for your help in getting me those pearls, here''s the recipe for flash bombs. Good luck, and try not to blind yourself!' WHERE `entry`='1559';

-- You can now pick up "Messenger to Westfall" only after completing "Messanger to Stormwind"
UPDATE `quest_template` SET `PrevQuestId`='121' WHERE `entry`='143';

-- Captain Stillwater will now cast Flame Strike and Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('255003', '2550', '0', '0', '100', '1', '5000', '8000', '10000', '15000', '11', '8814', '1', 'Captain Stillwater - Cast Flamestrike');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('255004', '2550', '2', '0', '100', '0', '0', '15', '0', '0', '25', '1', '-47', 'Captain Stillwater - Flee at 15% HP');

-- Fleet Master Firallon Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('254602', '2546', '2', '0', '100', '0', '0', '15', '0', '0', '25', '1', '-47', 'Fleet Master Firallon - Flee at 15% HP');

-- King Mukla will now roam around his spawn point
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='823';

-- Stonevault Shaman will now cast Lightning Bolt and Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('289402', '2894', '0', '0', '100', '1', '0', '5', '2400', '3800', '11', '9532', '1', 'Stonevault Shaman - Cast Lightning Bolt');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('289403', '2894', '2', '0', '100', '0', '0', '15', '0', '0', '25', '1', '-47', 'Stonevault Shaman - Flee at 15% HP');

-- Shadowforge Commander will now roam around his spawn point
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='69114';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='134453';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='134454';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='134455';

-- Noboru the Cudgel will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('547701', '5477', '2', '0', '100', '0', '0', '15', '0', '0', '25', '1', '-47', 'Noboru the Cudgel - Flee at 15% HP');

-- Kurzen Medicine Man will now drop Fadeleaf
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('940', '3813', '7.3', '0', '1', '1', '0');

-- Primitive Owlbeast will now move
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='92955';

-- Correct placement for Morbent Fel
UPDATE `creature` SET `position_x` = -10318.5, `position_y` = 377.368, `position_z` = 65.2693, `orientation` = 4.76856 WHERE `guid` = 5056;

-- Morbent Fell now has his adds
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES (590113,604,0,0,0,-10313.1,376.694,65.269,3.16283,25,0,0,853,0,0,0);
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES (590114,1110,0,0,667,-10314.2,372.653,65.2695,1.59989,25,0,0,800,0,0,0);
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES (590112,1110,0,0,667,-10322,376.678,65.2685,6.21804,25,0,0,800,0,0,0);