-- Bloodfury Harpy Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('402201', '4022', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Bloodfury Harpy - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 4022;

--  Bloodfury Windcaller Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('402602', '4026', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Bloodfury Windcaller - Flee at 15% HP');

-- Bloodfury Storm Witch Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('402711', '4027', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Bloodfury Storm Witch - Flee at 15% HP');

-- Bloodfury Slayer Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('402403', '4024', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Bloodfury Slayer - Flee at 15% HP');

-- Bloodfury Roguefeather Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('402302', '4023', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Bloodfury Roguefeather - Flee at 15% HP');

-- Razormane Warfrenzy Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('345901', '4359', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Razormane Warfrenzy - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 4359;