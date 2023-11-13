import Data.Char

-- Producto de escalar por matriz

mulVector :: Double -> [Double] -> [Double]
mulVector _ [] = []
mulVector e (x:xs) = (e * x) : mulVector e xs

prodEscalar :: Double -> [[Double]] -> [[Double]]
prodEscalar 1 m = m
prodEscalar e [] = []
prodEscalar e (xs:xss) = (mulVector e xs) : prodEscalar e xss

-- Suma de matrices

sumVector :: [Double] -> [Double] -> [Double]
sumVector - [] = []
sumVector [] _ = []
sumVector (x: xs) (y:ys) = (x + y) : sumVector xs ys

sumMatriz :: [[Double]] -> [[Double]] -> [[Double]]
sumMatriz _ [] = []
sumMatriz [] _ = []
sumMatriz (xs:xss) (ys:yss) = (sumVector xs ys) : sumMatriz xss yss

-- Extraer los numeros persentes en una cadena, SOLO NUMEROS

limpiar :: String -> String -- Opcion 1
limpiar [] = []
limpiar (x:xs)
    | isDigit x = x : limpiar xs
    | otherwise = limpiar xs

limpiar' :: String -> String -- Opcion 2
limpiar' x = filter isDigit x

armarNum :: String -> Int -> Int
armarNum [] nro = nro
armarNum (x:xs) nro = armarNum xs (nro * 10 + (digitToInt x))

cadena2Num :: String -> Int
cadena2Num c = armarNum (limpiar c) 0
