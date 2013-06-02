module DmPanlex
   class Md
      include DataMapper::Resource

      storage_names[:default] = 'md'

      property :md, Integer, :key => true
      property :dn, Integer, :required => true, :unique_index => :md_dn_key
      property :vb, Text, :required => true, :unique_index => :md_dn_key
      property :vl, Text, :required => true, :unique_index => :md_dn_key

      belongs_to :dn, :parent_key => :dn, :child_key  => :dn
   end
end
