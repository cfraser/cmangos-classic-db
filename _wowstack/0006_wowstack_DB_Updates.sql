--Sunscale Screecher - Call for help at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `comment`) VALUES ('325501', '3255', '2', '0', '100', '0', '15', '15', '15', '15', '39', '30', 'Sunscale Screecher - Call for help at 15% HP');

-- Southsea Cutthroat - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('338301', '3383', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Southsea Cutthroat - Flee at 15% HP');

--
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('320503', '3205', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Zalazane - Flee at 15% HP');

-- Voodoo Troll - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('320604', '3206', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Voodoo Troll - Flee at 15% HP');

-- Correct Zzarc' Vul level
UPDATE creature_template SET minlevel = 30, maxlevel = 30 WHERE entry = 300;

-- Correct level for Pimgib
UPDATE creature_template SET minlevel = 56, maxlevel = 56 WHERE entry = 14349;

-- Correct stats for General Marcus Jonathan
UPDATE creature_template SET minlevel = 62, maxlevel = 62 WHERE entry = 466;
UPDATE creature_template SET minlevelhealth = 129835, maxlevelhealth = 129835 WHERE entry = 466;

-- Correct Afrasiabi health
UPDATE creature_template SET minlevelhealth = 100480, maxlevelhealth = 100480 WHERE entry = 14721;

-- Correct Major Mattingly health
UPDATE creature_template SET minlevelhealth = 97664, maxlevelhealth = 97664 WHERE entry = 14394;

-- Fix Blood Steward of Kirtonos walk speed
UPDATE creature_template SET speedwalk = 1 WHERE entry = 14861;

-- Fix Rat health
UPDATE creature_template SET minlevelhealth = 1, maxlevelhealth = 1 WHERE entry = 4075

-- Correct Unstable Corpse AI
DELETE FROM `creature_ai_scripts` WHERE `id`='1048001';
UPDATE `creature_ai_scripts` SET `id`='1048001' WHERE `id`='1048002';

-- Correct walk speed for Princess Theradras
UPDATE creature_template SET speedwalk = 1 WHERE entry = 12201;

-- Fix Adder health
UPDATE creature_template SET minlevelhealth = 1, maxlevelhealth = 1 WHERE entry = 3300;

-- Correct resistances for Lord Roccor
UPDATE creature_template SET resistanceholy = 200, resistancefire = 200, resistancenature = 200, resistancefrost = 200, resistanceshadow = 200, resistancearcane = 200 WHERE entry = 9025;

-- Correct health for Krellack
UPDATE creature_template SET minlevelhealth = 8097, maxlevelhealth = 8097 WHERE entry = 14476;

-- Correct creature template stats for Irondeep Surveyor
UPDATE creature_template SET minlevelhealth = 1769, maxlevelhealth = 1769, minlevel = 56, maxlevel = 56, speedwalk = 1 WHERE entry = 13098;

-- Correct Frostwolf Bowman health
UPDATE creature_template SET minlevelhealth = 8572, maxlevelhealth = 8572 WHERE entry = 13359;

-- Correct Stormpike Guardsman health
UPDATE creature_template SET minlevelhealth = 3670, maxlevelhealth = 3670 WHERE entry = 12127;

-- Correct Frostwolf Legionnaire health
UPDATE creature_template SET minlevelhealth = 3670, maxlevelhealth = 3670 WHERE entry = 12051;

-- Correct Stormpike Guardsman health
UPDATE creature_template SET minlevelhealth = 3670, maxlevelhealth = 3670 WHERE entry = 12127;

-- Correct Frostwolf Guardian health
UPDATE creature_template SET minlevelhealth = 3844, maxlevelhealth = 3844 WHERE entry = 12053;

-- Correct Coldmine Invader level
UPDATE creature_template SET minlevel = 56, maxlevel = 56 WHERE entry = 13087;

--
-- Add AI script for Twilight Lord Everun
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447901,14479,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Twilight Lord Everun - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447902,14479,4,0,100,0,0,0,0,0,11,17439,1,0,22,1,0,0,0,0,0,0,'Nightbane Shadow Weaver - Cast Shadow Shock and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447903,14479,9,13,100,1,0,40,3400,4700,11,19816,1,0,0,0,0,0,0,0,0,0,'Twilight Lord Everun - Cast Shadowbolt (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447904,14479,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Twilight Lord Everun - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447905,14479,9,13,100,1,25,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Twilight Lord Everun - Start Combat Movement at 35 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447906,14479,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Twilight Lord Everun- Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447907,14479,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Twilight Lord Everun - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447908,14479,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Twilight Lord Everun - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447909,14479,0,0,100,1,15000,25000,12000,15000,11,17439,1,0,0,0,0,0,0,0,0,0,'Twilight Lord Everun Cast - Shadow Shock');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1447910,14479,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Twilight Lord Everun - Set Phase to 0 on Evade');

UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14479;

-- Remove loot template for Ghost of the Past
DELETE * FROM creature_loot_template WHERE entry = 10940;

-- Update Immunities for Ironbark Protector
UPDATE creature_template SET MechanicImmuneMask = 116097015 WHERE entry = 11459