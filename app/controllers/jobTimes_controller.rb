class JobTimesController < ApplicationController

  def index
    @user = current_user
    @thisMonth_jobTimes = @user.job_time.where(startTime: Time.now.all_month)
  end

  def create
    @user = current_user
    @jobTime = @user.job_time.create(startTime: Time.now)
    if @user.update(status: true)
      redirect_to root_path, notice: "︎打刻しました"
    elsif @jobTime.errors
      redirect_to root_path, notice: "︎打刻は1日2回までです"
    else
      redirect_to root_path, notice: "︎打刻できませんでした"
    end
  end

  def update
    @user = current_user
    @jobTime = @user.job_time.last
    @jobTime.update(endTime: Time.now)
    if @user.update(status: false)
      redirect_to root_path, notice: "︎打刻しました"
    else
      redirect_to root_path, notice: "︎打刻できませんでした"
    end
  end

end
