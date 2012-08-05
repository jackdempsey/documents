module Documents
  class Engine < ::Rails::Engine
    isolate_namespace Documents
    config.generators do |g|
      g.test_framework :rspec
      g.integration_tool :rspec
    end
  end
end
