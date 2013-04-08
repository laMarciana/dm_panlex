require 'spec_helper'

module Dm_Panlex
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
      it "belongs to a denotation (dn)" do
         should belong_to :dn
      end
      it "belongs to a word class expressions (wcex)" do
         should belong_to :wcex
      end
   end
end
