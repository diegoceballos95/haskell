-- EJERCICIO N°1: Decidir si un numero es positivo -- 

esPositivo :: Int->Bool
esPositivo x = even (x)

-- EJERCICIO N°2: Una funcion que comprueba si su argumento esta entre cero y nueve --

estaEnLista :: Int->Bool
estaEnLista x = x >=0 && x<=9

-- EJERCICIO N°3: Definir la funcion esMultiploDeTres que devuelve Verdadero si es un numero es multiplo de 3.--

esMultiploDeTres :: Int->Bool
esMultiploDeTres x = (if (mod (x) 3 == 0) then True else False)

-- EJERCICIO N°4: Definir la funcion celsius2Fahr que pasa una temperatura en grados Celsius a grados Fahrenheit --

celsius2Fahr :: Float->Float
celsius2Fahr x = (x * 9/5) + 32

-- EJERCICIO N°5: Determinar si un numero es par

esPar :: Int -> Bool
esPar n 
    | n `mod` 2 == 0 = True
    | otherwise = False

-- EJERCICIO N°6: Mostrar si un numero es positivo, negativo o cero

tipoDeNumero :: Int -> String
tipoDeNumero n
    | n > 0  = "Positivo"
    | n < 0  = "Negativo"
    | otherwise = "Cero"