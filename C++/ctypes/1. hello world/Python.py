import ctypes
libObject = ctypes.CDLL('./clibrary.so')

libObject.prompt()
