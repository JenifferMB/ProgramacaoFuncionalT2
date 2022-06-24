import System.IO
import Data.Char 

somatorio :: Int -> IO Int
somatorio n = contador n 0
  where
    contador 0 total = return total
    contador n total = do
        numero <- readLn
        let novoNumero = total + numero
        contador (n - 1) novoNumero

main = somador :: IO ()
somador = do
    print "Digite a quantidade de numeros:"
    numero <- readLn
    print "Digite os numeros para somar: "
    total <- somatorio numero
    putStr "O resultado da soma eh: "
    print $ total