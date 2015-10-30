# StrictParent

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'strict_parent'
```

And use it like this:

```ruby
class Parent
  extend StrictParent

  subclass_must_implement :create
end

class Child < Parent
 # will throw if it receives :create
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/strict_parent/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
