module DmPanlex
   class Wc
      include DataMapper::Resource

      storage_names[:default] = 'wc'

      property :wc, Integer, :key => true
      property :dn, Integer, :required => true, :unique_index => :wc_dn_key
      property :ex, Integer, :required => true, :unique_index => :wc_dn_key

   end
end
