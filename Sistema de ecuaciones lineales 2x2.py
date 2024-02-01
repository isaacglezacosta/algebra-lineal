a11 = float(input("a11: "))
a12 = float(input("a12: "))
b1 = float(input("b1: "))
a21 = float(input("a21: "))
a22 = float(input("a22: "))
b2 = float(input("b2: "))
x = y = 0
x1 = x2 = y1 = y2 = 0

def sistema_ecuaciones(a11, a12, a21, a22, b1, b2, x, y, x1, x2, y1, y2):
    if (a22 * a11 - a12 * a21) == 0:
        x1 = b1 / a11
        y1 = b1 / a12
        x2 = b2 / a21
        y2 = b2 / a22
        if x1 == x2 and y1 == y2:
            print("El sistema tiene infinitas soluciones")
        else: 
            print("El sistema no tiene solución")
    elif a12 == 0 and a22 == 0:
        x = (b1 + b2) / (a11 + a21)
        print("El sistema solo tiene una incógnita")
        print(f"x: {x}")
    elif a11 == 0 and a21 == 0:
        y = (b1 + b2) / (a12 + a22)
        print("El sistema solo tiene una incógnita")
        print(f"y: {y}")
    elif a12 == 0 and all(i != 0 for i in [a11, a21, a22]):
        x = b1 / a11
        y = (b2 - (a21 * x)) / a22
        print(f"x: {x}")
        print(f"y: {y}")
    elif a22 == 0 and all(i != 0 for i in [a11, a12, a21]):
        x = b2 / a21
        y = (b1 - (a11 * x)) / a12
        print(f"x: {x}")
        print(f"y: {y}")
    elif a11 == 0 and all(i != 0 for i in [a12, a21, a22]):
        y = b1 / a12
        x = (b2 - (a22 * y)) / a21
        print(f"x: {x}")
        print(f"y: {y}")
    elif a21 == 0 and all(i != 0 for i in [a11, a12, a22]):
        y = b2 / a22
        x = (b1 - (a12 * y)) / a11
        print(f"x: {x}")
        print(f"y: {y}")
    else:
        x = (a22 * b1 - a12 * b2) / (a22 * a11 - a12 * a21)
        y = ((b1 - a11 * x)) / a12
        print(f"x: {x}")
        print(f"y: {y}")

if (a22 * a11 - a12 * a21) != 0:
    print("El sistema tiene una única solución")

print(f"{a11}x + {a12}y = {b1}")
print(f"{a21}x + {a22}y = {b2}")

sistema_ecuaciones(a11, a12, a21, a22, b1, b2, x, y, x1, x2, y1, y2)

print(f"Delta = {(a22 * a11 - a12 * a21)}")