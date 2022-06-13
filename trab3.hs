import System.IO
import Data.Char 

main :: IO ()
main = do
    print "Digite a quantidade de numeros:"
    quantidadeN <- readLn 
    let inputQuantidade = read quantidadeN :: Int
    --while criar função "quantidade" que decrementa até chegar a 0 (contador), variavel pega valor, imprime o valor e utiliza o valor na função somatório
    {--
    linha <- readLn -- lê a linha
    let soma = read linha :: Integer
    if null linha
        then return 0 -- se não digitar nada, considerar 0
        else do -- caso contrário
            putStrLn (linha) -- imprime a linha
            main
            print $ show somatorio (soma) -- calcula o somatório, só aparece depois de todos os números serem digitados
    --}

contador :: Int -> Int

somatorio :: Integer -> Integer