require "application_system_test_case"

class CollectivesTest < ApplicationSystemTestCase
  setup do
    @collective = collectives(:one)
  end

  test "visiting the index" do
    visit collectives_url
    assert_selector "h1", text: "Collectives"
  end

  test "creating a Collective" do
    visit collectives_url
    click_on "New Collective"

    fill_in "Bio", with: @collective.bio
    fill_in "Broke Up", with: @collective.broke_up
    fill_in "Created", with: @collective.created
    fill_in "Name", with: @collective.name
    fill_in "Style", with: @collective.style
    click_on "Create Collective"

    assert_text "Collective was successfully created"
    click_on "Back"
  end

  test "updating a Collective" do
    visit collectives_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @collective.bio
    fill_in "Broke Up", with: @collective.broke_up
    fill_in "Created", with: @collective.created
    fill_in "Name", with: @collective.name
    fill_in "Style", with: @collective.style
    click_on "Update Collective"

    assert_text "Collective was successfully updated"
    click_on "Back"
  end

  test "destroying a Collective" do
    visit collectives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collective was successfully destroyed"
  end
end
