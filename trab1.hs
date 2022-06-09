import System.IO
import Data.Char (toLower, isSpace)

main = palindromo

palindromo :: IO ()
palindromo = do
    putStrLn "Digite uma palavra:"
    palavra <- filtraPalavra
    putStrLn "Eh palindromo?"
    verificaPalindromo palavra

filtraPalavraEInverte :: String -> [String]
filtraPalavraEInverte = words . (filter (\x -> isAlpha x)) . toLower . reverse

verificaPalindromo :: [String] -> IO ()
verificaPalindromo palavra = do
    {--putStr "? "
    chute <- getLine
    if chute == palavra then
        putStrLn "Você acertou!"
    else do
        putStrLn (match palavra chute)
        verificaPalindromo palavra--}