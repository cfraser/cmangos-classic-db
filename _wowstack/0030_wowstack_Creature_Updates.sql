-- Muckshell Razorclaw will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('440501', '4405', '2', '0', '100', '0', '15', '25', '1', '-47', 'Muckshell Razorclaw - Flee at 15% HP');

-- Muckshell Pincer will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('440301', '4403', '2', '0', '100', '0', '15', '25', '1', '-47', 'Muckshell Pincer - Flee at 15% HP');

-- Muckshell Clacker will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('440102', '4401', '2', '0', '100', '0', '15', '25', '1', '-47', 'Muckshell Clacker - Flee at 15% HP');

-- Muckshell Snapclaw will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('440201', '4402', '2', '0', '100', '0', '15', '25', '1', '-47', 'Muckshell Snapclaw - Flee at 15% HP');

-- Deatheye will now walk at the correct speed
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `Entry`='8302';

-- Helboar will now cast Helboar on spawn
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('599303', '5993', '11', '0', '100', '0', '11', '12896', '0', 'Helboar - Cast Helboar');

-- Added AI for Manifestation of Water
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11256;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1125601', '11256', '4', '0', '100', '0', '11', '8260', '0', 'Manifestation of Water - Cast Rushing Charge');

-- Added AI for Spectral Marauder
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11620;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1162001', '11620', '0', '0', '100', '1', '3000', '5000', '8000', '13500', '11', '5337', '1', 'Spectral Marauder - Cast Wither Strike');

-- Added AI for HiveAshi Defender
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11722;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1172201', '11722', '0', '0', '100', '1', '4000', '7000', '7000', '12500', '11', '6713', '1', 'HiveAshi Defender - Cast Disarm');

-- Added AI for HiveZora Wasp
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11727;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1172701', '11727', '0', '0', '100', '1', '3000', '6000', '7000', '14000', '11', '19448', '4', 'HiveZora Wasp - Cast Poison');

-- Added AI for HiveZora Hive Sister
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11729;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1172901', '11729', '0', '0', '100', '1', '3000', '5000', '6000', '10000', '11', '7951', '4', 'HiveZora Hive Sister - Cast Toxic Spit on Random');

-- Added AI for HiveRegal Ambusher
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11730;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173001', '11730', '0', '0', '100', '1', '3000', '6000', '6000', '10000', '11', '744', '1', 'HiveRegal Ambusher - Cast Poison');

-- Added AI for HiveRegal Spitfire
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11732;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173201', '11732', '0', '0', '100', '1', '4000', '5000', '6000', '10000', '11', '5708', '1', 'HiveRegal Spitfire - Cast Swoop');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173202', '11732', '0', '0', '100', '1', '0', '5', '8000', '13500', '11', '21047', '1', 'HiveRegal Spitfire - Cast Corrosive Acid Spit');

-- Added AI for 'HiveRegal Hive Lord
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11734;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173401', '11734', '4', '0', '100', '0', '11', '19471', '1', 'HiveRegal Hive Lord - Cast Berserker Charge');

-- Wastewander Scofflaw will now flee at 15% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7805;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('780501', '7805', '2', '0', '100', '0', '15', '25', '1', '-47', 'Wastewander Scofflaw - Flee at 15% HP');

-- UnGoro Gorilla will now call for help at 20% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6514;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `comment`) VALUES ('651401', '6514', '2', '0', '100', '0', '20', '39', '30', 'UnGoro Gorilla - Call for help at 20% HP ');
UPDATE `creature_ai_scripts` SET `action2_type`='1', `action2_param1`='-551' WHERE `id`='651401';


-- Uhk'loc will now move around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='24438';

-- U'cha will now move around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='24254';

-- Silithid Creeper Egg should no longer move around
UPDATE `creature_template` SET `SpeedWalk`='0', `SpeedRun`='0' WHERE `Entry`='5781';

-- Gorishi Worker will now call for help at 40% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('655202', '6552', '2', '0', '100', '0', '40', '39', '30', '1', '-551', 'Gorishi Worker - Call for Help at 40% HP');

-- Gorishi Wasp will now cast its Poison ability
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('655102', '6551', '0', '0', '100', '1', '4000', '7000', '15000', '25000', '11', '24097', '1', 'Gorishi Wasp - Cast Poison');

-- Gorishi Stinger will now cast Slowing Poison on aggro
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('655402', '6554', '4', '0', '100', '0', '11', '7992', '1', 'Gorishi Stinger - Cast Slowing Poison on Aggro');

-- Clutchmother Zavas will now move around her spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='24434';

-- Clutchmother Zavas Eggs AI have been fixed and emotes added
DELETE FROM `creature_ai_scripts` WHERE `id`='949603';
UPDATE `creature_ai_scripts` SET `id`='949604', `action2_type`='41', `action2_param1`='1000', `comment`='Gorishi Egg - Summon Gorishi Grub & Despawn' WHERE `id`='949602';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `comment`) VALUES ('949602', '9496', '1', '0', '100', '0', '2000', '2000', '0', '0', '1', '-1318', 'Gorishi Egg - Text Emote');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `comment`) VALUES ('949603', '9496', '1', '0', '100', '0', '4000', '4000', '0', '0', '1', '-1319', 'Gorishi Egg - Text Emote');

