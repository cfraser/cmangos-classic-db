UPDATE
    `command`
SET
    `name` = 'appear',
    `security` = 1,
    `help` = 'Syntax: .appear [$charactername]Teleport to the given character. Either specify the character name or click on the character''s portrait, e.g. when you are in a group. Character can be offline.'
WHERE
    `name` = 'goname';

UPDATE
    `command`
SET
    `name` = 'summon',
    `security` = 1,
    `help` = 'Syntax: .summon [$charactername]Teleport the given character to you. Character can be offline.'
WHERE
    `name` = 'namego';

DELETE FROM `command` WHERE name LIKE 'ahbot%';

DELETE FROM
    `command`
WHERE
    `name` IN (
        'account create',
        'account delete',
        'account onlinelist',
        'character deleted delete',
        'character deleted list',
        'character deleted restore',
        'character deleted old',
        'character erase',
        'server exit',
        'server log filter',
        'server log level',
        'quit'
    )
;
