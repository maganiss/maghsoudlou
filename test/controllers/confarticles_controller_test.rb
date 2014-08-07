require 'test_helper'

class ConfarticlesControllerTest < ActionController::TestCase
  setup do
    @confarticle = confarticles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confarticles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confarticle" do
    assert_difference('Confarticle.count') do
      post :create, confarticle: { abstract: @confarticle.abstract, conf_date: @confarticle.conf_date, conf_location: @confarticle.conf_location, conf_name: @confarticle.conf_name, en_field: @confarticle.en_field, fa_field: @confarticle.fa_field, title: @confarticle.title, user_id: @confarticle.user_id }
    end

    assert_redirected_to confarticle_path(assigns(:confarticle))
  end

  test "should show confarticle" do
    get :show, id: @confarticle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confarticle
    assert_response :success
  end

  test "should update confarticle" do
    patch :update, id: @confarticle, confarticle: { abstract: @confarticle.abstract, conf_date: @confarticle.conf_date, conf_location: @confarticle.conf_location, conf_name: @confarticle.conf_name, en_field: @confarticle.en_field, fa_field: @confarticle.fa_field, title: @confarticle.title, user_id: @confarticle.user_id }
    assert_redirected_to confarticle_path(assigns(:confarticle))
  end

  test "should destroy confarticle" do
    assert_difference('Confarticle.count', -1) do
      delete :destroy, id: @confarticle
    end

    assert_redirected_to confarticles_path
  end
end
