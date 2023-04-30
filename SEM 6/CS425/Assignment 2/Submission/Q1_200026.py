import random


def binary_remainder(dividend, divisor):
    dividend += '0' * (len(divisor) - 1)
    dividend = [int(bit) for bit in dividend]
    divisor = [int(bit) for bit in divisor]
    for i in range(len(dividend) - len(divisor) + 1):
        if dividend[i] == 1:
            for j in range(len(divisor)):
                dividend[i + j] ^= divisor[j]
    remainder = ''.join(str(bit) for bit in dividend[-(len(divisor) - 1):])
    return remainder


def generate_frame(D, P):
    frame = D + binary_remainder(D, P)
    return frame


def transmission_error(D, k):
    index = bin(random.getrandbits(len(D)-k))[2:].zfill(len(D) - k)+'0'*k
    frame = [str(1 - int(d)) if index[i] ==
             '1' else d for i, d in enumerate(D)]
    return ''.join(frame)


def check_frame(frame, P):
    rem = binary_remainder(frame, P)
    if (int(rem) == 0):
        return True # Accept
    else:
        return False # Reject


k = 10
D = bin(random.getrandbits(k))[2:].zfill(k)
P = "110101"
T = generate_frame(D, P)
T_error = transmission_error(T, len(P) - 1)

if (check_frame(T_error, P)):
    print("Accepted")
else:
    print("Rejected")

print("D:       ", D)
print("P:       ", P)
print("T:       ", T)
print("T_error: ", T_error)
