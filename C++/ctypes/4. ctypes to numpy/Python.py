import ctypes
from numpy.ctypeslib import ndpointer # NumPy and ctypes allow us to wrap the C function
import numpy as np
import matplotlib.pyplot as plt
import timeit # to measure the execution time

lib = ctypes.CDLL('./clibrary.so')

mandelbrot = lib.mandelbrot
# Define the types of the output and arguments of
# this function.
mandelbrot.restype = None
mandelbrot.argtypes = [ctypes.c_int,
                       ctypes.c_int,
                       ndpointer(ctypes.c_int),
                       ]

# To use this function, we first need to initialize an empty array and pass it as an argument to the mandelbrot() wrapper function

size = 400
iterations = 100
col = np.empty((size, size), dtype=np.int32)
# We execute the C function, which will update the array.
start = timeit.default_timer()
# The mandelbrot() C function does not return any value; rather, it updates the buffer that was passed by reference to the function (it is a pointer).
mandelbrot(size, iterations, col)
stop = timeit.default_timer()

print("Time taken: ", stop-start)
fig, ax = plt.subplots(1, 1, figsize=(10, 10))
ax.imshow(np.log(col), cmap=plt.cm.hot)
ax.set_axis_off()
plt.savefig("mandelbrot.pdf", format="pdf", bbox_inches="tight",  transparent=True)
