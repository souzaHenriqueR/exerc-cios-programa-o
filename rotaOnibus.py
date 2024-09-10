

onibus = []
qtdPassageiros = []
totalViagens = []

numOnibus = int(input("Informe o número do onibus : "))

while (numOnibus != 0):
    
    passageiros = int(input("Quantos passageiros estão a bordo : "))
    
    if (numOnibus in onibus):
        
        indice = onibus.index(numOnibus)
        
        qtdPassageiros[indice] += qtdPassageiros[indice]
        totalViagens[indice] += 1 
        
        numOnibus = int(input("Informe outro onibus ou 0 para sair : "))    
       
    else:       
        
        onibus.append(numOnibus)
        qtdPassageiros.append(passageiros)
        totalViagens.append(1)
        
        numOnibus = int(input("Informe outro onibus ou 0 para sair : "))


for i in range(len(onibus)):
    print(onibus[i], qtdPassageiros[i], end= " ")
    print(qtdPassageiros[i] / totalViagens[i], end= " ")
    print( )
  