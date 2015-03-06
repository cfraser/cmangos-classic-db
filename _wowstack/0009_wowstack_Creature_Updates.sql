-- Fleeting Plainstrider Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('324601', '3246', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Fleeting Plainstrider - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3246;

-- Bael'dun Officer Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('337803', '3378', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Baeldun Officer - Flee at 15% HP');

-- Bael'dun Soldier Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('337601', '3376', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Baeldun Soldier - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3376;

-- Gogger Rock Keeper Shound't Run
DELETE FROM `mangos`.`creature_ai_scripts` WHERE `id`='1191503';

-- Gogger Stonepounder Shouldn't Run
DELETE FROM `mangos`.`creature_ai_scripts` WHERE `id`='1191802';