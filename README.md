# ObjectAs

A simple refinement to get Object#as

## Deprecation warning

As of Ruby version 2.5, the method `Kernel::yield_self` is included in the standard Ruby library and should be preferred to `Object::as`.

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

    > keys = [1, 2, 3]
    > values = %w(a b c)
    > keys.zip(values).as {|kv| Hash[kv] }
    => {1=>"a", 2=>"b", 3=>"c"}

Object#as is useful when chaining methods. This is a complete Ruby source file:
 
    require 'object_as'
    using ObjectAs

    def square(array)
      array.map {|x| x * x }
    end

    [1, 2, 3].as {|array| square array }.each {|x| puts x }
    # prints 1, 4, 9

For Ruby versions older than 2.1, there is a way to use Object#as without 
refinements. This method uses monkeypatching.

    require 'object_as_no_refinements'

    def square(array)
      array.map {|x| x * x }
    end

    [1, 2, 3].as {|array| square array }.each {|x| puts x }
    # prints 1, 4, 9

## Example

In this example I am using OpenCv to process an image in a method chain, but at 
one point I want to subtract the average value of the image from itself.


    require 'object_as'
    require 'opencv'

    using ObjectAs

    region_of_interest = 
      CvMat.load("image.png")
      sub_rect(x, y, 20, 20).
      normalize(0.0, 1.0, CV_NORM_MINMAX, CV_32F).
      as {|i| i.sub(i.avg) }

The alternative, without Object#as would look something like this:

Require 'opencv'

tmp = 
  CvMat.load(filename)
  sub_rect(x, y, 20, 20).
  normalize(0.0, 1.0, CV_NORM_MINMAX, CV_32F)

region_of_interest = tmp.sub(tmp.avg)

The method chain is broken, and we have to introduce a temporary variable.

## Contributing

1. Fork it ( https://github.com/tallakt/object_as/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

