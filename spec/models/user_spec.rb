require File.dirname(__FILE__) + '/../spec_helper'

describe User do

  should_have_one :perfil

  it "should create a profile" do
    user = User.create! :username => "ricardo", :email => "ricardo@gmail.com", :password => "almeida", :password_confirmation => "almeida"
    user.perfil.should_not be_nil
  end
end
