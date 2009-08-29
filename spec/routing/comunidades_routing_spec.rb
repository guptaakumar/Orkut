require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ComunidadesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "comunidades", :action => "index").should == "/comunidades"
    end
  
    it "maps #new" do
      route_for(:controller => "comunidades", :action => "new").should == "/comunidades/new"
    end
  
    it "maps #show" do
      route_for(:controller => "comunidades", :action => "show", :id => "1").should == "/comunidades/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "comunidades", :action => "edit", :id => "1").should == "/comunidades/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "comunidades", :action => "create").should == {:path => "/comunidades", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "comunidades", :action => "update", :id => "1").should == {:path =>"/comunidades/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "comunidades", :action => "destroy", :id => "1").should == {:path =>"/comunidades/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/comunidades").should == {:controller => "comunidades", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/comunidades/new").should == {:controller => "comunidades", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/comunidades").should == {:controller => "comunidades", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/comunidades/1").should == {:controller => "comunidades", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/comunidades/1/edit").should == {:controller => "comunidades", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/comunidades/1").should == {:controller => "comunidades", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/comunidades/1").should == {:controller => "comunidades", :action => "destroy", :id => "1"}
    end
  end
end
