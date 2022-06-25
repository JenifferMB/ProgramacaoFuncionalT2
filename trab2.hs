import Data.Char (digitToInt)

type CIN = String

addSum :: CIN -> CIN
addSum cin = cin ++ show (sum (map (\x -> read [x]::Int) cin))

validar:: CIN -> Bool
validar cin = length cin == 10 && (sum (map (\x -> read [x]::Int) (take 8 cin))) == (read (drop 8 cin)::Int)