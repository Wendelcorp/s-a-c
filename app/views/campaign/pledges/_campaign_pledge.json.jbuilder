json.extract! campaign_pledge, :id, :amount, :name, :anonymous, :created_at, :updated_at
json.url campaign_pledge_url(campaign_pledge, format: :json)
