import System.IO
import Data.Char (toLower, isLower, isSpace)

main = palindromo

palindromo :: IO ()
palindromo = do
    putStrLn "Digite uma palavra:"
    palavra <- filtraPalavra
    putStrLn "Eh palindromo?"
    verificaPalindromo palavra

filtraPalavraEInverte :: String -> [String]
filtraPalavraEInverte = words . (filter (\x -> isLower x || isSpace x)) . toLowerStr . reverseString
    
reverseString :: [String] -> [String]
reverseString [] = []
reverseString (x:xs) = reverseString xs ++ [x]

verificaPalindromo :: [String] -> IO ()
verificaPalindromo palavra = do
    {--putStr "? "
    chute <- getLine
    if chute == palavra then
        putStrLn "Você acertou!"
    else do
        putStrLn (match palavra chute)
        verificaPalindromo palavra--}