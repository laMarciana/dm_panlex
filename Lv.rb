class Lv
   include DataMapper::Resource

   storage_names[:default] = 'lv'

   property :lv, Integer, :key => true
   property :lc, String, :length => 3, :required => true, :unique_index => :lv_lc_key
   property :vc, Integer, :min => -32768, :max => 32767, :required => true, :unique_index => :lv_lc_key
   property :sy, Boolean, :required => true, :default => true
   property :am, Boolean, :required => true, :default => true
   property :tt, Text, :required => true
end
