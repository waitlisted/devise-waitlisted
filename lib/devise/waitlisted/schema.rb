module Devise
  module Waitlisted
    module Schema
      def waitlisted_id
        apply_devise_schema :waitlisted_id, String
      end

      def waitlisted_activated
        apply_devise_schema :waitlisted_activated, Boolean
      end
    end
  end
end