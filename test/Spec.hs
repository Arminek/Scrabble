import Test.Hspec
import LetterBag
import LetterType
import LetterBagVersion

main :: IO ()
main = hspec $ do
    describe "Letter bag" $ do
        it "Should has 100 letters" $ do
            length bag `shouldBe` 100
        it "Should has 2 blank tiles" $do
            length (searchLetterTilesInBag bag (' ', 0)) `shouldBe` 2
        it "Should has 9 'A' tiles" $do
            length (searchLetterTilesInBag bag ('A', 1)) `shouldBe` 9
        it "Should has 8 'I' tiles" $do
            length (searchLetterTilesInBag bag ('I', 1)) `shouldBe` 8
        it "Should has 7 'E' tiles" $do
            length (searchLetterTilesInBag bag ('E', 1)) `shouldBe` 7
        it "Should has 6 'O' tiles" $do
            length (searchLetterTilesInBag bag ('O', 1)) `shouldBe` 6
        it "Should has 5 'N' tiles" $do
            length (searchLetterTilesInBag bag ('N', 1)) `shouldBe` 5
        it "Should has 5 'Z' tiles" $do
            length (searchLetterTilesInBag bag ('Z', 1)) `shouldBe` 5
        it "Should has 4 'R' tiles" $do
            length (searchLetterTilesInBag bag ('R', 1)) `shouldBe` 4
        it "Should has 4 'S' tiles" $do
            length (searchLetterTilesInBag bag ('S', 1)) `shouldBe` 4
        it "Should has 4 'W' tiles" $do
            length (searchLetterTilesInBag bag ('W', 1)) `shouldBe` 4
        it "Should has 4 'Y' tiles" $do
            length (searchLetterTilesInBag bag ('Y', 2)) `shouldBe` 4
        it "Should has 3 'C' tiles" $do
            length (searchLetterTilesInBag bag ('C', 2)) `shouldBe` 3
        it "Should has 3 'D' tiles" $do
            length (searchLetterTilesInBag bag ('D', 2)) `shouldBe` 3
        it "Should has 3 'K' tiles" $do
            length (searchLetterTilesInBag bag ('K', 2)) `shouldBe` 3
        it "Should has 3 'L' tiles" $do
            length (searchLetterTilesInBag bag ('L', 2)) `shouldBe` 3
        it "Should has 3 'M' tiles" $do
            length (searchLetterTilesInBag bag ('M', 2)) `shouldBe` 3
        it "Should has 3 'P' tiles" $do
            length (searchLetterTilesInBag bag ('P', 2)) `shouldBe` 3
        it "Should has 3 'T' tiles" $do
            length (searchLetterTilesInBag bag ('T', 2)) `shouldBe` 3
        it "Should has 2 'B' tiles" $do
            length (searchLetterTilesInBag bag ('B', 3)) `shouldBe` 2
        it "Should has 2 'G' tiles" $do
            length (searchLetterTilesInBag bag ('G', 3)) `shouldBe` 2
        it "Should has 2 'H' tiles" $do
            length (searchLetterTilesInBag bag ('H', 3)) `shouldBe` 2
        it "Should has 2 'J' tiles" $do
            length (searchLetterTilesInBag bag ('J', 3)) `shouldBe` 2
        it "Should has 2 'Ł' tiles" $do
            length (searchLetterTilesInBag bag ('Ł', 3)) `shouldBe` 2
        it "Should has 2 'U' tiles" $do
            length (searchLetterTilesInBag bag ('U', 3)) `shouldBe` 2
        it "Should has 1 'Ą' tiles" $do
            length (searchLetterTilesInBag bag ('Ą', 5)) `shouldBe` 1
        it "Should has 1 'Ę' tiles" $do
            length (searchLetterTilesInBag bag ('Ę', 5)) `shouldBe` 1
        it "Should has 1 'F' tiles" $do
            length (searchLetterTilesInBag bag ('F', 5)) `shouldBe` 1
        it "Should has 1 'Ó' tiles" $do
            length (searchLetterTilesInBag bag ('Ó', 5)) `shouldBe` 1
        it "Should has 1 'Ś' tiles" $do
            length (searchLetterTilesInBag bag ('Ś', 5)) `shouldBe` 1
        it "Should has 1 'Ż' tiles" $do
            length (searchLetterTilesInBag bag ('Ż', 5)) `shouldBe` 1
        it "Should has 1 'Ć' tiles" $do
            length (searchLetterTilesInBag bag ('Ć', 6)) `shouldBe` 1
        it "Should has 1 'Ń' tiles" $do
            length (searchLetterTilesInBag bag ('Ń', 7)) `shouldBe` 1
        it "Should has 1 'Ź' tiles" $do
            length (searchLetterTilesInBag bag ('Ź', 9)) `shouldBe` 1

searchLetterTilesInBag :: LetterBag -> Tile -> [Tile]
searchLetterTilesInBag bag tile = filter (==tile) bag

bag :: LetterBag
bag  = createBag polishVersion
