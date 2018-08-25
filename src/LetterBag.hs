module LetterBag
    (
        createBag,
    ) where

import LetterType
import System.Random.Shuffle

createBag :: [TileDefinition] -> LetterBag
createBag version = concat $ map duplicateTile version

duplicateTile :: TileDefinition -> [Tile]
duplicateTile tileDef = take (snd (tileDef)) $ repeat (fst(tileDef))
