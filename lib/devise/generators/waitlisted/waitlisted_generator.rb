module Devise
  module Waitlisted
    module Generators
      class WaitlistedGenerator < Rails::Generators::NamedBase
        namespace "devise/waitlisted"

        desc "Adds :waitlisted directive in the given model. It also generates an active record migration."

        def waitlisted_content
          path = File.join("app", "models", "#{file_path}.rb")
          inject_into_file(path, "waitlisted, :", :after => "devise :") if File.exists?(path)
        end

        hook_for :orm

      end
    end
  end
end