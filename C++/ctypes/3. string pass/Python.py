import ctypes
libObject = ctypes.CDLL('./clibrary.so')

print_function = libObject.print_string
# Define the argument and return types for the function
print_function.argtypes = [ctypes.c_char_p, ctypes.c_int]
print_function.restypes = ctypes.c_char_p

output = print_function ("John",4) # b denotes binary string which is mutable
print(output)

# It shouldn't work. I will only give address to the pointer of the string.
