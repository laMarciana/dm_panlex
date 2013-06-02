require 'spec_helper'

module DmPanlex
   describe Cp, "Approved characters" do
      it "has a property variety (lv)" do
         should have_property :lv
      end
      it "has a property start of character range (c0)" do
         should have_property :c0
      end
      it "has a property end of character range (c1)" do
         should have_property :c1
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
      it "belongs to a language variety (lv)" do
         should belong_to :lv
      end
   end
end
