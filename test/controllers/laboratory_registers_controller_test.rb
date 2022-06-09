require "test_helper"

class LaboratoryRegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laboratory_register = laboratory_registers(:one)
  end

  test "should get index" do
    get laboratory_registers_url
    assert_response :success
  end

  test "should get new" do
    get new_laboratory_register_url
    assert_response :success
  end

  test "should create laboratory_register" do
    assert_difference("LaboratoryRegister.count") do
      post laboratory_registers_url, params: { laboratory_register: { description: @laboratory_register.description, number_laboratory: @laboratory_register.number_laboratory } }
    end

    assert_redirected_to laboratory_register_url(LaboratoryRegister.last)
  end

  test "should show laboratory_register" do
    get laboratory_register_url(@laboratory_register)
    assert_response :success
  end

  test "should get edit" do
    get edit_laboratory_register_url(@laboratory_register)
    assert_response :success
  end

  test "should update laboratory_register" do
    patch laboratory_register_url(@laboratory_register), params: { laboratory_register: { description: @laboratory_register.description, number_laboratory: @laboratory_register.number_laboratory } }
    assert_redirected_to laboratory_register_url(@laboratory_register)
  end

  test "should destroy laboratory_register" do
    assert_difference("LaboratoryRegister.count", -1) do
      delete laboratory_register_url(@laboratory_register)
    end

    assert_redirected_to laboratory_registers_url
  end
end
