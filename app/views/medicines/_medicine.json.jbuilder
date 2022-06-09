json.extract! medicine, :id, :number_medicines, :description, :initial_stock, :final_stock, :initial_price, :final_price, :created_at, :updated_at
json.url medicine_url(medicine, format: :json)
