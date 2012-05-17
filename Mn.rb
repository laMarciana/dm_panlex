class Mn
   include DataMapper::Resource

   storage_names[:default] = 'mn'

   property :mn, Integer, :key => true
   property :ap, Integer, :required => true, :index => true

   belongs_to :ap, :parent_key => :ap, :child_key  => :ap

   has n, :df, :parent_key => :mn, :child_key => :mn
   has n, :dm, :parent_key => :mn, :child_key => :mn
   has n, :dn, :parent_key => :mn, :child_key => :mn
   has n, :mi, :parent_key => :mn, :child_key => :mn
end
