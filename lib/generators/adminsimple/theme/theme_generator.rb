module Adminsimple
  module Generators
    class ThemeGenerator < Rails::Generators::NamedBase

      desc 'Generate theme sass based on the dark theme.'
      source_root File.expand_path('../templates', __FILE__)

      def create_component_dir
        empty_directory("app/assets/components/admin/themes/")
      end

      def create_theme_sass
        template "dark.sass", "app/assets/components/admin/themes/_#{file_name}.sass"
      end

    end
  end
end

