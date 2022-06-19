type CIN = String

addSum :: CIN -> CIN
addSum cin = cin ++ show (sum (map (\x -> read [x]::Int) cin))