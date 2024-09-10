
n = int(input("Informe um valor impar maior que 1 : "))
l = []
somaPares = 0
somaImpares = 0
em = ''

while (n % 2 == 0 or n == 1 or n < 0 ):
    n = int(input("Informe um valor valido : "))

for i in range(n):
    valor = int(input("informe um valor : "))
    l.append(valor)

indiceValorMeioLista= len(l) // 2
valorMeioLista = l[indiceValorMeioLista]

if (valorMeioLista % 2 == 0):
    
    em = 'par'
    
    for i in range(len(l)):
        if (l[i] % 2 == 0):
            somaPares += l[i]

elif (valorMeioLista % 2 != 0):
    
    em = 'impar'
    
    for i in range(len(l)):
        if (l[i] % 2 !=0):
            somaImpares += l[i]

print(valorMeioLista)
print(em)

if (valorMeioLista % 2 == 0):
    print(somaPares)
else:
    print(somaImpares)