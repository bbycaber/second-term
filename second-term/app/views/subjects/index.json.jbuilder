json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :subject_id, :active, :teacher_id
  json.url subject_url(subject, format: :json)
end
