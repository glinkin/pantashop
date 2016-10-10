json.extract! phone_order, :id, :name, :phone, :created_at, :updated_at
json.url phone_order_url(phone_order, format: :json)