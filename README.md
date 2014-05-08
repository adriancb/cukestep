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

# Mount the engine

    mount Cukestep::Engine => "/cukestep", as: "cukestep"

# Start your Rails application and navigate to

    /cukestep/steps


## Contributing

1. Fork it ( https://github.com/[my-github-username]/cukestep/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
