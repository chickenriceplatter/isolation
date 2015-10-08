Isolation
===
A ruby gem to run command-line commands in isolation and capture error messages.

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

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'isolation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install isolation

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chickenriceplatter/isolation.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

