json.array!(@exams) do |exam|
  json.extract! exam, :id, :title, :description
  json.url exam_url(exam, format: :json)
end
