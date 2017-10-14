module ActiveAdmin
  module AdvancedCreateAnother
    module ActionItems
      private

      def add_default_new_action_item
        add_action_item :new, only: :index do
          if controller.action_methods.include?('new') && authorized?(ActiveAdmin::Auth::CREATE, active_admin_config.resource_class)
            localizer = ActiveAdmin::Localizers.resource(active_admin_config)
            path = active_admin_config.create_another ? new_resource_path(create_another: true) : new_resource_path
            link_to localizer.t(:new_model), path
          end
        end
      end
    end
  end
end
