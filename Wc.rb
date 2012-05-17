class Wc
   include DataMapper::Resource

   storage_names[:default] = 'wc'

   property :wc, Integer, :key => true
   property :dn, Integer, :required => true, :unique_index => :wc_dn_key
   property :ex, Integer, :required => true, :unique_index => :wc_dn_key

   belongs_to :dn, :parent_key => :dn, :child_key  => :dn
   belongs_to :wcex, :parent_key => :ex, :child_key  => :ex
end
