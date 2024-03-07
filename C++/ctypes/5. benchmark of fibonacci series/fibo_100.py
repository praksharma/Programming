import timeit

# fibonacci series
def calc_sum(n):
    sum = 0
    for i in range(n):
        sum += i
    return sum
    
code = '''\
calc_sum(100)
'''
 
setup='''\
from __main__ import calc_sum'''
 
times = timeit.repeat(setup = setup,
                          stmt = code,  
                          number = 1,
                          repeat = 100) 
 
print('Python: calculate sum: {}'.format(sum(times) / 100))


code = '''\
path = os.getcwd()
clibrary = ctypes.CDLL(os.path.join(path, 'clibrary.so'))
clibrary.calc_sum(100)
'''
 
setup='''\
import os
import ctypes'''
 
times = timeit.repeat(setup = setup,
                          stmt = code,  
                          number = 1,
                          repeat = 100) 
 
print('Ctypes: calculate sum: {}'.format(sum(times) / 100))

