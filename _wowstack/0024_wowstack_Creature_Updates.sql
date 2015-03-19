-- Burning Blade Shadowmage will no longer flee at low hp
DELETE FROM `creature_ai_scripts` WHERE `id`='466711';
UPDATE `creature_ai_scripts` SET `id`='466711' WHERE `id`='466712';

-- Burning Blade Augur will no longer flee on low hp
DELETE FROM `creature_ai_scripts` WHERE `id`='466311';
UPDATE `creature_ai_scripts` SET `id`='466311' WHERE `id`='466312';

-- Scorpid Terror will now cast Withering Poison
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('413902', '4139', '0', '0', '100', '1', '3000', '5000', '30000', '40000', '11', '13884', '1', 'Scorpid Terror - Cast Withering Poison');

-- Scorpid Reaver will now cast Withering Poison
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`) VALUES ('4140', '15584', '13884');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `comment`) VALUES ('414002', '4140', '0', '0', '100', '1', '3000', '5000', '30000', '40000', '11', '13884', '1', 'Scorpid Reaver - Cast Withering Poison');

-- Slitherblade Oracle will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('471803', '4718', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Slitherblade Oracle - Flee at 15% HP');

-- Khan Jehn will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('560108', '5601', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Khan Jehn - Flee at 15% HP');

-- Khan Shaka will now flee at 15% HP
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action1_type`, `action2_type`, `action2_param1`, `comment`) VALUES ('560204', '5602', '2', '0', '100', '0', '15', '15', '25', '1', '-47', 'Khan Shaka - Flee at 15% HP');

--
