# encoding: UTF-8

require_relative "../lib/packer"

test "Par is not available" do
  assert nil == defined?(Par)
end

test "Par is loaded" do
  S = package("par", "= 0.0.1")

  assert_equal "0.0.1", S::VERSION
end
