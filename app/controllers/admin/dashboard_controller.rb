module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :verify_admin

    def index
      # Your code here
    end

    private

    def verify_admin
      # Your code to verify admin
    end
  end
end
