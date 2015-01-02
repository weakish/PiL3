#!/usr/bin/env moon

-- Exercise 3.5: How can you check whether a value is boolean
-- without using the type function?

-- check if a variable is a boolean
-- comparisons are false if the types are different
is_boolean = (v) -> v == true or v == false