require 'spec_helper'

module DmPanlex
   describe Df, "Definition" do
      it "has a property id (df)" do
         should have_property :df
      end
      it "has a property meaning (mn)" do
         should have_property :mn
      end
      it "has a property variety of the text (lv)" do
         should have_property :lv
      end
      it "has a property text (tt)" do
         should have_property :tt
      end
      it "is not valid without an id" do
         should validate_presence_of :df
      end
      it "is not valid without a meaning" do
         should validate_presence_of :mn
      end
      it "is not valid without a variety of the text" do
         should validate_presence_of :lv
      end
      it "is not valid without a text" do
         should validate_presence_of :tt
      end
      it "belongs to a language variety (lv)" do
         should belong_to :lv
      end
      it "belongs to a meaning (mn)" do
         should belong_to :mn
      end
   end
end
