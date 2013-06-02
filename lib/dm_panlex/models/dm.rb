module DmPanlex
   class Dm
      include DataMapper::Resource

      storage_names[:default] = 'dm'

      property :dm, Integer, :key => true
      property :mn, Integer, :required => true, :unique_index => :dm_mn_key
      property :ex, Integer, :required => true, :unique_index => :dm_mn_key

   end
end
