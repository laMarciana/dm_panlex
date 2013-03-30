require 'spec_helper'

module Panlex
   describe I1, "Iso codes" do
      it "has a property iso1 (iso1)" do
         should have_property :iso1
      end
      it "has a property iso3 (iso3)" do
         should have_property :iso3
      end
      it "belongs to a language code (lc)" do
         should belong_to :lc
      end
   end
end
