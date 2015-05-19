-- Correct position of Horde Warbringer in Thunderbluff
UPDATE `creature` SET `position_x` = -1381.46, `position_y` = -86.9874, `position_z` = 159.432, `orientation` = 3.1379 WHERE `guid` = 26901;

-- Correct position of Kergul Bloodaxe in Thunderbluff
UPDATE `creature` SET `position_x` = -1381.97, `position_y` = -76.2225, `position_z` = 160.518, `orientation` = 3.1953 WHERE `guid` = 24794;

-- Correct position of Taim Ragetotem in Thunderbluff
UPDATE `creature` SET `position_x` = -1384.65, `position_y` = -98.6253, `position_z` = 158.936, `orientation` = 2.85699 WHERE `guid` = 24670;

-- Martin Lindsey now resides in The Pools of Vision
UPDATE `creature` SET `position_x` = -988.787, `position_y` = 219.322, `position_z` = 104.182, `orientation` = 4.2181 WHERE `guid` = 26564;

-- Correct position for Lar Prowltusk
UPDATE `creature` SET `position_x` = -816.565, `position_y` = -4845.41, `position_z` = 21.2559, `orientation` = 1.8021 WHERE `guid` = 4699;

-- Correct position for Master Gadrin
UPDATE `creature` SET `position_x` = -825.902, `position_y` = -4920.88, `position_z` = 19.4137, `orientation` = 0.003535 WHERE `guid` = 6462;

-- Correct position for Kali Remik
UPDATE `creature` SET `position_x` = -807.945, `position_y` = -4931.27, `position_z` = 22.9659, `orientation` = 2.9959 WHERE `guid` = 705;

-- Kali Remik will now dance (for monies)
UPDATE `creature_addon` SET `emote`='10' WHERE `guid`='705';

-- Added some vanilla spawns to Razor Hill
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES (590152,5953,1,0,133,304.261,-4737.93,9.46032,1.93204,25,0,0,1006,0,0,0);

-- Fix Zukk'ash Stinger for reals!
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 5244;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (524403,5244,0,0,100,0,3000,3000,0,0,11,17170,1,2,0,0,0,0,0,0,0,0,'Zukk\'ash Stinger - Cast  Fatal Sting after 3 seconds (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (524402,5244,2,0,100,0,15,0,0,0,22,2,0,0,1,-1328,0,0,21,0,0,0,'Zukk\'ash Stinger - Set Phase 2 and Emote and Stop Combat Movement at 15% HP');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (524401,5244,1,0,100,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,'Zukk\'ash Stinger - Set Phase 1 on Spawn');