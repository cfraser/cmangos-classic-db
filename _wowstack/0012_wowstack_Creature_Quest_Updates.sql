-- Stop totems from being able to parry
UPDATE `creature_template`
 SET
     `ExtraFlags`    = 4
 WHERE `Entry` IN (2523, 2630, 3527, 3573, 3579, 5873, 5874, 5879, 5913, 5923, 5924, 5925, 5926, 5927, 5950, 6016, 6017, 6066, 6112, 7467, 7486, 9637, 9687, 10467, 15363, 15803, 16385);

 -- Stop totems from being able to parry
 UPDATE `creature_template`
 SET
     `ExtraFlags`    = 6
 WHERE `Entry` IN (3968);

-- Correct minimum level & reputation  for A Warden of the Alliance
UPDATE quest_template SET MinLevel = 10 WHERE entry = 171;
UPDATE `quest_template` SET `RewRepFaction1`='69', `RewRepFaction2`='72', `RewRepFaction3`='47', `RewRepFaction4`='54', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='171';

-- Correct minimum level & reputation for You Scream, I Scream...
UPDATE quest_template SET MinLevel = 10 WHERE entry = 4822;
UPDATE `quest_template` SET `RewRepFaction1`='69', `RewRepFaction2`='72', `RewRepFaction3`='47', `RewRepFaction4`='54', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='4822';

-- Correct minimum level & reputation for Jaina's Autograph
UPDATE quest_template SET MinLevel = 10 WHERE entry = 558;
UPDATE `quest_template` SET `RewRepFaction1`='69', `RewRepFaction2`='72', `RewRepFaction3`='47', `RewRepFaction4`='54', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='558';

-- Correct minimum level & reputation for The Stonewrought Dam
UPDATE quest_template SET MinLevel = 10 WHERE entry = 1558;
UPDATE `quest_template` SET `RewRepFaction1`='69', `RewRepFaction2`='72', `RewRepFaction3`='47', `RewRepFaction4`='54', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='1558';

-- Correct minumum level & reputation for The Bough of the Eternals
UPDATE quest_template SET MinLevel = 10 WHERE entry = 1479;
UPDATE `quest_template` SET `RewRepFaction1`='69', `RewRepFaction2`='72', `RewRepFaction3`='47', `RewRepFaction4`='54', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='1479';

-- Correct minumum level & reputation for Spooky Lighthouse
UPDATE quest_template SET MinLevel = 10 WHERE entry = 1687;
UPDATE `quest_template` SET `RewRepFaction1`='69', `RewRepFaction2`='72', `RewRepFaction3`='47', `RewRepFaction4`='54', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='1687';

-- Correct minumum level & reputation for A Warden of the Horde
UPDATE quest_template SET MinLevel = 10 WHERE entry = 5502;
UPDATE `quest_template` SET `RewRepFaction1`='76', `RewRepFaction2`='81', `RewRepFaction3`='68', `RewRepFaction4`='530', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='5502';

-- Correct minumum level & reputation for Cairne's Hoofprint
UPDATE quest_template SET MinLevel = 10 WHERE entry = 925;
UPDATE `quest_template` SET `RewRepFaction1`='76', `RewRepFaction2`='81', `RewRepFaction3`='68', `RewRepFaction4`='530', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='925';

-- Correct minumum level & reputation for You Scream, I Scream...
UPDATE quest_template SET MinLevel = 10 WHERE entry = 915;
UPDATE `quest_template` SET `RewRepFaction1`='76', `RewRepFaction2`='81', `RewRepFaction3`='68', `RewRepFaction4`='530', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='915';

-- Correct minumum level & reputation for Gateway to the Frontier
UPDATE quest_template SET MinLevel = 10 WHERE entry = 911;
UPDATE `quest_template` SET `RewRepFaction1`='76', `RewRepFaction2`='81', `RewRepFaction3`='68', `RewRepFaction4`='530', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='911';

-- Correct minumum level & reputation for Down at the Docks
UPDATE quest_template SET MinLevel = 10 WHERE entry = 910;
UPDATE `quest_template` SET `RewRepFaction1`='76', `RewRepFaction2`='81', `RewRepFaction3`='68', `RewRepFaction4`='530', `RewRepValue1`='50', `RewRepValue2`='50', `RewRepValue3`='50', `RewRepValue4`='50' WHERE `entry`='910';

-- Correct reputation for Children's Week (Alliance)
UPDATE `quest_template` SET `RewRepValue1`='50', `RewRepValue3`='50', `RewRepValue4`='50', `RewRepValue5`='50' WHERE `entry`='1468';

-- Correct reputation for Children's Week (Horde)
UPDATE `quest_template` SET `RewRepValue1`='50', `RewRepValue3`='50', `RewRepValue4`='50', `RewRepValue5`='50' WHERE `entry`='172';

-- Correct quest chain for The Disruption Ends
UPDATE quest_template SET PrevQuestId = 871 WHERE entry = 872;

-- Correct quest chain for Supplies for the Crossroads
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `entry`='5041';

-- Correct quest chain for Volunteer's Battlegear
UPDATE `quest_template` SET `PrevQuestId`='8800' WHERE `entry`='8548';

-- Correct quest chain for Champion's Battlegear
UPDATE `quest_template` SET `PrevQuestId`='8800' WHERE `entry`='8573';

-- Correct quest chain for Veteran's Battlegear
UPDATE `quest_template` SET `PrevQuestId`='8800' WHERE `entry`='8572';
