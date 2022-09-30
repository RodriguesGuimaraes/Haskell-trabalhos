-- Gustavo Rodrigues Guimarães
{-
Escreva uma função chamada idade que usando pelo menos um tipo definido por você que
receba o tempo de vida em segundos de uma determinada pessoa, o nome de um planeta
e devolva a idade desta pessoa em anos caso ela tivesse vivido naquele planeta. Sabendo
que o período orbital dos planetas é dado por:
a. Mercúrio: 0.2408467 anos terrestres;
b. Vênus: 0.61519726 anos terrestres;
c. Terra: 1.0 anos terrestre equivalente a 365.25 dias, ou 31.557.600 segundos;
d. Marte: 1.8808158 anos terrestres;
e. Jupiter: 11.862615 anos terrestres;
f. Saturno: 29.447498 anos terrestres;
g. Urano: 84.016846 anos terrestres;
h. Netuno: 164.79132 anos terrestres;
-}
data PlanetasPossiveis = Mercurio | Venus | Terra | Marte | Jupiter | Saturno | Urano | Netuno

-- Considere 1 Ano = 31.557.600 S
idade_ :: (Double, PlanetasPossiveis) -> Int
--                                           Anos Terra * Anos Planetas
idade_ (segundos , Mercurio) = truncate((segundos / 31557600) * 0.2408487337)
idade_ (segundos , Venus) =    truncate((segundos / 31557600) * 0.61519726)
idade_ (segundos , Terra) =    truncate(segundos  / 31557600)
idade_ (segundos , Marte) =    truncate((segundos / 31557600) * 1.8808158)
idade_ (segundos , Jupiter) =  truncate((segundos / 31557600) * 11.862615)
idade_ (segundos , Saturno) =  truncate((segundos / 31557600) * 29.447498)
idade_ (segundos , Urano) =    truncate((segundos / 31557600) * 84.016846)
idade_ (segundos , Netuno) =   truncate((segundos / 31557600) * 164.79132)
-- Obs: foi utilizado o truncate para não dizer que uma pessoa tem 56,3 anos , mas sim 56

main :: IO()
main = do
  print ("idade: entrada: 631152000 Mercurio; resultado: " ++ show (idade_ (631152000,Mercurio)))
  print ("idade: entrada: 631152000 Venus; resultado: "    ++ show (idade_ (631152000,Venus)))
  print ("idade: entrada: 631152000 Terra; resultado: "    ++ show (idade_ (631152000,Terra)))
  print ("idade: entrada: 631152000 Marte; resultado: "    ++ show (idade_ (631152000,Marte)))
  print ("idade: entrada: 631152000 Jupiter; resultado: "  ++ show (idade_ (631152000,Jupiter)))
  print ("idade: entrada: 631152000 Saturno; resultado: "  ++ show (idade_ (631152000,Saturno)))
  print ("idade: entrada: 631152000 Urano; resultado: "    ++ show (idade_ (631152000,Urano)))
  print ("idade: entrada: 631152000 Netuno; resultado: "   ++ show (idade_ (631152000,Netuno)))
    