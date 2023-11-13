-- ************* Int *************

suma :: Int->Int->Int
suma x y = x + y

resta :: Int->Int->Int
resta x y = x - y

producto :: Int->Int->Int
producto x y = x * y

potencia :: Int->Int->Int
potencia x y = x ^ y

divisionEnt :: Int->Int->Int
divisionEnt x y = div x y

resto :: Int->Int->Int
resto x y = mod x y

modulo :: Int->Int
modulo x = abs x

-- "signum" devuelve -1 si x es negativo, 0 si x es cero y 1 si x es positivo
signo :: Int->Int
signo x = signum x

-- "negate" devuelve el opuesto
cambiarSig :: Int->Int
cambiarSig x = negate x

esPar :: Int->Bool
esPar x = even x

esImpar :: Int->Bool
esImpar x = odd x