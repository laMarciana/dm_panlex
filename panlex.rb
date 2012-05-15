require 'data_mapper'
require 'dm-types'
require 'dm-is-reflective'

DataMapper.setup(:default, "postgres://postgres:ornitorrinc@localhost/panlex")

module Datamapper
   class Property
      class Bpchar < String
      end
   end
end


class Ap
   include DataMapper::Resource
   storage_names[:default] = 'ap'

   is :reflective
   
   reflect
end

DataMapper.finalize

wordnet = Ap.first(nil, {:ap => 469})
print wordnet.ap
