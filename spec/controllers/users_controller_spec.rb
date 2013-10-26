require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should render_template :new
    end
  end

  describe "POST'create'" do
    let(:user){FactoryGirl.create(:user)}
    context "whith valid date" do
    it "saves record in the datebase " do
      expect{
        post :create, user: FactoryGirl.attributes_for(:user)
      }.to change(User,:conut).by(1)
         
    end

    it"redirect to :show" do
      User.any_instanceuser.stud(save: true)
      expect{
        post :create,
        user: FactoryGirl.attributes_for(:user)
      }.to redirect_to_user_path(assigns(:user))      
    end
  end

    context"whith invalid date" do
      it "doesnt save record in thr database" do |
        expect{|
          post :create,
          user: FactoryGirl.attributes_for(:invalid_user)
        }
        .to_not change(User,:count).by (1)
        
      end
  end



  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
  end

it: "render :new template" do |

  post :create,
  user: FactoryGirl.attributes_for(:invalid_user)
  response.should be_success
  
end

end