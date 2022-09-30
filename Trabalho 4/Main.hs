--Gustavo Rodrigues Guimarães

import Data.Char
-- ************************************************************************
--Escreva uma função chamada fatorialn que usando o operador range e a função foldr devolva o fatorial de n
fatorialn :: Int -> Int
fatorialn x = foldr (*) 1 [1..x]
-- ************************************************************************
-- Usando a função map escreva uma função, chamada quadradoReal que recebe uma lista de números reais, positivos e negativos e devolva uma lista com o quadrado de cada um dos real listados.
quadradoReal :: [Float] -> [Float]
quadradoReal a = map (^^2) a

-- ************************************************************************
--Usando a função map escreva uma função, comprimentoPalavras que recebe uma lista de palavras e devolve uma lista com o comprimento de cada uma destas palavras
comprimentoPalavras :: [String] -> [Int]
comprimentoPalavras a = map (length) a
-- ************************************************************************
-- Usando a função filter escreva uma função, chamada maiorMultiploDe29 devolva o maior número entre 0 e 100000 que seja divisivel por 29
maiorMultiploDe29 ::  Int
maiorMultiploDe29 = last (filter (a) [0..100000])
    where a  x = x `mod` 29 == 0

-- ************************************************************************
-- Usando a função filter escreva uma função, chamada maiorMultiploDe que recebe um inteiro e devolva o maior número entre 0 e 100000 que seja divisivel por este inteiro
maiorMultiploDe :: Int -> Int
maiorMultiploDe a = last (filter (p) [0..100000])
    where p x = x `mod` a == 0

-- ************************************************************************
-- Usando Haskell e a função foldr defina uma função, chamada somaQuadrados que devolva a soma dos quadrados dos itens de uma lista de números naturais de comprimento n. De tal forma que: 𝑠𝑜𝑚𝑎𝑄𝑢𝑎𝑑𝑟𝑎𝑑𝑜𝑠 = 12 + 22 + 32 + 42. . . +𝑛2.

somaQuadrados :: [Int] -> Int
somaQuadrados a = foldr (+) 0 (map (^2) a)
-- ************************************************************************
-- Usando Haskell e a função foldl defina uma função, chamada comprimento, que devolva o comprimento (cardinalidade) de uma lista dada
comprimento :: [any] -> Int
comprimento a = foldl (\b _ -> b + 1) 0 a


-- ************************************************************************
--Esta é uma tarefa de pesquisa: você deve encontrar e executar exemplos em Haskell do uso das seguintes funções disponíveis no Prelude: flip, ord, max, min, curry, uncurry. Para cada uma destas funções você deverá encontrar, executar e testar no mínimo dois exemplos.

subtraiFlip :: Int -> Int -> Int
subtraiFlip a b=  flip (-) a b

divideFlip :: Float -> Float -> Float
divideFlip a b =  flip (/) a b

maximumInelements :: Int -> Int -> Int
maximumInelements a b =max a b

maiorDobrado :: Int -> Int ->Int
maiorDobrado a b = (max a b)^2

minimunInelements :: Int -> Int -> Int
minimunInelements a b =min a b

menorDobrado :: Int -> Int ->Int
menorDobrado a b = (min a b)^2

curringExample :: (Int,Int) -> Int
curringExample (a,b) = a+b

uncurringExample :: Int->Int -> Int
uncurringExample  a b = a+b


main = do
  print ("fatorialn: entrada: 5; resultado: " ++ show (fatorialn 5))
  
  print ("fatorialn: entrada: 10; resultado: " ++ show (fatorialn 10))

  print ("quadradoReal: entrada: [1,2,3,4]; resultado: " ++ show (quadradoReal [1,2,3,4]))
  
  print ("quadradoReal: entrada: [1,2,3,4,5,6,7,8,9,10]; resultado: " ++ show (quadradoReal [1,2,3,4,5,6,7,8,9,10]))

  print ("comprimentoPalavras: entrada: ['Ola'] resultado: " ++ show (comprimentoPalavras ["Ola"]))
  
  print ("comprimentoPalavras: entrada: ['Como vai, Tudo bem?','Quanto tempo']; resultado: " ++ show (comprimentoPalavras ["Como vai, Tudo bem?","Quanto tempo"]))
  
  print ("maiorMultiploDe29v: entrada: ; resultado: " ++ show (maiorMultiploDe29 ))
  
  print ("maiorMultiploDe29: entrada: ; resultado: " ++ show (maiorMultiploDe29 ))

  print ("maiorMultiploDe: entrada: 5; resultado: " ++ show (maiorMultiploDe 5))
  
  print ("maiorMultiploDe: entrada: 999; resultado: " ++ show (maiorMultiploDe 999))


  print ("somaQuadrados: entrada: [1,2,3]; resultado: " ++ show (somaQuadrados [1,2,3]))
  
  print ("somaQuadrados: entrada: [4,5,6]; resultado: " ++ show (somaQuadrados [4,5,6]))

  print ("comprimento: entrada: [1,2,3]; resultado: " ++ show (comprimento [1,2,3]))
  
  print ("comprimento: entrada: ['x','asd']; resultado: " ++ show (comprimento ["x","asd"]))

  print ("subtraiFlip: entrada: 2 33; resultado: " ++ show (subtraiFlip 2 33))
  
  print ("subtraiFlip: entrada: 5 2; resultado: " ++ show (subtraiFlip 5 2))

  print ("divideFlip: entrada: 3 4; resultado: " ++ show (divideFlip 3 4))
  
  print ("divideFlip: entrada: 5 2; resultado: " ++ show (divideFlip 5 2))

  print ("maximumInelements: entrada: 2 3; resultado: " ++ show (maximumInelements 2 3))
  
  print ("maximumInelements: entrada: 5 5; resultado: " ++ show (maximumInelements 5 5))

  print ("maiorDobrado: entrada: 2 3; resultado: " ++ show (maiorDobrado 2 3))
  
  print ("maiorDobrado: entrada: 5 5; resultado: " ++ show (maiorDobrado 5 5))

  print ("minimunInelements: entrada: 2 3; resultado: " ++ show (minimunInelements 2 3))
  
  print ("minimunInelements: entrada: 5 5; resultado: " ++ show (minimunInelements 5 5))
  
  print ("menorDobrado: entrada: 2 3; resultado: " ++ show (menorDobrado 2 3))
  
  print ("menorDobrado: entrada: 5 5; resultado: " ++ show (menorDobrado 5 5))
  
  print ("ord: entrada: '\n'; resultado: " ++ show (ord '\n'))

  print ("ord: entrada: 'a'; resultado: " ++ show (ord 'a'))


