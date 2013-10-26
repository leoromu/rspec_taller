equire 'spec_helper'

describe User do
  	it "is valid with username" do
	user=FactoryGirl.build(:user)
	user.username="chuk_rules"
	expect(user).to be_valid
end
	it "is valid with first_name" do
		user=FactoryGirl.build(:user)
		user.first_name="Chuck"
		user.should be_valid
		end
	it "is valid with las name"
	it "is valid with wmail"

	it "is invalid without username" do
		user= user.new
		user.should be_invalid
	end

	it "is invalidate without first_name" do
		user = FactoryGirl.build(:user)
end
