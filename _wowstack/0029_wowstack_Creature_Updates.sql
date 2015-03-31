-- Added AI for Spitelash Screamer
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6193;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('619301', '6193', '0', '0', '100', '1', '4000', '7000', '7000', '12000', '11', '3589', '1', 'Spitelash Screamer - Cast Deafening Screech');

-- Added AI for Spitelash Serpent Guard
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6194;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('619401', '6194', '0', '0', '100', '1', '3000', '6000', '8000', '15000', '11', '12548', '1', 'Spitelash Serpent Guard - Cast Frost Shock');

-- Added AI for Spitelash Myrmidon
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6196;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('619601', '6196', '0', '0', '100', '1', '2000', '4000', '4000', '8000', '11', '11976', '1', 'Spitelash Myrmidon - Cast Strike');

-- Added AI for Tazan
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6494;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('649402', '6494', '0', '0', '100', '1', '3000', '6000', '5000', '10000', '11', '6253', '1', 'Tazan - Cast Backhand');

-- Added AI for Ravasaur Runner
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 6506;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('650601', '6506', '11', '0', '100', '0', '11', '3391', '0', 'Ravasaur Runner - Cast Thrash on Spawn');

-- Added AI for Digmaster Shovelphlange
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7057;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('705701', '7057', '4', '0', '100', '0', '11', '7164', '0', 'Digmaster Shovelphlange - Cast Defensive Stance on Aggro');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('705702', '7057', '0', '0', '100', '1', '2000', '4000', '4000', '8000', '11', '8380', '1', 'Digmaster Shovelphlange - Cast Sunder Armour');

-- Added AI for Cursed Ooze
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7086;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('708601', '7086', '4', '0', '100', '0', '11', '13483', '0', 'Cursed Ooze - Cast Wither Touch on Aggro');

-- Added AI for Infernal Sentry
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7136;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('713601', '7136', '4', '0', '100', '0', '11', '2602', '0', 'Infernal Sentry - Cast Fire Shield on Aggro');

-- Added AI for Gnarlpine Mystic
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7235;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472301,4723,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472302,4723,4,0,100,0,0,0,0,0,11,5177,1,0,22,1,0,0,0,0,0,0,'Gnarlpine Mystic - Cast Wrath and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472303,4723,9,13,100,1,0,40,2000,2800,11,5177,1,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Cast Wrath (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472306,4723,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Gnarlpine Mystic - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472307,4723,9,13,100,1,30,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Start Combat Movement at 30 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472308,4723,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472309,4723,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472310,4723,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (472311,4723,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Set Phase to 0 on Evade');

-- Added AI for Frostsaber Huntress
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7433;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('743301', '7433', '2', '0', '100', '0', '20', '11', '15716', '0', 'Frostsaber Huntress - Cast Enrage at 20% HP');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('743302', '7433', '0', '0', '100', '1', '3000', '6000', '9000', '15000', '11', '13443', '1', 'Frostsaber Huntress - Cast Rend');

-- Added AI for Frostsaber Pride Watcher
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7434;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('743401', '7434', '2', '0', '100', '2', '20', '11', '15716', '0', 'Frostsaber Pride Watcher - Cast Enrage at 20% HP');

-- Added AI for Cobalt Wyrmkin
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7435;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('743501', '7435', '0', '0', '100', '1', '3000', '6000', '5000', '10000', '11', '15580', '1', 'Cobalt Wyrmkin - Cast Strike');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('743502', '7435', '0', '0', '100', '1', '3000', '6000', '7000', '12000', '11', '9080', '1', 'Cobalt Wyrmkin - Cast Hamstring');

-- Added AI for Cobalt Scalebane
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7436;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('743601', '7436', '0', '0', '100', '1', '3000', '6000', '7000', '12000', '11', '15655', '1', 'Cobalt Scalebane - Cast Shield Slam');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('743602', '7436', '0', '0', '100', '1', '3000', '5000', '6000', '12000', '11', '6713', '1', 'Cobalt Scalebane - Cast Disarm');

