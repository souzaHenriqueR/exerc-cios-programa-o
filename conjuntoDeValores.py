





valor = int(input("Informe um valor ou 0 para sair : "))
lista = []

while (valor != 0):
    
    if valor not in lista:
        lista.append(valor)      
    
    valor = int(input("Informe outro valor ou 0 para sair "))
    
print(lista)
