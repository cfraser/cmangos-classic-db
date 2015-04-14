-- Correct Faction for Dark Guard
UPDATE `creature_template` SET `FactionAlliance`='48', `FactionHorde`='48' WHERE `Entry`='9445';

-- Correct Faction for Dark Keeper Bethek
UPDATE `creature_template` SET `FactionAlliance`='48', `FactionHorde`='48' WHERE `Entry`='9438';

-- Correct Faction for Dark Keeper Zimrel
UPDATE `creature_template` SET `FactionAlliance`='48', `FactionHorde`='48' WHERE `Entry`='9441';

-- Correct Faction for Dark Keeper Vorfalk
UPDATE `creature_template` SET `FactionAlliance`='48', `FactionHorde`='48' WHERE `Entry`='9437';

-- Correct Faction for Dark Keeper Uggel
UPDATE `creature_template` SET `FactionAlliance`='48', `FactionHorde`='48' WHERE `Entry`='9439';

-- Correct Faction for Dark Keeper Pelver
UPDATE `creature_template` SET `FactionAlliance`='48', `FactionHorde`='48' WHERE `Entry`='9443';

-- Correct Faction for Dark Keeper Ofgut
UPDATE `creature_template` SET `FactionAlliance`='48', `FactionHorde`='48' WHERE `Entry`='9442';

-- Henry Stern will now teach Mighty Troll's Blood Potion
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES ('8696', '3451', '0', '171', '180', '0');

-- Add Gossip for Quest: The Corrupter
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005814', 'This should only take a moment, $N.', '0', '0', '0', '0', 'Maurin Bonesplitter say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005815', 'X amir rikk zila parn Amanalar Ante rikk thorje xi no', '0', '0', '0', '0', 'Maurin Bonesplitter say 2');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005816', 'Pathetic forsaken weakling. You wish to see my master? So be it.', '0', '0', '0', '0', 'Jugkar Grim''rod say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005817', 'Kar refir xi raka no shi', '0', '0', '0', '0', 'Lord Azrethoc say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005818', 'Rethule', '0', '0', '0', '0', 'Lord Azrethoc say 2');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005819', 'Parn Parn xi rikk mannor no shi rikk', '0', '0', '0', '0', 'Lord Azrethoc say 3');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005820', 'An interesting turn of events.', '0', '0', '0', '0', 'Maurin Bonesplitter say 3');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005821', 'Yes, come. My master and I shall be waiting.', '0', '0', '0', '0', 'Jugkar Grim''rod say 2');

-- Maur Grimtotem will now appear dead
UPDATE `creature_template` SET `DynamicFlags`='36' WHERE `Entry`='11834';

-- Taskmaster Whipfang now has his waypoints
DELETE FROM `creature_movement` WHERE `id` = 29215;
INSERT INTO `creature_movement` VALUES
(29215, 1, 1140.72, 96.9613, -6.54598, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 2.58386, 0, 0),
(29215, 2, 1126.27, 104.924, -1.39066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.67811, 0, 0),
(29215, 3, 1108.55, 113.461, -0.63598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.66633, 0, 0),
(29215, 4, 1092.48, 124.283, 1.09913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.67418, 0, 0),
(29215, 5, 1076.51, 132.241, 3.01763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.10869, 0, 0),
(29215, 6, 1076.91, 145.641, 4.54025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.29188, 0, 0),
(29215, 7, 1090.09, 160.249, 4.52577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.867764, 0, 0),
(29215, 8, 1101.82, 173.734, 3.34249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.844202, 0, 0),
(29215, 9, 1122.92, 195.084, 1.29923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.852056, 0, 0),
(29215, 10, 1143.44, 215.243, 1.88064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.765662, 0, 0),
(29215, 11, 1157.14, 219.014, 3.28712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.15505, 0, 0),
(29215, 12, 1171.72, 213.375, 5.79116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.97441, 0, 0),
(29215, 13, 1187.93, 207.205, 4.92194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.00975, 0, 0),
(29215, 14, 1193.7, 190.547, 2.92608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.86838, 0, 0),
(29215, 15, 1201.24, 176.04, 1.77853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.17724, 0, 0),
(29215, 16, 1206.94, 157.502, 1.16816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.67067, 0, 0),
(29215, 17, 1201.08, 141.712, -1.08232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.67637, 0, 0),
(29215, 18, 1180.12, 132.773, -5.8015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.86408, 0, 0),
(29215, 19, 1169.04, 120.456, -8.25219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.04865, 0, 0),
(29215, 20, 1159.28, 103.321, -6.8048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.22928, 0, 0);

