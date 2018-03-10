require "application_system_test_case"

class DealsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_path
  
    assert_selector "h1", text: "Deals Finder"
  end

  test "filtering deals by region id" do
    visit root_path

    fill_in "deal[regionIds]", with: "6126616,6057480"

    click_on "Submit"
  

    assert_selector "p", text: "Wadi Rum"
  end

  test "filtering deals by destination name" do
    visit root_path

    fill_in "deal[destinationName]", with: "Orlando"

    click_on "Submit"
  

    assert_selector "p", text: "Florida"
  end
end
