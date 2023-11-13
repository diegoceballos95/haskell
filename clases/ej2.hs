-- EJERCICIO 2: TUPLAS

-- Devuelve el punto medio entre dos puntos p1 y p2:
ptoMedio :: (Float, Float) -> (Float, Float) -> (Float, Float)
ptoMedio (x1, y1) (x2, y2) = ((x1 + x2) / 2, (y1 + y2) / 2)

-- Norma Euclidea -> D(P, Q) = √((x2 - x1)^2 + (y2 - y1)^2
norma :: (Float, Float) -> Float
norma (x, y) = sqrt (x^2 + y^2)

-- Dada una cantidad de segundos, retorna la cantidad de horas, minutos, segundos
segundos2Tiempo :: Integer -> (Integer, Integer, Integer)
segundos2Tiempo s = (s `div` 3600, (s `mod` 3600) `div` 60, (s `mod` 3600) `mod` 60)
