#Gustavo Rodrigues Guimarães

#5. Você tem uma lista de tuplas onde o primeiro campo é o nome de um aluno e o segundo 
#sua nota. Crie uma função, usando o Python, C ou C++ 20 e os conceitos de programação 
#funcional para  criar uma  função que  ordene  listas  de  tuplas,  como  a  tupla  descrita neste 
#enunciado.  Sem,  é  claro,  usar  qualquer  função,  objeto,  ou  biblioteca  disponíveis  na 
#linguagem que você escolher.

# Esse devo pedir desculpa, pois a forma de mostrar ele(->)
# ficou grande na formatação solicitada, então ocupa 2 linhas

OrdenaAlunos = lambda lista: [] if lista == [] else OrdenaAlunos([x for x in lista[1:] if x[1] < lista[0][1]]) + [lista[0]] + OrdenaAlunos([x for x in lista[1:] if x[1] >= lista[0][1]])


print("OrdenaAlunos: entrada: [('João', 10), ('Maria', 5)] ; resultado: ",OrdenaAlunos([('João', 10), ('Maria', 5)]))

print("OrdenaAlunos: entrada: [('João', 5), ('Maria', 5)] ; resultado: ",OrdenaAlunos([('João', 5), ('Maria', 5)]))