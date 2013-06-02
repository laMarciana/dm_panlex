module DmPanlex
   class Df
      include DataMapper::Resource

      storage_names[:default] = 'df'

      property :df, Integer, :key => true
      property :mn, Integer, :required => true, :unique_index => :df_mn_key
      property :lv, Integer, :required => true, :unique_index => :df_mn_key
      property :tt, Text, :required => true, :unique_index => :df_mn_key

      belongs_to :lv, :parent_key => :lv, :child_key  => :lv
      belongs_to :mn, :parent_key => :mn, :child_key  => :mn
   end
end
