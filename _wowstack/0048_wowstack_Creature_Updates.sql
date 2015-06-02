-- Araga will now move around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='17066';

-- Gogger Geomancer will no longer randomly emote on on aggro
DELETE FROM `creature_ai_scripts` WHERE `id`='1191702';
UPDATE `creature_ai_scripts` SET `id`='1191702' WHERE `id`='1191703';
UPDATE `creature_ai_scripts` SET `id`='1191703' WHERE `id`='1191704';
UPDATE `creature_ai_scripts` SET `id`='1191704' WHERE `id`='1191705';
UPDATE `creature_ai_scripts` SET `id`='1191705' WHERE `id`='1191706';
UPDATE `creature_ai_scripts` SET `id`='1191706' WHERE `id`='1191707';
UPDATE `creature_ai_scripts` SET `id`='1191707' WHERE `id`='1191708';
UPDATE `creature_ai_scripts` SET `id`='1191708' WHERE `id`='1191709';
UPDATE `creature_ai_scripts` SET `id`='1191709' WHERE `id`='1191710';
UPDATE `creature_ai_scripts` SET `id`='1191710' WHERE `id`='1191711';

-- Kuz will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('343612', '3436', '2', '0', '100', '0', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '0', '0', '0', '0', 'Kuz - Flee at 15% HP');

-- Venture Co. Enforcer will now flee at 15% HP
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 3623;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('362301', '3623', '2', '0', '100', '0', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '0', '0', '0', '0', 'Venture CO. Enforcer - Flee at 15% HP');