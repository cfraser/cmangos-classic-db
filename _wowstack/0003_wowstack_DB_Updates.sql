-- Add AI Text for Doctor Theolen Krastinov
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-1321', 'The doctor is in!', '1', 'Doctor Theolen Krastinov');

-- Correct creature AI text for Doctor Theolen Krastinov
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `comment`) VALUES ('1126104', '11261', '4', '0', '100', '0', '1', '-1312', 'Doctor Theolen Krastinov - Say - The doctor is in!');

-- Correct AI script for Grave Robber
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('21802', '218', '0', '0', '100', '1', '3000', '6000', '1000', '15000', '11', '6595', '1', 'Grave Robber - Cast Exploit Weakness');

-- Razrmane Mystic Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('327104', '3271', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Razormane Mystic - Flee at 15% HP');

-- Baron Longshore Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('346701', '3467', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Baron Longshore - Flee at 15% HP');

-- Set Baron Longshore creature AI
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3467;

-- Southsea Brigand Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('338102', '3381', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Southsea Brigand - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3381;

-- 'Bristleback Thornweaver Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`,`action2_type`, `action2_param1` , `comment`) VALUES ('326103', '3261', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Bristleback Thornweaver - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3261;

-- Bristleback Water Seeker Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('326002', '3260', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Bristleback Water Seeker - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3260;

-- Greater Plainstrider - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('324401', '3244', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Greater Plainstrider - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3244;

-- Tazan - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('649401', '6494', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Tazan - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6494;

-- Ornery Plainstrider - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('324501', '3245', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Ornery Plainstrider - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3245;

-- Razormane Thornweaver - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('326801', '3268', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Razormane Thornweaver - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3268;

-- Razormane Water Seeker - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('326702', '3267', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Razormane Water Seeker - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3267;

-- Razormane Defender - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('326604', '3266', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Razormane Defender - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3266;

-- Kreenig Snarlsnout - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('343801', '3438', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Kreenig Snarlsnout - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3438;

-- Witchwing Harpy - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('327601', '3276', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Witchwing Harpy - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3276;

-- Witchwing Ambusher - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('327901', '3279', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Witchwing Ambusher - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3279;

-- Witchwing Roguefeather - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('327704', '3277', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Witchwing Roguefeather - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3277;

-- Witchwing Slayer - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('327801', '3278', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Witchwing Slayer - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3278;

-- Witchwing Windcaller - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('328001', '3280', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Witchwing Windcaller- Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3280;

-- Serena Bloodfeather - Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('345202', '3452', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Serena Bloodfeather - Flee at 15% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 3452;
