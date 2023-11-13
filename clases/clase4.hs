{-- BISECCION
if (f(a).f(b) < 0):
    m = (a+b)/2
    while(|f(m)| > e){
        if (f(a).f(b) < 0) { b = m}
        else { a = m}
        m = (a+b)/2
    return m
--}

funcion :: Double -> Double
funcion x = x - 2

biseccion :: (Double -> Double) -> (Double, Double) -> Double -> Double
biseccion f (a,b) e
    | (f a) * (f b) > 0 = error "NO CUMPLE CONDICION"
    | (f m) <= e = m
    | (f a) * (f m) < 0 = biseccion f (a, m) e
    | otherwise = biseccion f (m, b) e
    where
    m = (a+b) / 2

{-- BISECCION con Contador de iteraciones
if (f(a).f(b) < 0):
    c = 0
    m = (a+b)/2
    while(|f(m)| > e){
        c = c+1
        if (f(a).f(b) < 0) { b = m}
        else { a = m}
        m = (a+b)/2
    return (m, c)
--}

biseccion' :: (Double -> Double) -> (Double, Double) -> Double -> Int -> (Double, Int)
biseccion' f (a,b) e iteraciones
    | (f a) * (f b) > 0 = error "NO CUMPLE CONDICION"
    | (f m) <= e = (m, iteraciones)
    | (f a) * (f m) < 0 = biseccion' f (a, m) e (iteraciones + 1)
    | otherwise = biseccion' f (m, b) e (iteraciones + 1)
    where
        m = (a+b) / 2
