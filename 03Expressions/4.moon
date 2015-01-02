#!/usr/bin/env moon

-- Exercise 3.4: Can you write a function from the previous
-- item so that it uses at most n additions and n multiplications
-- (and no exponentiations)?

-- coefficients are stored in a Lua array,
-- with the first array member representing
-- the first coefficient (which is multiplied
-- by x^n) and the last array member representing
-- the last coefficient (multiplied by x)

-- calculates polynomials using at most n multiplications,
-- n additions and no exponentiations

cacualte = (coefficients, x) ->
  if #coefficients == 1
    coefficients[1]
  else
    last = coefficients[#coefficients]
    coefficients[#coefficients] = nil
  last + x * calculate(coefficients, x)

-- read coefficients from user
print("how many coefficients should be read?")
size = io.read("*n")
print("reading " .. size .. " coefficients")
c = {}
for i = 1, size
  c[#c+1] = io.read("*n")

-- asks for x values to calculate the function
print("please enter x values (ctrl-d to exit)")
while true
  x = io.read("*n")
  print("f(" .. x .. ") = " .. calculate(c, x))
