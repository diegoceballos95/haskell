-- ************* Char *************

import Data.Char

devolverASCII :: Char->Int
devolverASCII c = ord c

devolverCaracter :: Int->Char
devolverCaracter ascii = chr ascii

esMayus :: Char->Bool
esMayus c = isUpper c

esMinus :: Char->Bool
esMinus c = isLower c

esDigito :: Char->Bool
esDigito c = isDigit c

esLetra :: Char->Bool
esLetra c = isAlpha c

convAMayus :: Char->Char
convAMayus c = toUpper c 

convAMinus :: Char->Char
convAMinus c = toLower c 

-- isSpace: Comprueba si un carácter es un espacio en blanco, incluyendo espacios, tabulaciones y saltos de línea.

esEspacio :: Char->Bool
esEspacio c = isSpace c