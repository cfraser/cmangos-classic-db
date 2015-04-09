-- Rumors for Kravel now requires level 32
UPDATE `quest_template` SET `MinLevel`='32' WHERE `entry`='1117';

-- Scorpid Sting rank 1 will now be required to obtain Scorpid Sting rank 2
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('3043', '0', '3043', '1', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('14275', '3043', '3043', '2', '0');

-- Blackout will now proc on successful spellhit and damage over time spells that do shadow damage
UPDATE `spell_proc_event` SET `SchoolMask`='32', `SpellFamilyMask0`='0', `SpellFamilyMask1`='0', `SpellFamilyMask2`='0', `procFlags`='327680', `CustomChance`='2', `Cooldown`='3' WHERE `entry`='15268';
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('15323', '32', '6', '0', '0', '0', '327680', '0', '0', '4', '3');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('15324', '32', '6', '0', '0', '0', '327680', '0', '0', '6', '3');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('15325', '32', '6', '0', '0', '0', '327680', '0', '0', '8', '3');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('15326', '32', '6', '0', '0', '0', '327680', '0', '0', '10', '3');

-- Scargil will now walk around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='15970';

-- Mongress will now walk around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='51895';

-- Jaedenar Adept will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='711512';
UPDATE `creature_ai_scripts` SET `id`='711512' WHERE `id`='711513';

-- Jaedenar Cultist will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='711212';
UPDATE `creature_ai_scripts` SET `id`='711212' WHERE `id`='711213';

-- Immolatus will now cast Fire Shield
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('713702', '7137', '0', '0', '100', '1', '0', '5', '15000', '20000', '11', '2602', '0', 'Immolatus - Cast Fire Shield');

-- Olm the Wise will now move around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='51897';

-- Mezzir the Howler will now move around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='42304';

-- Adeed AI for Raging Owlbeast
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 8599;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES ('7451', '8599');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action2_type`, `action2_param1`, `comment`) VALUES ('745101', '7451', '2', '0', '100', '0', '20', '20', '0', '0', '11', '8599', '0', '1', '-46', 'Raging Owlbeast - Cast Enrage at 20% HP');

-- Added AI for Grizzle Snowpaw
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 10199;
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`) VALUES ('10199', '15793', '12548');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1019901', '10199', '0', '0', '100', '1', '0', '5', '5000', '10000', '11', '15793', '0', 'Grizzle Snowpaw - Cast Maul');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1019902', '10199', '0', '0', '100', '1', '3000', '4000', '8000', '16000', '11', '12548', '1', 'Grizzle Snowpaw - Cast Frost Shock');

-- Ragepaw will now walk around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='51893';

