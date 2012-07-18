class Panlex::Lv
   include DataMapper::Resource

   storage_names[:default] = 'lv'

   property :lv, Integer, :key => true
   property :lc, String, :length => 3, :required => true, :unique_index => :lv_lc_key
   property :vc, Integer, :min => -32768, :max => 32767, :required => true, :unique_index => :lv_lc_key
   property :sy, Boolean, :required => true, :default => true
   property :am, Boolean, :required => true, :default => true
   property :tt, Text, :required => true

   belongs_to :lc, :parent_key => :lc, :child_key  => :lc

   has n, :avs, :parent_key => :lv, :child_key => :lv, :constraint => :destroy
   has n, :cps, :parent_key => :lv, :child_key => :lv
   has n, :cus, :parent_key => :lv, :child_key => :lv
   has n, :dfs, :parent_key => :lv, :child_key => :lv
   has n, :exs, :parent_key => :lv, :child_key => :lv
end
