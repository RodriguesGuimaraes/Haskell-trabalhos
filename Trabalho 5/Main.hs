-- Gustavo Rodrigues Guimarães

-- Em Haskell temos um conjunto de tipos especiais: Maybe, Nothing e Just seu trabalho será criar no repl.it um código, comentado, que explique estes tipos, sua funcionalidade e que contenha quatro exemplos do seu uso. Com uma restrição: você deve evitar qualquer explicação que inclua o uso de Monads. Lembre-se entre estes exemplos, um deve ser de sua autoria e todos os outros precisam ter suas fontes citadas.

-- Maybe indica que o tipo de algo pode ser tanto algo existente (Just) ou simplesmente nada (Nothing), sendo esses tipos seus  "Construtores"

-- Nothing é um tipo que diz que uma variavel ou um valor é um erro ou nada

-- Just é um tipo que diz que uma variavel está preenchida ou é valida


doubleMaybe :: Maybe Int -> Maybe Int
doubleMaybe (Just a) = Just(a*a)
doubleMaybe _ = Nothing
--  Autoria Própria

succMaybe :: Maybe Int -> Maybe Int
succMaybe (Just x) = Just (x+1)
succMaybe _ = Nothing
-- https://stackoverflow.com/questions/29456824/what-is-the-maybe-type-and-how-does-it-work#:~:text=Tom%20Schrijvers%20also%20shows%20that,%2Dalgebraic%20equivalent%20of%20multiplication).

f :: Int -> Maybe Int
f 0 = Nothing
f x = Just x
--  https://wiki.haskell.org/Maybe

g :: Int -> Maybe Int
g 100 = Nothing
g x = Just x



main :: IO()
main = do
    print ("doubleMaybe: " ++ show (doubleMaybe (Just 5)))
    print ("succMaybe: " ++ show (succMaybe (Just 5)))
    print ("f: " ++ show (f 5))
    print ("g: " ++ show (g 5))
  
   