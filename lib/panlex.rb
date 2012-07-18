%w[
   data_mapper
   dm-core
   dm-timestamps
   dm-constraints
   dm-migrations
].each do |lib|
   require lib
end

require_relative 'panlex/panlex'
