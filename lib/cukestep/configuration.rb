module Cukestep
  class Configuration

    def autoload_code_paths
      ['features/support', 'features/step_definitions']
    end

    def default_excluded_file_paths
      ['features/support/env.rb']
    end

    def excluded_code_file_paths
      []
    end

    def cucumber_load_paths
      autoload_code_paths.map { |path| Dir["#{path}/**/*"] }.flatten - (default_excluded_file_paths + excluded_code_file_paths)
    end
  end
end