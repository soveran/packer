Gem::Specification.new do |s|
  s.name              = "packer"
  s.version           = "0.1.0"
  s.summary           = "Require libraries without cluttering your namespace."
  s.description       = "Use different versions of the same Cargo-compatible gems."
  s.authors           = ["Michel Martens"]
  s.email             = ["michel@soveran.com"]
  s.homepage          = "http://github.com/soveran/packer"
  s.license           = "MIT"

  s.files             = `git ls-files`.split("\n")

  s.add_dependency "cargo"
  s.add_development_dependency "cutest"
  s.add_development_dependency "par", "= 0.0.1"
end
