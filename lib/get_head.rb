require "get_head/version"
require "get_head/request"
require 'rails'

module GetHead
  class Engine < Rails::Engine
    config.app_middleware.insert_before 0, GetHead::Request
  end
end
