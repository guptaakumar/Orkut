require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Comunidade do
  should_belong_to :perfil
  should_have_attached_file(:avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :micro => "50x50" },
                    :url  => "/assets/comunidades/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/comunidades/:id/:style/:basename.:extension")
end