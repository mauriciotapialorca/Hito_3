require "application_system_test_case"

class MedicinesTest < ApplicationSystemTestCase
  setup do
    @medicine = medicines(:one)
  end

  test "visiting the index" do
    visit medicines_url
    assert_selector "h1", text: "Medicines"
  end

  test "should create medicine" do
    visit medicines_url
    click_on "New medicine"

    fill_in "Description", with: @medicine.description
    fill_in "Final price", with: @medicine.final_price
    fill_in "Final stock", with: @medicine.final_stock
    fill_in "Initial price", with: @medicine.initial_price
    fill_in "Initial stock", with: @medicine.initial_stock
    fill_in "Number medicines", with: @medicine.number_medicines
    click_on "Create Medicine"

    assert_text "Medicine was successfully created"
    click_on "Back"
  end

  test "should update Medicine" do
    visit medicine_url(@medicine)
    click_on "Edit this medicine", match: :first

    fill_in "Description", with: @medicine.description
    fill_in "Final price", with: @medicine.final_price
    fill_in "Final stock", with: @medicine.final_stock
    fill_in "Initial price", with: @medicine.initial_price
    fill_in "Initial stock", with: @medicine.initial_stock
    fill_in "Number medicines", with: @medicine.number_medicines
    click_on "Update Medicine"

    assert_text "Medicine was successfully updated"
    click_on "Back"
  end

  test "should destroy Medicine" do
    visit medicine_url(@medicine)
    click_on "Destroy this medicine", match: :first

    assert_text "Medicine was successfully destroyed"
  end
end
