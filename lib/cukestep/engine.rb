module Cukestep
  class Engine < Rails::Engine
    isolate_namespace Cukestep

    paths["app/controllers"] = "controllers"
  end

end

Cukestep::Engine.routes.draw do
  get "/steps" => "steps#index"
end