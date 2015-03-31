-- Add Well Fed for Winter Veil Cookie
-- TODO: Add proc event
INSERT INTO `spell_elixir` (`entry`, `mask`) VALUES ('24870', '16');

-- Correct Stats for Shriveled Heart
UPDATE item_template SET stat_value1 = -5, stat_value2 = -5 WHERE entry = 9243;

-- Correct Charges for Hallowed Wand - Random
UPDATE item_template SET spellcharges_1 = -5 WHERE entry = 20413;

-- Correct Charges for Hallowed Wand - Pirate
UPDATE item_template SET spellcharges_1 = -5 WHERE entry = 20397;

-- Fix Drop Rate for Magic Dust
UPDATE creature_loot_template SET ChanceOrQuestChance = 10 WHERE entry = 832;

-- Stop Crystalline Threaded Cape dropping from creatures
DELETE FROM creature_loot_template WHERE entry = 7449;

-- Correct loot template foir Shadowhide Slayer
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('431', '1458', '1', '0', '1', '1', '0');

-- Correct loot template foir Rabid Shadowhide Gnoll
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('434', '1460', '1', '0', '1', '1', '0');

-- Correct loot template foir Shadowhide Gnoll
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('433', '1457', '1', '0', '1', '1', '0');

-- Correct Attack Speed for Atiesh, Greatstaff of the Guardian
UPDATE item_template SET delay = 2900 WHERE entry = 22631;

-- Correct Loot template for Murloc Warrior
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('171', '1394', '5', '0', '1', '1', '0');

-- Correct drop chance for Recipe: Elixir of the Sages
UPDATE creature_loot_template SET ChanceOrQuestChance = 1.11 WHERE entry 9449;
UPDATE creature_loot_template SET ChanceOrQuestChance = 1.11 WHERE entry 9450;
UPDATE creature_loot_template SET ChanceOrQuestChance = 1.11 WHERE entry 9451;
UPDATE creature_loot_template SET ChanceOrQuestChance = 1.11 WHERE entry 9452;
UPDATE creature_loot_template SET ChanceOrQuestChance = 3.19 WHERE entry 13479;

-- Correct drop chance for Recipe: Elixir of the Mongoose
UPDATE creature_loot_template SET ChanceOrQuestChance = 1.86 WHERE item = 13491;

-- Correct loot template for Princess Theradras
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('12201', '17780', '0.1', '0', '1', '1', '0');

-- Correct loot template for Shade of Eranikus
DELETE FROM `creature_loot_template` WHERE `entry`='5709' and`item`='35013';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5709', '10829', '35', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5709', '10833', '35', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5709', '10835', '35', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5709', '10836', '35', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5709', '10828', '30', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5709', '10837', '30', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5709', '10847', '2', '0', '1', '1', '0');
