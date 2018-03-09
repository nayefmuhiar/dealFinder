class ApiConsumer
  include HTTParty
  BASE_URI = "https://offersvc.expedia.com/offers/v2/getOffers"
  OPTIONS = {scenario: "deal-finder", page: "foo", uid: "foo", productType: "Hotel"}

  def self.get_all_deals(options= {})
    params = {query:  (options.blank? ? ApiConsumer::OPTIONS : ApiConsumer::OPTIONS.merge(options))}
    response = HTTParty.get(ApiConsumer::BASE_URI, params)
    response.parsed_response
  end
end