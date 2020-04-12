import matplotlib.pyplot as plt; plt.rcdefaults()
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd


df = pd.read_csv('cars.csv', sep=',', names=['Type', 'Count'])

types = df['Type'].array
count = df['Count'].array


y_pos = np.arange(len(types))


plt.bar(y_pos, count, align='center', alpha=0.3)
plt.xticks(y_pos, types)
plt.ylabel('Total rentals')
plt.xlabel('Car type')
plt.title('Rentals by car class')
plt.show()


df = pd.read_csv('rental.csv', sep=',', names=['Name', 'Count'])

types = df['Name'].array
count = df['Count'].array


y_pos = np.arange(len(types))


plt.bar(y_pos, count, align='center', alpha=0.3)
plt.xticks(y_pos, types)
plt.ylabel('Total sales')
plt.xlabel('Employee name')
plt.title('Employee performance')
plt.show()