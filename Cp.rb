class Cp
   include DataMapper::Resource

   storage_names[:default] = 'cp'

   property :lv, Integer, :key => true, :unique_index => :cp_lv_key
   property :c0, String, :length => 5, :key => true
   property :c1, String, :length => 5, :required => true, :unique_index => :cp_lv_key

   belongs_to :lv, :parent_key => :lv, :child_key  => :lv#, :key => true
end
