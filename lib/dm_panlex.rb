%w[
   data_mapper
].each do |lib|
   require lib
end

require 'dm_panlex/models/ap'
require 'dm_panlex/models/apli'
require 'dm_panlex/models/av'
require 'dm_panlex/models/cp'
require 'dm_panlex/models/cu'
require 'dm_panlex/models/df'
require 'dm_panlex/models/dm'
require 'dm_panlex/models/dn'
require 'dm_panlex/models/ex'
require 'dm_panlex/models/i1'
require 'dm_panlex/models/lc'
require 'dm_panlex/models/lv'
require 'dm_panlex/models/md'
require 'dm_panlex/models/mi'
require 'dm_panlex/models/mn'
require 'dm_panlex/models/us'
require 'dm_panlex/models/wc'
require 'dm_panlex/models/wcex'

DataMapper.finalize
