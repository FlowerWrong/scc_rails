# SccRails

Spring cloud config client integration with rails, use scc_ruby, just use `$cloud_env`.

## Usage

```ruby
# routes.rb
mount SccRails::Engine => '/scc'
```

and then you can use `curl 127.0.0.1:3000/scc/refresh` to refresh `$cloud_env`

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'scc_rails'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install scc_rails
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
