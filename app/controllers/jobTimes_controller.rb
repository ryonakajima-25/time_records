class JobTimesController < ApplicationController

  def index
  end

  def create
    @user = current_user
    @jobTime = @user.job_time.create(startTime: Time.now)
    @user.update(status: true)
    redirect_to user_path(current_user)
  end

  def update
    @user = current_user
    @jobTime = @user.job_time
    @jobTime.update(endTime: Time.now)
    @user.update(status: false)
    redirect_to user_path(current_user)
  end
end
