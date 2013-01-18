source 'http://rubygems.org'

gemspec

# used by the dummy application
gem 'rails', '>= 3.2.8'
gem 'sqlite3'
gem 'utensils', github: 'modeset/utensils'

group :development, :test do
  gem 'rspec-rails'
  gem 'teabag'

  # required for travis-ci and linux environments
  gem 'phantomjs-linux' if RUBY_PLATFORM =~ /linux/
end
