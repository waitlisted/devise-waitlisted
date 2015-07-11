module Devise
  module Waitlisted
    module Orm
      module ActiveRecord
        module Schema
          include Waitlisted::Schema
        end
      end
    end
  end
end

ActiveRecord::ConnectionAdapters::Table.send :include, Devise::Waitlisted::Orm::ActiveRecord::Schema
ActiveRecord::ConnectionAdapters::TableDefinition.send :include, Devise::Waitlisted::Orm::ActiveRecord::Schema
