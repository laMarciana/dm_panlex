require 'spec_helper'

module DmPanlex
   describe Mi, "Meaning identifier" do
      it "has a property meaning (mn)" do
         should have_property :mn
      end
      it "has a property text (tt)" do
         should have_property :tt
      end
      it "is not valid without a meaning" do
         should validate_presence_of :mn
      end
      it "is not valid without a text" do
         should validate_presence_of :tt
      end
   end
end
