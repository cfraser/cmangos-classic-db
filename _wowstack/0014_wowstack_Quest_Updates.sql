-- Defusing the Threat removed in 1.10
DELETE FROM `quest_template` WHERE `entry`='7367';
DELETE FROM `quest_template` WHERE `entry`='7368';

-- Correct quest level for The Super Egg-O-Matic
UPDATE `quest_template` SET `QuestLevel`='47' WHERE `entry`='2741';

-- Fix drop chance of Glutton Shackle and Darksoul Shackle for Arugal's Folly
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-17' WHERE `entry`='1779' and`item`='3156';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `entry`='1782' and`item`='3157';

-- Correct reputation reward for Troll Necklace Bounty
UPDATE `quest_template` SET `RewRepFaction1`='471', `RewRepValue1`='100' WHERE `entry`='2880';

-- Correct minimum level for Hidden Enemies
UPDATE `quest_template` SET `MinLevel`='10' WHERE `entry`='5730';
UPDATE `quest_template` SET `MinLevel`='10' WHERE `entry`='5729';
