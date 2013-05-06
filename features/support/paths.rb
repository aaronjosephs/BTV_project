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

    when /the home page/
      '/'

    when /the homepage/
      '/'

    when /the about page/
      '/about'

    when /the shows page/
      '/shows'

    when /board page/
      '/board'

    when /^AboutMe/
      "/"

    when /admin dashboard/
      admin_root_path
    when /admin users? page$/
      admin_users_path
    when /admin user page for "(.*)"$/
      admin_user_path(User.where("name = ?", $1).first)
    when /admin unapproved videos page/
      admin_pending_videos_path
    when /admin approved videos page/
      admin_videos_path

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^(the )?(.*)page$/

        #Something about git's auto-merging gave what I had here problems.

        path_components = $2.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)

      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
