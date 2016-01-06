Packer
======

Require different versions of the same Cargo-compatible gem.

Description
-----------

[Cargo][cargo] lets you import two versions of the same library, and
Packer brings the same functionality to Cargo-compatible gems.

Consider these two versions of the same library:

```
$ gem list

*** LOCAL GEMS ***

par (0.0.2)
par (0.0.1)
```

You can now load both versions side by side:

```ruby
>> Par1 = package("par", "= 0.0.1")
=> #<Module:0x000001009ffa28>::Par
>> Par2 = package("par", "= 0.0.2")
=> #<Module:0x000001009f2828>::Par
>> Par1::VERSION
=> "0.0.1"
>> Par2::VERSION
=> "0.0.2"
```

How does it work?
-----------------

First, check how [Cargo][cargo] works. Packer just combines Cargo
with RubyGems.

Usage
-----

After requiring `packer` in the calling program, the methods
`package`, `import` and `export` become available. Both `import` and
`export` come from [Cargo][cargo], and `package` is defined in
`Packer`.

This is how you use `package` in the calling program:

```ruby
require "packer"

MyFoo = package("foo", "= 1.0.0")
```

And for that to work, the imported gem should look like this:

```ruby
class Foo
  VERSION = "1.0.0"
end

export(Foo)
```

[cargo]: https://github.com/soveran/cargo

Installation
------------

```
$ gem install packer
```
