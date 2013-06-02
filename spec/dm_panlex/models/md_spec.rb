require 'spec_helper'

module DmPanlex
   describe Md, "Metadata" do
      it "has a property id (md)" do
         should have_property :md
      end
      it "has a property denotation (dn)" do
         should have_property :dn
      end
      it "has a property variable (vb)" do
         should have_property :vb
      end
      it "has a property value" do
         should have_property :vl
      end
      it "is not valid without an id" do
         should validate_presence_of :md
      end
      it "is not valid without a denotation" do
         should validate_presence_of :dn
      end
      it "is not valid without a variable" do
         should validate_presence_of :vb
      end
      it "is not valid without" do
         should validate_presence_of :vl
      end
   end
end
