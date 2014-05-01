module Cukestep
  autoload :Support,       "cukestep/support"
  autoload :Capybara,      "cukestep/capybara"
  autoload :Controller,    "cukestep/controller"
  autoload :Configuration, "cukestep/configuration"
  autoload :VERSION,       "cukestep/version"

  def self.config
    @config ||= Configuration.new
  end

  def self.logger
    @logger ||= Logger.new(STDOUT).tap { |logger| logger.level = Logger::INFO }
  end

  def self.logger=(logger)
    @logger = logger
  end
end
