# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def hash_to_options(hash)
    hash.map{|item| item.reverse}
  end
end
