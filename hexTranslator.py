while True:
    hexa = input().split()
    for h in hexa:
        if h == '\\':
            exit()      
        h = int(h, 16)
        print(chr(h), end = "")
    print("")