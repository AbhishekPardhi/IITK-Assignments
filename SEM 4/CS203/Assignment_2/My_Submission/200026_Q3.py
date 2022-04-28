import numpy as np
import random
import matplotlib.pyplot as plt

for i in range(3):
    N = random.randint(10000, 1000000)
    K = [i+1 for i in range(1000)]
    X = []
    N_a = []
    N_c = []
    for k in K:
        N_a.extend([np.average(np.random.randint(N, size=(k)))])
        N_c.extend([np.median(np.random.randint(N, size=(k)))])
    fig, ax = plt.subplots()
    ax.scatter(K, N_a, linewidth=2.0)
    x = np.linspace(0,1000,1000)
    y = (N+1)/2 + 0*x
    ax.plot(x, y, color='#000000')
    heading = "Part(a): N=" + str(N) + ", N(bar)(expected) = " + str((N+1)/2)
    ax.set_title(heading)
    plt.xlabel('k')
    plt.ylabel('N(bar)')
    plt.show()

    fig, ax = plt.subplots()
    ax.scatter(K, N_c, linewidth=2.0)
    x = np.linspace(0,1000,1000)
    y = (N+1)/2 + 0*x
    ax.plot(x, y, color='#000000')
    heading = "Part(c): N=" + str(N) + ", N(bar)(expected) = " + str((N+1)/2)
    ax.set_title(heading)
    plt.xlabel('k')
    plt.ylabel('N(bar)')
    plt.show()