-- Clutchmother Zavas will now call for help at 20% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('658204', '6582', '2', '0', '100', '0', '20', '39', '30', '1', '-551', 'Clutchmother Zavas - Call for help at 20% HP');

-- Added AI for Stonelash Scorpid
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11735;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173501', '11735', '0', '0', '100', '1', '3000', '6000', '10000', '20000', '11', '5416', '1', 'Stonelash Scorpid - Cast Venom Sting');

-- Added AI for Stonelash Pincer
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11736;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173601', '11736', '0', '0', '100', '1', '2000', '4000', '6000', '12000', '11', '3604', '1', 'Stonelash Pincer - Cast Tendon Rip');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173602', '11736', '0', '0', '100', '1', '4000', '8000', '10000', '20000', '11', '5416', '1', 'Stonelash Pincer - Cast Venom Sting ');

-- Glutinous Ooze will now emote when it dies
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('-1327', '%s explodes into chunks of acidic slime!', '0', '2', '0', '0', '6559');
UPDATE `creature_ai_scripts` SET `action2_type`='1', `action2_param1`='-1324' WHERE `id`='655901';

-- Added AI for Living Blaze
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6521;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES ('6521', '11966');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('652101', '6521', '11', '0', '100', '0', '11', '11966', '0', 'Living Blaze - Cast Fire Shield on Spawn');

-- Added AI for Stonelash Flayer
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11737;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173701', '11737', '0', '0', '100', '1', '3000', '6000', '8000', '13500', '11', '5416', '1', 'Stonelash Flayer - Cast Vemon Sting');

--
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11738;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173801', '11738', '0', '0', '100', '1', '3000', '6000', '7000', '12000', '11', '744', '1', 'Sand Skitterer - Cast Poison');

-- Added AI for Rock Stalker
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11739;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173901', '11739', '0', '0', '100', '1', '3000', '6000', '9000', '15000', '11', '744', '1', 'Rock Stalker - Cast Poison');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1173902', '11739', '0', '0', '100', '1', '2000', '4000', '8000', '13500', '11', '745', '1', 'Rock Stalker - Cast Web');

-- Added AI for Dredge Crusher
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11741;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1174101', '11741', '0', '0', '100', '1', '3000', '5000', '7500', '14500', '11', '6607', '1', 'Dredge Crusher - Cast Disarm');

-- Added AI for Dredge Striker
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11740;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1174001', '11740', '4', '0', '100', '0', '11', '22911', '1', 'Dredge Striker - Cast Charge on Aggro');

-- Added AI for Cyclone Warrior
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11745;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1174501', '11745', '0', '0', '100', '1', '3000', '6000', '7500', '12500', '11', '25189', '4', 'Cyclone Warrior - Cast Enveloping Winds');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1174502', '11745', '0', '0', '100', '1', '4000', '5000', '5000', '8000', '11', '23104', '1', 'Cyclone Warrior - Cast Shock');

-- Added AI for Twilight Keeper Exeter
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11803;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1180301', '11803', '0', '0', '100', '1', '5000', '7000', '7000', '10000', '11', '16856', '1', 'Twilight Keeper Exeter - Cast Mortal Strike');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1180302', '11803', '0', '0', '100', '1', '4000', '8000', '9000', '15000', '11', '22427', '4', 'Twilight Keeper Exeter - Cast Concussion Blow');

-- Added AI for Twilight Keeper Havunth
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11804;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1180401', '11804', '0', '0', '100', '1', '5000', '7000', '5000', '10000', '11', '17366', '0', 'Twilight Keeper Havunth - Cast Fire Nova');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1180402', '11804', '0', '0', '100', '1', '3000', '4000', '7000', '12000', '11', '13339', '1', 'Twilight Keeper Havunth - Cast Fire Blast');

-- Added AI for Twilight Geolord
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11881;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1188101', '11881', '13', '0', '100', '1', '4000', '7000', '11', '13728', '4', 'Twilight Geolord - Cast Earth Shock');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1188102', '11881', '9', '0', '100', '1', '5', '30', '5000', '10000', '11', '9483', '1', 'Twilight Geolord - Cast Boulder');

-- Added AI for Twilight Stonecaller
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 11882;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188201,11882,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188202,11882,4,0,100,0,0,0,0,0,11,9053,1,0,22,1,0,0,0,0,0,0,'Twilight Stonecaller - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188203,11882,9,13,100,1,0,40,3000,3800,11,9053,1,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188204,11882,11,0,100,0,0,0,0,0,11,19704,0,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Summon Earth Elemental on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188205,11882,0,13,100,1,4000,6000,8000,13000,11,11020,1,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Cast Petrify (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188206,11882,9,13,100,1,0,30,4000,10000,11,2121,1,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Cast Flamestrike (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188207,11882,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Twilight Stonecaller - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188208,11882,9,13,100,1,40,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Start Combat Movement at 40 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188209,11882,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188210,11882,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188211,11882,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1188212,11882,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Twilight Stonecaller - Set Phase to 0 on Evade');

--
