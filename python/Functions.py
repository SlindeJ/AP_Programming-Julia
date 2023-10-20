import myLibrary
import numpy as np  #pip install numpy not work for now
# from myLibrary import area, perimeter, or *...

arr = np.array([1,2,3])  # numpy doesn't want to install
arr2 = np.array([6,7,8])
print(arr - arr2)

len = 5
wid = 10

a = myLibrary.area(len, wid)
p = myLibrary.perimeter(len, wid)
print(f"Area: {a}    Perimeter: {p}")
