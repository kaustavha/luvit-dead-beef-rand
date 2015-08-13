local bit = require('bit')
local xor = bit.bxor
local lshift = bit.lshift
local rshift = bit.rshift

return function(seed)
  assert(seed, 'Need a seed')
  local beef = 0xdeadbeef
  seed = xor(lshift(seed, 7), (rshift(seed, 25) + beef))
  beef = xor(lshift(beef, 7), (rshift(beef, 7) + 0xdeadbeef))
  return seed % 0x100000000
end

