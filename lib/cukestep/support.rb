module Cukestep
  class Support

    def initialize(cucumber_support = ::Cucumber::Runtime::SupportCode.new(nil, false), capybara_support = Cukestep::Capybara.new)
      @cucumber_support = cucumber_support
      @capybara_support = capybara_support

      load_files!
      reset_driver!
    end

    def load_files!
      @cucumber_support.load_files!(Cukestep.config.cucumber_load_paths)
    end

    def steps
      @steps = @cucumber_support.step_definitions.map { |stepdef| stepdef.to_hash }
    end

    def reset_driver!
      @capybara_support.reset_driver
    end

  end
end