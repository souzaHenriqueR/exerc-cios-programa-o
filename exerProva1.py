


numero = int(input("Informe um valor ou 0 para sair : "))

listaNumeros = []

while (numero != 0):
    
    if (numero not in listaNumeros and numero > 0):
        listaNumeros.append(numero)
        numero = int(input("Informe um valor ou 0 para sair : "))
    else:
        numero = int(input("Informe um valor ou 0 para sair : "))
            
maiorValorLN = max(listaNumeros)

serieFIbo= [0,1]
for i in range(2,maiorValorLN):
    serieFIbo.append(serieFIbo[i - 2] + serieFIbo[i - 1] )

counter = 0
listaValoresContidos = []
for i in range(len(listaNumeros)):
    
    if (listaNumeros[i] in serieFIbo):
        counter += 1
        listaValoresContidos.append(listaNumeros[i])
        
for i in range(len(listaNumeros)):
    print(listaNumeros[i], end = " - ")
    
    ultimoElemento = len(listaNumeros) - 1
    
    if (i == ultimoElemento):
        print(listaNumeros[i], end = " ")

        
print()   
print(counter)

for i in range(len(listaValoresContidos)):
    print(listaValoresContidos[i], end = "  ")


        
        
    

