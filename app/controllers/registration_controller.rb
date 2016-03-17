class RegistrationsController < Devise::RegistrationsController
  protected

  # def after_sign_up_path_for(patients)
  #   id = current_patients.id
  #   get 'patients/:id/edit'
  # end
  #
  # def after_sign_up_path_for(drivers)
  #   id = current_drivers.id
  #   get 'drivers/:id/edit'
  # end
end
