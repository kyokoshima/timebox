class InvitationsController < Devise::InvitationsController
  skip_before_action :authenticate_user!
end
