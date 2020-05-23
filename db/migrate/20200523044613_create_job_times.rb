class CreateJobTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :job_times do |t|
      t.datetime :startTime, null: false
      t.datetime :endTime
      t.references :user,    foreign_key: true
    end
  end
end
