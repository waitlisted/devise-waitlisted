module Devise
  module Waitlisted
    module Controllers
      module Helpers
        extend ActiveSupport::Concern

        included do
         
        end

        private

        def waitlisted_path_for(resource_or_scope = nil)
          scope = Devise::Mapping.find_scope!(resource_or_scope)
          change_path = "waitlisted_authentication_path"
          send(change_path)
        end

      end
    end
  end
end

module Devise
  module Controllers
    module Helpers
      def is_fully_authenticated?
        !session["warden.user.user.session"].try(:[], Waitlisted::NEED_AUTHENTICATION)
      end
    end
  end
end
