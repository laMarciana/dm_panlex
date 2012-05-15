class Mn
   include DataMapper::Resource

   storage_names[:default] = 'mn'

   property :mn, Integer, :key => true
   property :ap, Integer, :required => true, :index => true
end
