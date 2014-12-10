json.array!(@careers) do |career|
  json.extract! career, :id, :job_title, :location
  json.url career_url(career, format: :json)
end
