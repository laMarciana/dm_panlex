require 'spec_helper'

module DmPanlex
   describe I1, "Iso codes" do
      it "has a property iso1 (iso1)" do
         should have_property :iso1
      end
      it "has a property iso3 (iso3)" do
         should have_property :iso3
      end
   end
end
