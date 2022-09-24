--Gustavo Rodrigues Guimarães


-- Usando List Comprehension escreva uma função, chamada divisoresden, que devolva uma lista dos divisores de um número dado.
divisoresden :: Int -> [Int]
divisoresden numero = [x | x <- [1..numero], (numero `mod` x) == 0]


-- Usando List Comprehension escreva uma função, chamada contaCaractere, que conte a ocorrência de um caractere específico, em uma string dada.

contaCaractere :: Char -> String -> Int
contaCaractere caracter palavra= sum[1| x<-[0..(length palavra)-1], palavra!!x == caracter]

--Usando List Comprehension escreva uma função, chamada dobroNaoNegativo, que devolve o dobro dos valores dos elementos não negativos da lista de inteiros dada.

dobroNaoNegativo ::[Int]->[Int]
dobroNaoNegativo lista = [x^2 | x<-lista,x>(-1)]

--Usando List Comprehension escreva uma função, chamada pitagoras, que devolva uma lista de triplas, não repetidas, contendo os lados dos triângulos retângulos possíveis de serem construídos por inteiros entre 1 e um número inteiro dado

pitagoras :: Int -> [[Int]]
pitagoras numero = lista
  where
  lista = [[x,y,z] | 
    x<-[1..numero],
    y<-[1..numero],
    z<-[1..numero], 
    x^2 + y^2 == z^2]

-- Números perfeitos são aqueles cuja soma dos seus divisores é igual ao próprio número. Usando List Comprehension escreva uma função, chamada numerosPerfeitos, que devolva uma lista contendo todos os números perfeitos menores que um número dado. Lembre-se que você já tem uma função que devolve uma lista dos divisores de um número dado.

soma_dos_divisores :: Int -> Int
soma_dos_divisores n = sum [x | x <- [1..n-1], n `mod` x == 0] -- somando (armazenando numeros que são divisores de n)

numerosPerfeitos :: Int -> [Int]
numerosPerfeitos n = [x | x <- [1..n], x == soma_dos_divisores x]

-- Usando List Comprehension escreva uma função, chamada produtoEscalar, que devolva o produto escalar entre duas listas de inteiros. Lembre-se, existem as funções fst, snd e zip no prelude que podem ser úteis.

produtoEscalar :: [Int]->[Int]->Int  
produtoEscalar lista1 lista2 = sum[fst x * snd x| x <- zip lista1 lista2]

-- Usando List Comprehension escreva uma função, chamada primeirosPrimos, que devolva uma lista contendo os n primeiros números primos a partir do número 2
ehPrimo :: Int->Bool
ehPrimo n = if length [x|x<-[2..n-1],n `mod` x == 0] == 0 then True else False

primeirosPrimos :: Int -> [Int]
primeirosPrimos n
  |n<1 = [(-1)] -- situação de erro
  |otherwise = take n [x | x <-[2..] , ehPrimo x]


-- Usando List Comprehension escreva uma função, chamada paresOrdenados, que devolva uma lista de par ordenados contendo uma potência de 2 e uma potência de 3 até um determinado número dado. Observe que estes números podem ser bem grandes

-- enunciado um pouco confuso, "até um determinado número dado", de tamanho de lista?, de x | x[1..n] ?

paresOrdenados :: Integer -> [(Integer,Integer)]
paresOrdenados n = [(x^2 , y^3) | x<-[1..n], y<-[1..n],x<=n,y<=n]


main = do
  print ("divisoresden: entrada: 8; resultado: " ++ show (divisoresden 8))
  print ("contaCaractere: entrada: 'p' 'paralelepipido'; resultado: " ++ show (contaCaractere 'p' "paralelepipido"))
  print ("dobroNaoNegativo: entrada: [1,(-2),3,(-4)]; resultado: " ++ show (dobroNaoNegativo [1,(-2),3,(-4)]))
  print ("pitagoras: entrada: 5; resultado: " ++ show (pitagoras 5))
  print ("numerosPerfeitos: entrada: 1000; resultado: " ++ show (numerosPerfeitos 1000))
  print ("produtoEscalar: entrada: [58,100,78] [10,5,3]; resultado: " ++ show (produtoEscalar [58,100,78] [10,5,3]))
  print ("primeirosPrimos: entrada: 8; resultado: " ++ show (primeirosPrimos 8))
  print ("paresOrdenados: entrada: 2; resultado: " ++ show (paresOrdenados 2))