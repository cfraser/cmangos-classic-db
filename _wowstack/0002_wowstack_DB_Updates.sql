-- Cannoneer Smythe Flee at 15%
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (345401,3454,2,0,100,0,15,0,0,0,25,0,0,0,1,-47,0,0,0,0,0,0,'Cannoneer Smythe - Flee at 15% HP');

-- Update health for Sleeby
UPDATE creature_template SET minlevelhealth = 1408, maxlevelhealth = 1408 WHERE entry = 2764;

-- Add AI script for Sleeby
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('276403', '2764', '0', '0', '100', '1', '3000', '6000', '10000', '20000', '11', '700', '1', 'Sleeby - Cast Sleep');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('276404', '2764', '2', '0', '100', '0', '25', '25', '25', '25', '11', '10577', '0', 'Sleeby - Cast Heal at 25% HP');

UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 2764;

-- Correct Znort health
UPDATE creature_template SET minlevelhealth = 1662, maxlevelhealth = 1662 WHERE entry = 2765;

-- Correct Hederine Initiate walk speed
UPDATE creature_template SET speedwalk = 1 WHERE entry = 7461;

--  Correct Hederine Manstalker walk speed
UPDATE creature_template SET speedwalk = 1 WHERE entry = 7462;

-- Correct Hederine Slayer walk speed
UPDATE creature_template SET speedwalk = 1 WHERE entry = 7463;

-- Correct Cliff Thunderer walk speed
UPDATE creature_template SET speedwalk = 1 WHERE entry = 6147;

-- Add spell template for Nightbane Shadow Weaver
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`) VALUES ('553', '9613', '11639');

-- Add AI script for Nightbane Shadow Weaver
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53301,533,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Nightbane Shadow Weaver - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53302,533,4,0,100,0,0,0,0,0,11,9613,1,0,22,1,0,0,0,0,0,0,'Nightbane Shadow Weaver - Cast Shadowbolt and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53303,533,9,13,100,1,0,40,3400,4700,11,9613,1,0,0,0,0,0,0,0,0,0,'Nightbane Shadow Weaver - Cast Shadowbolt (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53304,533,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Nightbane Shadow Weaver - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53305,533,9,13,100,1,25,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Nightbane Shadow Weaver - Start Combat Movement at 35 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53306,533,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Nightbane Shadow Weaver - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53307,533,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Nightbane Shadow Weaver - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53308,533,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Nightbane Shadow Weaver - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53309,533,0,0,100,1,6000,10000,18000,28000,11,11639,1,0,0,0,0,0,0,0,0,0,'Nightbane Shadow Weaver - Shadow Word: Pain');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (53310,533,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Nightbane Shadow Weaver - Set Phase to 0 on Evade');

UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 450;

-- Correct Captain Armando Ossex Rank (Elite)
UPDATE creature_template SET 'rank' = 1 WHERE entry = 16392;

-- Fix Kobold fire resistance
UPDATE creature_template SET resistancefire = 0 WHERE entry = 40;
UPDATE creature_template SET resistancefire = 0 WHERE entry = 475;
UPDATE creature_template SET resistancefire = 0 WHERE entry = 476;
UPDATE creature_template SET resistancefire = 0 WHERE entry = 1236;
UPDATE creature_template SET resistancefire = 0 WHERE entry = 4111;

-- Add spell template for Old Serra'kis
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`) VALUES ('4830', '9613', '11639');

-- Add EventAI for Serra'kis
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 4830;

-- Add AI script for Serra'kis
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (483001,4830,NULL,11,100,0,NULL,NULL,NULL,NULL,11,8434,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Old Serrakis - Cast Leech Pulse on Spawn');

-- Correct AI script for Redridge Mongrel
INSERT INTO `classic_db`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('42303', '423', '0', '0', '100', '1', '3000', '6000', '30000', '45000', '11', '3427', '1', 'Redridge Mongrel - Cast Infected Wound');

-- Update AI name and spell template for Sarilus Foulborne
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3986;
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`) VALUES ('3986', '20806', '6490');

-- Add AI script for Sarilus Foulborne
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398601,3986,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Sarilus Foulborne - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398602,3986,4,0,100,0,0,0,0,0,11,6490,0,0,22,1,0,0,0,0,0,0,'Sarilus Foulborne - Cast Sarilus Elementals and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398603,3986,9,13,100,1,0,40,3400,4700,11,20806,1,0,0,0,0,0,0,0,0,0,'Sarilus Foulborne - Cast Frostbolt (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398604,3986,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Sarilus Foulborner - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398605,3986,9,13,100,1,25,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Sarilus Foulborne - Start Combat Movement at 40 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398606,3986,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Sarilus Foulborne - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398607,3986,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Sarilus Foulborne - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398608,3986,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Sarilus Foulborne - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (398609,3986,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Sarilus Foulborne - Set Phase to 0 on Evade');