-- Added AI for Cobalt Mageweaver
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7437;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743701,7437,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743702,7437,4,0,100,0,0,0,0,0,11,15043,1,0,22,1,0,0,0,0,0,0,'Cobalt Mageweaver - Cast Frostbolt and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743703,7437,9,13,100,1,0,40,3000,3800,11,15043,1,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Cast Frostbolt (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743704,7437,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Cobalt Mageweaver - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743705,7437,9,13,100,1,40,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Start Combat Movement at 40 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743706,7437,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743707,7437,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743708,7437,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743709,7437,11,0,100,0,0,0,0,0,11,15784,0,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Cast Frost Armour on Spawn');#
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743710,7437,16,0,100,1,12544,5,30000,30000,11,15784,0,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Cast Frost Armour on Missing Buff');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743711,7437,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Mageweaver - Set Phase to 0 on Evade');

-- Added AI for Winterfall Ursa
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7438;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('743801', '7438', '4', '0', '100', '0', '11', '17205', '0', 'Winterfall Ursa - Cast Winterfall Firewater');

-- Added AI for Winterfall Shaman
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7439;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743901,7439,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743902,7439,4,0,100,0,0,0,0,0,11,17205,1,0,22,1,0,0,0,0,0,0,'Winterfall Shaman - Cast Winterfall Firewater and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743903,7439,9,13,100,1,0,40,3000,3800,11,9532,1,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Cast Lightning Bolt (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743904,7439,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Winterfall Shaman - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743905,7439,9,13,100,1,40,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Start Combat Movement at 40 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743906,7439,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743907,7439,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743908,7439,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743909,7439,11,0,100,0,0,0,0,0,11,13585,0,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Cast Lightning Shield on Spawn');#
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743910,7439,16,0,100,1,12544,5,30000,30000,11,13585,0,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Cast Lightning Shield on Missing Buff');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743911,7439,14,0,100,1,60,10,10000,10000,11,11431,4,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Cast Healing Touch on Friendlies');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (743912,7439,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Winterfall Shaman - Set Phase to 0 on Evade');

-- Added AI for Winterfall Den Watcher
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7440;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('744001', '7440', '4', '0', '100', '0', '11', '17205', '0', 'Winterfall Den Watcher - Cast Winterfall Firewater on Aggro');

-- Added AI for Winterfall Totemic
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7441;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('744101', '7441', '4', '0', '100', '0', '11', '17205', '0', 'Winterfall Totemic - Cast Winterfall Firewater');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('744102', '7441', '0', '0', '100', '1', '3000', '5000', '5000', '10000', '11', '15787', '0', 'Winterfall Totemic - Cast Moonflare Totem');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('744103', '7441', '0', '0', '100', '1', '3000', '5000', '5000', '10000', '11', '15786', '0', 'Winterfall Totemic - Cast Earthbind Totem');

-- Added AI for Winterfall Pathfinder
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7442;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('744201', '7442', '4', '0', '100', '0', '11', '17205', '0', 'Winterfall Pathfinder - Cast Winterfall Firewater');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('744202', '7442', '0', '0', '100', '0', '0', '1000', '20000', '30000', '11', '16498', '1', 'Winterfall Pathfinder - Cast Faerie Fire');

-- Added AI for Chillwind Chimaera
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7448;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('744801', '7448', '0', '0', '100', '1', '4000', '7000', '6000', '15000', '11', '16552', '1', 'Chillwind Chimaera - Cast Venom Spit');

-- Added AI for Ragged Owlbeast
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7450;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745001', '7450', '4', '0', '100', '0', '11', '15848', '1', 'Ragged Owlbeast - Cast Festering Rash on Aggro');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745002', '7450', '0', '0', '100', '1', '3000', '6000', '10000', '20000', '11', '13738', '1', 'Ragged Owlbeast - Cast Rend');

-- Added AI for Moontouched Owlbeast
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7453;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745301', '7453', '0', '0', '100', '1', '3000', '5000', '10000', '17000', '11', '24957', '1', 'Moontouched Owlbeast - Cast Moonfire');

