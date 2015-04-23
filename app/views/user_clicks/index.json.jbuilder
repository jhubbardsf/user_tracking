json.array!(@user_clicks) do |user_click|
  json.extract! user_click, :id, :user_id, :field
  json.url user_click_url(user_click, format: :json)
end
