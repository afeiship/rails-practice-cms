module Jem
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Creates Jem initializer for your application"

      ## arguments list:
      argument :config_name, :type=>:string, :default=>"jem_config"

      def copy_initializer
        template "jem_initializer.rb", "config/initializers/#{config_name}.rb"
        puts "Install complete! Truly Outrageous!"
      end
    end
  end
end