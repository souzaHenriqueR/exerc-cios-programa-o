




qtdLinhas = int(input("Informe colunas : "))
qtdColunas = int(input("Informe linhas : "))


valoresDiagonal = 0
m = []

for i in range(qtdLinhas):
    l = []
    for j in range(qtdColunas):
        valor = int(input("Informe um valor : "))
        l.append(valor)
    m.append(l)


for i in range(qtdLinhas):
    for j in range(qtdColunas):
        if (i == j):
            valoresDiagonal += 1

print(valoresDiagonal)