#!/usr/bin/python3
from calculate_1 import add, sub, mul, div
if __name__ == "__main__":
    a = 10
    b = 5
    s = add(a,b)
    print(f"{a} + {b} = {s}".format(add(a,b)))

    s = sub(a,b)
    print(f"{a} - {b} = {s}".format(sub(a,b)))

    s = mul(a,b)
    print(f"{a} * {b} = {s}".format(mul(a,b)))

    s = div(a,b)
    print(f"{a} / {b} = {s:.0f}".format(div(a,b)))
