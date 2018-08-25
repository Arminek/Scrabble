module LetterType
    (
        Tile,
        TileDefinition,
        LetterBag
    ) where

type Tile = (Letter, Point)
type TileDefinition = (Tile, Count)
type LetterBag = [Tile]
type Letter = Char
type Point = Int
type Count = Int
