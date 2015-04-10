-- The following Items now have the correct Subclass
-- Silverleaf
-- Mageroyal
-- Peacebloom
-- Earthroot
-- Briarthorn
-- Swiftthistle
-- Bruiseweed
-- Maiden's Anguish
-- Wild Steelbloom
-- Kingsblood
-- Liferoot
-- Khadgar's Whisker
-- Grave Moss
-- Fadeleaf
-- Wintersbite
-- Stranglekelp
-- Goldthorn
-- Firebloom
-- Wildvine
-- Purple Lotus
-- Arthas' Tears
-- Sungrass
-- Blindweed
-- Ghost Mushroom
-- Gromsblood
-- Dreamfoil
-- Golden Sansam
-- Mountain Silversage
-- Plaguebloom
-- Icecap
-- Black Lotus
-- Red Dragon Orb
-- Green Dragon Orb
-- Lunar Festival Invitation
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='765';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='785';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='2447';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='2449';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='2450';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='2452';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='2453';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='2931';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3355';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3356';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3357';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3358';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3369';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3818';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3819';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3820';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='3821';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='4625';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='8153';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='8831';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='8836';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='8838';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='8839';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='8845';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='8846';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='13463';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='13464';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='13465';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='13466';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='13467';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='13468';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='19054';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='19055';
UPDATE `item_template` SET `subclass`='0' WHERE `entry`='21711';

-- Internal DB Fixes
DELETE FROM `creature_template_spells` WHERE `entry`='553';
UPDATE `creature` SET `MovementType` = 1 WHERE `id` = 118;
UPDATE `creature` SET `MovementType`='1' WHERE `guid`='17020';
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 14782;
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 14783;
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 14784;
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 14832;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 30036;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 30038;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 30041;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 37921;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 37923;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 38372;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 38373;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 41918;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 44568;
UPDATE `creature` SET `MovementType` = 1 WHERE `id` = 1525;
UPDATE `creature` SET `curhealth` = 3670 WHERE `id` = 12051;
UPDATE `creature` SET `curhealth` = 3844 WHERE `id` = 12053;
UPDATE `creature` SET `curhealth` = 3670 WHERE `id` = 12127;
UPDATE `creature` SET `curhealth` = 8572 WHERE `id` = 13359;
UPDATE `creature` SET `curhealth` = 637000 WHERE `id` = 3057;
UPDATE `creature` SET `curhealth` = 330000 WHERE `id` = 7937;
UPDATE `creature` SET `curhealth` = 637000 WHERE `id` = 2784;
UPDATE `creature` SET `curmana` = 5240 WHERE `id` = 1842;
UPDATE `creature_movement` SET `spell` = 0 WHERE `id` = 14365;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 12046;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 13375;
UPDATE `creature` SET `curhealth` = 1408 WHERE `id` = 2764;
UPDATE `creature` SET `curhealth` = 1662 WHERE `id` = 2765;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 44762;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 44771;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 44878;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 44880;
UPDATE `creature` SET `SpawnDist` = 0 WHERE `guid` = 44885;
