import numpy as np
import matplotlib.pyplot as plt

m = int(input("Enter value of m: "))
x = []
p = []
for i in range(m):
    p.append(float(input("Enter value of p["+str(i)+ "] :")))
    x.append(int(i))
for i in range (m):
    print(p[i], " ")
n = int(input("Enter value of n: "))

it = 5000
avg = 0
x = np.array(x)
p = np.array(p)
freq = []
freq = [0 for i in range(m)]
for i in range(5000):
    avg = 0
    for j in range(n):
        avg += np.random.choice(x,p=p)
    avg /= n
    avg = int(avg)
    freq[avg]+=1
    
plt.plot(list(range(m)),freq)
plt.ylabel('Frequency of Samples')
plt.ylabel('Avg. value of Samples')
plt.show()