require 'rails_webui'
Rails.application.config.assets.configure do |env|
  env.context_class.class_eval do
    include Webui::Helper
  end
end
