module DmPanlex
   class Mn
      include DataMapper::Resource

      storage_names[:default] = 'mn'

      property :mn, Integer, :key => true
      property :ap, Integer, :required => true, :index => true

      has n, :dfs, :model => 'Df', :child_key => :mn
      has n, :dms, :model => 'Dm', :child_key => :mn
      has n, :dns, :model => 'Dn', :child_key => :mn
      has n, :mis, :model => 'Mi', :child_key => :mn
   end
end
