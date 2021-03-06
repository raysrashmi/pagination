Scaffoldhub::Specification.new do

  # Github URL where you will post your scaffold - the specified folder must contain this file
  base_url  'https://github.com/rashmi14yadav/pagination'

  # The name of your new scaffold: should be a single word
  name 'pagination'

  # Metadata about this scaffold - these values are only used for display on scaffoldhub.org:
  metadata do

    # A short paragraph describing what this scaffold does
    description 'The pagination scaffold.'

    # 4x3 aspect ratio screen shot
    screenshot 'pagination_screenshot.png'

    # Tag(s) to help scaffoldhub.org users find your scaffold
    tag 'pagination'

    # Optionally specify an example of a scaffold parameter
    parameter_example 'PER_PAGE'

    # Optionally post a link to an article you write explaining how the scaffold works.
    blog_post 'http://patshaughnessy.net/2011/3/13/view-mapper-for-rails-3-scaffoldhub'
  end

  # Define a model template - this ERB file will be used to generate a new
  # model class with this path & filename: app/models/NAME.rb
  model 'templates/model.rb'

  # Define an ActiveRecord migration template - this ERB file will be used to generate a new
  # migration class with this path & filename: db/migrate/TIMESTAMP_create_PLURAL_NAME.rb
  migration 'templates/migration.rb'

  # Define a controller template - this ERB file will be used to generate a new
  # controller class with this path & filename: app/controllers/PLURAL_NAME.rb
  controller 'templates/controller.rb'

  # You can use "with_options" to specify the same source folder for a series of templates:
  # You can also specify the same destination folder using the :dest option,
  # or just use the :src and :dest options on each keyword.
  with_options :src => 'templates' do
    view '_form.html.erb'
    view 'new.html.erb'
    view 'edit.html.erb'
    view 'index.html.erb'
    view 'show.html.erb'
  end

  # Other keywords available are:

  # Define any other generic template - this ERB file will be used to generate
  # a new file - the dest option is required to indicate where to put the new file
  # template 'xyz.html.erb', :dest => 'path/to/xyz.html'

  # Copy any file without running an ERB transformation
  # file 'xyz.html', :dest => 'path/to/xyz.html'

  # Add a gem to the Gemfile
  gem 'kaminari', '0.12.4'
  # gem "some_other_gem", :group => :test, :git => "git://github.com/rails/rails"
  post_install_message <<MESSAGE
  - Run "bundle install" to install the kaminari gem
  - Run "rake db:migrate" to create your new PLURAL_NAME database table
  - Run your Rails server
  - Open http://localhost:3000/PLURAL_NAME
  ... to see the index page. Now when you create enough NAME records
  you'll see the pagination working!
MESSAGE

end
