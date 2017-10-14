require 'active_support/core_ext'
require 'active_admin'

module ActiveAdmin
  module AdvancedCreateAnother
    autoload :Version, 'active_admin/advanced_create_another/version'
  end
end

require 'active_admin/advanced_create_another/action_items'

ActiveAdmin::Application.inheritable_setting :create_another, true
ActiveAdmin::Resource.include(ActiveAdmin::AdvancedCreateAnother::ActionItems)

