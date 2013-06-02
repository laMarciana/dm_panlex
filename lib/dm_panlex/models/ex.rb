module DmPanlex
   class Ex
      include DataMapper::Resource

      storage_names[:default] = 'ex'

      property :ex, Integer, :key => true
      property :lv, Integer, :required => true, :unique_index => :ex_lv_tt_key, :index => true
      property :tt, Text, :required => true, :unique_index => :ex_lv_tt_key, :index => true
      property :td, Text, :required => true, :index => true

      has n, :dms, :model => 'Dm', :child_key => :ex
      has n, :dns, :model => 'Dn', :child_key => :ex
   end
end
