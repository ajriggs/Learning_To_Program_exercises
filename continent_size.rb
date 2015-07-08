#define tile types
M = 'land'
o = 'water'
world = [[o,o,o,o,o,o,M,o,o,o,o],
         [o,o,o,M,M,M,o,o,o,o,o],
         [o,o,o,M,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [M,M,M,M,M,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,M],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,M,o,o,o,o],
         [o,o,o,o,o,o,M,o,o,o,o]]
def continent_size world, x, y
    # world[y][x] returns the current tile
  if world[y][x] != 'land'
    # we will mark land that we've counted as 'counted'
    # so, this flow should return 0 if the tile is either 'water' or 'counted', else...
    return 0
  end
  # we'll begin by counting by counting our first tile
  # remember, this is only executed if current tile = 'land'
  current_size = 1
  #set the current tile to 'counted land' after adding it to current_size (to avoid re-counting)
  world[y][x] = 'counted land'
  # now initialize 8-directional recursion
  # add each valid, neighboring tile to current_size by calling continent_size again
  current_size = current_size + continent_size(world, x-1, y-1)
  current_size = current_size + continent_size(world, x, y-1)
  current_size = current_size + continent_size(world, x+1, y-1)
  current_size = current_size + continent_size(world, x, y-1)
  current_size = current_size + continent_size(world, x, y+1)
  current_size = current_size + continent_size(world, x+1, y-1)
  current_size = current_size + continent_size(world, x+1, y)
  current_size = current_size + continent_size(world, x+1, y+1)
  current_size
end
puts continent_size(world, 5, 5)
