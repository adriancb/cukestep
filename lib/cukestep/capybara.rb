module Cukestep
  class Capybara

    def reset_driver!
      ::Capybara.module_eval(monkey_patch_default_driver)
    end

    private

    def monkey_patch_default_driver
      <<-DEFAULT_DRIVER

      class << self
        def default_driver
          :rack_test
        end

        def current_driver
          :rack_test
        end
      end

      DEFAULT_DRIVER
    end
  end
end