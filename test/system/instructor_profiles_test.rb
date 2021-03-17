require "application_system_test_case"

class InstructorProfilesTest < ApplicationSystemTestCase
  setup do
    @instructor_profile = instructor_profiles(:one)
  end

  test "visiting the index" do
    visit instructor_profiles_url
    assert_selector "h1", text: "Instructor Profiles"
  end

  test "creating a Instructor profile" do
    visit instructor_profiles_url
    click_on "New Instructor Profile"

    fill_in "Address", with: @instructor_profile.address
    fill_in "Firstname", with: @instructor_profile.firstname
    fill_in "Lastname", with: @instructor_profile.lastname
    fill_in "Phone", with: @instructor_profile.phone
    fill_in "Rate", with: @instructor_profile.rate
    click_on "Create Instructor profile"

    assert_text "Instructor profile was successfully created"
    click_on "Back"
  end

  test "updating a Instructor profile" do
    visit instructor_profiles_url
    click_on "Edit", match: :first

    fill_in "Address", with: @instructor_profile.address
    fill_in "Firstname", with: @instructor_profile.firstname
    fill_in "Lastname", with: @instructor_profile.lastname
    fill_in "Phone", with: @instructor_profile.phone
    fill_in "Rate", with: @instructor_profile.rate
    click_on "Update Instructor profile"

    assert_text "Instructor profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Instructor profile" do
    visit instructor_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instructor profile was successfully destroyed"
  end
end
