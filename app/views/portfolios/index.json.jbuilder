json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :name, :type, :portfolio_image, :description
  json.url portfolio_url(portfolio, format: :json)
end
