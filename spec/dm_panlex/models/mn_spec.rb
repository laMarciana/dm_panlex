require 'spec_helper'

module DmPanlex
   describe Mn, "Meaning" do
      it "has a property id (mn)" do
         should have_property :mn
      end
      it "has a property approver (ap)" do
         should have_property :ap
      end
      it "is not valid without an id" do
         should validate_presence_of :mn
      end
      it "is not valid without an approver" do
         should validate_presence_of :ap
      end
      it "belongs to an approver (ap)" do
         should belong_to :ap
      end
      it "has many definitions (df)" do
         should have_many :dfs
      end
      it "has many domain descriptors (dm)" do
         should have_many :dms
      end
      it "has many denotations (dn)" do
         should have_many :dns
      end
      it "has many meaning identifier (mi)" do
         should have_many :mis
      end
   end
end
