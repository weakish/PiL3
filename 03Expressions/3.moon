#!/ust/bin/env moon

-- Exercise 3.3: We can represent a polynomial in Lua as a list
-- of coefficients, such as {a0, a1, ..., an}.
-- Write a function that receives a polynomial (represented as
-- a table) and a value for x and returns the polynomial value.

-- coefficients are stored in a Lua array,
-- with the first array member representing
-- the first coefficient (which is multiplied
-- by x^n) and the last array member representing
-- the last coefficient (multiplied by x)

-- calculates polynomials
calculate = (coefficients, x) ->
  p = 0
  for i = 1, #coefficients
    p = p + coefficients[i]*x^(#coefficients-i)
  p

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