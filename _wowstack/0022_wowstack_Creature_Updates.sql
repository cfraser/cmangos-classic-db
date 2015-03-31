-- Daggerspine Screamer flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('237002', '2370', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Daggerspine Screamer - Flee at 15% HP');

-- Correct movement type for Araga
UPDATE `creature_template` SET `MovementType`='1' WHERE `Entry`='14222';

-- Correct movement type for Lo'Grosh
UPDATE `creature_template` SET `MovementType`='1' WHERE `Entry`='2453';

-- Correct movement type for Zaricotl spawn point
UPDATE `creature` SET `spawndist`='60', `MovementType`='1' WHERE `guid`='7144';

-- Correct rank for Nal'taszar
UPDATE `creature_template` SET `Rank`='2' WHERE `Entry`='4428';

-- Corrected movement type for Ravenholdt Guard
UPDATE creature SET spawndist = 0 WHERE guid = 14784;
UPDATE creature SET spawndist = 0 WHERE guid = 14782;
UPDATE creature SET spawndist = 0 WHERE guid = 14783;
UPDATE creature SET spawndist = 0 WHERE guid = 14832;

-- Jorb and Lizzarik are now linked together
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES ('3659', '1', '3658', '515', '0');

-- Dabyrie Laborer will now flee at 15% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 2582;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('258201', '2582', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Dabyrie Laborer - Flee at 15% HP');

-- Marcel Dabyrie will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('448104', '4481', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Marcel Dabyrie - Flee at 15% HP');

-- Fardel Dabyrie will now go for a stroll
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='12046';

-- Fardel Dabyrie will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('447902', '4479', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Fardel Dabyrie - Flee at 15% HP');

-- Kenata Dabyrie flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('448002', '4480', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Kenata Dabyrie - Flee at 15% HP');

-- Corrected movement type for Kovork
UPDATE `creature_template` SET `MovementType`='1' WHERE `Entry`='2603';

-- Fix movement type for Geomancer Flintdagger
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='13375';

-- Correct spawn position for Calor
UPDATE creature SET position_x =-1153.19, position_y =-3120.62, position_z =92.7509, orientation =2.73313, WHERE guid = 20720;

-- Correct orientation for Master Gadrin
UPDATE creature SET orientation = 4.831948 WHERE guid = 6462;

-- Remove the deadly weapons from Tarrel Rockweaver
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `Entry`='2096';

-- Correct position for Dustwallow Marsh Solid Chest
UPDATE gameobject SET position_x =-2973.36, position_y =-4356.99, position_z =9.2636, orientation =-2.74017, WHERE guid = 11755;

-- Correct spawn position for Venomhide Ravasaur
UPDATE creature SET position_x =-7202.48, position_y =-2151.74, position_z =-270.6901, orientation =2.696767, WHERE guid = 23867;

-- Correct movement type for Jailor Borhuin
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='17020';

