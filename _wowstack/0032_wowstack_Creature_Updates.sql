-- Woodpaw Alpha will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='525803';

-- Grimtotem Shaman will now cast Fire Nova Totem
-- Grimtotem Shaman will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('772703', '7727', '0', '0', '100', '1', '4000', '6000', '10000', '12000', '11', '11314', '0', 'Grimtotem Shaman - Cast Fire Nova Totem');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('772704', '7727', '2', '0', '100', '0', '15', '25', '1', '-47', 'Grimtotem Shaman - Flee at 15% HP');

-- Grimtotem Raider will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('772504', '7725', '2', '0', '100', '0', '15', '25', '1', '-47', 'Grimtotem Raider - Flee at 15% HP');

-- Zukkash Worker will now flee at 30% HP rather than 15%
UPDATE `creature_ai_scripts` SET `event_param1`='30', `comment`='Zukkash Worker - Flee at 30% HP' WHERE `id`='524601';

-- Added text emote for Zukk'ash Stinger
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('-1326', '%s prepares to sting its victim as a last desperate move!', '0', '2', '0', '0', '5244');

-- Added AI for Zukk'ash Stinger
-- TODO: Please check this at a later date
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 5244;
DELETE FROM creature_ai_scripts WHERE creature_id = 5244;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action1_param2`, `action2_type`, `action2_param1`, `action3_type`, `action3_param1`, `comment`) VALUES ('524402', '5244', '2', '2', '100', '0', '15', '21', '0', '0', '1', '-1326', '22', '2', 'Zukk\'ash Stinger - Stop combat movement and set Phase 2 (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('524403', '5244', '0', '1', '100', '0', '3000', '3000', '3000', '3000', '11', '17170', '1', 'Zukk\'ash Stinger - Cast Fatal Sting (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `comment`) VALUES ('524401', '5244', '4', '0', '100', '0', '22', '1', 'Zukk\'ash Stinger - Set Phase 1 on Aggro');

-- Northspring Hapry will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('536202', '5362', '2', '0', '100', '0', '15', '25', '1', '-47', 'Northspring Harpy - Flee at 15% HP');

-- Northspring Roguefeather will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('536304', '5363', '2', '0', '100', '0', '15', '25', '1', '-47', 'Northspring Roguefeather - Flee at 15% HP');

-- Northspring Slayer will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('536403', '5364', '2', '0', '100', '0', '15', '25', '1', '-47', 'Northspring Slayer - Flee at 15% HP');

-- Northspring Windcaller will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('536612', '5366', '2', '0', '100', '0', '15', '25', '1', '-47', 'Northspring Windcaller - Flee at 15% HP');

-- Correct gossip text for Mai'ah
UPDATE `gossip_menu` SET `text_id`='564' WHERE `entry`='64' and`text_id`='565' and`script_id`='0';

-- Qirot will now move around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='51681';

-- Correct movement speed for Gnarl Leafbrother
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `Entry`='5354';

-- Added AI for Zora
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14474;
DELETE FROM creature_ai_scripts WHERE creature_id = 14474;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1447401', '14474', '0', '0', '100', '1', '4000', '6000', '10000', '17000', '11', '21067', '1', 'Zora - Cast Poison Bolt');

-- Added AI for Rex Ashil
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14475;
DELETE FROM creature_ai_scripts WHERE creature_id = 14475;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1447501', '14475', '0', '0', '100', '1', '4000', '5000', '8000', '16000', '11', '12097', '1', 'Rex Ashil - Cast Pierce Armor');

-- Added AI for Krellack
-- TODO: Please check this at a later date
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14476;
DELETE FROM creature_ai_scripts WHERE creature_id = 14476;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action1_param2`, `action2_type`, `action2_param1`, `action3_type`, `action3_param1`, `comment`) VALUES ('1447602', '14476', '2', '2', '100', '0', '15', '21', '0', '0', '1', '-1326', '22', '2', 'Krellack - Stop combat movement and set Phase 2 (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1447603', '14476', '0', '1', '100', '0', '3000', '3000', '3000', '3000', '11', '17170', '1', 'Krellack - Cast Fatal Sting (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `comment`) VALUES ('1447601', '14476', '4', '0', '100', '0', '22', '1', 'Krellack - Set Phase 1 on Aggro');

-- Added AI for Huricanian
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14478;
DELETE FROM creature_ai_scripts WHERE creature_id = 14478;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1447801', '14478', '0', '0', '100', '1', '4000', '5000', '6000', '10000', '11', '15659', '1', 'Huricanian - Cast Chain Lightning');

-- Added AI for Kurmokk
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14491;
DELETE FROM creature_ai_scripts WHERE creature_id = 14491;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1449101', '14491', '2', '0', '100', '0', '30', '11', '8599', '0', 'Kurmokk - Cast Enrage at 30% HP');

-- Added AI for Verifonix
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14492;
DELETE FROM creature_ai_scripts WHERE creature_id = 14492;
INSERT INTO `classic_db`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1449201', '14492', '0', '0', '100', '1', '4000', '5000', '8000', '16000', '11', '12097', '1', 'Verifonix - Cast Pierce Armor');

-- Added AI for Captain Shatterskull
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14781;
DELETE FROM creature_ai_scripts WHERE creature_id = 14781;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1478101', '14781', '0', '0', '100', '1', '3000', '5000', '7000', '10000', '11', '15496', '1', 'Captain Shatterskull - Cast Cleave');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1478102', '14781', '0', '0', '100', '1', '5000', '7000', '10000', '16000', '11', '5246', '4', 'Captain Shatterskull - Cast Intimidating Shout');

-- Added AI for Twilight Keeper Mayna
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 15200;
DELETE FROM creature_ai_scripts WHERE creature_id = 15200;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1520001', '15200', '0', '0', '100', '1', '3000', '3000', '3000', '3000', '11', '17165', '1', 'Twilight Keeper Mayna - Cast Mind Flay');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1520002', '15200', '0', '0', '100', '1', '0', '5', '10000', '20000', '11', '15654', '4', 'Twilight Keeper Mayna - Cast Shadow Word Pain');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1520003', '15200', '0', '0', '100', '1', '3000', '4000', '7000', '10000', '11', '22884', '0', 'Twilight Keeper Mayna - Cast Psychic Scream');

-- Added AI for Twilight Flamereaver
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 15201;
DELETE FROM creature_ai_scripts WHERE creature_id = 15201;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1520101', '15201', '11', '0', '100', '0', '11', '9276', '0', 'Twilight Flamereaver - Cast Immolate Aura on Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('1520102', '15201', '2', '0', '100', '0', '15', '25', '1', '-47', 'Twilight Flamereaver - Flee at 15% HP');

-- Corrected movement speed while in combat for Twilight Flamereaver
UPDATE `creature_template` SET `SpeedRun`='1.7' WHERE `Entry`='15201';

-- Added AI for Vyral the Vile
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 15202;
DELETE FROM creature_ai_scripts WHERE creature_id = 15202;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1520201', '15202', '0', '0', '100', '1', '0', '5', '3000', '3000', '11', '19816', '1', 'Vyral the Vile - Cast Fireball');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1520202', '15202', '0', '0', '100', '1', '4000', '5000', '7000', '10000', '11', '17439', '1', 'Vyral the Vile - Cast Shadow Shock');

-- Added AI for Southsea Kidnapper
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 15685;
DELETE FROM creature_ai_scripts WHERE creature_id = 15685;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1568501', '15685', '0', '0', '100', '1', '3000', '4000', '8000', '12000', '11', '6713', '1', 'Southsea Kidnapper - Cast Disarm');
