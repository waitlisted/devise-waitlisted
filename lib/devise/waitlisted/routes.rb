module ActionDispatch::Routing
  class Mapper
    protected

      def devise_waitlisted(mapping, controllers)
        resource :waitlisted, :only => [:show, :update], :path => mapping.path_names[:waitlisted], :controller => controllers[:waitlisted]
      end
  end
end
