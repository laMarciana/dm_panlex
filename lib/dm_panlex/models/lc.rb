module DmPanlex
   class Lc
      include DataMapper::Resource

      storage_names[:default] = 'lc'

      property :lc, String, :length => 3, :key => true
      property :tp, String, :length => 1, :required => true

      has n, :i1s, :model => 'I1', :child_key => :iso3
      has n, :lvs, :model => 'Lv', :child_key => :lc
   end
end
