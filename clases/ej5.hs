-- EJERCICIO 5

-- Resto por resta recursiva
resto :: Integer -> Integer -> Integer
resto x y
    | x < y = x
    | otherwise = resto (x-y) y


-- Cociente por resta recursiva
cociente :: Integer -> Integer -> Integer
cociente x y
    | x < y = 0
    | otherwise = 1 + cociente (x-y) y


-- Retorna la sumatoria de un a a b, chequear el intervalo
sumatoria :: Integer -> Integer -> Integer
sumatoria a b
    | a >= b = b
    | otherwise = a + sumatoria (a+1) b


-- Cantidad de digitos
cantDigitos :: Integer -> Integer
cantDigitos 0 = 0
cantDigitos x = 1 + cantDigitos (x `div` 10)


-- Maximo de una lista
maximo :: [Integer] -> Integer
maximo lis = maximum lis


-- Digitos de lista a un solo entero: pasar 0 como parametro nro
digitos2Enteros :: [Integer] -> Integer -> Integer
digitos2Enteros [] nro = nro
digitos2Enteros (x:xs) nro = digitos2Enteros xs (nro * 10 + x) 


-- Pertenece a una lista
pertenece :: Eq a => a -> [a] -> Bool
pertenece n [] = False
pertenece n (x:xs) 
    | n == x = True
    | otherwise = pertenece n xs

pertenece' :: Eq a => a -> [a] -> Bool
pertenece' n lis = elem n lis
{- La expresión "Eq a =>" en la firma de una función en Haskell se llama
"restricción de clase" y se utiliza para especificar que el tipo a debe ser una
instancia de la clase de tipo Eq. En otras palabras, significa que la función solo
puede trabajar con tipos a que admiten la igualdad, es decir, tipos que pueden ser
comparados por igualdad utilizando el operador (==). -}


-- Interseccion de listas
interseccion :: Eq a => [a] -> [a] -> [a]
interseccion [] _ = []
interseccion (x:xs) ys 
    | x `elem` ys = x : interseccion xs ys
    | otherwise = interseccion xs ys


-- Filtrar los menores a u numero dado
menoresA :: [Integer] -> Integer -> [Integer]
menoresA lis x = filter (<x) lis


-- Eliminar repetidos
sinRepetidos :: [Integer] -> [Integer]
sinRepetidos [] = []
sinRepetidos (x:xs)
    | x `notElem` xs = x : sinRepetidos xs
    | otherwise = sinRepetidos xs