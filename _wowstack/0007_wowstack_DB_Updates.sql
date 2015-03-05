-- Set stun immunity for the following creatures
-- Revelosh
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 6910;

-- Ironaya
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 7228;

-- Ancient Stone Keeper
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 7206;

-- Galgann Firehammer
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 7291;

-- Grimlok
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 4854;

-- Archaedas
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 2748;

-- Noxxion
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 13282;

-- Lord Vyletongue
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 12236;

-- Celebras the Cursed
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 12225;

-- Landslide
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 12203;

-- Princess Theradras
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 12201;

-- Rotgrip
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 13596;

-- Tinkerer Gizlock
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 13601;

-- Antu'sul
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 8127;

-- Theka the Martyr
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 7272;

-- Witch Doctor Zum'rah
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 7271;

-- Chief Ukorz Sandscalp
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 7267;

-- Ruuzlu
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 7797;

-- Gahz'rilla
UPDATE creature_template SET MechanicImmuneMask = 8390672 WHERE entry = 7273;

-- Houndmaster Loksey
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 3974;

-- Arcanist Doan
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 6487;

-- Herod
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 3975;

-- High Inquisitor Fairbanks
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 4542;

-- Scarlet Commander Mograine
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 3976;

-- High Inquisitor Whitemane
UPDATE creature_template SET MechanicImmuneMask = 8390673 WHERE entry = 3977;

-- Azshir the Sleepless
UPDATE creature_template SET MechanicImmuneMask = 8390672 WHERE entry = 6490;

-- Check!
-- Remains of a paladin Dynamic Flags
UPDATE creature_template SET DynamicFlags = 32 WHERE entry = 6912;

-- Adjust speedwalk of Cave Lurker
UPDATE creature_template SET speedwalk = 1 WHERE entry = 4850;

-- Correct position for William MacGregor
UPDATE creature SET position_x =-10657.39, position_y =996.55, position_z =32.8740, orientation =57.717613, WHERE entry = 1668;

-- Update position for Bodyguard Bartrand
UPDATE creature SET position_x =1882.92, position_y =1585.16, position_z =89.9179, orientation =0.160741, WHERE entry = 1741;

UPDATE creature_template SET MovementType = 0 WHERE entry = 1741;

-- Correct movement for Lok Orcbane
UPDATE creature_template SET MovementType = 1 WHERE entry = 3435;

-- Correct AI for Lok Orcbane
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('343502', '3435', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Lok Orcbane - Flee at 15% HP');

-- Correct Razormane Seer AI
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('34803', '3458', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Razormane Seer - Flee at 15% HP');

-- Correct Razormane Stalker AI
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('345702', '3457', '2', '0', '100', '0', '15', '15', '15', '15', '25', '1', '-47', 'Razormane Stalker - Flee at 15% HP');

-- Update position for Warleader Krazzilak
UPDATE creature SET position_x =-6934.54, position_y =-3142.43, position_z =42.3722, orientation =3.358282, WHERE entry = 8199;

