class Apli
   include DataMapper::Resource

   storage_names[:default] = 'apli'

   property :id, Integer, :key => true
   property :li, String, :length => 2, :required => true, :unique_index => true
   property :pl, Text, :unique_index => true
end
