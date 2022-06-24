import System.IO
import Data.Char 

main :: IO ()
main = do
    print "Digite uma frase para verificar se eh palindromo ou nao"
    palavra <- getLine 
    if palindromo palavra then
        print $ show palavra <> " eh palindromo"
    else
        print $ show palavra <> " nao eh palindromo"


invertePalavras :: String -> String
invertePalavras = unwords . map trim . map reverse . words

trim :: String -> String
trim = dropWhile (\x -> x == ' ')

palindromo :: String -> Bool
palindromo x = invertePalavras (map toLower x) == (map toLower x)