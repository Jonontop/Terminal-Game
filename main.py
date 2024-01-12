
def jug():
    print("si na jugu tu se nahaja telovadnica v kotu je žoga!")
    x = input("VNOS: ")
    if x == "poberi":
        y = True
        return y

def sever():
    print("neki")
    x = input("VNOS: ")
    if x == "Daj":
        objective = True
        print("Učitelju si vrnil žogo!")
        x = input("VNOS: ")
        return objective

def vzhod():
    print("neki")
    x = input("VNOS: ")

def zahod():  
    print("neki")
    x = input("VNOS: ")




print("Pozdravljen Vegovec!")
print("Prišel si v aulo Vegove!")
print("Sprehodi se po vegovi in opravi podvige!")
print("Vnesi S V Z J (smeri neba za nadaljevanje)")
vnos = input("VNOS: ")

if vnos == "J":
    jug()

elif vnos =="S":
    sever()

elif vnos =="Z":
    zahod()

elif vnos =="V":
    vzhod()

else: 
    print("Nepravilen vnos!")
    x = input("Ponovno Vnesi: ")
