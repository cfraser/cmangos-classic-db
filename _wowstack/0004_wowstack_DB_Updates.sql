-- AI for Chillwind Ravager
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (744901,7449,0,0,100,1,4000,4000,6000,12000,11,15849,1,0,0,0,0,0,0,0,0,0,'Chillwind Ravager Cast - Chillwind');

-- AI for Fledgling Chillwind
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (744701,7447,0,0,100,1,4000,4000,6000,12000,11,15849,1,0,0,0,0,0,0,0,0,0,'Fledgling Chillwind Cast - Chillwind');

-- Gazzuz summon Voidwalker
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (320414,3204,1,0,100,0,1000,1000,0,0,11,12746,0,0,0,0,0,0,0,0,0,0,'Gazzuz - Summon Voidwalker on Spawn');

-- AI for Frostsaber Huntress
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743301,7433,0,0,100,1,6000,10000,20000,30000,11,13443,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Frostsaber Huntress Cast - Rend');

-- AI for Frostsaber Huntress
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743302,7433,2,0,100,1,20,20,20000,20000,11,15716,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Frostsaber Huntress Cast - Enrage on 20% HP');

-- AI for Kurmoikk
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1449101,14491,2,0,100,1,25,25,20000,20000,11,14491,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kurmokk Cast - Enrage on 25% HP');

-- Change Timer of Marsh Inkspewer
UPDATE creature_ai_scripts SET event_param3 = 15000, event_param4 = 25000 WHERE id = 75001;

-- Correct level of rare Accursed Slitherblade
UPDATE creature_template SET MinLevel = 35, MaxLevel = 35 WHERE entry = 14229;

INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1148001,11480,0,0,100,1,0,5,6000,10000,11,15979,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Arcane Aberration Cast - Arcane Bolt');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1148002,11480,6,0,100,1,NULL,NULL,NULL,NULL,11,26626,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Arcane Aberration Cast - Mana Burn on Death');

-- Update Immune Mark for Razelikh the Defiler
UPDATE creature_template SET mechanicImmuneMask = 116097015 WHERE entry = 7664;

-- Update Min and Max level for Lumbering Horror (Scourge Invasion)
UPDATE creature_template SET minlevel = 61, maxlevel = 61 WHERE entry = 14697;

-- Remove flee from Deepmoss Venomspitter (Beasts should never flee)
DELETE FROM creature_ai_scripts WHERE entry =400707;

-- Adjust hitpoints of Mana Sprite
UPDATE creature_template SET minlevelhealth = 10, maxlevelhealth = 10 WHERE entry = 12382;

-- Adjust movement speed of Guard Slip'kik
UPDATE creature_template SET speedwalk = 0.85 WHERE entry = 14323;

