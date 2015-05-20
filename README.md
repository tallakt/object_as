# ObjectAs

A simple refinement to get Object#as


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'object_as'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install object_as

## Usage

Object#as it much like Object#tap except that it returns the value of the block
instead of the value being tapped.

    > "Ruby".as {|n| n.reverse }
    => "ybuR"

Object#as is useful when chaining methods. This is a complete Ruby source file:
 
    require 'object_as'
    using ObjectAs
    [1, 2, 3].map {|x| x * x }.as {|array| array.reverse }.each {|x| puts x }
    # prints 9, 4 and 1

For Ruby versions older than 2.1, there is a way to use Object#as without 
refinements. This method uses monkeypatching.

    require 'object_as_no_refinements'
    [1, 2, 3].map {|x| x * x }.as {|array| array.reverse }.each {|x| puts x }
    # prints 9, 4 and 1


## Contributing

1. Fork it ( https://github.com/tallakt/object_as/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

