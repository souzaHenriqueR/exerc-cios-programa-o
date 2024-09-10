






def multiple(n,limit):
    c = 0
    n = int(input("Inform a number : "))
    l = []
    for i in range(limit):
        l.append(int(input("Inform a value :")))
    
    for i in range(len(l)):
        
        if (l[i] % n == 0):
            c += 1
    
    return print(c)
            
multiple(3,10)
    
    