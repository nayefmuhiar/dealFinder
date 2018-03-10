require 'test_helper'

class ApiConsumerTest < ActionDispatch::IntegrationTest
  test "get deals method" do
    api_consumer_deals = ApiConsumer.get_deals

    assert_equal api_consumer_deals.class.name, "Hash"
  end

  test "get deals method with params" do
    api_consumer_deals = ApiConsumer.get_deals({"regionIds" => "6126616,6057480"})

    assert_equal api_consumer_deals["offers"]["Hotel"].first["destination"]["city"], "Wadi Rum"
  end
end
