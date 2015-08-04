json.array!(@habits) do |habit|
  json.extract! habit, :id, :habit_category, :habit_title, :habit_description, :habit_duration, :created_at, :updated_at
  json.url habit_url(habit, format: :json)
end
