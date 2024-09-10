



linha = 3
coluna = 3
m = [] 
soma = 0
produto = 1


for i in range(linha):
    l = []
    for j in range(coluna):
        l.append(int(input("Informe um valor : ")))
    m.append(l)


for i in range(len(m)):
    print(m[i])


for i in range(linha):
    for j in range(coluna):
        
        if ( j > i):
            soma += m[i][j]
        elif ( j < i ):
            produto *= m[i][j]

print(soma)
print(produto)