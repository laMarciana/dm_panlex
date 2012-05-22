class Us
   include DataMapper::Resource

   storage_names[:default] = 'us'

   property :us, Integer, :key => true
   property :created_at, Date, :field => 'dt', :required => true
   property :nm, Text
   property :al, Text, :required => true, :unique_index => true
   property :sm, Text
   property :ht, Text
   property :ok, Boolean, :required => true, :default => false
   property :ad, Boolean, :required => true, :default => false
end
