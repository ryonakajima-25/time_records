class JobTime < ApplicationRecord
  belongs_to :user
  validate :click_count

  private
  def click_count
    if JobTime.where("user_id = ? AND DATE(endTime) = DATE(?)", self.user_id, Time.now).all.any?
      errors.add(:user_id, "タッチは1日2回まで")
    end
  end
end
