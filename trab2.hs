type CIN = String

addSum :: CIN -> CIN
addSum cin = cin ++ show (sum (map (\x -> read [x]::Int) cin))

validar :: CIN -> Bool
validar x = validar1 x == validar2 x
    where
        validar1 x = sum (take 8 x)
        validar2 x = (take 2(reverse x))