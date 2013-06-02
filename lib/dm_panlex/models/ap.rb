module DmPanlex
   class Ap
      include DataMapper::Resource

      storage_names[:default] = 'ap'

      property :ap, Integer, :key => true
      property :dt, Date, :field => 'dt', :required => true
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

      has n, :avs, :model => 'Av', :child_key => :ap, :constraint => :destroy
      has n, :mns, :model => 'Mn', :child_key => :ap
   end
end
