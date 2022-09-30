-- Gustavo Rodrigues Guimarães

-- Escreva uma função para o cálculo dos números da sequência de Fibonacci, utilizando Haskell
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x
  | x>(-1) = fibonacci(x-1) + fibonacci(x-2)
  |otherwise = 0


-- **************************************************************************************
-- Um dos primeiros algoritmos documentados é o algoritmo para o cálculo do Maior Divisor Comum (MDC) de Euclides publicado por volta do ano 300 AC. Podemos simplificar este algoritmo dizendo que dados dois inteiros A e B, o MDC entre eles será dado pelo valor absoluto de A se B=0 e pelo MDC entre B e o resto da divisão de A por B se B>0. Escreva  uma função para o cálculo do MDC entre dois números inteiros positivos, usando o algoritmo de Euclides conforme apresentado aqui, utilizando Haskell.

mdc :: Int -> Int -> Int
mdc a b
  | b == 0 = abs  a
  | a< 0 || b<0 = 0
  | otherwise = mdc b (a`mod`b)

-- **************************************************************************************
-- Escreva uma função recursiva que dado um número inteiro n, devolva a soma dos dígitos deste número. Exemplo: dado 1234 a função deverá devolver 10. Utilizando Haskell e recursividade

somaN :: Int -> Int
somaN a
  |a==0 = 0
  |a<0 = -1
  |otherwise = a`mod`10 + somaN (a`div`10) 

-- **************************************************************************************
--Escreva uma função que devolva a soma de todos os números menores que 10000 que sejam múltiplos de 3 ou 5

mult3_5 ::  Int
mult3_5 =  sum [x|x<-[0..20],(x`mod`3 == 0 ||x `mod` 5 ==0)]

-- **************************************************************************************
-- Escreva uma função que, recebendo uma lista de inteiros, apresente a diferença entre a soma dos quadrados e o quadrado da soma destes inteiros, usando recursividade.

auxQuest5 :: [Int] -> Int
auxQuest5 a
  | null a = 0
  | otherwise = head a^2 + auxQuest5 (tail a)

quest5 :: [Int] -> Int
quest5 a =  auxQuest5 a - sum(a)^2


-- **************************************************************************************
--O Crivo de Eratóstenes não é o melhor algoritmo para encontrar números primos. Crie uma função que implemente o Crivo de Euler (Euler’s Sieve) para encontrar todos os números primos menores que um determinado inteiro dado
primo :: Int -> [Int]
primo a = [x|x <- [1..a], x `elem` [b|b<-[1..x],x`mod`b == 0], 1 `elem` [b|b<-[1..x],x`mod`b == 0], length [b|b<-[1..x],x`mod`b == 0] <= 2 ]
  

-- ***************************************************************************************
--Nem só de Fibonacci vivem os exemplos de recursão. Escreva uma função que devolva todos os números de uma sequência de Lucas (2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123) menores que um inteiro dado
lucas :: Int -> Int
lucas 1 = 2
lucas 2 = 1
lucas a = lucas(a-1) + lucas(a-2)

sLucas :: Int->Int->[Int]
sLucas a b
  |lucas b < a = lucas b : sLucas a (b+1)
  |otherwise = []
sequenciaLucas :: Int->[Int]
sequenciaLucas a = sLucas a 1 

-- ***************************************************************************************
-- Escreva uma função, chamada aoContrario em Haskel para reverter uma lista. Dado [1,2,3] devolva [3,2,1].

aoContrario :: [Int] -> [Int]
aoContrario a = reverse(a)

-- **************************************************************************************
--Escreva uma função chamada somaRecursiva que recebe dois valores inteiros e devolve o produto destes valores sem usar o operador de multiplicação

somaRecursiva :: Int -> Int -> Int
somaRecursiva a b = product [a,b] 

somaRecursiva1 :: Int -> Int -> Int
somaRecursiva1 a b         --OBS: na de cima eu não usei o '*' para o calculo, mas por
  | b == 1 = a             -- Não saber se estava certo... fiz essa a mais
  |otherwise = a + somaRecursiva1 a (b-1)

-- **************************************************************************************
--Escreva uma função chamada comprimento que receba uma lista de inteiros e devolva o comprimento desta lista. Observe que você não pode usar nenhuma função que já calcule o comprimento de uma lista

comprimento :: [Int] -> Int
comprimento a 
  | null a = 0
  | otherwise = 1 + comprimento (tail a)





main = do
  print ("fibonacci: entrada: 5; resultado: " ++ show (fibonacci 5))
  print ("fibonacci: entrada: -6; resultado: " ++ show (fibonacci (-6)))

  print ("mdc: entrada: 24 102; resultado: " ++ show (mdc 24 102))
  print ("mdc: entrada: 102 -24; resultado: " ++ show (mdc 102 (-25)))

  print ("somaN: entrada: 1234 resultado: " ++ show (somaN 1234))
  print ("somaN: entrada: -1234; resultado: " ++ show (somaN (-1234)))
  
  print ("mult3_5: entrada: ; resultado: " ++ show (mult3_5 ))
  print ("mult3_5: entrada: ; resultado: " ++ show (mult3_5 ))

  print ("quest6: entrada: [4,5,6]; resultado: " ++ show (quest6 [4,5,6]))
  print ("quest6: entrada: [1,2,3]; resultado: " ++ show (quest6 [1,2,3] ))

  print ("primo: entrada: 5; resultado: " ++ show (primo 5))
  print ("primo: entrada: 53; resultado: " ++ show (primo 53 ))

  print ("sequenciaLucas: entrada: 124; resultado: " ++ show (sequenciaLucas 124))
  print ("sequenciaLucas: entrada: 324; resultado: " ++ show (sequenciaLucas 324 ))

  print ("aoContrario: entrada: [1,2,3]; resultado: " ++ show (aoContrario [1,2,3]))
  print ("aoContrario: entrada: [4,5,6]; resultado: " ++ show (aoContrario [4,5,6]))

  print ("somaRecursiva: entrada: 2 6; resultado: " ++ show (somaRecursiva 2 6))
  print ("somaRecursiva: entrada: 5 4; resultado: " ++ show (somaRecursiva 5 4))

  print ("comprimento: entrada: [1,2,3]; resultado: " ++ show (comprimento [1,2,3]))
  print ("comprimento: entrada: [1,2,3,4,5,6,7]; resultado: " ++ show (comprimento [1,2,3,4,5,6,7]))