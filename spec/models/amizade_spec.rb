require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Amizade do
  should_validate_presence_of :amigo, :perfil
  should_belong_to :perfil
  should_belong_to :amigo, :class_name => 'Perfil'
end
