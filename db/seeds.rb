user = User.create!(
  last_name:      "中島",
  first_name:     "良",
  email:          "ryo@gmail",
  status:         "false",
  password:       "rrrrrr",
)

jobtime = JobTime.create!(
  startTime: '2020-05-22 8:19:00',
  endTime:   '2020-05-22 18:49:00',
  user_id:   '1'
)

jobtime = JobTime.create!(
  startTime: '2020-05-23 8:11:00',
  endTime:   '2020-05-23 19:35:00',
  user_id:   '1'
)

jobtime = JobTime.create!(
  startTime: '2020-05-24 8:30:00',
  endTime:   '2020-05-24 18:25:00',
  user_id:   '1'
)

jobtime = JobTime.create!(
  startTime: '2020-05-25 8:26:00',
  endTime:   '2020-05-25 18:30:00',
  user_id:   '1'
)

jobtime = JobTime.create!(
  startTime: '2020-05-26 8:23:00',
  endTime:   '2020-05-26 19:19:00',
  user_id:   '1'
)