module Cukestep
  class Cucumber

    def initialize(cucumber_support = ::Cucumber::Runtime::SupportCode.new(nil, false))
      @cucumber_support = cucumber_support

      load_files!
    end

    def steps
      @cucumber_support.step_definitions.map { |stepdef| stepdef.to_hash }
    end

    private

    def load_files!
      @cucumber_support.load_files!(Cukestep.config.cucumber_load_paths)
    end

  end
end