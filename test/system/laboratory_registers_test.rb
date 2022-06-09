require "application_system_test_case"

class LaboratoryRegistersTest < ApplicationSystemTestCase
  setup do
    @laboratory_register = laboratory_registers(:one)
  end

  test "visiting the index" do
    visit laboratory_registers_url
    assert_selector "h1", text: "Laboratory registers"
  end

  test "should create laboratory register" do
    visit laboratory_registers_url
    click_on "New laboratory register"

    fill_in "Description", with: @laboratory_register.description
    fill_in "Number laboratory", with: @laboratory_register.number_laboratory
    click_on "Create Laboratory register"

    assert_text "Laboratory register was successfully created"
    click_on "Back"
  end

  test "should update Laboratory register" do
    visit laboratory_register_url(@laboratory_register)
    click_on "Edit this laboratory register", match: :first

    fill_in "Description", with: @laboratory_register.description
    fill_in "Number laboratory", with: @laboratory_register.number_laboratory
    click_on "Update Laboratory register"

    assert_text "Laboratory register was successfully updated"
    click_on "Back"
  end

  test "should destroy Laboratory register" do
    visit laboratory_register_url(@laboratory_register)
    click_on "Destroy this laboratory register", match: :first

    assert_text "Laboratory register was successfully destroyed"
  end
end
