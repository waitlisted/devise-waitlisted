class GuestUser
  extend ActiveModel::Callbacks
  include ActiveModel::Validations
  include Devise::Models::Waitlisted

  define_model_callbacks :create
  attr_accessor :email, :waitlisted_id, :waitlisted_authenticated

end
