import System.IO
import Data.Char 

main :: IO ()
main = do
    print "Digite uma frase para verificar se eh palindromo ou nao"
    inputStr <- getLine 
    if palindrome inputStr then
        print $ show inputStr <> " eh palindromo"
    else
        print $ show inputStr <> " nao eh palindromo"


invertePalavras :: String -> String
invertePalavras = unwords . map reverse . words

palindrome :: String -> Bool
palindrome x = invertePalavras (map toLower x) == (map toLower x)