x = {string='miaou'}
y = 3
met = {
  __mul = function(lhs, rhs)
    result = ''
    str = ''
    nb = 0
    if(type(rhs) == 'number') then
      str = lhs.string
      nb = rhs
    else
      str = rhs.string
      nb = lhs
    end
    for i=0, nb-1, 1 do
      result = result..str
    end
    return {string = result}
  end}
setmetatable(x, met)
z1 = x * y
z2 = y * x
print(z1.string)
print(z2.string)


