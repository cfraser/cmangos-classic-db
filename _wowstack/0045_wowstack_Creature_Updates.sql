-- More fixes for Zukk'ash Stinger
UPDATE `wowstack_vanilla_world_classicdb`.`creature_ai_scripts` SET `action2_type`='22', `action2_param1`='1' WHERE `id`='524404';
UPDATE `wowstack_vanilla_world_classicdb`.`creature_ai_scripts` SET `event_param1`='0', `event_param2`='15' WHERE `id`='524402';

-- Tomb Reaver will now cast Virulent Poison
INSERT INTO `wowstack_vanilla_world_classicdb`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('735102', '7351', '0', '0', '100', '1', '7000', '11000', '15000', '20000', '11', '12251', '1', 'Tomb Reaver - Cast Virulent Poison');
