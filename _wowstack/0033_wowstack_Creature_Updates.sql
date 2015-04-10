-- Ironback will now move around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE guid = 69119;

-- Grimungous now has the correct movement speed
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE entry = 8215;

-- Silvermane Stalker will now stealth on spawn
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('292602', '2926', '11', '0', '100', '0', '11', '5916', '0', 'Silvermane Stalker - Cast Stealth on Spawn');

-- Silvermane Howler will now call for help at 50% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('292501', '2925', '2', '0', '100', '0', '50', '39', '30', '1', '-551', 'Silvermane Howler - Call for Help at 50% HP');

-- Jalinde Summerdrake will now move around her spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE guid = 72002;

-- Added AI for Shadra
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`) VALUES ('2707', '13298', '7992');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 2707;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('270701', '2707', '0', '0', '100', '1', '4000', '5000', '10000', '15000', '11', '13298', '1', 'Shadra - Cast Poison');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('270702', '2707', '0', '0', '100', '1', '4000', '6000', '10000', '15000', '11', '7992', '1', 'Shadra - Cast Slowing Poison');

-- Vilebranch Berserker will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`= 264302;

-- A Carefully Wrapped Present now has a Quest Level of 60
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`= 8744;

-- Stolen Winter Veil Treats now has a Quest Level of 35
UPDATE `quest_template` SET `QuestLevel`='35' WHERE `entry`= 7042;

-- Correct Required Races for Bijou's Belongings
UPDATE `quest_template` SET `RequiredRaces`='79' WHERE `entry`='5001';

-- Added AI for Spitelash Serpent Guard
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('619402', '6194', '11', '0', '100', '0', '11', '12545', '0', 'Spitelash Serpent Guard - Cast Spitelash on Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('619403', '6194', '0', '0', '100', '1', '3000', '6000', '8000', '15000', '11', '11976', '1', 'Spitelash Serpent Guard - Cast Strike');

-- Added AI for Spitelash Warrior
UPDATE creature_template SET AIName = 'EventAI';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('619001', '6190', '0', '0', '100', '1', '3000', '5000', '8000', '13000', '11', '6713', '1', 'Spitelash Warrior - Cast Disarm');

-- Storm Bay Warrior will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='637103';

-- Arkkoran Clacker will now call for help at 50% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6135;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('613501', '6135', '2', '0', '100', '0', '50', '39', '30', '1', '-551', 'Arkkoran Clacker - Call for help at 50% HP');

-- Updated walk speed for Tamed Kodo
UPDATE `creature_template` SET `SpeedWalk`='0.8' WHERE `Entry`='11627';

-- Hillsbrad Miner correct comment
UPDATE `creature_ai_scripts` SET `comment`='Hillsbrad Miner - Flee at 15% HP' WHERE `id`='226906';

-- Storm bay Warrior will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='637103';

-- Master Feardred will now roam around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='51858';

-- Fires should now have the correct aura diameter, no longer burning you from long distances
UPDATE `gameobject_template` SET `data2`='0.5' WHERE `entry`='2061';

-- More fixes for Chillwind Ravager
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry`='7449';
UPDATE `creature_ai_scripts` SET `event_type`='11', `event_flags`='0', `event_param1`='0', `event_param2`='0', `event_param3`='0', `event_param4`='0', `action1_param2`='0' WHERE `id`='744901';

-- More fixes for Fledgling Chillwind
UPDATE `wowstack_vanilla_world_classicdb`.`creature_template` SET `AIName`='EventAI' WHERE `Entry`='7447';
UPDATE `creature_ai_scripts` SET `event_type`='11', `event_flags`='0', `event_param1`='0', `event_param2`='0', `event_param3`='0', `event_param4`='0', `action1_param2`='0' WHERE `id`='744701';

-- More fixes for Gazz'uz
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES ('3204', '12746');

-- Numerous small fixes to creature movement and placement
-- Some internal DB fixes
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry`='7433';
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry`='3255';
UPDATE `creature_ai_texts` SET `type`='2' WHERE `entry`='-1322';
UPDATE `creature_ai_scripts` SET `event_param1`='3000', `event_param2`='4000' WHERE `id`='402901';
UPDATE `creature` SET `MovementType`='1' WHERE `guid`='51884';
UPDATE `creature` SET `MovementType`='1' WHERE `guid`='63913';
UPDATE `creature` SET `MovementType`='1' WHERE `guid`='44863';
UPDATE `creature` SET `MovementType`='1' WHERE `guid`='44864';
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='16017';
UPDATE `creature` SET `orientation`='5.2207' WHERE `guid`='14784';

