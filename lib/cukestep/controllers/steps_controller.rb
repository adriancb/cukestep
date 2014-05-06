module Cukestep
  class StepsController < ActionController::Base
    def index
      @support = Cukestep::Support.new.tap do |support|
        support.reset_driver
      end

      render :json => @support.steps.map(&:source).to_json
    end
  end
end