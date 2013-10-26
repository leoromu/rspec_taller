class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(params[valid_attributes])
    if @user.save
    else
        render :new
  end
it "redirect :show" do 
  expect{
    post :create
    user: FactoryGirl.attributes_for(:user)
  }.to redirect_to user_path(id=)


  
end

end

  def show
  end

  protected
    def valid_attributes
      params.require(:user),permit(:usename,:first_name)
end
