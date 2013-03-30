require 'spec_helper'

module Panlex
   describe Lc, "Language code" do
      it "has a property code (lc)" do
         should have_property :lc
      end
      it "has a property code type (tp)" do
         should have_property :tp
      end
      it "is not valid without a code" do
         should validate_presence_of :lc
      end
      it "is not valid without a code type" do
         should validate_presence_of :tp
      end
      it "has many language varieties (lv)" do
         should have_many :lvs
      end
      it "has many iso codes (i1)" do
         should have_many :i1s
      end
   end
end
