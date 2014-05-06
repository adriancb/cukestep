module Cukestep
  class Support

    def initialize
      @cucumber_support ||= ::Cucumber::Runtime::SupportCode.new(nil, false)
      @capybara_support ||= Cukestep::Capybara.new
    end

    def load_steps
      @cucumber_support.load_files!(Cukestep.config.cucumber_load_paths)
    end

    def steps
      @cucumber_support.step_definitions.map{|stepdef| stepdef.to_hash}
    end

    def reset_driver
      @capybara_support.reset_driver
    end

  end
end