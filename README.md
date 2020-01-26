# GosuMoreDrawables

Adds `Gosu.draw_circle` and `Gosu.draw_arc` to the Gosu game library.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gosu_more_drawables'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gosu_more_drawables

## Usage

``` ruby
require "gosu"
require "gosu_more_drawables"

class DemoWindow < Gosu::Window
  def initialize
    super(500, 500, false)
  end

  def draw
    Gosu.draw_circle(250, 250, 200, 128, Gosu::Color.rgb(0, 200, 0))
    Gosu.draw_arc(250, 250, 200, 1.0, 128, 4, Gosu::Color.rgba(127, 64, 0, 100))
  end
end

DemoWindow.new.show
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cyberarm/gosu_more_drawables.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
