-- EJERCICIO 3: LISTAS

-- Elimina todas las apariciones de cualquier caracter de la primera cadena en la segunda
limpiar :: String -> String -> String
limpiar [] ys = ys
limpiar (x:xs) ys = limpiar xs (filter (x/=) ys)


-- Devolver la diferencia de cada uno con el promedio general
dif :: [Float] -> [Float]
dif lis = map ( / ((sum lis) / (fromIntegral (length lis)))) lis


-- Indica si una lista de enteros tiene todos sus elementos iguales.
todosIguales :: [Int] -> Bool
todosIguales [] = True
todosIguales [x] = True
todosIguales (x:xs) = (x == head xs) && todosIguales xs
-- Se compara el 1° con el 2°, y si sin iguales, se compara el 2° con el siguiente, y si son iguales el 3° con el sig. y asi sucesivamente.


-- Repetir cada elemento de la lista n veces
repLista :: [Int] -> Int -> [Int]
repLista xs 0 = []
repLista xs n = xs ++ repLista xs (n-1)


-- Dada una lista de listas de enteros, devuelve una única lista con los elementos de todas las listas
listas2lista :: [[Int]] -> [Int]
listas2lista lis = concat lis


-- Devuelve verdadero si la cantidad de parentesis ‘(‘ es la misma que la cantidad de parentesis ‘)’
checkParentesis :: String -> Bool
checkParentesis cad
    | (length (filter (=='(') cad)) == (length (filter (==')') cad)) = True
    | otherwise = False


-- Devuelve los n elementos finales de la lista
finales :: Int -> [Integer] -> [Integer]
finales n lis = reverse (take n (reverse lis))

finales' :: Int -> [Integer] -> [Integer]
finales' n lis = drop ((length lis) - n) lis


-- Devuelve los primeros n elementos de la lista junto con los n elementos finales
extremos :: Int -> [Integer] -> [Integer]
extremos n lis = (take n lis) ++ (finales n lis)