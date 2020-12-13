require "application_system_test_case"

class PremieresTest < ApplicationSystemTestCase
  setup do
    @premiere = premieres(:one)
  end

  test "visiting the index" do
    visit premieres_url
    assert_selector "h1", text: "Premieres"
  end

  test "creating a Premiere" do
    visit premieres_url
    click_on "New Premiere"

    fill_in "Budget", with: @premiere.budget
    fill_in "Date", with: @premiere.date
    click_on "Create Premiere"

    assert_text "Premiere was successfully created"
    click_on "Back"
  end

  test "updating a Premiere" do
    visit premieres_url
    click_on "Edit", match: :first

    fill_in "Budget", with: @premiere.budget
    fill_in "Date", with: @premiere.date
    click_on "Update Premiere"

    assert_text "Premiere was successfully updated"
    click_on "Back"
  end

  test "destroying a Premiere" do
    visit premieres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Premiere was successfully destroyed"
  end
end
