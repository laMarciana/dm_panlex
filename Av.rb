class Av
   include DataMapper::Resource

   storage_names[:default] = 'av'

   property :ap, Integer, :key => true
   property :lv, Integer, :key => true
end
