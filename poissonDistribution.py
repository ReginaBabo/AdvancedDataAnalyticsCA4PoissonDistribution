import math
from scipy.stats import poisson

## observing x events in an interval
x = 17
## average number of events in an interval
lambdas = 12

answer = 0
while x < (3*lambdas):
    result = ( (lambdas**x) * math.exp(-lambdas) ) / ( math.factorial(x) )
    answer += result
    x += 1
print(answer)


## upper tail
answer = 0
## reset x
x = 17
rv = poisson(lambdas)
while x < (3*lambdas):
    result = rv.pmf(x)
    answer += result
    x += 1
print(answer)