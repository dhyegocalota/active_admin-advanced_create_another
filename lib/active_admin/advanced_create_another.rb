require 'active_support/core_ext'
require 'active_admin'

module ActiveAdmin
  module AdvancedCreateAnother
    autoload :Version, 'active_admin/advanced_create_another/version'
  end
end

ActiveAdmin::Application.inheritable_setting :create_another, true
require_relative 'resource/action_items'

