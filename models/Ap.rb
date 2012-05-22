class Ap
   include DataMapper::Resource

   storage_names[:default] = 'ap'

   property :ap, Integer, :key => true
   property :created_at, Date, :field => 'dt', :required => true
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
   property :ip, Text
   property :co, Text
   property :ad, Text

   belongs_to :apli, :parent_key => :li, :child_key  => :li

   has n, :avs, :parent_key => :ap, :child_key => :ap, :constraint => :destroy
   has n, :mns, :parent_key => :ap, :child_key => :ap
end
