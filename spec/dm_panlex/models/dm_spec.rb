require 'spec_helper'

module DmPanlex
   describe Dm, "Domain descriptors" do
      it "has a property id (dm)" do
         should have_property :dm
      end
      it "has a property meaning (mn)" do
         should have_property :mn
      end
      it "has a property expression (ex)" do
         should have_property :ex
      end
      it "is not valid without an id" do
         should validate_presence_of :dm
      end
      it "is not valid without a meaning" do
         should validate_presence_of :mn
      end
      it "is not valid without an expression" do
         should validate_presence_of :ex
      end
   end
end
