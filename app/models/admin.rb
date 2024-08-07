module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :verify_admin

    def index
     
    end

    private

    def verify_admin
      redirect_to(root_path, alert: 'Anda tidak memiliki akses ke halaman ini.') unless current_user.admin?
    end
  end
end
