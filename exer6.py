import random


qtdElementos = int(input("Informe um número maior que 1 : "))

lista = []
produto = 1

for i in range(qtdElementos):
    lista.append(random.randint(1,100))


for i in range(len(lista)):
    produto *= lista[i]
 

print(lista)   
print(produto)


mediaGeomtrica = produto ** (1/qtdElementos)

print(f"A media geometrica entre os valores da lista é : {mediaGeomtrica:.2f}")