-- Overlord Ror now has his adds
-- Overlord Ror will no longer flee on low HP
-- Overlord Ror will now call for help at 50% HP
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('60000', '7155', '1', '2000', '0', '3522.18', '-1138.21', '223.714', '0.60741', '300', '0', '0', '2672', '0', '0', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('60001', '7154', '1', '3028', '0', '3521.25', '-1124.15', '223.385', '5.94027', '300', '0', '0', '1695', '0', '0', '0');
DELETE FROM `creature_ai_scripts` WHERE `id`='946403';
INSERT INTO  `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('946403', '9464', '2', '0', '100', '0', '50', '50', '0', '0', '39', '30', '1', '-551', 'Overlord Ror - Call for help at 50% HP');

-- Jadefire Shadowstalker will now cast Stealth on spawn
-- Jadefire Shadowstalker will now cast Slowing Poison
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('711002', '7110', '11', '0', '100', '0', '11', '5916', '0', 'Jadefire Shadowstalker - Cast Stealth on Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('711003', '7110', '0', '0', '100', '1', '3000', '4000', '15000', '25000', '11', '14897', '1', 'Jadefire Shadowstalker - Cast Slowing Poison');

-- Jadefire Felsworn will no longer flee on low HP
DELETE FROM `creature_ai_scripts` WHERE `id`='710912';
UPDATE `creature_ai_scripts` SET `id`='710912' WHERE `id`='710913';

-- Schemtatic: Ice Deflector will no longer be infinitely sold by Vendor-Tron 680!
-- Pattern: Dark Silk Shirt will no longer be infinitely sold by Vendor Tron 680!
-- Pattern: Crimson Silk Cloak will no longer be infinitely sold by Vendor Tron 680!
-- Pattern: Enchanter's Cowl will no longer be infinitely sold by Vendor Tron 680!
UPDATE `npc_vendor` SET `maxcount`='1' WHERE `entry`='12246' and`item`='13308';
UPDATE `npc_vendor` SET `incrtime`='9000' WHERE `entry`='12246' and`item`='13308';
UPDATE `npc_vendor` SET `maxcount`='1', `incrtime`='9000' WHERE `entry`='12246' and`item`='6401';
UPDATE `npc_vendor` SET `maxcount`='1', `incrtime`='9000' WHERE `entry`='12246' and`item`='7087';
UPDATE `npc_vendor` SET `maxcount`='1', `incrtime`='9000' WHERE `entry`='12246' and`item`='14630';

-- Death Howl will now roam around his spawn point
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid`='40656';

-- Added AI for Death Howl
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`) VALUES ('14339', '8715', '3604', '3427');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 14339;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1433901', '14339', '0', '0', '100', '1', '5000', '6000', '8000', '13000', '11', '8715', '0', 'Death Howl - Cast Terrifying Howl');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1433902', '14339', '0', '0', '100', '1', '3000', '4000', '8000', '16000', '11', '3604', '1', 'Death Howl - Cast Tendon Rip');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1433903', '14339', '0', '0', '100', '1', '0', '5', '15000', '30000', '11', '3427', '1', 'Death Howl - Cast Infected Wound');

-- Deadwood Den Watcher will no longer flee on low HP
-- Deadwood Den Watcher will now call for help at 50% HP
DELETE FROM `creature_ai_scripts` WHERE `id`='715602';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('715602', '7156', '2', '0', '100', '0', '50', '50', '39', '30', '1', '-551', 'Deadwood Den Watcher - Call for help at 50% HP');

-- Deadwood Avenger will now Enrage seeing a Friendly fall in battle
DELETE FROM `creature_ai_scripts` WHERE `id`='715702';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action2_type`, `action2_param1`, `comment`) VALUES ('715702', '7157', '14', '0', '100', '0', '99', '30', '10000', '10000', '11', '8599', '0', '1', '-550', 'Deadwood Avenger - Enrage on Friendly death');

