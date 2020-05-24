class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show

  def show
    @user = current_user
    if @user.status == true
      @jobTime = JobTime.find_by(user_id: current_user.id)
    end
  end



end
