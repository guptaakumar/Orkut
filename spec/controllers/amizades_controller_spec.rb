require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AmizadesController do

  def mock_amizade(stubs={})
    @mock_amizade ||= mock_model(Amizade, stubs)
  end
  
  describe "GET index" do
    it "assigns all amizades as @amizades" do
      Amizade.stub!(:find).with(:all).and_return([mock_amizade])
      get :index
      assigns[:amizades].should == [mock_amizade]
    end
  end

  describe "GET show" do
    it "assigns the requested amizade as @amizade" do
      Amizade.stub!(:find).with("37").and_return(mock_amizade)
      get :show, :id => "37"
      assigns[:amizade].should equal(mock_amizade)
    end
  end

  describe "GET new" do
    it "assigns a new amizade as @amizade" do
      Amizade.stub!(:new).and_return(mock_amizade)
      get :new
      assigns[:amizade].should equal(mock_amizade)
    end
  end

  describe "GET edit" do
    it "assigns the requested amizade as @amizade" do
      Amizade.stub!(:find).with("37").and_return(mock_amizade)
      get :edit, :id => "37"
      assigns[:amizade].should equal(mock_amizade)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created amizade as @amizade" do
        Amizade.stub!(:new).with({'these' => 'params'}).and_return(mock_amizade(:save => true))
        post :create, :amizade => {:these => 'params'}
        assigns[:amizade].should equal(mock_amizade)
      end

      it "redirects to the created amizade" do
        Amizade.stub!(:new).and_return(mock_amizade(:save => true))
        post :create, :amizade => {}
        response.should redirect_to(amizade_url(mock_amizade))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved amizade as @amizade" do
        Amizade.stub!(:new).with({'these' => 'params'}).and_return(mock_amizade(:save => false))
        post :create, :amizade => {:these => 'params'}
        assigns[:amizade].should equal(mock_amizade)
      end

      it "re-renders the 'new' template" do
        Amizade.stub!(:new).and_return(mock_amizade(:save => false))
        post :create, :amizade => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested amizade" do
        Amizade.should_receive(:find).with("37").and_return(mock_amizade)
        mock_amizade.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :amizade => {:these => 'params'}
      end

      it "assigns the requested amizade as @amizade" do
        Amizade.stub!(:find).and_return(mock_amizade(:update_attributes => true))
        put :update, :id => "1"
        assigns[:amizade].should equal(mock_amizade)
      end

      it "redirects to the amizade" do
        Amizade.stub!(:find).and_return(mock_amizade(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(amizade_url(mock_amizade))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested amizade" do
        Amizade.should_receive(:find).with("37").and_return(mock_amizade)
        mock_amizade.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :amizade => {:these => 'params'}
      end

      it "assigns the amizade as @amizade" do
        Amizade.stub!(:find).and_return(mock_amizade(:update_attributes => false))
        put :update, :id => "1"
        assigns[:amizade].should equal(mock_amizade)
      end

      it "re-renders the 'edit' template" do
        Amizade.stub!(:find).and_return(mock_amizade(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested amizade" do
      Amizade.should_receive(:find).with("37").and_return(mock_amizade)
      mock_amizade.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the amizades list" do
      Amizade.stub!(:find).and_return(mock_amizade(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(amizades_url)
    end
  end

end
