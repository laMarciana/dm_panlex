class Lc
   include DataMapper::Resource

   storage_names[:default] = 'lc'

   property :lc, String, :length => 3, :key => true
   property :tp, String, :length => 1, :required => true

   has n, :i1, :parent_key => :lc, :child_key => :iso3
   has n, :lv, :parent_key => :lc, :child_key => :lc
end
