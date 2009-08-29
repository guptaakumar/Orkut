require File.expand_path(File.dirname(__FILE__) + '/seed_helper')

User.destroy_all

User.create_or_update(:id => 1, :username => 'admin'  , :email => 'admin@admin.com'  , :password => 'admin'  , :password_confirmation => 'admin') do |user|
  user.perfil.data_nascimento = Date.today - (rand(10)+20).years
end
User.create_or_update(:id => 2, :username => 'rafael' , :email => 'rafael@admin.com' , :password => 'rafael' , :password_confirmation => 'rafael') do |user|
  user.perfil.data_nascimento = Date.today - (rand(10)+20).years
end
User.create_or_update(:id => 3, :username => 'ricardo', :email => 'ricardo@admin.com', :password => 'ricardo', :password_confirmation => 'ricardo') do |user|
  user.perfil.data_nascimento = Date.today - (rand(10)+20).years
end
User.create_or_update(:id => 4, :username => 'jose'   , :email => 'jose@admin.com'   , :password => 'jose'   , :password_confirmation => 'jose') do |user|
  user.perfil.data_nascimento = Date.today - (rand(10)+20).years
end
User.create_or_update(:id => 5, :username => 'rodolfo', :email => 'rodolfo@admin.com', :password => 'rodolfo', :password_confirmation => 'rodolfo') do |user|
  user.perfil.data_nascimento = Date.today - (rand(10)+20).years
end

