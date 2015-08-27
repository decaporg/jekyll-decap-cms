# Small plugin to set the 'env' variable based on the environment
module Jekyll
  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      site.config['env'] = ENV['JEKYLL_ENV'] || 'development'
    end
  end
end
