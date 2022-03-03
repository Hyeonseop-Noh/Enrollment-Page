json.extract! schedule, :id, :tutor_id, :start_time, :active, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
