--Gustavo Rodrigues Guimarães

module Main where

{-
1. Utilizando a linguagem Haskell e o seu próprio tipo de dados, crie um programa capaz de 
classificar triângulos a partir do comprimento dos seus lados sabendo que o comprimento 
de cada um dos lados deve ser maior que zero e que:  
a. triângulos equiláteros têm todos os lados do mesmo tamanho; 
b. triangulos esosceles têm, no mínimo, dois lados do mesmo tamanho;  
c. triangulos escalenos têm tem todos os lados de tamanho diferentes; 
d. triangulos degenerados têm um lado igual a soma dos outros dois e área zero.  
-}
type Triangulo = (Float, Float, Float)

triangulo :: Triangulo -> String
triangulo (a, b, c)
    | a == b && b == c = "Equilatero"
    | a == b + c || b == a + c || c == a + b = "Degenerado"
    | a == b || b == c || a == c = "Isosceles"
    | a /= b && b /= c && a /= c = "Escaleno"



{-
2. Usando Haskell, crie uma função chamada fatias, com a assinatura dada por fatias:: :: Int -> 
String -> [[Int]] que receba um string e um inteiro e devolva uma lista de listas contendo em 
cada  item  uma  lista  de  inteiros.  Esta  função  receberá  strings  contendo  digitos  como,  por 
exemplo:  "345234678"  e  devolverá  listas  parecidas  com 
[[3,4,5],[4,5,2],[5,2,3],[2,3,4],[3,4,6],[4,6,7],[6,7,8]] No caso do exemplo, o inteiro que fatias 
recebeu foi 3. Observe que você poderá criar, quantas funções de apoio acredite que sejam 
necessárias  para  criar  as  funcionalidades  de  fatias  inclusive,  se  achar  interessante,  pode 
usar as funções mapMaybe e digitToInt.  
-}

digitToInt :: Char -> Int
digitToInt c = fromEnum c - fromEnum '0' -- necessario pois 0 = 48, então estamos seria: (n+48)-48 = n

fatias :: Int -> String -> [[Int]]
fatias n s = map (map digitToInt) (fatiass n s)

fatiass :: Int -> String -> [String]
fatiass n s
    | length s < n = []
    | otherwise = take n s : fatiass n (tail s)
-- take 3 "1234" = [1,2,3] : fatiass 3 [2,3,4]...

{-
3. Usando  Haskell  escreva  uma  função  chamada  romanos  que  receba  um  inteiro  menor  ou 
igual a 3000 e devolva um string deste inteiro representado com algarismos romanos.  
-}

romanos :: Int -> String
romanos n
    | n >= 3000 = "Numero Superior a 3000."
    | n >= 1000 = "M" ++ romanos (n-1000)
    | n >= 900 = "CM" ++ romanos (n-900)
    | n >= 500 = "D"  ++ romanos (n-500)
    | n >= 400 = "CD" ++ romanos (n-400)
    | n >= 100 = "C"  ++ romanos (n-100)
    | n >= 90 = "XC"  ++ romanos (n-90)
    | n >= 50 = "L"   ++ romanos (n-50)
    | n >= 40 = "XL"  ++ romanos (n-40)
    | n >= 10 = "X"   ++ romanos (n-10)
    | n >= 9 = "IX"   ++ romanos (n-9)
    | n >= 5 = "V"    ++ romanos (n-5)
    | n >= 4 = "IV"   ++ romanos (n-4)
    | n >= 1 = "I"    ++ romanos (n-1)
    | n <  0 = "Numeros negativos nao permitidos"
    | otherwise = ""

