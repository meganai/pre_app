require 'test_helper'

class UsersQualificationsControllerTest < ActionController::TestCase
  setup do
    @users_qualification = users_qualifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_qualifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_qualification" do
    assert_difference('UsersQualification.count') do
      post :create, users_qualification: { qualification_id: @users_qualification.qualification_id, score: @users_qualification.score, user_id: @users_qualification.user_id }
    end

    assert_redirected_to users_qualification_path(assigns(:users_qualification))
  end

  test "should show users_qualification" do
    get :show, id: @users_qualification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_qualification
    assert_response :success
  end

  test "should update users_qualification" do
    put :update, id: @users_qualification, users_qualification: { qualification_id: @users_qualification.qualification_id, score: @users_qualification.score, user_id: @users_qualification.user_id }
    assert_redirected_to users_qualification_path(assigns(:users_qualification))
  end

  test "should destroy users_qualification" do
    assert_difference('UsersQualification.count', -1) do
      delete :destroy, id: @users_qualification
    end

    assert_redirected_to users_qualifications_path
  end
end
