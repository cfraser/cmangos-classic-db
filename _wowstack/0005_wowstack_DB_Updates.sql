-- 1907 Onwards

-- Slow run speed for Unstable Corpse
UPDATE creature_template SET speedrun = 0.5 WHERE entry = 10480;

-- Slow run speed for Reanimated Corpse
UPDATE creature_template SET speedrun = 0.5 WHERE entry = 10481;

-- Creature AI for Pesterhide Snarler
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('424901', '4249', '0', '0', '100', '1', '3000', '6000', '15000', '20000', '11', '6576', '1', 'Pesterhide Snarler Cast - Intimidating Growl');

UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 4249;

-- Creature AI for Grimtotem Bandit
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1075801', '10758', '0', '0', '100', '1', '5000', '8000', '15000', '20000', '11', '13534', '1', 'Grimtotem Bandit Cast - Disarm');

UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10758;

INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES ('10758', '13534');

-- Added Silithid Invader for quest
INSERT INTO `mangos`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('590060', '4131', '1', '11143', '0', '-6494.73', '-3233.77', '-113.2699', '1.39626', '300', '0', '0', '1279', '0', '0', '2');
INSERT INTO `mangos`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('590061', '4131', '1', '11143', '0', '-6444.66', '-3290.80', '-104.3690', '1.39626', '300', '0', '0', '1279', '0', '0', '2');

-- Make Chromatic Elite Guard not immune to fear
UPDATE creature_template SET MechanicImmuneMask = 100728833 WHERE entry = 10814

-- Correct health for King Magni Bronzebeard
UPDATE creature_template SET minlevelhealth = 637000, maxlevelhealth = 637000 WHERE entry = 2784;

-- Correct health for Cairne Bloodhoof
UPDATE creature_template SET minlevelhealth = 637000, maxlevelhealth = 637000 WHERE entry = 3057;

-- Correct health for High Tinker Mekkatorque
UPDATE creature_template SET minlevelhealth = 330000, maxlevelhealth = 330000 WHERE entry = 7937;
