import Data.Char (digitToInt)

type CIN = String

addSum :: CIN -> CIN
addSum cin = cin ++ show (sum (map (\x -> read [x]::Int) cin))

validar :: CIN -> Bool
validar x = validar1 x == validar2 x
    where
        validar1 x = citIntSum (take 8 x) -- seria o equivalente a somar os 8 primeiros digitos da string, citIntSum soma, falta encaixar o take 8
        validar2 x = (take 2(reverse x)) -- seria o equivalente a reverter a string, e concatectar a primeira posição + a segunda posição

citIntSum :: CIN -> Int
citIntSum = foldr ((+) . digitToInt) 0
 

-- método de validar = verificar se a soma dos 8 primeiros digitos (validar1) é igual a concatenação dos ultimos dois digitos (reverter usar o take 2 para pegar os dois digitos)