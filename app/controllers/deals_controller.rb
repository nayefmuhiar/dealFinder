class DealsController < ApplicationController

  def index
    result = ApiConsumer.get_deals
    @deal_info = result["offerInfo"]
    @deals = result["offers"]["Hotel"]
  end
end