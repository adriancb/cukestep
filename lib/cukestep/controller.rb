module Cukestep
  class Controller

    def hydrate
      @support = Cukestep::Support.new

      @support.reset_driver
      @support.load_steps

      steps.to_json
    end

    private

    def steps
      Cucumber::StepDefinitions.new
    end
  end
end