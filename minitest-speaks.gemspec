Gem::Specification.new do |s|
  s.name        = 'minitest-speaks'
  s.version     = '0.0.2'
  s.date        = '2013-11-12'
  s.summary     = "Audio alerts for MiniTest."
  s.description = "Provides audio notifications for MiniTest. MiniTest can talk and say that the tests have completed."
  s.authors     = ["Matt Sayre"]
  s.email       = 'mlsayre@gmail.com'
  s.files       = ["lib/minitest-speaks.rb"]
  s.homepage    = 'http://github.com/mlsayre/minitest-speaks'
  s.license     = 'MIT'
  s.add_runtime_dependency "speaker", [">=0"]
end
