class Dn
   include DataMapper::Resource

   storage_names[:default] = 'dn'

   property :dn, Integer, :key => true
   property :mn, Integer, :required => true, :unique_index => :dm_mn_ex_key, :index => true
   property :ex, Integer, :required => true, :unique_index => :dm_mn_ex_key, :index => true
end