{-
4. Usando linguagem  Haskell, escreva uma função que recebe uma lista de listas de inteiros 
com  até  5  digitos  em  cada  lista  e  devolva  apenas  as  listas  que  contenham  palíndromes 
primos.  Por  exemplo  na lista  de  listas  [[1,1,1],  [1,2,2],  [3,1,3],  [3,1,5]]  apenas  o  elemento 
[3,1,3] é um palíndrome  primo. Uma ferramenta importante para criar suas listas de teste 
pode ser encontrada em: Prime Number Calculator (https://www.calculatorsoup.com/calculators/math/prime-number-calculator.php). 
-}

ehigual :: [Int] -> Bool
ehigual (x:xs) 
  | length xs == 0 = True
  | otherwise = if(x == head xs) then ehigual xs else False

ehPrimo :: Int -> Bool
ehPrimo 1 = True -- nem comenta, sei que é ridiculo isso
ehPrimo n = length [x | x <- [1..n], mod n x == 0] == 2

ehPrimo' :: [Int] -> Bool
ehPrimo' n = if length [x | x <- n, ehPrimo x] == length n then True else False

palindromo :: [[Int]] -> [[Int]]
palindromo [] = []
palindromo (x:xs) = if (x == reverse x) && not(ehigual x) && length x <= 5 && ehPrimo' x then x : palindromo xs else palindromo xs
-- Condições: 
-- o reverso tem que ser igual ao original
-- todos tem que ser primo
-- não pode ser um unico valor repetido n <= 5 vezes
-- não deve ultrapassar 5 valores em lista

{-
5. Usando a linguagem Haskell escreva uma função, chamada ultimoNome que receba o nome 
completo de uma pessoa e devolva apenas o último sobrenome sem qualquer vogal. Caso 
o  ultimo  sobrenome  não  contenhuma  nenhuma  vogal  devolva  o  ultimo  sobrenome  que 
ainda contenha vogal. Por exemplo se o nome for Ana Maria stzrx, a função deve devolver 
Maria, se o nome for Silvia Silva a função deve devolver Slv. 
-}

-- REGRAS:
-- Se o ultimo sobrenome tiver vogal, devolver ele sem elas
-- caso contrario, devolver o ultimo sobrenome que contenha vogal



ultimoNome :: String -> String
ultimoNome nome = if(length(filter(\x -> ehvogal x) (last (words nome)))) == 0 
  then ultimoNome' (unwords((init(words nome)))) -- tem vogal no ultimo nome
  else filter(\x -> not(ehvogal x)) (last(words nome))

ultimoNome' :: String -> String
ultimoNome' nome
  |null nome = "Nao achei"
  |otherwise = if(length(filter(\x -> ehvogal x) (last (words nome)))) > 0
    then last(words nome)
    else ultimoNome' (unwords(init(words nome)))


ehvogal :: Char -> Bool
ehvogal x = x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u' || 
            x == 'A' || x == 'E' || x == 'I' || x == 'O' || x == 'U'

main = do
  print ("triangulo: entrada: (2,2,2); resultado: " ++ show (triangulo (2,2,2)))
  print ("triangulo: entrada: (1,2,4); resultado: " ++ show (triangulo (1,2,4)))

  print ("fatias: entrada: 3 '345234678'; resultado: " ++ show (fatias 3 "3448"))
  print ("fatias: entrada: 4 '147852'; resultado: " ++ show (fatias 4 "1478"))

  print ("romanos: entrada: 2993 ; resultado: " ++ show (romanos 2993))
  print ("romanos: entrada: 4 ; resultado: " ++ show (romanos 4))

  print ("palindromo: entrada: [[1,1,1],[3,1,3]] ; resultado: " ++ show (palindromo [[1,1,1],  [3,1,3],  [3,1,5]]))
  print ("palindromo: entrada: [[3,4,3],[5,1,5]] ; resultado: " ++ show (palindromo [[3,4,3],[5,1,5]]))

  print ("ultimoNome: entrada: 'Ana Maria stzrx' ; resultado: " ++ show (ultimoNome "Ana Maria stzrx"))
  print ("ultimoNome: entrada: 'Ana Mr stzrx' ; resultado: " ++ show (ultimoNome "Ana Mr stzrx"))











  --print(palindromo [[1,1,1],  [1,2,2],  [3,1,3],  [3,1,5],  [4,1,4]])