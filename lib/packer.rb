require "cargo"

module Packer
  def self.gemspec(name, version)
    Gem::Dependency.new(name, version).to_spec
  end

  def self.gempath(name, version)
    gemspec(name, version).lib_dirs_glob
  end

  def package(name, version)
    import(File.join(Packer.gempath(name, version), name))
  end
end

extend Packer
