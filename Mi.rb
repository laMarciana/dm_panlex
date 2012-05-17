class Mi
   include DataMapper::Resource

   storage_names[:default] = 'mi'

   property :mn, Integer, :key => true
   property :tt, Text, :required => true

   belongs_to :mn, :parent_key => :mn, :child_key  => :mn
end