-- Chieftain Bloodmaw will no longer flee on low HP
-- Chieftain Bloodmaw will now call for help at 50% HP
DELETE FROM `creature_ai_scripts` WHERE `id`='946202';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action1_param1`, `action2_type`, `action2_param1`, `comment`) VALUES ('946202', '9462', '2', '0', '100', '0', '50', '50', '39', '30', '1', '-551', 'Chieftain Bloodmaw - Call for help at 50% HP');

-- Added AI text for Mad Servant
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 15111;
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('-1329', 'Troll mojo da strongest mojo!', '0', '0', '0', '0', '15111');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('-1330', 'I gonna make you into mojo!', '0', '0', '0', '0', '15111');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('1511101', '15111', '4', '0', '100', '0', '1', '-1329', '-1330', 'Mad Servant - Say random on Aggro');

-- Commander Springvale will now cast Devotion Aura
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('427803', '4278', '4', '0', '100', '0', '11', '465', '0', 'Commander Springvale - Cast Devotion Aura on Aggro');

-- Lieutenant Fangore is now resistant to Shadow spells
UPDATE `creature_template` SET `ResistanceShadow`='500' WHERE `Entry`='703';

-- Balgaras the Foul is now resistant to Shadow spells
UPDATE `creature_template` SET `ResistanceShadow`='500' WHERE `Entry`='1364';

--


-- Added DB text for the Quest "In Dreams"
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005780', 'I will lead us through Hearthglen to the forest's edge. From there, you will take me to my father.', '0', '0', '0', '0', 'highlord taelan fordring say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005781', 'Remove your disguise, lest you feel the bite of my blade when the fury has taken control.', '0', '0', '0', '0', 'highlord taelan fordring say 2');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005782', 'Halt.', '0', '0', '0', '0', 'highlord taelan fordring say 3');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005783', '%s calls for his mount', '0', '2', '0', '0', 'highlord taelan fordring calls for his mount');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005784', 'It's not much further. The main road is just up ahead.', '0', '0', '0', '0', 'highlord taelan fordring say 4');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005785', 'You will not make it to the forest's edge, Fordring.', '0', '0', '0', '0', 'grand inquisitor isillien say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005786', 'Isillien!', '0', '1', '0', '0', 'highlord taelan fordring yell 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005787', 'This is not your fight, stranger. Protect yourself from the attacks of the Crimson Elite. I shall battle the Grand Inquisitor.', '0', '0', '0', '0', 'highlord taelan fordring say 5');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005788', 'You disappoint me, Taelan. I had plans for you... grand plans. Alas, it was only a matter of time before your filthy bloodline would catch up with you.', '0', '0', '0', '0', 'grand inquisitor isillien say 2');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005789', ' It is as they say; Like father, like son. You are as weak of will as Tirion... perhaps more so. I can only hope my assassins finally succeeded in ending his pitiful life.', '0', '0', '0', '0', 'grand inquisitor isillien say 3');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005790', 'The Grand Crusader has charged me with destroying you and your newfound friends, Taelan, but know this: I do this for pleasure, not of obligation or duty.', '0', '0', '0', '0', 'grand inquisitor isillien say 4');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005791', '%s calls for his guardsman', '0', '2', '0', '0', 'grand inquisitor isillien calls for his guardsman');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005792', 'The end is now, Fordring.', '0', '0', '0', '0', 'grand inquisitor isillien say 5');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005793', 'Enough!', '0', '0', '0', '0', 'grand inquisitor isillien say 6');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005794', '%s laughs', '0', '2', '0', '0', 'grand inquisitor isillien laughs');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005795', 'Did you really believe that you could defeat me? Your friends are soon to join you, Taelan.', '0', '0', '0', '0', 'grand inquisitor isillien say 7');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005796', 'turns his attention towards you', '0', '2', '0', '0', 'grand inquisitor isillien turns his attention towards you');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005797', 'What have you done, Isillien? You once fought with honor, for the good of our people... and now... you have murdered my boy...', '0', '0', '0', '0', 'lord tirion fording say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005798', 'Tragic. The elder Fordring lives on... You are too late, old man. Retreat back to your cave, hermit, unless you wish to join your son in the Twisting Nether.', '0', '0', '0', '0', 'grand inquisitor isillien say 8');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005799', 'May your soul burn in anguish, Isillien! Light give me strength to battle this fiend.', '0', '0', '0', '0', 'lord tirion fordring say 2');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005800', 'Face me, coward. Face the faith and strength that you once embodied.', '0', '0', '0', '0', 'lord tirion fordring say 3');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005801', 'Then come, hermit!', '0', '0', '0', '0', 'grand inquisitor isillien say 8');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005802', 'A thousand more like him exist. Ten thousand. Should one fall, another will rise to take the seat of power.', '0', '0', '0', '0', 'lord tirion fordring say 4');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005803', '%s falls to one knee', '0', '2', '0', '0', 'lord tirion fordring falls to one knee');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005804', 'Look what they did to my boy.', '0', '0', '0', '0', 'lord tirion fordring say 5');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005805', '%s holds the limp body of Taelan Fordring and softly sobs', '0', '2', '0', '0', 'lord tirion fordring holds the limp body of Taelan Fordring and softly sobs');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005806', 'Too long have I sat idle, gripped in this haze... this malaise, lamenting what could have been... what should have been.', '0', '0', '0', '0', 'lord tirion fordring say 6');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005807', 'Your death will not have been in vain, Taelan. A new Order is born on this day... an Order which will dedicate itself to extinguising the evil that plagues this world. An evil that cannot hide behind politics and pleasantries.', '0', '0', '0', '0', 'lord tirion fordring say 7');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005808', 'This I promise... This I vow...', '0', '0', '0', '0', 'lord tirion fordring say 8');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005809', 'Highlord Fordring, are you alright?', '0', '0', '0', '0', 'scarlet cavalier 1 say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005810', 'What the...', '0', '0', '0', '0', 'scarlet cavalier 2 say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005811', 'Hey, what\'s going on over there? Sir, are you alright? Sir??', '0', '0', '0', '0', 'scarlet cavalier 3 say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005812', 'Sir?', '0', '0', '0', '0', 'scarlet cavalier 4 say 1');
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005813', 'Something is wrong with the Highlord. Do something!', '0', '0', '0', '0', 'scarlet cavalier 4 say 2');

