## LUVIT-DEAD-BEEF-RAND
This is a PRNG or pseudo random number generator written in lua.  
Based off of [http://inglorion.net/software/deadbeef_rand/](http://inglorion.net/software/deadbeef_rand/)  

### Usage
You need to supply a random number returning seed function or just a random number, maybe the local time, maybe something more secure.  
With this seed  
```lua
local deadbeef = require('./deadBeefRand')

local PRN = deadbeef(123)

print(PRN)
```
