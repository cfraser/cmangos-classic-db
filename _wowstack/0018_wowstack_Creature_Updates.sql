-- Correct movement for several Rotting Dead creatures
UPDATE creature SET spawndist = 5 WHERE guid IN (44568, 44751, 44753, 44768, 44776, 45036);

-- Xavian Hellcaller no longer runs in fear and casts hellfire
DELETE FROM `creature_ai_scripts` WHERE `id`='375710';
UPDATE `creature_ai_scripts` SET `id`='375710' WHERE `id`='375711';
UPDATE `creature_ai_scripts` SET `id`='375711' WHERE `id`='375712';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('375712', '3757', '0', '13', '100', '1', '4000', '6000', '12000', '18000', '11', '5740', '1', 'Xavian Hellcaller - Cast Rain of Fire (Phase 1)');

-- Cenarion Vindicator now casts Corrupt Forces of Nature
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('383303', '3833', '0', '0', '100', '0', '1000', '2000', '11', '21968', '0', 'Cenarion Vindicator - Cast Corrupt Forces of Nature');
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`) VALUES ('3833', '15798', '21968');

-- Mist Howler should now call for help
DELETE FROM creature_ai_scripts WHERE id = 1064404;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('1064404', '10644', '2', '0', '100', '0', '50', '39', '30', '1', '-551', 'Mist Howler - Call for Help at 50% HP');

-- Mugglefin can now move again
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='51884';

-- Dal Bloodclaw now has his Thistlefur Coat back
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_param1`, `action1_param2`, `action1_param3`, `comment`) VALUES ('398704', '3987', '11', '0', '100', '0', '11', '6813', '0', 'Dal Bloodclaw - Cast Coat of Thistlefur');

-- Correct spawn position for Trigore the Lasher]
UPDATE creature SET position_x =-636.02, position_y =-2253.10, position_z =11.9102, orientation =4.876435 WHERE guid = 160359;

-- Correct prerequisite for Flash Bomb Recepie
UPDATE `quest_template` SET `PrevQuestId`='705' WHERE `entry`='1559';

-- Twilight Avenger will now cast Enrage
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11880;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1188001', '11880', '2', '0', '100', '0', '15', '11', '8599', '0', 'Twilight Avenger - Cast Enrage at 15% HP');

-- Bleakheart Hellcaller should now cast the correct spells
DELETE FROM `creature_ai_scripts` WHERE `id`='377005';
DELETE FROM `creature_ai_scripts` WHERE `id`='377004';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('377104', '3771', '4', '0', '100', '0', '11', '6946', '1', 'Bleakheart Hellcaller - Cast Curse of the Bleakheart on Aggro');
UPDATE `creature_template_spells` SET `spell1`='6946', `spell2`='0' WHERE `entry`='3771';

-- Bleakheart Satyr should now cast the correct spells
DELETE FROM `creature_ai_scripts` WHERE `id`='376501';
UPDATE `creature_ai_scripts` SET `id`='376501' WHERE `id`='376502';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('376502', '3765', '4', '0', '100', '0', '11', '6946', '1', 'Bleakheart Satyr - Cast Curse of the Bleakheart on Aggro');
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES ('3765', '6946');

-- Bleakheart Shadowstalker will no longer enrage
DELETE FROM `creature_ai_scripts` WHERE `id`='377001';
UPDATE `creature_ai_scripts` SET `id`='377001' WHERE `id`='377002';

-- Bleakheart Trickster will no longer enrage
DELETE FROM `creature_ai_scripts` WHERE `id`='376702';

-- Oakpaw should now cast his Corrupted abilities
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1064002', '10640', '0', '0', '100', '1', '0', '5', '4000', '6000', '11', '6817', '1', 'Oakpaw - Cast Corrupted Agility');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1064003', '10640', '0', '0', '100', '1', '0', '5', '4000', '6000', '11', '6819', '1', 'Oakpaw - Cast Corrupted Stamina');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1064004', '10640', '0', '0', '100', '1', '0', '5', '4000', '6000', '11', '6816', '1', 'Oakpaw - Cast Corrupted Strength');
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES ('10640', '6817', '6819', '6816', '12160');

-- Stone Fury should now have a stroll around his spawn position
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='63913';

-- Lost Soul should now patrol her spawn point looking for unsuspecting victims!
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='44863';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='44864';

-- 19 NPC's outside The Scarlet Monostary and The Scarlet Watchpost no longer have broken legs and are able to move
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='30041';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='38372';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='38373';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='41918';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='45089';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='45162';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='45196';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='45198';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='45200';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='30036';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='30038';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='37921';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='37923';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='44762';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='44771';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='44878';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='44879';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='44880';
UPDATE `creature` SET `spawndist`='5' WHERE `guid`='44885';

-- Remove incorrect speech for Kobold Digger
DELETE FROM `creature_ai_scripts` WHERE `id`='123601';
UPDATE `creature_ai_scripts` SET `id`='123601' WHERE `id`='123602';
UPDATE `creature_ai_scripts` SET `id`='123602' WHERE `id`='123603';

-- Remove the Silvermane Stalker from the trees
UPDATE creature SET position_x =-98.93, position_y =-3542.40, position_z =120.2193, orientation =2.166917 WHERE guid = 93058;

-- Move a Silvermane Stalker from its friend
UPDATE creature SET position_x =29.75, position_y =-3604.71, position_z =123.7280, orientation =1.557320 WHERE guid = 93004;

-- Move another Silvermane Stalker from the trees
UPDATE creature SET position_x =199.96, position_y =-4027.10, position_z =118.0265, orientation =2.498048 WHERE guid = 92988;

-- Prevent the key from Klaven's Tower dropping from creatures
DELETE FROM `creature_loot_template` WHERE `entry`='7051' and`item`='7923';

