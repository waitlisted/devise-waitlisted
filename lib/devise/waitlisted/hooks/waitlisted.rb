Warden::Manager.after_authentication do |user, auth, options|
  if user.respond_to?(:is_waitlisted?)
  end
end
