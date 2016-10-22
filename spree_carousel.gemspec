# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_carousel/version'

Gem::Specification.new do |spec|
    spec.name = 'spree_carousel'
    spec.version       = SpreeCarousel::VERSION
    spec.authors       = ['Rodrigo Vega']
    spec.email         = ['vegarodrigo20@hotmail.com']

    spec.summary       = 'Add Carousel to each page of the your spree store'
    spec.description   =
        spec.homepage = 'https://github.com/shigox23/spree_carousel'
    spec.license       = 'MIT'

    # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
    # to allow pushing to a single host or delete this section to allow pushing to any host.
    # if spec.respond_to?(:metadata)
    #     spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
    # else
    #     raise 'RubyGems 2.0 or newer is required to protect against ' \
    #       'public gem pushes.'
    # end
    #
    # spec.files = `git ls-files -z`.split("\x0").reject do |f|
    #     f.match(%r{^(test|spec|features)/})
    # end
    # spec.bindir        = 'exe'
    # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    # spec.require_paths = ['lib']
    #
    # spec.add_development_dependency 'bundler', '~> 1.13'
    # spec.add_development_dependency 'rake', '~> 10.0'
    # spec.add_development_dependency 'rspec', '~> 3.0'
    s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.md']
    s.test_files = Dir['spec/**/*']

    s.require_path = 'lib'
    s.requirements << 'none'

    s.add_dependency 'spree_core', '~>3.1.0'
    s.add_development_dependency 'rspec-rails', '~> 3.3.0'
    s.add_development_dependency 'rspec-collection_matchers'
end
