require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Perfil do
  should_belong_to :user
  should_validate_presence_of :user, :nome

  should_have_many :amizades
  should_have_many :amigos, :through => :amizades
end
