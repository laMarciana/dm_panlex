class Mn
   include DataMapper::Resource

   storage_names[:default] = 'mn'

   property :mn, Integer, :key => true
   property :ap, Integer, :required => true, :index => true

   belongs_to :ap, :parent_key => :ap, :child_key  => :ap

   has n, :dfs, :parent_key => :mn, :child_key => :mn
   has n, :dms, :parent_key => :mn, :child_key => :mn
   has n, :dns, :parent_key => :mn, :child_key => :mn
   has n, :mis, :parent_key => :mn, :child_key => :mn
end
