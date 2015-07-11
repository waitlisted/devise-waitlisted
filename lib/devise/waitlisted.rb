require 'devise/waitlisted/version'
require 'devise'
require 'active_support/concern'
require "active_model"
require "active_record"
require "active_support/core_ext/class/attribute_accessors"
require "cgi"

module Devise

end

module Devise
  module Waitlisted

    autoload :Schema, 'devise/waitlisted/schema'
    module Controllers
      autoload :Helpers, 'devise/waitlisted/controllers/helpers'
    end
  end
end

Devise.add_module :waitlisted, :model => 'devise/waitlisted/models/waitlisted', :controller => :waitlisted, :route => :waitlisted

require 'devise/waitlisted/orm/active_record'
require 'devise/waitlisted/routes'
require 'devise/waitlisted/models/waitlisted'
require 'devise/waitlisted/rails'
