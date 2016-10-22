module SpreeCarousel
    module Generators
        class InstallGenerator < Rails::Generators::Base
            def add_javascripts
                append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/ninja-slider\n"
            end

            def add_stylesheets
                inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/ninja-slider\n", before: /\*\//, verbose: true
            end

            # def add_migrations
            #   run 'bundle exec rake railties:install:migrations FROM=spree_blog'
            # end

            # def run_migrations
            #   run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
            #   if run_migrations
            #     run 'bundle exec rake db:migrate'
            #   else
            #     puts 'Skipping rake db:migrate, don\'t forget to run it!'
            #   end
            # end

            # source_root File.expand_path('../../../templates', __FILE__)
            #
            # desc "Creates a blog initializer in your application's config/initializers dir"
            #
            # def copy_initializer
            #   template "spree_blog.rb", "config/initializers/spree_blog.rb"
            # end
        end
    end
end
