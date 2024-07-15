json.extract! crud_list, :id, :first_name, :last_name, :email, :phone, :twitter, :created_at, :updated_at
json.url crud_list_url(crud_list, format: :json)
