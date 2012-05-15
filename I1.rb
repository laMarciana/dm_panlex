class I1
   include DataMapper::Resource

   storage_names[:default] = 'i1'

   property :iso1, String, :length => 2, :key => true
   property :iso2, String, :length => 3, :required => true
end
