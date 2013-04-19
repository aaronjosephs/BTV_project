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

    when /^the home\s?page$/
      '/'

    when /board page/
      '/board'

    when /^AboutMe/
      "/"


    when /^the home\s?page$/
      '/'

    when /^the about page$/
      '/about'
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^(the )?(.*)\s?page$/

        # But add mappings of the form: "the ???? page" here.
        # Also accepts just "???? page" or "the ????page".
        # The else case may work for expressions defined with
        # convention over configuration, but I wouldn't rely on it.
        case $2

        when /Home/i
          '/'

        when /About/i
          '/about'

        when /Board/i
          board_path

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
