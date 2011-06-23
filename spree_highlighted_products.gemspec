Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_highlighted_products'
  s.version     = '0.1'
  s.summary     = 'Allows to make a list of highlighted products'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Zorros'
  s.email             = 'info@zorros.be'
  s.homepage          = 'http://zorros.be'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.60.0')
end
