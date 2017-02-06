

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

require 'rails/commands/server'

module Rails
  class Server
    def default_options
      super.merge({Port: 8000, Host: '10.19.5.237'})
    end
  end
end
