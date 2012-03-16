require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TextMsgsController do

  # This should return the minimal set of attributes required to create a valid
  # TextMsg. As you add validations to TextMsg, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TextMsgsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all text_msgs as @text_msgs" do
      text_msg = TextMsg.create! valid_attributes
      get :index, {}, valid_session
      assigns(:text_msgs).should eq([text_msg])
    end
  end

  describe "GET show" do
    it "assigns the requested text_msg as @text_msg" do
      text_msg = TextMsg.create! valid_attributes
      get :show, {:id => text_msg.to_param}, valid_session
      assigns(:text_msg).should eq(text_msg)
    end
  end

  describe "GET new" do
    it "assigns a new text_msg as @text_msg" do
      get :new, {}, valid_session
      assigns(:text_msg).should be_a_new(TextMsg)
    end
  end

  describe "GET edit" do
    it "assigns the requested text_msg as @text_msg" do
      text_msg = TextMsg.create! valid_attributes
      get :edit, {:id => text_msg.to_param}, valid_session
      assigns(:text_msg).should eq(text_msg)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TextMsg" do
        expect {
          post :create, {:text_msg => valid_attributes}, valid_session
        }.to change(TextMsg, :count).by(1)
      end

      it "assigns a newly created text_msg as @text_msg" do
        post :create, {:text_msg => valid_attributes}, valid_session
        assigns(:text_msg).should be_a(TextMsg)
        assigns(:text_msg).should be_persisted
      end

      it "redirects to the created text_msg" do
        post :create, {:text_msg => valid_attributes}, valid_session
        response.should redirect_to(TextMsg.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved text_msg as @text_msg" do
        # Trigger the behavior that occurs when invalid params are submitted
        TextMsg.any_instance.stub(:save).and_return(false)
        post :create, {:text_msg => {}}, valid_session
        assigns(:text_msg).should be_a_new(TextMsg)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TextMsg.any_instance.stub(:save).and_return(false)
        post :create, {:text_msg => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested text_msg" do
        text_msg = TextMsg.create! valid_attributes
        # Assuming there are no other text_msgs in the database, this
        # specifies that the TextMsg created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TextMsg.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => text_msg.to_param, :text_msg => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested text_msg as @text_msg" do
        text_msg = TextMsg.create! valid_attributes
        put :update, {:id => text_msg.to_param, :text_msg => valid_attributes}, valid_session
        assigns(:text_msg).should eq(text_msg)
      end

      it "redirects to the text_msg" do
        text_msg = TextMsg.create! valid_attributes
        put :update, {:id => text_msg.to_param, :text_msg => valid_attributes}, valid_session
        response.should redirect_to(text_msg)
      end
    end

    describe "with invalid params" do
      it "assigns the text_msg as @text_msg" do
        text_msg = TextMsg.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TextMsg.any_instance.stub(:save).and_return(false)
        put :update, {:id => text_msg.to_param, :text_msg => {}}, valid_session
        assigns(:text_msg).should eq(text_msg)
      end

      it "re-renders the 'edit' template" do
        text_msg = TextMsg.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TextMsg.any_instance.stub(:save).and_return(false)
        put :update, {:id => text_msg.to_param, :text_msg => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested text_msg" do
      text_msg = TextMsg.create! valid_attributes
      expect {
        delete :destroy, {:id => text_msg.to_param}, valid_session
      }.to change(TextMsg, :count).by(-1)
    end

    it "redirects to the text_msgs list" do
      text_msg = TextMsg.create! valid_attributes
      delete :destroy, {:id => text_msg.to_param}, valid_session
      response.should redirect_to(text_msgs_url)
    end
  end

end
