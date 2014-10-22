# Slowpoke

Timeouts made easy

- custom error page
- database timeouts
- notifications

## Installation

Add this line to your application’s Gemfile:

```ruby
gem 'slowpoke'
```

And run:

```sh
rails generate slowpoke:install
```

This creates a `public/503.html` you can customize.

The default timeout is 15 seconds. Change this with:

```ruby
Slowpoke.timeout = 10 # seconds
```

or use `ENV["TIMEOUT"]`.

For PostgreSQL (ActiveRecord), change the database timeout with:

```ruby
Slowpoke.database_timeout = 5
```

Subscribe to timeouts

```ruby
ActiveSupport::Notifications.subscribe "timeout.slowpoke" do |name, start, finish, id, payload|
  Rollbar.report_message "Timeout", "info"
end
```

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/ankane/slowpoke/issues)
- Fix bugs and [submit pull requests](https://github.com/ankane/slowpoke/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features