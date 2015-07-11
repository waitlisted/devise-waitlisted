module Devise
  module Waitlisted
    class Engine < ::Rails::Engine
      ActiveSupport.on_load(:action_controller) do
        include Devise::Waitlisted::Controllers::Helpers
      end
    end
  end
end