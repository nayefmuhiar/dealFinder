class DealsController < ApplicationController


  def index
    result = ApiConsumer.get_deals
    set_result(result)
  end

  def find
    result = ApiConsumer.get_deals(filter_blank_params_and_return_hash(deal_params))
    set_result(result)
  end

  private

  def set_result(result)
    @deal_info = result["offerInfo"]
    @deals = result["offers"]["Hotel"]
  end

  def filter_blank_params_and_return_hash(params)
    params.select {|k,v| v.present?}.to_h
  end

  def deal_params
    params.require(:deal).permit([:destinationName, :destinationCity, :regionIds, :minTripStartDate, :maxTripStartDate, :lengthOfStay, :minStarRating,
      :maxStarRating, :minTotalRate, :maxTotalRate, :minQuestRating, :maxQuestRating])
  end
end

