source 'http://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# gem 'sqlite3'
gem 'pg'
gem 'mail_form'
gem 'hirb'
gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '5.0.6'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 3.0'
gem 'bcrypt', '~> 3.1.7'

#Added by Brandon Until END
gem 'chosen-rails'
gem 'semantic-ui-sass', github: 'doabit/semantic-ui-sass'

gem 'devise'

gem 'childprocess', '~> 0.5'

gem 'rubyzip', '~> 1.0'

gem 'websocket', '~> 1.0'
gem 'font-awesome-sass'

gem 'bootstrap-sass'
gem 'bootstrap-will_paginate'
gem 'will_paginate'

gem 'haml-rails'
gem 'autoprefixer-rails'
gem 'mailboxer'
gem 'jquery-ui-rails'
gem 'toastr-rails'
gem 'remotipart', github: 'mshibuya/remotipart'
gem 'rails_admin'
gem 'rails_admin_rollincode', '~> 1.0'
gem 'cancancan'
gem 'load_and_authorize_resource'
gem 'normalize-rails'
gem 'binding_of_caller'
gem 'therubyracer'
# gem 'less-rails', git: 'https://github.com/Genkilabs/less-rails' #fix for deprecated Sprockets ImportProcessor
gem 'sprockets', '3.6.3'
gem 'twitter-bootstrap-rails'
gem 'gmaps4rails'
gem 'geocoder'
gem 'paperclip'
gem 'taps'
gem 'browser'
gem 'ahoy_matey'
gem 'chartkick'
gem 'groupdate'
gem 'blazer'
gem 'pghero'
gem 'derailed', group: :development
# Search PDF Gems
# gem 'henkei'
# gem 'algoliasearch-rails'
# gem 'tika-app'
# gem 'dotenv-rails', groups: [:development, :test]
gem 'elasticsearch-model'
gem 'elasticsearch-rails'
# gem 'sidekiq'
#END for Brandon
gem 'rack-mini-profiler'
gem 'memory_profiler'
gem 'docsplit'
gem 'henkei'
gem 'pdfjs_viewer-rails'
gem 'pdf-reader'
gem 'activerecord-session_store'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :production do
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'better_errors'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
