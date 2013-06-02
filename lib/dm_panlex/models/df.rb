module DmPanlex
   class Df
      include DataMapper::Resource

      storage_names[:default] = 'df'

      property :df, Integer, :key => true
      property :mn, Integer, :required => true, :unique_index => :df_mn_key
      property :lv, Integer, :required => true, :unique_index => :df_mn_key
      property :tt, Text, :required => true, :unique_index => :df_mn_key

   end
end
