import Data.Char (digitToInt)

type CIN = String

addSum :: CIN -> CIN
addSum cin = cin ++ show (sum (map (\x -> read [x]::Int) cin))

verificaTam :: CIN -> Bool
verificaTam x = length x == 10

validar :: CIN -> Bool
validar x = if verificaTam x then {-- pegar os 8 primeiros digitos e somar --} && {-- pegar os ultimos dois digitos e concatenar--} else False;

citIntSum :: CIN -> Int
citIntSum = foldr ((+) . digitToInt) 0