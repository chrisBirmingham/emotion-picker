require './lib/emotion/picker/version'

Gem::Specification.new do |spec|
  spec.name = 'emotion-picker'
  spec.version = Emotion::Picker::VERSION
  spec.authors = [
    'Christopher Birmingham'
  ]

  spec.email = [
    'chris.birmingham@hotmail.co.uk'
  ]

  spec.summary = 'Emotion Picker'
  spec.description = 'Program for picking a random emotion'
  spec.homepage = 'https://github.com/chrisBirmingham/emotion-picker'

  spec.files = Dir['lib/**/*'] + ['LICENSE']
  spec.executables << 'emotion-picker'
  spec.license = 'Unlicense'

  spec.required_ruby_version = '>= 2.3'
  spec.add_dependency 'nice-sigint', '~> 0.1.0'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
