require File.expand_path('lib/hypofriend_api_consumer/version', __dir__)

Gem::Specification.new do |spec|
    s.name = "Hypofriend  API Consumer"
    s.version = "1.0.0.pre"
    spec.authors               = ['Udeogu Ifechukwy']
    spec.email                 = ['ifebrand6@gmail.com']
    spec.summary               = "Hypofriend Offers endpoint Consumer "
    spec.description           = "This gem allows  to easily make use of Hypofriendoffer endpoints "
    spec.homepage              = 'https://github.com/ifebrand6/hypofriend-api-consumer'
    spec.license               = 'MIT'
    spec.platform              = Gem::Platform::RUBY
    spec.required_ruby_version = '>= 2.7.0'
  
    spec.files = Dir['README.md', 'LICENSE',
                     'CHANGELOG.md', 'lib/**/*.rb',
                     'lib/**/*.rake',
                     'lokalise_rails.gemspec', '.github/*.md',
                     'Gemfile', 'Rakefile']
    spec.test_files       = Dir['tests/**/*.rb']
    spec.extra_rdoc_files = ['README.md']
    spec.require_paths    = ['lib']
  
    # spec.add_development_dependency 'codecov', '~> 0.2'
    # spec.add_development_dependency 'dotenv', '~> 2.5'
    if ENV['TEST_RAILS_VERSION'].nil?
      spec.add_development_dependency 'rails', '~> 6.1.4'
    else
      spec.add_development_dependency 'rails', ENV['TEST_RAILS_VERSION'].to_s
    end
    spec.add_development_dependency 'rake', '~> 13.0'
    spec.add_development_dependency 'rspec', '~> 3.6'
    spec.add_development_dependency 'rubocop', '~> 1.0'
    spec.add_development_dependency 'rubocop-performance', '~> 1.5'
    spec.add_development_dependency 'rubocop-rspec', '~> 2.5.0'
    spec.add_development_dependency 'pry'
  end