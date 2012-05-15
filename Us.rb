class Us
   include DataMapper::Resource

   storage_names[:default] = 'us'

   property :us, Integer, :key => true
   property :dt, Date, :required => true, :default => "('now'::text)::date"
   property :nm, Text
   property :al, Text, :required => true, :unique_index => true
   property :sm, Text
   property :ht, Text
   property :ok, Boolean, :required => true, :default => true
   property :ad, Boolean, :required => true, :default => true
end