-- Added AI for Winterspring Screecher
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7456;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745601', '7456', '0', '0', '100', '1', '3000', '5000', '8000', '15000', '11', '3589', '0', 'Winterspring Screecher - Cast Deafening Screech');

-- Added AI for Rogue Ice Thistle
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7457;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745701', '7457', '0', '0', '100', '1', '5000', '8000', '10000', '20000', '11', '15878', '0', 'Rogue Ice Thistle - Cast Ice Blast');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745702', '7457', '0', '0', '100', '1', '5000', '10000', '8000', '16000', '11', '3604', '1', 'Rogue Ice Thistle - Cast Tendon Rip');

-- Added AI for Ice Thistle Yeti
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7458;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745801', '7458', '0', '0', '100', '1', '5000', '8000', '10000', '20000', '11', '15878', '0', 'Ice Thistle Yeti - Cast Ice Blast');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745802', '7458', '0', '0', '100', '1', '5000', '10000', '8000', '16000', '11', '3604', '1', 'Ice Thistle Yeti - Cast Tendon Rip');

-- Added AI for Ice Thistle Matriarch
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7459;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745901', '7459', '4', '0', '100', '0', '11', '6268', '1', 'Ice Thistle Matriarch - Cast Rushing Charge on Aggro');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('745902', '7459', '0', '0', '100', '1', '5000', '8000', '10000', '20000', '11', '15878', '0', 'Ice Thistle Matriarch - Cast Ice Blast');

-- Added AI for Ice Thistle Patriarch
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7460;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('746001', '7460', '0', '0', '100', '1', '3000', '5000', '5000', '10000', '11', '3131', '1', 'Ice Thistle Patriarch - Cast Frost Breath');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('746002', '7460', '0', '0', '100', '1', '5000', '8000', '10000', '20000', '11', '15878', '0', 'Ice Thistle Patriarch - Cast Ice Blast');

-- Added AI for Hederine Slayer
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7463;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('746301', '7463', '0', '0', '100', '1', '5000', '8000', '6000', '10000', '11', '17547', '1', 'Hederine Slayer - Cast Mortal Strike');

-- Added AI for Suffering Highborne
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7523;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('752301', '7523', '0', '0', '100', '1', '5000', '9000', '15000', '30000', '11', '18671', '1', 'Suffering Highborne - Cast Curse of Agony');

-- Added AI for Anguished Highborne
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7524;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('752401', '7524', '0', '0', '100', '1', '5000', '10000', '10000', '15000', '11', '17194', '1', 'Anguished Highborne - Cast Mind Blast');

-- Added AI for Spitelash Enchantress
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7886;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('788601', '7886', '0', '0', '100', '1', '4000', '9000', '15000', '25000', '11', '3443', '0', 'Spitelash Enchantress - Cast Enchanted Quickness');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('788602', '7886', '0', '0', '100', '1', '3000', '6000', '8000', '13500', '11', '12548', '1', 'Spitelash Enchantress - Cast Frost Shock');

-- Added AI for Master Mechanic Castpipe 
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 7950;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('795001', '7950', '0', '0', '100', '1', '3000', '5000', '5000', '10000', '11', '7978', '1', 'Master Mechanic Castpipe - Cast Throw Dynamite');

-- Added AI for Living Decay
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 8606;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('860601', '8606', '4', '0', '100', '0', '11', '11442', '1', 'Living Decay - Cast Withered Touch');

-- Added AI for Entropic Horror
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 9879;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('987901', '9879', '4', '0', '100', '0', '11', '2602', '0', 'Entropic Horror - Cast Fire Shield on Aggro');

-- Added AI for Mezzir the Howler
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10197;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1019701', '10197', '4', '0', '100', '0', '11', '15971', '0', 'Mezzir the Howler - Cast Demoralizing Roar on Aggro');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1019702', '10197', '0', '0', '100', '1', '3000', '6000', '7000', '12000', '11', '14100', '0', 'Mezzir the Howler - Cast Terrifying Roar');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1019703', '10197', '0', '0', '100', '1', '5000', '10000', '8000', '18000', '11', '3131', '1', 'Mezzir the Howler - Cast Frost Breath');

