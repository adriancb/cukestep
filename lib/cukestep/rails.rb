module Cukestep
  class Engine < ::Rails::Engine
    isolate_namespace Cukestep
  end
end

Cukestep::Engine.routes.draw do
  get "/steps" => "steps#index"
end

module Cukestep
  class StepsController < ActionController::Base
    def index
      @support ||= Cukestep::Support.new
      @steps   ||= @support.steps.map {|step| step["source"] }

      render :json => @steps.select { |step| /#{params[:q]}/.match(step) }.to_json, :callback => params["callback"]
    end
  end
end