class Wcex
   include DataMapper::Resource

   storage_names[:default] = 'wcex'

   property :ex, Integer, :key => true
   property :tt, Text, :required => true, :unique_index => true
end
