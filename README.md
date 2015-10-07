Isolation
===
A ruby gem to run command-line commands in isolation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'isolation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install isolation

## Usage

```ruby
runner = Isolation::CommandRunner.new("echo hello")
runner.run

runner.success? # true
runner.error_message # "" (empty string)

runner2 = Isolation::CommandRunner.new("ls -z")
runner2.run

runner2.success? # false
runner2.error_message # ls: illegal option -- z\nusage: ls [-ABCFGHLOPRSTUWabcdefghiklmnopqrstuwx1] [file ...]\n
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/isolation.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

