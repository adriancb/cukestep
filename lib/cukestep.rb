module Cukestep
  autoload :Engine,        "cukestep/engine"
  autoload :Support,       "cukestep/support"
  autoload :Capybara,      "cukestep/capybara"
  autoload :Configuration, "cukestep/configuration"
  autoload :VERSION,       "cukestep/version"

  def self.config
    @config ||= Configuration.new
  end

  def self.config=(config)
    @config = config
  end
end
