class Panlex::Cu
   include DataMapper::Resource

   storage_names[:default] = 'cu'

   #DataMapper requires a primary Key. It's not present in Panlex original database, but we assume it's the :cu_c0_key unique index. In MySQL a 'Text' field can't be a PK, so we change 'loc' and 'vb' to be 'String'
   property :lv, Integer, :key => true, :required => true, :unique_index => [:cu_c0_key, :cu_c1_key]
   property :c0, String, :length => 5, :key => true, :required => true, :unique_index => :cu_c0_key
   property :c1, String, :length => 5, :required => true, :unique_index => :cu_c1_key
   property :loc, String, :length => 255, :key => true, :unique_index => [:cu_c0_key, :cu_c1_key]
   property :vb, String, :length => 255, :key => true, :required => true, :unique_index => [:cu_c0_key, :cu_c1_key]

   belongs_to :lv, :parent_key => :lv, :child_key  => :lv
end 
