miNumero :: Int
miNumero = 3

miDecimal :: Double
miDecimal = 3.14

miLetra :: Char
miLetra = 'D'

miNombre :: [Char]
miNombre = "Diego"

miApellido :: [Char]
miApellido = ['c','e','b','a','l','l','o','s']

listaNumeros :: [Int]
listaNumeros = [1, 2, 3, 4, 5]

miTupla :: (Int, Int, Bool)
miTupla = (2, 4, True)

añadirElemLista :: [int] -> int -> [int]
añadirElemLista l e = e:l

sacarElemLista :: [a] -> a
sacarElemLista (x:xs) = x

listDelUnoAlCien :: [Int]
listDelUnoAlCien = [1 .. 100]

listaParesHastaCien :: [Int]
listaParesHastaCien = [0, 2 .. 100]

listaInfinitaImpares :: [Int]
listaInfinitaImpares = [1, 3 ..]

-- Lista por compresion:
multiplosDeTres :: [Int]
multiplosDeTres = [x | x <- [1..], mod x 3 == 0]

type point = (Int, Int)