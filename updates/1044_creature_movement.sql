
-- 47836

UPDATE `creature` SET `modelid`='0', `position_x`='614.934', `position_y`='-57.1995', `position_z`='-59.9881', `orientation`='2.23727', `spawndist`='0' WHERE `guid`='47836';

DELETE FROM `creature_movement` WHERE `id`='47836';
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('47836', '1', '608.582', '-49.123', '-60.0567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '2', '583.026', '-48.0046', '-60.0359', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '3', '569.448', '-59.0047', '-60.0201', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '4', '575.228', '-61.9547', '-60.0105', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '5', '595.55', '-62.0733', '-52.0719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '6', '595.334', '-81.3019', '-45.4656', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '7', '594.804', '-104.408', '-45.4327', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '8', '595.334', '-81.3019', '-45.4656', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '9', '595.55', '-62.0733', '-52.0719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '10', '575.228', '-61.9547', '-60.0105', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '11', '569.448', '-59.0047', '-60.0201', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '12', '583.026', '-48.0046', '-60.0359', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '13', '608.582', '-49.123', '-60.0567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('47836', '14', '619.276', '-60.7888', '-60.0573', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');
