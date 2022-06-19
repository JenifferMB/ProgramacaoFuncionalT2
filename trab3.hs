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

somador :: IO ()
somador = do
    putStr "Digite a quantidade de numeros:"
    numero <- getLine
    let inputNumero = (read numero :: Int)
    total <- somatorio inputNumero
    putStr "O total e: "
    print $ total

{--
somador :: IO()
somador = do
        print "Digite a quantidade de numeros:"
        lista <- lerLista
        print "A soma dos numeros e "
        print (sum lista)

lerLista = do 
        x <- readLn
        if x == 0
            then return []
            else do 
                resto <- lerLista
                return(x:resto)
 --}       

{--main :: IO ()
main = do
    print "Digite a quantidade de numeros:"
    quantidadeN <- readLn 
    let inputQuantidade = read quantidadeN :: Int
    --while criar função "quantidade" que decrementa até chegar a 0 (contador), variavel pega valor, imprime o valor e utiliza o valor na função somatório
    linha <- readLn -- lê a linha
    let soma = read linha :: Integer
    if null linha
        then return 0 -- se não digitar nada, considerar 0
        else do -- caso contrário
            putStrLn (linha) -- imprime a linha
            main
            print $ show somatorio (soma) -- calcula o somatório, só aparece depois de todos os números serem digitados
   

contador :: Int -> Int

somatorio :: Integer -> Integer
--}