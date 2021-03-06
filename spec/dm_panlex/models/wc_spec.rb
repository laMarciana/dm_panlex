require 'spec_helper'

module DmPanlex
   describe Wc, "Word classification" do
      it "has a property id (wc)" do
         should have_property :wc
      end
      it "has a property denotation (dn)" do
         should have_property :dn
      end
      it "has a property Panlex word-class expression (ex)" do
         should have_property :ex
      end
      it "is not valid without an id" do
         should validate_presence_of :wc
      end
      it "is not valid without a denotation" do
         should validate_presence_of :dn
      end
      it "is not valid without a Panlex word-class expression" do
         should validate_presence_of :ex
      end
   end
end
