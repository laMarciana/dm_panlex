require 'spec_helper'

module Dm_Panlex
   describe Dn, "Denotation" do
      it "has a property id (dn)" do
         should have_property :dn
      end
      it "has a property meaning (mn)" do
         should have_property :mn
      end
      it "has a property expression (ex)" do
         should have_property :ex
      end
      it "is not valid without an id" do
         should validate_presence_of :dn
      end
      it "is not valid without a meaning" do
         should validate_presence_of :mn
      end
      it "is not valid without an expression" do
         should validate_presence_of :ex
      end
      it "belongs to an expression (ex)" do
         should belong_to :ex
      end
      it "belongs to a meaning (mn)" do
         should belong_to :mn
      end
      it "has many metadata (md)" do
         should have_many :mds
      end
      it "has many word classifications (wc)" do
         should have_many :wcs
      end
   end
end
