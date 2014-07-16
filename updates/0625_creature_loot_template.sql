
SET @CHANCE := 0.5;

SET @AZURE      := 20866;
SET @ONYX       := 20867;
SET @LAMBENT    := 20868;
SET @AMBER      := 20869;
SET @JASPER     := 20870;
SET @OBSIDIAN   := 20871;
SET @VERMILLION := 20872;
SET @ALABASTER  := 20873;

-- ---------------------------------

DELETE FROM `creature_loot_template` WHERE `item` IN (@AZURE, @ONYX, @LAMBENT, @AMBER, @JASPER, @OBSIDIAN, @VERMILLION, @ALABASTER);

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15343', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15324', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15327', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15325', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15389', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15390', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15391', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15392', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15386', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15388', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15385', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15335', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15461', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15462', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15338', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15355', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15323', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15320', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15318', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15319', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15336', @AZURE, @CHANCE, '0', '1', '1', '0'),
('15333', @AZURE, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15343', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15324', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15327', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15325', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15389', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15390', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15391', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15392', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15386', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15388', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15385', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15335', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15461', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15462', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15338', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15355', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15323', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15320', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15318', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15319', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15336', @ONYX, @CHANCE, '0', '1', '1', '0'),
('15333', @ONYX, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15343', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15324', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15327', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15325', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15389', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15390', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15391', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15392', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15386', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15388', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15385', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15335', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15461', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15462', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15338', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15355', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15323', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15320', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15318', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15319', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15336', @LAMBENT, @CHANCE, '0', '1', '1', '0'),
('15333', @LAMBENT, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15343', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15324', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15327', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15325', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15389', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15390', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15391', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15392', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15386', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15388', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15385', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15335', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15461', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15462', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15338', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15355', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15323', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15320', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15318', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15319', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15336', @AMBER, @CHANCE, '0', '1', '1', '0'),
('15333', @AMBER, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15343', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15324', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15327', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15325', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15389', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15390', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15391', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15392', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15386', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15388', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15385', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15335', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15461', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15462', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15338', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15355', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15323', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15320', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15318', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15319', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15336', @JASPER, @CHANCE, '0', '1', '1', '0'),
('15333', @JASPER, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15343', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15324', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15327', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15325', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15389', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15390', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15391', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15392', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15386', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15388', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15385', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15335', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15461', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15462', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15338', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15355', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15323', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15320', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15318', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15319', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15336', @OBSIDIAN, @CHANCE, '0', '1', '1', '0'),
('15333', @OBSIDIAN, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15343', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15324', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15327', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15325', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15389', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15390', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15391', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15392', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15386', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15388', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15385', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15335', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15461', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15462', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15338', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15355', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15323', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15320', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15318', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15319', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15336', @VERMILLION, @CHANCE, '0', '1', '1', '0'),
('15333', @VERMILLION, @CHANCE, '0', '1', '1', '0');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15343', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15324', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15327', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15325', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15389', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15390', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15391', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15392', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15386', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15388', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15385', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15335', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15461', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15462', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15338', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15355', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15323', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15320', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15318', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15319', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15336', @ALABASTER, @CHANCE, '0', '1', '1', '0'),
('15333', @ALABASTER, @CHANCE, '0', '1', '1', '0');
