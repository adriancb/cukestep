module Cukestep
  class Controller

    def initialize
      @support = Cukestep::Support.new.tap do |support|
        support.reset_driver
        support.load_steps
      end

      @support.steps.to_json
    end
  end
end