-- Fix required races for "Your Place In The World"
UPDATE `quest_template` SET `RequiredRaces`='178' WHERE `entry`='4641';

-- Added Quest start script for "Your place In The World"
UPDATE `quest_template` SET `StartScript`='10176' WHERE `entry`='5382';
INSERT INTO `dbscripts_on_quest_start` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES (10176,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT INTO `dbscripts_on_quest_start` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES (10176,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT INTO `dbscripts_on_quest_start` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES (10176,5,11,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT INTO `dbscripts_on_quest_start` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES (10176,7,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- The Quest "Doctor Theolen Krastinov, the Butcher" should only be available after speaking to Eva Sarkhoff
UPDATE `creature_template` SET `NpcFlags`='1' WHERE `Entry`='11216';
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES (11216,8,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE `gossip_menu_option` SET `action_script_id`='11216' WHERE `menu_id`='3303' and`id`='0';
