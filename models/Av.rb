class Panlex::Av
   include DataMapper::Resource

   storage_names[:default] = 'av'

   property :ap, Integer, :key => true
   property :lv, Integer, :key => true

   belongs_to :ap, :parent_key => :ap, :child_key => :ap
   belongs_to :lv, :parent_key => :lv, :child_key => :lv
end
