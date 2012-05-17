class Ex
   include DataMapper::Resource

   storage_names[:default] = 'ex'

   property :ex, Integer, :key => true
   property :lv, Integer, :unique_index => :ex_lv_tt_key, :index => true
   property :tt, Text, :unique_index => :ex_lv_tt_key, :index => true
   property :td, Text, :index => true

   belongs_to :lv, :parent_key => :lv, :child_key  => :lv

   has n, :dm, :parent_key => :ex, :child_key => :ex
   has n, :dn, :parent_key => :ex, :child_key => :ex
end
