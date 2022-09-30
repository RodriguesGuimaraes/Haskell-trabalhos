--Gustavo Rodrigues Guimarães

--Dada uma coleção de números, implemente as funções manter e descartar que recebem a coleção e um predicado. Sempre que o predicado for verdadeiro quando aplicado a um item da coleção original este item deve ser mantido ou descartado. Lembre-se dos valores imutáveis. Você não pode usar as funções filter e reject já disponíveis no Prelude ou em qualquer outra biblioteca.

-- ---------------------------------------------------------------------- Manter
manter :: [Int] -> (Int -> Bool) -> [Int]
manter lista predicato = [x |x<-lista, predicato x]
-- ---------------------------------------------------------------------- Descartar
descartar :: [Int] -> (Int -> Bool) -> [Int]
descartar lista predicato = [x |x<-lista, not(predicato x)]
-- --------------------------------------------------------------------


main :: IO()
main = do
-- Manter todos os pares
  print ("manter: entrada: [1,.. 10] (\\x -> -> x `mod`  2 == 0)); resultado: " ++ show (manter [1..10] (\x -> x `mod`  2 == 0)))
-- Remover todos os pares
  print ("descartar: entrada: [1,.. 10] (\\x -> x `mod`  2 == 0)); resultado: " ++ show (descartar [1..10] (\x -> x `mod`  2 == 0)))
