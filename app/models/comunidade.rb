class Comunidade < ActiveRecord::Base
  belongs_to :perfil
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :micro => "50x50" },
                    :url  => "/assets/comunidades/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/comunidades/:id/:style/:basename.:extension"
  #validates_attachment_presence :avatar
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
  
  named_scope :ultimas_atividades_das_comunidades, :order => 'updated_at desc'
  
end