-- Added AI for Kashoch the Reaver
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10198;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1019801', '10198', '0', '0', '100', '1', '3000', '5000', '6000', '10000', '11', '15284', '1', 'Kashoch the Reaver - Cast Cleave');

-- Added AI for Rakshiri
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10200;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1020001', '10200', '0', '0', '100', '1', '3000', '6000', '6000', '9000', '11', '7399', '1', 'Rakshiri - Cast Terrify');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1020002', '10200', '2', '0', '100', '0', '20', '11', '15716', '0', 'Rakshiri - Cast Enrage on 20% HP');

-- Added AI for Galak Messenger
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10617;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1061701', '10617', '4', '0', '100', '0', '11', '6190', '0', 'Galak Messenger - Cast Demoralizing Shout');

-- Added AI for Cobalt Whelp
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10659;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1065901', '10659', '0', '0', '100', '1', '3000', '6000', '15000', '25000', '11', '13443', '1', 'Cobalt Whelp - Cast Rend');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1065902', '10659', '0', '0', '100', '1', '2000', '7000', '8000', '16000', '11', '15089', '1', 'Cobalt Whelp - Cast Frost Shock');

-- Added AI for Cobalt Broodling
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10660;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066001,10660,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066002,10660,4,0,100,0,0,0,0,0,11,9672,1,0,22,1,0,0,0,0,0,0,'Cobalt Broodling - Cast Frostbolt and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066003,10660,9,13,100,1,0,40,3000,3800,11,9672,1,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Cast Frostbolt (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066004,10660,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Cobalt Broodling - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066005,10660,9,13,100,1,40,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Start Combat Movement at 40 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066006,10660,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066007,10660,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066008,10660,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1066009,10660,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Set Phase to 0 on Evade');

-- Added AI for Spell Eater
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10661;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1066101', '10661', '0', '0', '100', '1', '2000', '5000', '5000', '10000', '11', '16340', '1', 'Spell Eater - Cast Frost Breath');

-- Added AI for High Chief Winterfall
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10738;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1073801', '10738', '0', '0', '100', '1', '0', '5', '5000', '8000', '11', '15793', '0', 'High Chief Winterfall - Cast Maul');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1073802', '10738', '0', '0', '100', '1', '3000', '6000', '8000', '13000', '11', '12548', '1', 'High Chief Winterfall - Cast Frost Shock');

-- Added AI for Scalding Elemental
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10756;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1075601', '10756', '0', '0', '100', '1', '2000', '5000', '6500', '12000', '11', '17276', '1', 'Scalding Elemental - Cast Scald');

-- Added AI for Boiling Elemental
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10757;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1075701', '10757', '0', '0', '100', '1', '3000', '5000', '10000', '15000', '11', '11983', '0', 'Boiling Elemental - Cast Steam Jet');

-- Added AI for Grimtotem Stomper
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10759;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1075904', '10759', '13', '0', '100', '1', '5000', '8000', '11', '8046', '1', 'Grimtotem Stomper - Cast Earth Shock on Spellcast');

-- Added AI for Grimtotem Geomancer
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10760;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076001,10760,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076002,10760,4,0,100,0,0,0,0,0,11,8400,1,0,22,1,0,0,0,0,0,0,'Grimtotem Geomancer - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076003,10760,9,13,100,1,0,35,4000,4800,11,8400,1,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076004,10760,9,13,100,1,0,30,4000,10000,11,2121,1,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Cast Flamestrike (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076005,10760,3,13,100,1,15,0,1000,1000,21,1,0,0,23,1,0,0,0,0,0,0,'Grimtotem Geomancer - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076006,10760,9,13,100,1,35,80,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Start Combat Movement at 35 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076007,10760,9,13,100,1,5,15,1000,1000,21,0,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076008,10760,9,13,100,1,0,5,1000,1000,21,1,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076009,10760,3,11,100,1,100,30,1000,1000,22,1,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES (1076010,10760,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Grimtotem Geomancer - Set Phase to 0 on Evade');

-- Added AI for Grimtotem Reaver
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10761;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1076101', '10761', '0', '0', '100', '1', '0', '5', '8000', '16000', '11', '15280', '1', 'Grimtotem Reaver - Cast Cleave Armor');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1076102', '10761', '0', '0', '100', '1', '3000', '5000', '5000', '10000', '11', '17281', '1', 'Grimtotem Reaver - Cast Crusader Strike');

