num1 = int(input('Informe um número : '))
num2 = int(input('Informe um número : '))

if (num1 < num2):
    for j in range(num1):
        
        for i in range(num2):
            print(num1,end=" ")
            num1 += 1
            
        print()
        num1 -= 1
        num1 -= num2



if (num1 > num2):
    for j in range(num1):
        
        for i in range(num2):
            print(num1,end=" ")
            num1 += 1
            
        print()
        num1 -= 1
        num1 -= num2
