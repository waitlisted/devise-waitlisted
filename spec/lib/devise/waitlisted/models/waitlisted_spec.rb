require 'spec_helper'
include AuthenticatedModelHelper

describe Devise::Models::Waitlisted, '#waitlisted_id' do
  let(:instance) { build_guest_user }
end
