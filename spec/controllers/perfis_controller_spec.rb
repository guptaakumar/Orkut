require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PerfisController do

  def mock_perfil(stubs={})
    @mock_perfil ||= mock_model(Perfil, stubs)
  end
  
  describe "GET index" do
    it "assigns all perfis as @perfis" do
      Perfil.stub!(:find).with(:all).and_return([mock_perfil])
      get :index
      assigns[:perfis].should == [mock_perfil]
    end
  end

  describe "GET show" do
    it "assigns the requested perfil as @perfil" do
      Perfil.stub!(:find).with("37").and_return(mock_perfil)
      get :show, :id => "37"
      assigns[:perfil].should equal(mock_perfil)
    end
  end

  describe "GET new" do
    it "assigns a new perfil as @perfil" do
      Perfil.stub!(:new).and_return(mock_perfil)
      get :new
      assigns[:perfil].should equal(mock_perfil)
    end
  end

  describe "GET edit" do
    it "assigns the requested perfil as @perfil" do
      Perfil.stub!(:find).with("37").and_return(mock_perfil)
      get :edit, :id => "37"
      assigns[:perfil].should equal(mock_perfil)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created perfil as @perfil" do
        Perfil.stub!(:new).with({'these' => 'params'}).and_return(mock_perfil(:save => true))
        post :create, :perfil => {:these => 'params'}
        assigns[:perfil].should equal(mock_perfil)
      end

      it "redirects to the created perfil" do
        Perfil.stub!(:new).and_return(mock_perfil(:save => true))
        post :create, :perfil => {}
        response.should redirect_to(perfil_url(mock_perfil))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved perfil as @perfil" do
        Perfil.stub!(:new).with({'these' => 'params'}).and_return(mock_perfil(:save => false))
        post :create, :perfil => {:these => 'params'}
        assigns[:perfil].should equal(mock_perfil)
      end

      it "re-renders the 'new' template" do
        Perfil.stub!(:new).and_return(mock_perfil(:save => false))
        post :create, :perfil => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested perfil" do
        Perfil.should_receive(:find).with("37").and_return(mock_perfil)
        mock_perfil.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :perfil => {:these => 'params'}
      end

      it "assigns the requested perfil as @perfil" do
        Perfil.stub!(:find).and_return(mock_perfil(:update_attributes => true))
        put :update, :id => "1"
        assigns[:perfil].should equal(mock_perfil)
      end

      it "redirects to the perfil" do
        Perfil.stub!(:find).and_return(mock_perfil(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(perfil_url(mock_perfil))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested perfil" do
        Perfil.should_receive(:find).with("37").and_return(mock_perfil)
        mock_perfil.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :perfil => {:these => 'params'}
      end

      it "assigns the perfil as @perfil" do
        Perfil.stub!(:find).and_return(mock_perfil(:update_attributes => false))
        put :update, :id => "1"
        assigns[:perfil].should equal(mock_perfil)
      end

      it "re-renders the 'edit' template" do
        Perfil.stub!(:find).and_return(mock_perfil(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested perfil" do
      Perfil.should_receive(:find).with("37").and_return(mock_perfil)
      mock_perfil.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the perfis list" do
      Perfil.stub!(:find).and_return(mock_perfil(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(perfis_url)
    end
  end

end
