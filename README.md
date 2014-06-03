# Cukestep

Cukestep exposes your system's Gherkin steps to the outside world through a Rails Engine.

## Installation

Add this line to your application's Gemfile:

    gem 'cukestep'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cukestep

## Usage

### Mount the engine

    mount Cukestep::Engine => "/cukestep", as: "cukestep"

### Start your Rails application and navigate to

    /cukestep/steps

### Pivotal Tracker and Trello

Inject `/assets/bookmarklet.js` as a bookmarklet in your browser to decorate the Pivotal Tracker story/Trello description field.

Note: Pivotal Tracker and Trello run on SSL. In order to test locally, run Charles, map https->http, configure SSL proxying and visit the endpoint URL in the browser to accept the SSL certification restriction.

### Examples

![Pivotal Tracker Cukestep Example](http://cl.ly/Vox0/pivotal_tracker_cukestep_example.png.png)

![Trello Cukestep Example](http://cl.ly/VpE7/trello_cukestep_example.png.png)

### Configuration

To exclude a support file from the autoload path, create an initializer class and redefine `excluded_code_file_paths`.

```ruby
class CukestepConfig < Cukestep::Configuration
  def excluded_code_file_paths
    ['features/support/extranet.rb']
  end
end

Cukestep.config = CukestepConfig.new
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/cukestep/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
