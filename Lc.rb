class Lc
   include DataMapper::Resource

   storage_names[:default] = 'lc'

   property :lc, String, :length => 3, :key => true
   property :tp, String, :length => 1, :required => true
end
