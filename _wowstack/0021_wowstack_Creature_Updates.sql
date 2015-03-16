-- Grimtotem Bandit will now use Kick
UPDATE `creature_template_spells` SET `spell2`='11978' WHERE `entry`='10758';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1075803', '10758', '13', '0', '100', '1', '7000', '12000', '11', '11978', '1', 'Grimtotem Bandit - Cast kick on Spellcast');

-- Syndicate Shadow Mage will now cast Curse of Thorns
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_param1`, `action1_param2`, `action1_param3`, `comment`) VALUES ('224412', '2244', '4', '13', '100', '0', '0', '0', '11', '16247', '1', 'Syndicate Shadow Mage - Cast Curse of Thorns (Phase 1)');

-- Syndicate Watchman will now flee at 15% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 2261;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('226101', '2261', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Syndicate Watchman - Flee at 15% HP');

-- Fix movement for Watcher Jan
UPDATE creature_template SET MovementType = 1 WHERE entry = 826;

-- Fix movement for Watcher Wollpert
UPDATE creature_template SET MovementType = 1 WHERE entry = 8310;

-- Fix movement for Watcher Mocarski 
UPDATE creature_template SET MovementType = 1 WHERE entry = 827;

-- Correct spawn position for Calor
UPDATE creature SET position_x =-10580.44, position_y =-1202.36, position_z =27.5614, orientation =0.134971, WHERE guid = 4176;

-- Syndicate Rogue Flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('226002', '2260', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Syndicate Rogue - Flee at 15% HP');

-- Jailor Eston will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('242702', '2427', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Jailor Eston - Flee at 15% HP');

-- Farmer Ray will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('23201', '232', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Farmer Ray - Flee at 15% HP');

-- Correct movement type for Farmer Getz
UPDATE creature_template SET MovementType = 1 WHERE entry = 2403;

-- Hillsbrad Tailor will now flee at 15% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='226403';

-- Hillsbrad Footman will now flee at 15% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='226803';

-- Hillsbrad Farmer will now flee at 15% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='226602';

-- Hillsbrad Farmhand will now flee at 15% rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='236001';

-- Hillsbrad Apprentice Blacksmith will now flee at 15% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='226502';

-- Correct movement type for Blacksmith Verringtan
UPDATE creature_template SET MovementType = 1 WHERE entry = 2404;

-- Mudsnout Gnoll will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('237202', '2372', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Mudsnout Gnoll - Flee at 15% HP');

-- Dun Garok Rifleman will now flee at 15% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='234508';

-- Dun Garok Priest will now flee at 15% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='234611';

-- Dun Garok Mountaineer will now flee at 15% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='234403';

-- Corrected movement type for Lady Zephris
UPDATE `creature_template` SET `MovementType`='1' WHERE `Entry`='14277';

-- Hillsbrad Miner will now flee at 15% HP rather than 30% HP
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='226906';

-- Miner Hackett now has the correct movement type
UPDATE `creature_template` SET `MovementType`='1' WHERE `Entry`='2450';

-- Hillsbrad Sentry will now flee at 15% HP rather than 30% HP
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='227001';

-- Captain Ironhill will now flee at 15% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='15' WHERE `id`='230403';

-- Daggerspine Shorestalker will now flee at 15% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 2368;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('236803', '2368', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Daggerspine Shorestalker - Flee at 15% HP');
