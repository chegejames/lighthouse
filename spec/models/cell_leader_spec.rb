require 'spec_helper'

describe "CellLeader" do

  context "when name is not valid" do
    it "should have throw an error when name not present" do
      @a = CellLeader.new(:email => "email@email.com", :mobile => "0707070707")
      expect(@a.valid?).to eq(false)
      expect(@a.errors[:name]).to include("can't be blank")
    end
  end


  context "when email is not valid" do
    it "should raise an error when email is not present" do
      @a = CellLeader.new(:name => "name", :mobile => "mobile")
      expect(@a.valid?).to eq(false)
      expect(@a.errors[:email]).to include("can't be blank")
    end

    it "should throw an error when email is not valid" do
      @a = CellLeader.new(:name => "name", :mobile => "mobile", :email => "wrong_email")
      expect(@a.valid?).to eq(false)
      expect(@a.errors[:email]).to include("not a valid email")
    end

    it "should throw an error when email is not unique"


    context "when mobile number is not valid" do
      it "should raise an error" do
        @a = CellLeader.new(:name => "name", :email => "right@email.com")
        expect(@a.valid?).to eq(false)
        expect(@a.errors[:mobile]).to include("can't be blank")
      end
    end


  end

end
