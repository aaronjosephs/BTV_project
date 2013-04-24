# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^Production Board/
      "/board?production=yes"

    when /the homepage/
      '/'

    when /board page/
      '/board'

    when /^AboutMe/
      "/"

    when /admin dashboard/
      '/admin'

    when /admin user page/
      '/admin/users'

    when /admin unapproved videos page/
      '/admin/pending/'

    when /admin approved videos page/
      '/admin/videos/'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^(the )?(.*)page$/

###########################################################
        #We seem to be having an editting war here.
        #why does this need to be here and not below
        #where I've placed it?
        #path_components = $1.split(/\s+/)
        #self.send(path_components.push('path').join('_').to_sym)
##########################################################


        # But add mappings of the form: "the ???? page" here.
        # Also accepts just "???? page" or "the ????page".
        # The else case may work for expressions defined with
        # convention over configuration, but I wouldn't rely on it.
        case $2.downcase

        when /^home$/
          '/'

        when /^about$/
          '/about'

        when /^board$/
          board_path

        when /^shows$/
          '/shows'

        when /^admin$/
          '/admin'

        else
          path_components = $2.split(/\s+/)
          self.send(path_components.push('path').join('_').to_sym)
        end

      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
