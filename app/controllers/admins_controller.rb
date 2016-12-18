class AdminsController < ActionController::Base
  def new
    @admin = Admin.new
  end

  def edit


  end
  private
    def profile_params
      params.require(:profile).permit(:full_name, :last_name, :avatar, :primary_talent, :phone_number, :contact_email, :description)
    end
end
