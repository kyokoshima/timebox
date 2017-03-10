class ConfirmationsController < Devise::ConfirmationsController
	private
	def after_confirmation_pathfor(resource_name, resource)
		your_new_after_confirmation_path
	end
end