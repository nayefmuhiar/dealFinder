module DealsHelper
  def format_offer_date(date_array)
    "#{date_array.first}-#{date_array.second}-#{date_array.third}".to_date
  end

  def unescape_url(url)
    URI.unescape(url)
  end
end