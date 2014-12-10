json.array!(@jobs) do |job|
  json.extract! job, :id, :career_id, :des1, :des2, :des3, :des4, :des5, :des6, :des7, :des8, :skill1, :skill2, :skill3, :skill4, :skill4, :skill5, :skill6, :skill7
  json.url job_url(job, format: :json)
end
