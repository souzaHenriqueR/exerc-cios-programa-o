




qtdElementos = int(input("informe qual sera o tamanho de cada lista : "))


listaUm = []
listaDois = []
listaTres = []

for i in range(qtdElementos):
    listaUm.append(int(input("Informe um valor : ")))

for i in range(qtdElementos):
    listaDois.append(int(input("Informe um valor : ")))

listaDois.sort(reverse=True)

for i in range(qtdElementos):
    listaTres.append(listaUm[i])
    listaTres.append(listaDois[i])

print(listaTres)