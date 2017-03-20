class ConfirmationsController < Devise::ConfirmationsController
	private
	def after_confirmation_path_for(resource_name, resource)
		capsules_path
	end
end
