module LetterBagVersion
    (
        polishVersion
    ) where

import LetterType

polishVersion :: [TileDefinition]
polishVersion = [
    ((' ', 0), 2),
    (('A', 1), 9),
    (('I', 1), 8),
    (('E', 1), 7),
    (('O', 1), 6),
    (('N', 1), 5),
    (('Z', 1), 5),
    (('R', 1), 4),
    (('S', 1), 4),
    (('W', 1), 4),
    (('Y', 2), 4),
    (('C', 2), 3),
    (('D', 2), 3),
    (('K', 2), 3),
    (('L', 2), 3),
    (('M', 2), 3),
    (('P', 2), 3),
    (('T', 2), 3),
    (('B', 3), 2),
    (('G', 3), 2),
    (('H', 3), 2),
    (('J', 3), 2),
    (('Ł', 3), 2),
    (('U', 3), 2),
    (('Ą', 5), 1),
    (('Ę', 5), 1),
    (('F', 5), 1),
    (('Ó', 5), 1),
    (('Ś', 5), 1),
    (('Ż', 5), 1),
    (('Ć', 6), 1),
    (('Ń', 7), 1),
    (('Ź', 9), 1)
    ]