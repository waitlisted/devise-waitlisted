require 'rails/generators/active_record'

module ActiveRecord
  module Generators
    class WaitlistedGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def copy_waitlisted_migration
        migration_template "migration.rb", "db/migrate/waitlisted_add_to_#{table_name}.rb"
      end

    end
  end
end
