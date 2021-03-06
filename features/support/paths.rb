module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in webrat_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the homepage/
      '/'

    # Add more mappings here.
    # Here is a more fancy example:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    when /^login$/i
      login_path
    when /^logout$/i
      logout_path
    when /^novo usuario$/i
      new_user_path
    when /^editar perfil$/i
      edit_perfil_path(Perfil.first)
    when /^perfil$/i
      perfil_path(@perfil_atual)
    when /^amigos$/i
      amigos_perfil_path(@perfil_atual)
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
