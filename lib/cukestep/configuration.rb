module Cukestep
  class Configuration

    attr_accessor :autoload_code_paths
    attr_accessor :default_excluded_file_paths
    attr_accessor :excluded_code_file_paths

    def self.default_configuration
      Configuration.new.tap do |c|
        c.autoload_code_paths = ['features/support', 'features/step_definitions']
        c.default_excluded_file_paths = ['features/support/env.rb']
        c.excluded_code_file_paths = []
      end
    end

    def cucumber_load_paths
      autoload_code_paths.map { |path| Dir["#{path}/**/*"] }.flatten - (default_excluded_file_paths + excluded_code_file_paths)
    end
  end
end