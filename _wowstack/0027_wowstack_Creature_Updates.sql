-- Scarlet Humanoids will now have their properr emotes in Hearthglen
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='48598';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='52000';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='51745';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='45396';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='48624';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='47976';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='51644';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='49418';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='49996';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='52004';
UPDATE `creature_addon` SET `emote`='36' WHERE `guid`='48206';

UPDATE `creature_addon` SET `emote`='233' WHERE `guid`='47174';
UPDATE `creature_addon` SET `emote`='233' WHERE `guid`='52499';
UPDATE `creature_addon` SET `emote`='233' WHERE `guid`='48474';

-- Corrected positions of a few creatures in Hearthglen
UPDATE creature SET position_x =2981.78, position_y =-1448.02, position_z =145.9922, orientation =5.828171 WHERE guid = 52004;
UPDATE creature SET position_x =2987.95, position_y =-1454.74, position_z =146.5368, orientation =0.974408 WHERE guid = 48206;

--
