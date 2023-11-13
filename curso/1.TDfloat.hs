-- ************* Float *************

suma :: Float->Float->Float
suma x y = x + y

resta :: Float->Float->Float
resta x y = x - y

producto :: Float->Float->Float
producto x y = x * y

divisionDecimal :: Float->Float->Float
divisionDecimal x y = x / y

potenciaDecimal :: Float->Float->Float
potenciaDecimal x y = x ** y

potenciaExpEnt :: Float->Int->Float
potenciaExpEnt  x y = x ^ y

raiz :: Float->Float
raiz x = sqrt x

modulo :: Float->Float
modulo x = abs x

signo :: Float->Float
signo x = signum x -- Devuelve -1 si x es neg, 0 si es cero y 1 si es pos

cambiarSig :: Float->Float
cambiarSig x = negate x -- Devuelve el opuesto

truncar :: Float->Int 
truncar x = truncate x -- Elimina la parte decimal

redondear :: Float->Int 
redondear x = round x -- Redondea un real al int más cercano

redondearArriba :: Float->Int 
redondearArriba x = ceiling x -- Redondea hacia arriba

redondearAbajo :: Float->Int 
redondearAbajo x = floor x -- Redondea hacia abajo
