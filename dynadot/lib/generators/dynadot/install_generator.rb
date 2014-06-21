require 'rails/generators/base'
require 'securerandom'

module Dynadot
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates dynadot config file for dynadot api key"
      class_option :orm

      def copy_initializer
        template "dynadot.rb", "config/initializers/dynadot.rb"
        puts "Add your dynadot key to your dynadot config file in config/dynadot.rb"
      end

      def rails_4?
        Rails::VERSION::MAJOR == 4
      end
    end
  end
end
