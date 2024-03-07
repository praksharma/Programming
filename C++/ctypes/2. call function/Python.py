import ctypes
libObject = ctypes.CDLL('./clibrary.so')

add = libObject.add(3,4)
print(add)
