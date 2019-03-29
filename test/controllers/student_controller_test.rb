require 'test_helper'

class StudentControllerTest < ActionDispatch::IntegrationTest

setup do
    @student = students(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('Student.count') do
      post users_url, params: { student: { student_address: @student.student_address, student_email: @student.student_email, student_mobile_number: @student.student_mobile_number, student_name: @student.student_name, student_password: @student.student_password, student_fav_sebject: @student.student_fav_sebject, student_hobies: @student.student_hobies} }
    end

    assert_redirected_to user_url(Student.last)
  end

  test "should show user" do
    get user_url(@student)
    assert_response :success student_hobies:
@user.student_hobies  end

  test "should get edit" do
    get edit_user_url(@student)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@student), params: { student: { student_address: @student.student_address, student_email: @student.student_email, student_mobile_number: @student.student_mobile_number, student_name: @student.student_name, student_password: @student.student_password, student_fav_sebject: @student.student_fav_sebject, student_hobies: @student.student_hobies} }
    assert_redirected_to user_url(@student)
  end

  test "should destroy user" do
    assert_difference('Student.count', -1) do
      delete user_url(@student)
    end

    assert_redirected_to users_url
  end

  end
