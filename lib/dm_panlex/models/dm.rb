module Dm_Panlex
   class Dm
      include DataMapper::Resource

      storage_names[:default] = 'dm'

      property :dm, Integer, :key => true
      property :mn, Integer, :required => true, :unique_index => :dm_mn_key
      property :ex, Integer, :required => true, :unique_index => :dm_mn_key

      belongs_to :ex, :parent_key => :ex, :child_key  => :ex
      belongs_to :mn, :parent_key => :mn, :child_key  => :mn
   end
end
