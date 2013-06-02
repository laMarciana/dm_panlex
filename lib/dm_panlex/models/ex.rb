module DmPanlex
   class Ex
      include DataMapper::Resource

      storage_names[:default] = 'ex'

      property :ex, Integer, :key => true
      property :lv, Integer, :required => true, :unique_index => :ex_lv_tt_key, :index => true
      property :tt, Text, :required => true, :unique_index => :ex_lv_tt_key, :index => true
      property :td, Text, :required => true, :index => true

      belongs_to :lv, :parent_key => :lv, :child_key  => :lv

      has n, :dms, :parent_key => :ex, :child_key => :ex
      has n, :dns, :parent_key => :ex, :child_key => :ex
   end
end
