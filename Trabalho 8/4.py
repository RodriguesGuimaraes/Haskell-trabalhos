#Gustavo Rodrigues Guimarães

#4. Usando os conceitos de programação funcional e a linguagem Python, C ou C++ 20 escreva 
#uma  função  que  devolva  a  lista  de  todos  os  números  de  Fibonacci  até  um  valor  dado 
#considerando que a  sequência de Fibonacci começa em zero. Sem, é  claro, usar qualquer 
#função, objeto, ou biblioteca disponíveis na linguagem que você escolher. 



def fibonacci(n):
    if n == 0:
        return [0]
    elif n == 1:
        return [0,1]
    else:
        fib = fibonacci(n-1)
        fib.append(fib[-1]+fib[-2])
        return fib

print("fibonacci: entrada: (5) ; resultado: ",fibonacci(5))
print("fibonacci: entrada: (3) ; resultado: ",fibonacci(3))