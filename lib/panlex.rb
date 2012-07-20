%w[
   data_mapper
   dm-core
   dm-timestamps
   dm-constraints
].each do |lib|
   require lib
end

require_relative 'panlex/panlex'
