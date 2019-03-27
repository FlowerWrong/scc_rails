$LOAD_PATH.push File.expand_path('/Users/kingyang/dev/ruby/starup/2/chemtrails/lib', __dir__)

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'scc_rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'scc_rails'
  spec.version     = SccRails::VERSION
  spec.authors     = ['FlowerWrong']
  spec.email       = ['sysuyangkang@gmail.com']
  spec.homepage    = 'https://github.com/FlowerWrong/scc_rails'
  spec.summary     = 'spring cloud config client for rails'
  spec.description = 'spring cloud config client for rails with /refresh endpoint and init to $cloud_env'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org/'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '~> 5.2.2', '>= 5.2.2.1'
  spec.add_dependency 'scc_ruby', '~> 0.1'

  spec.add_development_dependency 'sqlite3', '~> 1.4'
end
