require 'spec_helper'

module Panlex
   describe Us, "User" do
      it "has a property id (us)" do
         should have_property :us
      end
      it "has a property enrollment date (created_at)" do
         should have_property :created_at
      end
      it "has a property name (nm)" do
         should have_property :nm
      end
      it "has a property alias (al)" do
         should have_property :al
      end
      it "has a property SMPT (Internet mail) address (sm)" do
         should have_property :sm
      end
      it "has a property HTTP (World Wide Web) address (URL) (ht)" do
         should have_property :ht
      end
      it "has a property to show whether it is approved (ok)" do
         should have_property :ok
      end
      it "has a property to show whether it is a Panlex superuser (ad)" do
         should have_property :ad
      end
      it "is not valid without an id" do
         should validate_presence_of :us
      end
      it "is not valid without an enrollment date" do
         should validate_presence_of :created_at
      end
      it "is not valid without an alias" do
         should validate_presence_of :al
      end
      it "is not valid without showing whether it is approved" do
         should validate_presence_of :ok
      end
      it "is not valid without showing whether it is a Panlex superuser" do
         should validate_presence_of :ad
      end
   end
end
