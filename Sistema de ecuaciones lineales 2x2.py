import random

a11 = 1
a12 = -1
a21 = 1
a22 = 1
b1 = 7
b2 = 5
x = 0
y = 0

def sistema_ecuaciones(a11, a12, a21, a22, b1, b2, x, y):
    if (a22 * a11 - a12 * a21) == 0:
        print("No tiene solución")
    elif a12 == 0 and a22 == 0:
        x = b1 / a11
        print("El sistema solo tiene una incógnita")
        print(f"x: {x}")
    elif a11 == 0 and a21 == 0:
        y = b1 / a12
        print("El sistema solo tiene una incógnita")
        print(f"y: {y}")
    elif a12 == 0 and all(i != 0 for i in [a11, a21, a22]):
        x = b1 / a11
        y = b2 - (a21 * x) / a22
        print(f"x: {x}")
        print(f"y: {y}")
    elif a22 == 0 and all(i != 0 for i in [a11, a12, a21]):
        x = b2 / a21
        y = b1 - (a11 * x) / a12
        print(f"x: {x}")
        print(f"y: {y}")
    elif a11 == 0 and all(i != 0 for i in [a12, a21, a22]):
        y = b1 / a12
        x = b2 - (a22 * y) / a21
        print(f"x: {x}")
        print(f"y: {y}")
    elif a21 == 0 and all(i != 0 for i in [a11, a12, a22]):
        y = b2 / a22
        x = b1 - (a12 * y) / a11
        print(f"x: {x}")
        print(f"y: {y}")
    else:
        x = (a22 * b1 - a12 * b2) / (a22 * a11 - a12 * a21)
        y = (b1 - a11 * x) / a12
        print(f"x: {x}")
        print(f"y: {y}")
    return

sistema_ecuaciones(a11, a12, a21, a22, b1, b2, x, y)