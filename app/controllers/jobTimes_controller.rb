class JobTimesController < ApplicationController

  def index
  end

  def create
    @user = current_user
    @jobTime = @user.job_time.create(startTime: Time.now)
    if @user.update(status: true)
      redirect_to user_path(current_user), notice: "︎打刻しました"
    else
      redirect_to user_path(current_user), notice: "︎打刻できませんでした"
    end

  end

  def update
    @user = current_user
    @jobTime = @user.job_time
    @jobTime.update(endTime: Time.now)
    if @user.update(status: false)
      redirect_to user_path(current_user), notice: "︎打刻しました"
    else
      redirect_to user_path(current_user), notice: "︎打刻できませんでした"
    end
  end
end
