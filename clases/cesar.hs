-- EJERCICIO PARCIAL - CODIGO CESAR

import Data.Char

transformarMayus :: Int -> Char
transformarMayus n
    | n > ord 'Z' = chr (n - 27)
    | n < ord 'A' = chr (n + 27)
    | otherwise = chr (n)


transformarMinus :: Int -> Char
transformarMinus n
    | n > ord 'z' = chr (n - 27)
    | n < ord 'a' = chr (n + 27)
    | otherwise = chr (n)

transformarLetra :: Char -> Int -> Char
transformarLetra x n
    | isUpper x = transformarMayus ((ord x) + n)
    | isLower x = transformarMinus ((ord x) + n)

transformarLetra' :: Char -> Int -> Char
transformarLetra' x n
    | isUpper x = transformarMayus ((ord x) - n)
    | isLower x = transformarMinus ((ord x) - n)

codigoCesarD :: String -> Int -> String
codigoCesarD [] _ = []
codigoCesarD (x:xs) n
    | isAlpha x = (transformarLetra x n) : (codigoCesarD xs n)
    | otherwise = x : codigoCesarD xs n

codigoCesarI :: String -> Int -> String
codigoCesarI [] _ = []
codigoCesarI (x:xs) n
    | isAlpha x = (transformarLetra' x n) : (codigoCesarI xs n)
    | otherwise = x : codigoCesarI xs n