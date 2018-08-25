module LetterBag
    (
        createBag,
    ) where

import LetterType

createBag :: [TileDefinition] -> LetterBag
createBag version = concat $ map duplicateTile version

duplicateTile :: TileDefinition -> [Tile]
duplicateTile tileDef = take (snd (tileDef)) $ repeat (fst(tileDef))
