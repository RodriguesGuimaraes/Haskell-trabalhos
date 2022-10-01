#Gustavo Rodrigues Guimarães

#1. Usando  os  conceitos  de  programação  funcional  e  considerando  o  universo  dos  números 
#inteiros,  implemente  a  função  foldr  em  Python,  C  ou  C++  20  tomando  como  base  o 
#funcionamento  desta  função  em  Haskell.  Sem,  é  claro,  usar  qualquer  função,  objeto,  ou 
#biblioteca disponíveis na linguagem que você escolher. 


foldr = lambda f, acc, xs: acc if xs == [] else f(xs[0], foldr(f, acc, xs[1:]))




print("foldr: entrada: (lambda x,y: x+y, 5, [1,2]) ; resultado: ",foldr(lambda x,y: x+y, 5, [1,2]))
print("foldr: entrada: (lambda x,y: x+y, 0, [1,2]) ; resultado: ",foldr(lambda x,y: x+y, 0, [1,2]))

