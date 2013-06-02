require 'spec_helper'

module DmPanlex
   describe Wcex, "Word classification expression" do
      it "has a property expression (ex)" do
         should have_property :ex
      end
      it "has a property text (tt)" do
         should have_property :tt
      end
      it "is not valid without an expression" do
         should validate_presence_of :ex
      end
      it "is not valid without a text" do
         should validate_presence_of :tt
      end
      it "has many word clasifications (wc)" do
         should have_many :wcs
      end
   end
end
