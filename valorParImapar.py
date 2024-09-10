





valor = int(input("Informe um valor : "))

lista = []

while (valor != 0):
    if valor not in lista:
        lista.append(valor)
    
    valor = int(input("infmorme um valor : "))

print(lista)

for i in range(len(lista)):
    if (lista[i] % 2 == 0):
        print(lista[i], end= " ")

print()

for i in range(len(lista)):
    if (lista[i] % 2 != 0):
        print(lista[i], end= " ")
        


