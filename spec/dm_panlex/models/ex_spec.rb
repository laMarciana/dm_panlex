require 'spec_helper'

module DmPanlex
   describe Ex, "Expression" do
      it "has a property id (ex)" do
         should have_property :ex
      end
      it "has a property variety (lv)" do
         should have_property :lv
      end
      it "has a property text (tt)" do
         should have_property :tt
      end
      it "has a property degraded text (td)" do
         should have_property :td
      end
      it "is not valid without an id" do
         should validate_presence_of :ex
      end
      it "is not valid without a variety" do
         should validate_presence_of :lv
      end
      it "is not valid without a text" do
         should validate_presence_of :tt
      end
      it "is not valid without a degraded text" do
         should validate_presence_of :td
      end
      it "belongs to a language variety (lv)" do
         should belong_to :lv
      end
      it "has many denotations (dn)" do
         should have_many :dns
      end
      it "has many domain descriptors (dm)" do
         should have_many :dms
      end
   end
end
