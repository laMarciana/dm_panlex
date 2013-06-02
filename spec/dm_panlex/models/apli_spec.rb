require 'spec_helper'

module DmPanlex
   describe Apli, "Approver license" do
      it "has a property id (id)" do
         should have_property :id
      end
      it "has a property type code (li)" do
         should have_property :li
      end
      it "has a property text of the type's PanLex expression (pl)" do
         should have_property :pl
      end
      it "is not valid without an id" do
         should validate_presence_of :id
      end
      it "is not valid without a type code" do
         should validate_presence_of :li
      end
      it "is not valid without a text of the type's PanLex expression" do
         should validate_presence_of :pl
      end
      it "has many approvers (ap)" do
         should have_many :aps
      end
   end
end
