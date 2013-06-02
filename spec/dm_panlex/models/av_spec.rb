require 'spec_helper'

module DmPanlex
   describe Av, "Approver variety" do
      it "has a property approver (ap)" do
         should have_property :ap
      end
      it "has a property variety (lv)" do
         should have_property :lv
      end
      it "is not valid without an approver" do
         should validate_presence_of :ap
      end
      it "is not valid without a variety" do
         should validate_presence_of :lv
      end
   end
end
