-- Correct prerequisite for Proof of Demise
UPDATE `quest_template` SET `PrevQuestId`='427' WHERE `entry`='374';

-- Make Fool's Stout repeatable
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry`='1127';

-- Correct race requirement for A New Plague
UPDATE `quest_template` SET `RequiredRaces`='240' WHERE `entry`='369';

-- Correct race requirement for Your Place In The World
UPDATE `quest_template` SET `RequiredRaces`='240' WHERE `entry`='4641';

-- Unchain Rude Awakening & The Mindless Ones
UPDATE `quest_template` SET `NextQuestInChain`='0' WHERE `entry`='363';
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `entry`='364';

-- Correct chain for Report to Orgnil
UPDATE `quest_template` SET `PrevQuestId`='805' WHERE `entry`='823';

-- Correct reputation for Missing Reputation
UPDATE `quest_template` SET `RewRepFaction1`='635', `RewRepValue1`='500' WHERE `entry`='8447';

-- Correct quest level for Never Ask Me About My Business
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8584';

-- Corrected 23 Quest Levels
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='5067';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='5161';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='7021';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='7022';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8053';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8054';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8055';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8585';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8860';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8861';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8898';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8899';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8900';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8901';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8902';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8903';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8979';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8982';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8983';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='8984';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='9024';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='9027';
UPDATE `quest_template` SET `QuestLevel`='60' WHERE `entry`='9028';

-- Correct minimum level requirement for A Gently Shaken Gift
UPDATE `quest_template` SET `MinLevel`='1' WHERE `entry`='8767';

-- Correct minimum level requirement for Greatfather Winter is Here! (Alliance)
UPDATE `quest_template` SET `MinLevel`='10' WHERE `entry`='7022';

-- Correct minimum level requirement for Greatfather Winter is Here! (Horde)
UPDATE `quest_template` SET `MinLevel`='10' WHERE `entry`='7021';

-- Correct reputation for One Commendation Signet
UPDATE `quest_template` SET `RewRepFaction1`='12', `RewRepValue1`='5' WHERE `entry`='8830';

-- Make Thirty Signets for War Supplies repeatable
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry`='8850';

-- Correct reputation for Ten Commendation Signets
UPDATE `quest_template` SET `RewRepFaction1`='12', `RewRepValue1`='150' WHERE `entry`='8831';

-- Remove Korrak the Bloodrager
DELETE FROM `quest_template` WHERE `entry`='7202';

-- Remove Korrak the Everliving
DELETE FROM `quest_template` WHERE `entry`='7382';