-- Deathguard Bartrand will no longer move around his spawn point
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`='28498';

-- Teronos' will now appear dead
UPDATE `creature_template` SET `DynamicFlags`='36' WHERE `Entry`='3891';

-- Fixed emote for Hillsbrad Apprentice Blacksmith
UPDATE `creature_addon` SET `emote`='173' WHERE `guid`='15958';

-- Witherbark Broodguard will now cast Poison : 2686
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('268602', '2686', '0', '0', '100', '1', '3000', '4000', '8000', '16000', '11', '744', '1', 'Witherbark Broodguard - Cast Poison');

-- Vilebranch Hideskinner will now cast Poison : 2644
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('264403', '2644', '0', '0', '100', '1', '3000', '4000', '8000', '16000', '11', '24097', '1', 'Vilebranch Hideskinner - Cast Poison');

-- Burning Blade Seer will no longer flee on low HP : 13019
DELETE FROM `creature_ai_scripts` WHERE `id`='1301911';
UPDATE `creature_ai_scripts` SET `id`='1301911' WHERE `id`='1301912';

-- Slitherblade Naga will now flee at 15% HP : 4711
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('471102', '4711', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Slitherblade Naga - Flee at 15% HP');

-- Slitherblade Warrior will now flee at 15% HP : 4713
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('471305', '4713', '0', '0', '100', '0', '15', '15', '25', '1', '-47', 'Slitherblade Warrior - Flee at 15% HP');

-- Slitherblade Myrmidon will now flee at 15% HP : 4714
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('471402', '4714', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Slitherblade Myrmidon - Flee at 15% HP');

-- Slitherblade Sorceress will now flee at 15% HP : 4712
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('471212', '4712', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Slitherblade Sorceress - Flee at 15% HP');

-- Slitherblade Sea Witch will now flee at 15% HP : 4719
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('471904', '4719', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Slitherblade Sea Witch - Flee at 15% HP');

-- Slitherblade Razortail will now flee at 15% HP : 4715
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('471502', '4715', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Slitherblade Razortail - Flee at 15% HP');

-- Dark Iron Lookout will no longer flee on low HP : 8566
DELETE FROM `creature_ai_scripts` WHERE `id`='856608';
UPDATE `creature_ai_scripts` SET `id`='856608' WHERE `id`='856609';

-- Dark Iron Geologist will no longer flee on low HP : 5839
DELETE FROM `creature_ai_scripts` WHERE `id`='583911';
UPDATE `creature_ai_scripts` SET `id`='583911' WHERE `id`='583912';

-- Glassweb Spider will now cast Poison
-- Adjusted timer for Glassweb Spider Web
UPDATE `creature_ai_scripts` SET `event_param3`='10000', `event_param4`='15000' WHERE `id`='585601';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('585602', '5856', '0', '0', '100', '1', '3000', '4000', '10000', '20000', '11', '744', '1', 'Glassweb Spider - Cast Poison');

-- Shleipnarr will now cast Terrify : 8280
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('828002', '8280', '0', '0', '100', '1', '3000', '4000', '7000', '11000', '11', '7399', '4', 'Shleipnarr - Cast Terrify');

-- Slave Master Blackheart will no longer flee on low HP
-- Slave Master Blackheart will now call for help at 40% HP : 8283
DELETE FROM `creature_ai_scripts` WHERE `id`='828308';
UPDATE `creature_ai_scripts` SET `id`='828308' WHERE `id`='828309';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('828309', '8283', '2', '0', '100', '0', '40', '40', '39', '30', '1', '-551', 'Slave Master Blackheart - Call for help at 40% HP');

-- Added AI for Rekk'tilac : 8277
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 8277;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES ('8277', '3583');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('827701', '8277', '0', '0', '100', '1', '2000', '3000', '10000', '20000', '11', '3583', '1', 'Rekk\'tilac - Cast Deadly Poison');

-- Jarquia will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='991602';

-- Highlord Mastrogonde will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='828213';
UPDATE `creature_ai_scripts` SET `id`='828213' WHERE `id`='828214';

-- Twilight Geomancer will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='586212';
UPDATE `creature_ai_scripts` SET `id`='586212' WHERE `id`='586213';

-- Twilight Fire Guard will now use its Fire Shield ability : 5861
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('586102', '5861', '11', '0', '100', '0', '11', '18968', '0', 'Twilight Fire Guard - Cast Fire Shield on Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('586103', '5861', '16', '0', '100', '1', '18968', '5', '100000', '100000', '11', '18968', '0', 'Twilight Fire Guard - Cast Fire Shield on missing buff');
