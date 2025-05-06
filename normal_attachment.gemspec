Gem::Specification.new do |s|
  s.name = "normal_attachment"
  s.version = "0.0.2"
  s.authors = ["Felipe Mesquita"]
  s.email = "felipemesquita@hey.com"
  s.summary = "Simpler attachment for using ActiveStorage with Solidus"
  s.description = "Ignores all styles and compatibility with paperclip"
  s.homepage = "https://github.com/felipedmesquita/normal_attachment"
  s.license = "MIT"

  s.metadata["source_code_uri"] = "https://github.com/felipedmesquita/normal_attachment"

  s.files = Dir["lib/**/*"]

  s.add_development_dependency "minitest", "~> 5.0"
end
