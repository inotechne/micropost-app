require 'spec_helper'

describe User do
  context "Database Schema" do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:email).of_type(:string) }
  end

  context "Associations" do
    it { should have_many(:relationships) }
    it { should have_many(:following_users).through(:relationships) }
    it { should have_many(:reverse_relationships).class_name('Relationship') }
    it { should have_many(:follower_users).through(:reverse_relationships) }
  end

  context "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end

  context "Methods" do
  end

  context "Create new User" do
    before(:each) do
      password = Forgery(:basic).password
      @user = User.new(:name => Forgery(:name).first_name,
                       :email => Forgery(:internet).email_address,
                       :password => password,
                       :password_confirmation => password)
    end

    it "when name is not present" do
      @user.name = " "
      @user.should_not be_valid
      @user.should have(1).error_on(:name)
    end

    it "when email is not present" do
      @user.email = " "
      @user.should_not be_valid
      @user.should have(2).error_on(:email)
    end

    it "when password is not present" do
      @user.password = @user.password_confirmation = " "
      @user.should_not be_valid
      @user.should have(1).error_on(:password)
    end
  end
end
