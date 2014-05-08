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
      render :json => steps.select { |step| /#{params[:q]}/i.match(step) }.to_json, :callback => params["callback"]
    end

    def steps
      @steps ||= Cukestep::Support.new.steps
    end

  end
end