# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{protoadmin}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy Jackson"]
  s.date = %q{2011-07-16}
  s.description = %q{ProtoAdmin is a Rails 3.1 interface for admin style management tools}
  s.email = %q{jejacks0n@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "LICENSE",
    "app/assets/images/protoadmin/arrow-contract.png",
    "app/assets/images/protoadmin/arrow-expand.png",
    "app/assets/images/protoadmin/background.png",
    "app/assets/images/protoadmin/breadcrumb-separator.png",
    "app/assets/images/protoadmin/flash-messages/alert.png",
    "app/assets/images/protoadmin/flash-messages/error.png",
    "app/assets/images/protoadmin/flash-messages/notice.png",
    "app/assets/images/protoadmin/flash-messages/success.png",
    "app/assets/images/protoadmin/primary-bar-background.png",
    "app/assets/images/protoadmin/primary-bar-separator.png",
    "app/assets/images/protoadmin/quick-search-background.png",
    "app/assets/images/protoadmin/secondary-bar-background.png",
    "app/assets/images/protoadmin/secondary-bar-separator.png",
    "app/assets/images/protoadmin/secondary-bar-user-icon.png",
    "app/assets/images/protoadmin/user-icon.png",
    "app/assets/javascripts/protoadmin.js",
    "app/assets/stylesheets/protoadmin.css",
    "app/assets/stylesheets/protoadmin/aspects/buttons.scss",
    "app/assets/stylesheets/protoadmin/aspects/forms.scss",
    "app/assets/stylesheets/protoadmin/aspects/lists.scss",
    "app/assets/stylesheets/protoadmin/base.scss",
    "app/assets/stylesheets/protoadmin/layout/layout.scss",
    "app/helpers/protoadmin/layout_helper.rb",
    "app/helpers/protoadmin/message_helper.rb",
    "app/models/.gitkeep",
    "app/views/layouts/protoadmin.html.haml",
    "app/views/layouts/protoadmin/_additional_info.html.haml",
    "app/views/layouts/protoadmin/_primary_content.html.haml",
    "app/views/layouts/protoadmin/_primary_control.html.haml",
    "config/engine.rb",
    "config/initializers/protoadmin.rb",
    "config/locales/en.rb",
    "config/locales/en.yml",
    "config/routes.rb",
    "db/schema.rb",
    "db/seeds.rb",
    "lib/protoadmin.rb",
    "lib/protoadmin/config.rb",
    "lib/protoadmin/navigation.rb",
    "lib/protoadmin/responder.rb",
    "protoadmin.gemspec",
    "spec/helpers/protoadmin/layout_helper_spec.rb",
    "spec/helpers/protoadmin/message_helper_spec.rb",
    "spec/spec_helper.rb",
    "vendor/assets/javascripts/head.js",
    "vendor/assets/javascripts/jquery.js",
    "vendor/assets/javascripts/jquery_ujs.js",
    "vendor/assets/javascripts/pjax.js",
    "vendor/assets/javascripts/resourcy.js"
  ]
  s.homepage = %q{https://github.com/jejacks0n/protoadmin}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A nice admin interface for Rails 3.1 (includes generators)}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["= 3.1.0.rc4"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>, ["~> 3.1.0.rc"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<coffee-script>, [">= 0"])
      s.add_runtime_dependency(%q<uglifier>, [">= 0"])
      s.add_runtime_dependency(%q<formtastic>, ["~> 2.0.rc3"])
      s.add_runtime_dependency(%q<navigasmic>, [">= 0"])
      s.add_runtime_dependency(%q<responders>, [">= 0"])
      s.add_development_dependency(%q<thin>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rails3-generators>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug19>, [">= 0"])
      s.add_development_dependency(%q<evergreen>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["= 3.1.0.rc4"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<sass-rails>, ["~> 3.1.0.rc"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<coffee-script>, [">= 0"])
      s.add_dependency(%q<uglifier>, [">= 0"])
      s.add_dependency(%q<formtastic>, ["~> 2.0.rc3"])
      s.add_dependency(%q<navigasmic>, [">= 0"])
      s.add_dependency(%q<responders>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rails3-generators>, [">= 0"])
      s.add_dependency(%q<ruby-debug19>, [">= 0"])
      s.add_dependency(%q<evergreen>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["= 3.1.0.rc4"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<sass-rails>, ["~> 3.1.0.rc"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<coffee-script>, [">= 0"])
    s.add_dependency(%q<uglifier>, [">= 0"])
    s.add_dependency(%q<formtastic>, ["~> 2.0.rc3"])
    s.add_dependency(%q<navigasmic>, [">= 0"])
    s.add_dependency(%q<responders>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rails3-generators>, [">= 0"])
    s.add_dependency(%q<ruby-debug19>, [">= 0"])
    s.add_dependency(%q<evergreen>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
  end
end

