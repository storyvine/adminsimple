module Adminsimple
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc 'Generate theme sass based on the dark theme.'
      source_root File.expand_path('../../../../', __FILE__)

      def copy_initializer_to_app
        copy_file "config/initializers/adminsimple.rb"
      end
    end
  end
end


