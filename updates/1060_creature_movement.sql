
UPDATE `creature` SET `modelid`='0', `position_x`='837.646', `position_y`='-346.113', `position_z`='-52.0496', `orientation`='0.163293', `spawndist`='0', `MovementType`='2' WHERE `guid`='54767';
UPDATE `creature` SET `modelid`='0', `position_x`='788.881', `position_y`='-336.129', `position_z`='-50.4012', `orientation`='2.12786', `spawndist`='0', `MovementType`='2' WHERE `guid`='54721';
UPDATE `creature` SET `modelid`='0', `position_x`='617.64', `position_y`='-223.231', `position_z`='-61.1964', `orientation`='5.81495', `spawndist`='0' WHERE `guid`='54733';

DELETE FROM `creature_movement` WHERE `id` IN ('54721', '54767', '54733');
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('54721', '1', '784.514', '-329.119', '-50.0284', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '2', '764.984', '-324.438', '-51.5668', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '3', '749.575', '-337.565', '-50.711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '4', '726.619', '-332.595', '-50.9028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '5', '710.256', '-333.295', '-51.8757', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '6', '689.742', '-330.869', '-52.1619', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '7', '674.977', '-327.453', '-52.1277', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '8', '664.431', '-341.292', '-52.4921', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '9', '674.977', '-327.453', '-52.1277', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '10', '689.742', '-330.869', '-52.1619', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '11', '710.256', '-333.295', '-51.8757', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '12', '726.619', '-332.595', '-50.9028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '13', '749.332', '-337.513', '-50.7263', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '14', '764.902', '-324.507', '-51.5706', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '15', '784.514', '-329.119', '-50.0284', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54721', '16', '792.5', '-339.12', '-51.1177', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54767', '1', '869.798', '-340.816', '-50.5748', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54767', '2', '882.282', '-377.741', '-52.0554', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54767', '3', '886.861', '-419.037', '-52.3727', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54767', '4', '886.861', '-419.037', '-52.3727', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54767', '5', '882.282', '-377.741', '-52.0554', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54767', '6', '869.798', '-340.816', '-50.5748', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54767', '7', '829.586', '-349.214', '-52.0311', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '1', '629.567', '-229.285', '-59.0616', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '2', '630.475', '-251.076', '-52.8189', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '3', '635.491', '-278.567', '-53.5015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '4', '642.036', '-307.16', '-52.0211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '5', '644.665', '-314.411', '-52.0764', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '6', '652.222', '-324.701', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '7', '650.916', '-339.38', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '8', '631.083', '-348.107', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '9', '618.584', '-352.651', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '10', '615.864', '-362.478', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '11', '601.241', '-383.172', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '12', '615.727', '-362.671', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '13', '618.584', '-352.651', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('54733', '14', '631.083', '-348.107', '-52.0194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');