-- Foreman Rigger now has his waypoints
DELETE FROM `creature_movement` WHERE `id` = 29214;
INSERT INTO `creature_movement` VALUES
(29214, 1, 1205.03, -3.69687, -4.78463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55736, 0, 0),
(29214, 2, 1207.51, 3.96758, -6.01966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.19214, 0, 0),
(29214, 3, 1216, 12.0602, -6.21585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.720906, 0, 0),
(29214, 4, 1229.36, 23.42, -6.25079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.701271, 0, 0),
(29214, 5, 1238.11, 31.3466, -5.16889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.05863, 0, 0),
(29214, 6, 1247.05, 49.1283, -2.80585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.11753, 0, 0),
(29214, 7, 1257.24, 67.9519, -0.783778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.942389, 0, 0),
(29214, 8, 1274.39, 76.7099, -1.38792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.121647, 0, 0),
(29214, 9, 1298.72, 78.3276, 0.429467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.07845, 0, 0),
(29214, 10, 1323.25, 77.3267, 3.68931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.181, 0, 0),
(29214, 11, 1342.59, 71.6197, 8.84938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.88568, 0, 0),
(29214, 12, 1360.53, 69.6484, 11.7488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.16057, 0, 0),
(29214, 13, 1373.5, 63.2308, 12.245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.41367, 0, 0),
(29214, 14, 1373.43, 48.0574, 10.3752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.05238, 0, 0),
(29214, 15, 1363.27, 28.0317, 8.1916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.30628, 0, 0),
(29214, 16, 1357.15, 4.83164, 6.93492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.70682, 0, 0),
(29214, 17, 1359.85, -12.6214, 7.4776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.80499, 0, 0),
(29214, 18, 1352.65, -31.7676, 6.35138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.12956, 0, 0),
(29214, 19, 1343.66, -53.1966, 6.67377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.8311, 0, 0),
(29214, 20, 1329.9, -56.0766, 7.14319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01585, 0, 0),
(29214, 21, 1307.15, -50.6839, 5.48099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.0669, 0, 0),
(29214, 22, 1287.43, -52.1604, 2.98016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.34572, 0, 0),
(29214, 23, 1270.6, -56.5571, -0.628224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.39284, 0, 0),
(29214, 24, 1251.83, -55.0785, -4.75134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.75667, 0, 0),
(29214, 25, 1229.54, -46.9687, -4.65107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.81165, 0, 0),
(29214, 26, 1218.37, -38.6079, -3.28967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04981, 0, 0),
(29214, 27, 1216.09, -25.2816, -1.93942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.86524, 0, 0),
(29214, 28, 1209.11, -10.3496, -4.42365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.07337, 0, 0);

-- Fix AI Text for Glutinous Ooze
UPDATE `creature_ai_scripts` SET `action2_param1`='-1327' WHERE `id`='655901';

-- Fix AI Text for Zukk'ash Stinger
UPDATE `creature_ai_scripts` SET `action2_param1`='-1328' WHERE `id`='524402';

-- More Fixes for Zukk'ash Stinger AI
UPDATE `creature_ai_scripts` SET `comment`='Zukk''ash Stinger - Set Phase 1 on Spawn' WHERE `id`='524401';
UPDATE `creature_ai_scripts` SET `comment`='Zukk''ash Stinger - Stop combat movement and set Phase 2' WHERE `id`='524402';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `comment`) VALUES ('524404', '5244', '7', '0', '100', '1', '21', '1', 'Zukk''Ash Stinger - Start combat movement on Evade');

-- Fix AI Text for Doctor Theolen Krastinov
UPDATE `creature_ai_scripts` SET `action1_param1`='-1321' WHERE `id`='1126104';

-- Fix AI for Bellygrub
UPDATE `creature_ai_scripts` SET `action1_param2`='0' WHERE `id`='34502';

-- Fix AI for Razormane Mystic
UPDATE `creature_ai_scripts` SET `event_param2`='0', `event_param3`='0', `event_param4`='0' WHERE `id`='327104';

-- Fix AI for Baron Longshore
UPDATE `creature_ai_scripts` SET `event_param2`='0', `event_param3`='0', `event_param4`='0' WHERE `id`='346701';

-- Fix AI for South Sea Brigand
UPDATE `creature_ai_scripts` SET `event_param2`='0', `event_param3`='0', `event_param4`='0' WHERE `id`='338102';
