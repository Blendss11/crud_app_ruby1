class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  helper_method :can?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to "", alert: "Hanya admin yang dapat mengakses halaman ini."
  end
  # Other existing code
end
