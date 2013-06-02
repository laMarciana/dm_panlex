require 'spec_helper'

module DmPanlex
   describe Cu, "Exemplar characters" do
      it "has a property variety (lv)" do
         should have_property :lv
      end
      it "has a property start of character range (c0)" do
         should have_property :c0
      end
      it "has a property end of character range (c1)" do
         should have_property :c1
      end
      it "has a property locale (loc)" do
         should have_property :loc
      end
      it "has a property variable (vb)" do
         should have_property :vb
      end
      it "is not valid without a variety" do
         should validate_presence_of :lv
      end
      it "is not valid without a start of character range" do
         should validate_presence_of :c0
      end
      it "is not valid without an end of character range" do
         should validate_presence_of :c1
      end
      it "is not valid without a variable" do
         should validate_presence_of :vb
      end
   end
end
