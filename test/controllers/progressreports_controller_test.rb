require 'test_helper'

class ProgressreportsControllerTest < ActionController::TestCase
  setup do
    @progressreport = progressreports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:progressreports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create progressreport" do
    assert_difference('Progressreport.count') do
      post :create, progressreport: { abstract: @progressreport.abstract, en_field: @progressreport.en_field, fa_field: @progressreport.fa_field, title: @progressreport.title, user_id: @progressreport.user_id }
    end

    assert_redirected_to progressreport_path(assigns(:progressreport))
  end

  test "should show progressreport" do
    get :show, id: @progressreport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @progressreport
    assert_response :success
  end

  test "should update progressreport" do
    patch :update, id: @progressreport, progressreport: { abstract: @progressreport.abstract, en_field: @progressreport.en_field, fa_field: @progressreport.fa_field, title: @progressreport.title, user_id: @progressreport.user_id }
    assert_redirected_to progressreport_path(assigns(:progressreport))
  end

  test "should destroy progressreport" do
    assert_difference('Progressreport.count', -1) do
      delete :destroy, id: @progressreport
    end

    assert_redirected_to progressreports_path
  end
end
