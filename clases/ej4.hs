-- EJERCICIO 4: LISTAS POR COMPRESION

-- Suma de los cuadrados de los primeros n números, es decir 1^2 + 2^2 + 3^2 +...
sumarCuadrados :: Integer -> Integer
sumarCuadrados n = sum [x^2 | x <- [1 .. n]]


-- Es la lista formada por n copias del elemento. Por ejemplo, replica 3 True == [True, True, True]
replica :: Int -> a -> [a]
replica n elem = [elem | _ <- [1 .. n]]


-- Crear una lista de pares (a,b) usando dos listas a y b
pares :: [a] -> [b] -> [(a,b)]
pares xs ys = [(x, y) | x <- xs , y <- ys]
-- El primer elemento del par es un elemento de la lista a y el segundo elemento del par es un elemento de la lista b.