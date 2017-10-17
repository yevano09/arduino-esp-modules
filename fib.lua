-- example of for with generator functions
local arg = arg or {...}
function generatefib (n)
  return coroutine.wrap(function ()
    local a,b = 1, 1
    while a <= n do
      coroutine.yield(a)
      a, b = b, a+b
    end
  end)
end



input_parameter = arg[1]
print("input_parameter ".. input_parameter);
for i in generatefib(tonumber(input_parameter)) do print(i) end
