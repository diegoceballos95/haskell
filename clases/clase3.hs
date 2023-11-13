-- Ejercicio N°1: Determinar si un char es o no una vocal

import Data.Char

esVocal :: Char -> Bool
esVocal c
 |(toLower c) == 'a' = True
 |(toLower c) == 'e' = True
 |(toLower c) == 'i' = True
 |(toLower c) == 'o' = True
 |(toLower c) == 'u' = True
 |otherwise = False

 -- Ejercicio N°2: Dada una oracion, contar la cantidad de vocales

contVocal :: String -> Int
contVocal [] = 0
contVocal (x:xs)
 |esVocal x = 1 + (contVocal xs)
 |otherwise = (contVocal xs)

-- Ejercicio N°3: Codigo MURCIELAGO

codMur :: Char -> Char
codMur c
 |(toLower c) == 'm' = '0'
 |(toLower c) == 'u' = '1'
 |(toLower c) == 'r' = '2'
 |(toLower c) == 'c' = '3'
 |(toLower c) == 'i' = '4'
 |(toLower c) == 'e' = '5'
 |(toLower c) == 'l' = '6'
 |(toLower c) == 'a' = '7'
 |(toLower c) == 'g' = '8'
 |(toLower c) == 'o' = '9'
 |otherwise = c

codificar :: String -> String
codificar [] = []
codificar (x:xs) = (codMur x) : (codificar xs)