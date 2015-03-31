-- Ironeye the Invincible is now a rare elite
UPDATE creature_template SET rank = 2 WHERE entry = 5935;

-- Vile Sting is now a rare elite
UPDATE creature_template SET rank = 2 WHERE entry = 5937;

-- Added AI for vile sting
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 5937;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('593701', '5937', '0', '0', '100', '1', '1000', '3000', '30000', '40000', '11', '8257', '1', 'Vile Sting - Cast Venom Sting');

-- Added AI for Bloodscalp Scavenger
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 702;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action1_param2`, `action2_type`, `action2_param1`, `comment`) VALUES ('70201', '702', '2', '0', '100', '0', '15', '15', '11', '8599', '0', '1', '-46', 'Bloodscalp Scavenger - Cast Enrage at 15% HP');

-- Foulbelly is now a rare elite
UPDATE creature _template SET rank = 2 WHERE entry = 2601;

-- Caretaker Alaric will now flee at 15% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 2782;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('278201', '2782', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Caretaker Alaric - Flee at 15% HP');

-- Caretaker Weston will now flee at 15% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 2781;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('278101', '2781', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Caretaker Weston - Flee at 15% HP');

-- Caretaker Nevlin will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('278001', '2780', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Caretaker Nevlin - Flee at 15% HP');

-- Correct spawn position for multiple Hammerfall Guardian
UPDATE creature SET position_x =-1050.31, position_y =-3542.66, position_z =55.7487, orientation =3.263770, WHERE guid = 11346;
UPDATE creature SET position_x =-1049.30, position_y =-3556.33, position_z =54.8008, orientation =32.82713, WHERE guid = 11347;
UPDATE creature SET position_x =-1029.82, position_y =-3551.86, position_z =56.2696, orientation =3.091310, WHERE guid = 11293;

-- Correct language for Sildanair
UPDATE `npc_text` SET `lang0`='7' WHERE `ID`='1218';

-- Kolkar Windchaser Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('463511', '4635', '2', '0', '100', '0', '15', '15', '25', '0', '1', '-47', 'Kolkar Windchaser - Flee at 15% HP');

-- Kolkar Destroyer Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('463703', '4637', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Kolkar Destroyer - Flee at 15% HP');

-- Kolkar Mauler Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('463402', '4634', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Kolkar Mauler - Flee at 15% HP');

-- Add AI for Kolkar Centaur
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 4632;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('463201', '4632', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Kolkar Centaur - Flee at 15% HP');

-- Kolkar Battle Lord will now call for help at 50% HP rather than 20%
UPDATE `creature_ai_scripts` SET `event_param1`='50' WHERE `id`='463604';

-- Khan Dez'hepah will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('560003', '5600', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Khan Dezhepah - Flee at 15% HP');

-- Kolkar Scout flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('463307', '4633', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Kolkar Scout - Flee at 15% HP');

-- Magram Wrangler flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464002', '4640', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Magram Wrangler - Flee at 15% HP');

-- Magram Outrunner will now call for help at 50% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('463901', '4639', '2', '0', '100', '0', '0', '50', '39', '30', '1', '-551', 'Magram Outrunner - Call for help at 50% HP');

-- Magram Windchaser flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464111', '4641', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Magram Windchaser - Flee at 15% HP');

-- Magram Scout Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('463807', '4638', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Magram Scout - Flee at 15% HP');

-- Magram Stormer flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464204', '4642', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Magram Stormer - Flee at 15% HP');

-- Magram Marauder flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464403', '4644', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Magram Marauder - Flee at 15% HP');

-- Magram Mauler flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464502', '4645', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Magram Mauler - Flee at 15% HP');

-- Add AI for Magram Pack Runner
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 4643;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464301', '4643', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Magram Pack Runner - Flee at 15% HP');

-- Gelkis Windchaser will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464911', '4649', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Gelkis Windchaser - Flee at 15% HP');

-- Gelkis Stamper will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464802', '4648', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Gelkis Stamper - Flee at 15% HP');

-- Gelkis Scout will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464707', '4647', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Gelkis Scout - Flee at 15% HP');

-- Added AI for Gelkis Outrunner
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 4646;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('464601', '4646', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Gelkis Outrunner - Flee at 15% HP');

-- Gelkis Marauder will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('465303', '4653', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Gelkis Marauder - Flee at 15% HP');

-- Gelkis Earthcaller will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('465111', '4651', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Gelkis Earthcaller - Flee at 15% HP');

-- Gelkis Mauler will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('465202', '4652', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Gelkis Mauler - Flee at 15% HP');

-- CHECK THIS AFTER MERGE
-- Add spawn pooling for Prince Kellen
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('590110', '14225', '1', '6743', '0', '-116.275', '841.417', '119.4977', '75.445770', '9900', '0', '0', '1221', '0', '0', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('590111', '14225', '1', '6743', '0', '77.773', '889.464', '143.0467', '5.576456', '9900', '0', '0', '1221', '0', '0', '0');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('25469', '1', 'Prince Kellen');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('51848', '25469', '33', 'Prince Kellen');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('590110', '25469', '0', 'Prince Kellen');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('590111', '25469', '0', 'Prince Kellen');
