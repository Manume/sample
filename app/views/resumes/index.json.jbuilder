json.array!(@resumes) do |resume|
  json.extract! resume, :id, :full_name, :email_address, :upload_cv
  json.url resume_url(resume, format: :json)
end
