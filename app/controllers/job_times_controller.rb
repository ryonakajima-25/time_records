class JobTimesController < ApplicationController
  def index
  end

  def create
    @user = current_user
    binding.pry
    @job_time = @user.job_time.create(startTime: Time.now)

  end

  # def start
  #   @user = current_user
  #   @job_time = job_time.create(startTime: Time.now)
  #   redirect_to :back
  # end

  def end
    @user = current_user
    @job_time = current_user.job_time
    @job_time.update(endTime: Time.now)
    redirect_to :back
  end
end
