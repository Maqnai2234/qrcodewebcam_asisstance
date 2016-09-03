require 'test_helper'

class AsistanceesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asistancee = asistancees(:one)
  end

  test "should get index" do
    get asistancees_url
    assert_response :success
  end

  test "should get new" do
    get new_asistancee_url
    assert_response :success
  end

  test "should create asistancee" do
    assert_difference('Asistancee.count') do
      post asistancees_url, params: { asistancee: { date_admisision: @asistancee.date_admisision, student_id: @asistancee.student_id } }
    end

    assert_redirected_to asistancee_url(Asistancee.last)
  end

  test "should show asistancee" do
    get asistancee_url(@asistancee)
    assert_response :success
  end

  test "should get edit" do
    get edit_asistancee_url(@asistancee)
    assert_response :success
  end

  test "should update asistancee" do
    patch asistancee_url(@asistancee), params: { asistancee: { date_admisision: @asistancee.date_admisision, student_id: @asistancee.student_id } }
    assert_redirected_to asistancee_url(@asistancee)
  end

  test "should destroy asistancee" do
    assert_difference('Asistancee.count', -1) do
      delete asistancee_url(@asistancee)
    end

    assert_redirected_to asistancees_url
  end
end
