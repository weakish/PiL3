#!/usr/bin/env moon
-- Exercise 1.1: Run the factorial example. What happens
-- to your program if you enter a negative number? Modify
-- the example to avoid this problem.

-- when entering a negative number in the factorial example,
-- it keeps going until it stops due to a stack overflow.
-- The remedy is to check for negative numbers in the
-- function.

-- defines a factorial function
-- returns nil on error, the factorial otherwise

fact = (n) ->
  if n < 0
    nil
  elseif n == 0
    1
  else
    n * fact(n - 1)

-- get number from user
print("enter a number:")
a = io.read("*n")
f = fact(a)

-- check for error
if f == nil
  print("bad number entered (maybe negative?)")
else
  print(f)
