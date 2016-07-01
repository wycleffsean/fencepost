require 'yaml'
module Fencepost
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      ActiveSupport.on_load :action_controller do
        file_name = "#{Rails.root}/config/fencepost.yml"
        if File.exists?(file_name)
          ::Fencpost::Fencpost.model_list = YAML.load_file(file_name)
        end
        include ::Fencepost::ActsAsFencepost
      end
    end
  end
end
