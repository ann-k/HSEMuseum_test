require "application_system_test_case"

class PlacementsTest < ApplicationSystemTestCase
  setup do
    @placement = placements(:one)
  end

  test "visiting the index" do
    visit placements_url
    assert_selector "h1", text: "Placements"
  end

  test "creating a Placement" do
    visit placements_url
    click_on "New Placement"

    fill_in "Artwork", with: @placement.artwork_id
    fill_in "Gallery", with: @placement.gallery_id
    fill_in "Order", with: @placement.order
    click_on "Create Placement"

    assert_text "Placement was successfully created"
    click_on "Back"
  end

  test "updating a Placement" do
    visit placements_url
    click_on "Edit", match: :first

    fill_in "Artwork", with: @placement.artwork_id
    fill_in "Gallery", with: @placement.gallery_id
    fill_in "Order", with: @placement.order
    click_on "Update Placement"

    assert_text "Placement was successfully updated"
    click_on "Back"
  end

  test "destroying a Placement" do
    visit placements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Placement was successfully destroyed"
  end
end
