## Poisson Distribution

## The Poisson distribution is the probability distribution of independent event occurrences in an interval
## If ?? is the mean occurrence per interval, then the probability of having x occurrences within a given interval is:
## x -?? f(x) = ??-e-- where x = 0,1,2,3,... x!


## Problem:
## If there are 12 cars crossing a bridge per minute on average,
## find the probability of having 17 or more cars crossing the bridge in a particular minute.


## Solution:
## The probability of having 16 or less cars crossing the bridge in a particular minute is given by the function ppois.

## lower tail
ppois(16, lambda = 12)


## Hence the probability of having 17 or more cars crossing the bridge in a minute
## is in the upper tail of the probability density function.

## upper tail
ppois(16, lambda=12, lower=FALSE)

## check, must sum to 1.0:
ppois(16, lambda = 12) + ppois(16, lambda=12, lower=FALSE)


## Answer:
## If there are 12 cars crossing a bridge per minute on average,
## the probability of having 17 or more cars crossing the bridge in a particular minute is 10.1%.
