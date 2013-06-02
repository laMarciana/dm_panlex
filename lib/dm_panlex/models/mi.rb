module DmPanlex
   class Mi
      include DataMapper::Resource

      storage_names[:default] = 'mi'

      property :mn, Integer, :key => true
      property :tt, Text, :required => true

   end
end
