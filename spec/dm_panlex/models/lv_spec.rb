require 'spec_helper'

module DmPanlex
   describe Lv, "Language variety" do
      it "has a property id (lv)" do
         should have_property :lv
      end
      it "has a property ISO 639 code (lc)" do
         should have_property :lc
      end
      it "has a property language-specific id (vc)" do
         should have_property :vc
      end
      it "has a property to show whether the variety permits synonymy (sy)" do
         should have_property :sy
      end
      it "has a property to show whether the variety permits ambiguity (am)" do
         should have_property :am
      end
      it "has a property label (tt)" do
         should have_property :tt
      end
      it "is not valid without an id" do
         should validate_presence_of :lv
      end
      it "is not valid without an ISO 639 code" do
         should validate_presence_of :lc
      end
      it "is not valid without a language-specific id" do
         should validate_presence_of :vc
      end
      it "is not valid without showing whether the variety permits synonymy" do
         should validate_presence_of :sy
      end
      it "is not valid without showing whether the variety permits ambiguity" do
         should validate_presence_of :am
      end
      it "is not valid without a label" do
         should validate_presence_of :tt
      end
      it "belongs to a language code (lc)" do
         should belong_to :lc
      end
      it "has many language approver varieties (av)" do
         should have_many :avs
      end
      it "has many language approved characters (cp)" do
         should have_many :cps
      end
      it "has many language exemplar characters (cu)" do
         should have_many :cus
      end
      it "has many definitions (df)" do
         should have_many :dfs
      end
      it "has many expressions (ex)" do
         should have_many :exs
      end
   end
end
