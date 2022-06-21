import System.IO
import Data.Char 

somatorio :: Int -> IO Int
somatorio n = contador n 0
  where
    contador 0 total = return total
    contador n total = do
        numero <- getLine
        let novoNumero = total + (read numero :: Int)
        contador (n - 1) novoNumero

main = somador :: IO ()
somador = do
    print "Digite a quantidade de numeros:"
    numero <- getLine
    print "Digite os numeros para somar: "
    let inputNumero = (read numero :: Int)
    total <- somatorio inputNumero
    putStr "O resultado da soma eh: "
    print $ total