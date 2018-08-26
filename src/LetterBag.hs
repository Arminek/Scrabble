module LetterBag
    (
        createBag,
        drawLetterTile
    ) where

import LetterType
import System.Random
import System.IO.Unsafe

createBag :: [TileDefinition] -> LetterBag
createBag version = concat $ map duplicateTile version

drawLetterTile :: LetterBag -> Tile
drawLetterTile bag = bag !! unsafePerformIO (getStdRandom(randomR (0, length bag-1)))

duplicateTile :: TileDefinition -> [Tile]
duplicateTile tileDef = take (snd (tileDef)) $ repeat (fst(tileDef))
