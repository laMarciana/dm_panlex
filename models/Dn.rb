class Dn
   include DataMapper::Resource

   storage_names[:default] = 'dn'

   property :dn, Integer, :key => true
   property :mn, Integer, :required => true, :unique_index => :dm_mn_ex_key, :index => true
   property :ex, Integer, :required => true, :unique_index => :dm_mn_ex_key, :index => true

   belongs_to :ex, :parent_key => :ex, :child_key  => :ex
   belongs_to :mn, :parent_key => :mn, :child_key  => :mn

   has n, :mds, :parent_key => :dn, :child_key => :dn
   has n, :wcs, :parent_key => :dn, :child_key => :dn
end
