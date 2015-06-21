json.array!(@habits) do |habit|
  json.extract! habit, :id, :title, :description, :days_practised, :practise_streak, :done
  json.url habit_url(habit, format: :json)
end
