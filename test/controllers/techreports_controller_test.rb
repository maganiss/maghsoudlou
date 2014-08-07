require 'test_helper'

class TechreportsControllerTest < ActionController::TestCase
  setup do
    @techreport = techreports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techreports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techreport" do
    assert_difference('Techreport.count') do
      post :create, techreport: { abstract: @techreport.abstract, en_field: @techreport.en_field, fa_field: @techreport.fa_field, title: @techreport.title, user_id: @techreport.user_id }
    end

    assert_redirected_to techreport_path(assigns(:techreport))
  end

  test "should show techreport" do
    get :show, id: @techreport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @techreport
    assert_response :success
  end

  test "should update techreport" do
    patch :update, id: @techreport, techreport: { abstract: @techreport.abstract, en_field: @techreport.en_field, fa_field: @techreport.fa_field, title: @techreport.title, user_id: @techreport.user_id }
    assert_redirected_to techreport_path(assigns(:techreport))
  end

  test "should destroy techreport" do
    assert_difference('Techreport.count', -1) do
      delete :destroy, id: @techreport
    end

    assert_redirected_to techreports_path
  end
end
