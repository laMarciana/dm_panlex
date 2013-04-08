require 'spec_helper'

module Dm_Panlex
   describe Ap, "Approvers" do
      it "has a property id (ap)" do
         should have_property :ap
      end
      it "has a property registration date (created_at)" do
         should have_property :created_at
      end
      it "has a property label (tt)" do
         should have_property :tt
      end
      it "has a property URI (ur)" do
         should have_property :ur
      end
      it "has a property ISBN (bn)" do
         should have_property :bn
      end
      it "has a property author (au)" do
         should have_property :au
      end
      it "has a property title (ti)" do
         should have_property :ti
      end
      it "has a property monograph publisher or serial title, volume, and page range (pb)" do
         should have_property :pb
      end
      it "has a property year of publication (yr)" do
         should have_property :yr
      end
      it "has a property quality in editor's judgement (uq)" do
         should have_property :uq
      end
      it "has a property numeric ID specified by the user (ui)" do
         should have_property :ui
      end
      it "has a property miscellaneous information (ul)" do
         should have_property :ul
      end
      it "has a property type of offered license (li)" do
         should have_property :li
      end
      it "has a property summary of intellectual-property claim (ip)" do
         should have_property :ip
      end
      it "has a property name of apparent intellectual-property claimant (co)" do
         should have_property :co
      end
      it "has a property SMTP address for licensing correspondence (ad)" do
         should have_property :ad
      end
      it "is not valid without an id" do
         should validate_presence_of :ap
      end
      it "is not valid without a registration date" do
         should validate_presence_of :created_at
      end
      it "is not valid without a label" do
         should validate_presence_of :tt
      end
      it "is not valid without a quality in editor's judgement" do
         should validate_presence_of :uq
      end
      it "belongs to an approver license (apli)" do
         should belong_to :apli
      end
      it "has many approver varieties (av)" do
         should have_many :avs
      end
      it "has many meanings (mn)" do
         should have_many :mns
      end
   end
end