-- Added AI for Ursius
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10806;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1080601', '10806', '0', '0', '100', '1', '0', '5', '5000', '8000', '11', '15793', '0', 'Ursius - Cast Maul');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1080602', '10806', '0', '0', '100', '1', '2000', '4000', '15000', '30000', '11', '15971', '0', 'Ursius - Cast Demoralizing Roar');

-- Added AI for Brumeran
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10807;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1080701', '10807', '2', '0', '100', '0', '20', '11', '8599', '0', 'Brumeran - Cast Enrage at 20% HP');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1080702', '10807', '0', '0', '50', '1', '3000', '6000', '3000', '6000', '11', '15797', '1', 'Brumeran - Cast Lightning Breath');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1080703', '10807', '0', '0', '50', '1', '5000', '10000', '5000', '10000', '11', '16552', '1', 'Brumeran - Cast Vemon Spit');

-- Added AI for Arnak Grimtotem
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10896;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1089601', '10896', '0', '0', '100', '1', '3000', '5000', '8000', '16000', '11', '18075', '1', 'Arnak Grimtotem - Cast Rend');

-- Fix walk speed for Somnus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `Entry`='12900';

-- Lost One Muckdweller will now cast Plague Cloud in combat rather than on death
UPDATE `creature_ai_scripts` SET `event_type`='0', `event_flags`='1', `event_param1`='3000', `event_param2`='6000', `event_param3`='5000', `event_param4`='10000', `comment`='Lost One Muckdweller - Cast Plague' WHERE `id`='76002';

-- Lost One Chieftain will now call for help at 50% HP rather than 30%
UPDATE `creature_ai_scripts` SET `event_param1`='50', `comment`='Lost One Chieftain - Call for Help at 50% HP' WHERE `id`='76301';

-- Ongeku will now flee at 15% HP
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 5622;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('562201', '5622', '2', '0', '100', '0', '15', '25', '1', '-47', 'Ongeku - Flee at 15% HP');

-- Marsh Flesheater will no longer flee at 15% HP
DELETE FROM `creature_ai_scripts` WHERE `id`='75102';

-- Swamp Talker will now move around its spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='43596';

-- Theramore Infiltrator will no longer flee at 15% HP
DELETE FROM `creature_ai_scripts` WHERE `id`='483402';
UPDATE `creature_ai_scripts` SET `id`='483402' WHERE `id`='483403';

-- Correct creature ID for Razormane Warfrenzy - AI now works
UPDATE `creature_ai_scripts` SET `creature_id`='3459' WHERE `id`='345901';

-- Mirefin Murloc will now cast Mirefin Fungus
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('435902', '4359', '11', '0', '100', '0', '11', '9463', '0', 'Mirefin Murloc - Cast Mirefin Fungus on Spawn');

-- Delete unneeded text for Bloodfen Raptor
DELETE FROM `creature_ai_texts` WHERE `entry`='-274';
DELETE FROM `creature_ai_scripts` WHERE `id`='435101';

-- Delete unneeded text for Bloodfen Screecher
DELETE FROM `creature_ai_scripts` WHERE `id`='435202';

-- Hayoc will now move around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='31481';

-- Muckshell Scrabbler will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('440411', '4404', '2', '0', '100', '0', '15', '25', '1', '-47', 'Muckshell Scrabbler - Flee at 15% HP');
