class Ap
   include DataMapper::Resource

   storage_names[:default] = 'ap'

   property :ap, Integer, :key => true
   property :dt, Date, :required => true, :default => "('now'::text)::date"
   property :tt, Text, :required => true, :unique_index => true
   property :ur, Text
   property :bn, Text
   property :au, Text
   property :ti, Text
   property :pb, Text
   property :yr, Integer, :min => -32768, :max => 32767
   property :uq, Integer, :min => -32768, :max => 32767, :required => true
   property :ui, Integer, :min => -32768, :max => 32767
   property :ul, Text
   property :li, String, :length => 2
   property :ip, Text
   property :co, Text
   property :ad, Text
end
