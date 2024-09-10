import random



qtdLinhas = int(input("Informe a quantidade de linhas : "))
qtdColunas = int(input("Informe a quantidade de colunas : "))

m = []
soma = 0

for i in range(qtdLinhas):
    l = []
    for j in range(qtdColunas):
        l.append(random.randint(0,1))
    m.append(l)


for i in range(qtdLinhas):
    for j in range(qtdColunas):
        soma += m[i][j]

if (soma != 0):
    for i in range(len(m)):
        print(m[i])
    print(f"A matriz não é nula {soma}")
    
else:
    for i in range(len(m)):
        print(m[i])
    print(f"A matriz é nula {soma}")