require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AmizadesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "amizades", :action => "index").should == "/amizades"
    end
  
    it "maps #new" do
      route_for(:controller => "amizades", :action => "new").should == "/amizades/new"
    end
  
    it "maps #show" do
      route_for(:controller => "amizades", :action => "show", :id => "1").should == "/amizades/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "amizades", :action => "edit", :id => "1").should == "/amizades/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "amizades", :action => "create").should == {:path => "/amizades", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "amizades", :action => "update", :id => "1").should == {:path =>"/amizades/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "amizades", :action => "destroy", :id => "1").should == {:path =>"/amizades/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/amizades").should == {:controller => "amizades", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/amizades/new").should == {:controller => "amizades", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/amizades").should == {:controller => "amizades", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/amizades/1").should == {:controller => "amizades", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/amizades/1/edit").should == {:controller => "amizades", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/amizades/1").should == {:controller => "amizades", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/amizades/1").should == {:controller => "amizades", :action => "destroy", :id => "1"}
    end
  end
end
