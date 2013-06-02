module DmPanlex
   class Lv
      include DataMapper::Resource

      storage_names[:default] = 'lv'

      property :lv, Integer, :key => true
      property :lc, String, :length => 3, :required => true, :unique_index => :lv_lc_key
      property :vc, Integer, :min => -32768, :max => 32767, :required => true, :unique_index => :lv_lc_key
      property :sy, Boolean, :required => true, :default => true
      property :am, Boolean, :required => true, :default => true
      property :tt, Text, :required => true

      has n, :avs, :model => 'Av', :child_key => :lv, :constraint => :destroy
      has n, :cps, :model => 'Cp', :child_key => :lv
      has n, :cus, :model => 'Cu', :child_key => :lv
      has n, :dfs, :model => 'Df', :child_key => :lv
      has n, :exs, :model => 'Ex', :child_key => :lv
   end
end
