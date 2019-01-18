#!/usr/bin/env lua

-- Adapted from the book "Programming in Lua"
function norm (x, y)
  local n2 = x^2 + y^2
  return math.sqrt(n2)
end

function twice (x)
  return 2*x
end

n = norm(3.4, 1.0)

print(twice(m))
--          ^
--          |
--      Bug Here