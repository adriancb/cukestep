module Cukestep
  class Support

    def initialize(cucumber_support = Cukestep::Cucumber.new, capybara_support = Cukestep::Capybara.new)
      @cucumber_support = cucumber_support
      @capybara_support = capybara_support

      @capybara_support.reset_driver!
    end

    def steps
      @cucumber_support.steps.map {|step| step["source"] }
    end

  end
end