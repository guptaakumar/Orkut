require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Perfil do
  should_belong_to :user
  should_validate_presence_of :user, :nome
end
