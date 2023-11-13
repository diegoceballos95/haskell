{- EJERCICIO 1: FUNCIONES BASICAS
esNumeroNegativo: Dado un número, devuelve si es menor que cero.
esMultiploDe: Dado dos números, devuelve si el primero es multiplo del segundo.
fueraDeRango: Dado tres números, devuelve si el primero está fuera del rango que forma los dos restantes. -}

esNumeroNegativo :: Double -> Bool
esNumeroNegativo x
    | x < 0 = True
    | otherwise = False

esMultiploDe :: Int -> Int -> Bool
esMultiploDe x y
    | mod x y == 0 = True
    | otherwise = False

fueraDeRango :: Double -> Double -> Double -> Bool
fueraDeRango x y z
    | (x > z) || (x < y) = True
    | otherwise = False