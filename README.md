capistrano-rake
===============

Invoke any `rake` task on a remote server using [`capistrano`](https://capistranorb.com/).
Installing this gem adds a new capistrano task `invoke:rake` that will allow you to
execute rake tasks remotely. __Only supports Capistrano 3 and above__.



## Installation

Add the gem to your `Gemfile` after setting up Capistrano, preferably in the `:development`
group:

```ruby
group :development do
  gem 'capistrano',      require: false
  gem 'capistrano-rake', require: false
end
```

Then `bundle` and add it to your `Capfile`:

```ruby
# Capfile

require 'capistrano/rake'
```



## Usage

To execute a rake task on a remote server, you need to pass that task's name to the `invoke:rake`
capistrano task like this:

```bash
$ cap stage invoke:rake TASK=some:rake_task

# Examples
$ cap staging    invoke:rake TASK=db:seed
$ cap production invoke:rake TASK=paperclip:refresh

```



## Configuration

You can optionally specify the capistrano roles for the rake task (Defaults to `:app`):

```ruby
# Defaults to [:app]
set :rake_roles, [:db, :app]
```



## Contributing

1. Fork it ( https://github.com/sheharyarn/capistrano-rake/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request



## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

