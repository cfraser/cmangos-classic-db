-- All prowlers will now actually prowl
UPDATE creature SET spawndist = 5 WHERE id = 118;

-- Fix Rank and Speed for Swiftmane
UPDATE `creature_template` SET `SpeedWalk`='2', `Rank`='2' WHERE `Entry`='5831';

-- Humar the Pridelord is now a Rare Elite
UPDATE creature_template SET rank = 2 WHERE entry = 5828;

-- Humar the Pridelord will now call for help on low HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('582802', '5828', '2', '0', '100', '0', '25', '39', '30', '1', '-551', 'Humar the Pridelord - Call for Help at 25% HP');

-- Screeching Windcaller will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('410402', '4104', '2', '0', '100', '0', '15', '25', '0', '1', '-47', 'Screeching Windcaller - Flee at 15% HP');

-- Screeching Roguefeather will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('410102', '4101', '2', '0', '100', '0', '25', '1', '-47', 'Screeching Roguefeather - Flee at 15% HP');

-- Screeching Harpy will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('410002', '4100', '2', '0', '100', '0', '15', '25', '1', '-47', 'Screeching Harpy - Flee at 15% HP');

-- Added AI for Arikara
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10882;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1088201', '10882', '0', '0', '100', '1', '0', '5', '30000', '45000', '11', '13298', '1', 'Arikara - Cast Poison');
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES ('10882', '13298');

-- Add AI for Grimtotem Reaver
UPDATE `creature_template_spells` SET `spell1`='11976' , `spell2`='15496' WHERE `entry`='10761';
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10761;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1076101', '10761', '0', '0', '100', '1', '3000', '4000', '7000', '12000', '11', '15496', '1', 'Grimtotem Reaver - Cast Cleave');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1076102', '10761', '0', '0', '100', '1', '0', '5', '7000', '15000', '1', '11976', '1', 'Grimtotem Reaver - Cast Strike');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('1076103', '10761', '2', '0', '100', '0', '15', '25', '1', '-47', 'Grimtotem Reaver - Flee at 15% HP');

-- Added AI for Grimtotem Stomper
UPDATE `creature_template_spells` SET `spell1`='6274' WHERE `entry`='10759';
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10759;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1075901', '10759', '0', '0', '100', '0', '0', '5', '11', '6274', '0', 'Grimtotem Stomper - Cast Healing Ward');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1075902', '10759', '25', '0', '100', '1', '3844', '1000', '1000', '11', '6274', '0', 'Grimtotem Stomper - Cast Healing Ward on Healing Ward Death');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('1075903', '10759', '2', '0', '100', '0', '15', '25', '1', '-47', 'Grimtotem Stomper - Flee at 15% HP');

-- Grimtotem Bandit will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('1075802', '10758', '2', '0', '100', '0', '15', '25', '1', '-47', 'Grimtotem Bandit - Flee at 15% HP');

-- Add AI for Grimtotem Geomancer
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10760;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076001,10760,1,0,100,0,0,0,0,0,21,0,0,0,22,0,0,0,0,0,0,0,'Grimtotem Geomancer - Prevent Combat Movement and Set Phase to 0 on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076002,10760,4,0,100,0,0,0,0,0,11,8400,1,0,22,1,0,0,0,0,0,0,'Grimtotem Geomancer - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076003,10760,9,13,100,1,0,40,3400,4800,11,8400,1,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076004,10760,0,13,100,1,8000,11000,16000,21000,11,2121,1,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Cast Flamestrike (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076005,10760,3,13,100,0,7,0,0,0,21,1,0,0,23,1,0,0,0,0,0,0,'Grimtotem Geomancer - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076006,10760,9,13,100,1,25,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Start Combat Movement at 35 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076007,10760,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076008,10760,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'SGrimtotem Geomancer - Start Combat Movement Below 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076009,10760,3,11,100,1,100,15,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Set Phase 1 when Mana is above 15% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076010,10760,2,0,100,0,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076011,10760,2,7,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Grimtotem Geomancer - Start Combat Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076012,10760,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Set Phase to 0 on Evade');

-- Harb Foulmountain will now flee at 15% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14426;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('1442601', '14426', '2', '0', '100', '0', '15', '25', '1', '-47', 'Harb Foulmountain - Flee at 15% HP');

-- Add AI for Galak Assassin
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10720;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES ('10720', '13298');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1072001', '10720', '0', '0', '100', '1', '0', '5', '30000', '45000', '11', '13298', '1', 'Galak Assassin - Cast Poison');

-- Added AI for Galak Flame Guard
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7404;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('740401', '7404', '0', '0', '100', '1', '3000', '6000', '30000', '40000', '11', '6190', '0', 'Galak Flame Guard - Cast Demoralizing Shout');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('740402', '7404', '2', '0', '100', '0', '15', '25', '1', '-47', 'Galak Flame Guard - Flee at 15% HP');



