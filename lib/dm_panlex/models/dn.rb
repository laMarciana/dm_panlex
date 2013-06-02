module DmPanlex
   class Dn
      include DataMapper::Resource

      storage_names[:default] = 'dn'

      property :dn, Integer, :key => true
      property :mn, Integer, :required => true, :unique_index => :dm_mn_ex_key, :index => true
      property :ex, Integer, :required => true, :unique_index => :dm_mn_ex_key, :index => true

      has n, :mds, :model => 'Md', :child_key => :dn
      has n, :wcs, :model => 'Wc', :child_key => :dn
   end
end
