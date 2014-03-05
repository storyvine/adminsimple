module Adminsimple
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc 'Generate theme sass based on the dark theme.'
      source_root File.expand_path('../templates', __FILE__)

      def copy_initializer
        copy_file "adminsimple.rb", "config/initializers/adminsimple.rb"
      end

      def copy_migrations
        migration_template "create_adminsimple.rb", "db/migrate/create_adminsimple.rb"
      rescue
      end

      def add_routes
        route "mount Adminsimple::Engine => '/admin'"
        route <<-RUBY.strip_heredoc
          scope '/admin' do
              devise_for :admins, path: '', skip: [:registrations, :confirmations], controllers: {sessions: 'adminsimple/devise/sessions', passwords: 'adminsimple/devise/passwords'}
              devise_scope :admin do
                resource :registration, only: [:edit, :update], path: 'profile', controller: 'adminsimple/devise/registrations', as: :admin_registration
              end
            end
        RUBY
      end

      private

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

    end
  end
end


