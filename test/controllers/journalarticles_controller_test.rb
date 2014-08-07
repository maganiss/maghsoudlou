require 'test_helper'

class JournalarticlesControllerTest < ActionController::TestCase
  setup do
    @journalarticle = journalarticles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journalarticles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journalarticle" do
    assert_difference('Journalarticle.count') do
      post :create, journalarticle: { abstract: @journalarticle.abstract, en_field: @journalarticle.en_field, fa_field: @journalarticle.fa_field, journal_name: @journalarticle.journal_name, journal_pages: @journalarticle.journal_pages, journal_publishyear: @journalarticle.journal_publishyear, journal_volume: @journalarticle.journal_volume, title: @journalarticle.title, user_id: @journalarticle.user_id }
    end

    assert_redirected_to journalarticle_path(assigns(:journalarticle))
  end

  test "should show journalarticle" do
    get :show, id: @journalarticle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journalarticle
    assert_response :success
  end

  test "should update journalarticle" do
    patch :update, id: @journalarticle, journalarticle: { abstract: @journalarticle.abstract, en_field: @journalarticle.en_field, fa_field: @journalarticle.fa_field, journal_name: @journalarticle.journal_name, journal_pages: @journalarticle.journal_pages, journal_publishyear: @journalarticle.journal_publishyear, journal_volume: @journalarticle.journal_volume, title: @journalarticle.title, user_id: @journalarticle.user_id }
    assert_redirected_to journalarticle_path(assigns(:journalarticle))
  end

  test "should destroy journalarticle" do
    assert_difference('Journalarticle.count', -1) do
      delete :destroy, id: @journalarticle
    end

    assert_redirected_to journalarticles_path
  end
end
