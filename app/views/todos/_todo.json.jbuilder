json.extract! todo, :id, :description, :owner, :created_at, :updated_at
json.url todo_url(todo, format: :json)
