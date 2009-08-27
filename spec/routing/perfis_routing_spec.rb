require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PerfisController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "perfis", :action => "index").should == "/perfis"
    end
  
    it "maps #new" do
      route_for(:controller => "perfis", :action => "new").should == "/perfis/new"
    end
  
    it "maps #show" do
      route_for(:controller => "perfis", :action => "show", :id => "1").should == "/perfis/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "perfis", :action => "edit", :id => "1").should == "/perfis/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "perfis", :action => "create").should == {:path => "/perfis", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "perfis", :action => "update", :id => "1").should == {:path =>"/perfis/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "perfis", :action => "destroy", :id => "1").should == {:path =>"/perfis/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/perfis").should == {:controller => "perfis", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/perfis/new").should == {:controller => "perfis", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/perfis").should == {:controller => "perfis", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/perfis/1").should == {:controller => "perfis", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/perfis/1/edit").should == {:controller => "perfis", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/perfis/1").should == {:controller => "perfis", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/perfis/1").should == {:controller => "perfis", :action => "destroy", :id => "1"}
    end
  end
end
