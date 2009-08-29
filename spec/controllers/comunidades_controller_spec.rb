require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ComunidadesController do

  def mock_comunidade(stubs={})
    @mock_comunidade ||= mock_model(Comunidade, stubs)
  end
  
  describe "GET index" do
    it "assigns all comunidades as @comunidades" do
      Comunidade.stub!(:find).with(:all).and_return([mock_comunidade])
      get :index
      assigns[:comunidades].should == [mock_comunidade]
    end
  end

  describe "GET show" do
    it "assigns the requested comunidade as @comunidade" do
      Comunidade.stub!(:find).with("37").and_return(mock_comunidade)
      get :show, :id => "37"
      assigns[:comunidade].should equal(mock_comunidade)
    end
  end

  describe "GET new" do
    it "assigns a new comunidade as @comunidade" do
      Comunidade.stub!(:new).and_return(mock_comunidade)
      get :new
      assigns[:comunidade].should equal(mock_comunidade)
    end
  end

  describe "GET edit" do
    it "assigns the requested comunidade as @comunidade" do
      Comunidade.stub!(:find).with("37").and_return(mock_comunidade)
      get :edit, :id => "37"
      assigns[:comunidade].should equal(mock_comunidade)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created comunidade as @comunidade" do
        Comunidade.stub!(:new).with({'these' => 'params'}).and_return(mock_comunidade(:save => true))
        post :create, :comunidade => {:these => 'params'}
        assigns[:comunidade].should equal(mock_comunidade)
      end

      it "redirects to the created comunidade" do
        Comunidade.stub!(:new).and_return(mock_comunidade(:save => true))
        post :create, :comunidade => {}
        response.should redirect_to(comunidade_url(mock_comunidade))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved comunidade as @comunidade" do
        Comunidade.stub!(:new).with({'these' => 'params'}).and_return(mock_comunidade(:save => false))
        post :create, :comunidade => {:these => 'params'}
        assigns[:comunidade].should equal(mock_comunidade)
      end

      it "re-renders the 'new' template" do
        Comunidade.stub!(:new).and_return(mock_comunidade(:save => false))
        post :create, :comunidade => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested comunidade" do
        Comunidade.should_receive(:find).with("37").and_return(mock_comunidade)
        mock_comunidade.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :comunidade => {:these => 'params'}
      end

      it "assigns the requested comunidade as @comunidade" do
        Comunidade.stub!(:find).and_return(mock_comunidade(:update_attributes => true))
        put :update, :id => "1"
        assigns[:comunidade].should equal(mock_comunidade)
      end

      it "redirects to the comunidade" do
        Comunidade.stub!(:find).and_return(mock_comunidade(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(comunidade_url(mock_comunidade))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested comunidade" do
        Comunidade.should_receive(:find).with("37").and_return(mock_comunidade)
        mock_comunidade.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :comunidade => {:these => 'params'}
      end

      it "assigns the comunidade as @comunidade" do
        Comunidade.stub!(:find).and_return(mock_comunidade(:update_attributes => false))
        put :update, :id => "1"
        assigns[:comunidade].should equal(mock_comunidade)
      end

      it "re-renders the 'edit' template" do
        Comunidade.stub!(:find).and_return(mock_comunidade(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested comunidade" do
      Comunidade.should_receive(:find).with("37").and_return(mock_comunidade)
      mock_comunidade.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the comunidades list" do
      Comunidade.stub!(:find).and_return(mock_comunidade(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(comunidades_url)
    end
  end

end
