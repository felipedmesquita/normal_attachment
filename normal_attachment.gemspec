Gem::Specification.new do |s|
  s.name          = "Normal Attachment"
  s.version       = "0.0.1"
  s.authors       = ["Felipe Mesquita"]
  s.email         = "felipemesquita@hey.com"
  s.summary       = %q{Simpler attachment for using ActiveStorage with Solidus}
  s.description   = %q{Ignores all styles and compatibility with paperclip}
  s.homepage      = "https://github.com/felipedmesquita/normal_attachment"
  s.license       = "MIT"

  s.metadata["source_code_uri"] = "https://github.com/felipedmesquita/normal_attachment"

  s.files         = Dir["lib/**/*"]
  s.test_files    = Dir["test/**/*"]

  s.add_development_dependency "minitest", "~> 5.0"
end
