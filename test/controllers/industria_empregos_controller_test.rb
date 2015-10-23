require 'test_helper'

class IndustriaEmpregosControllerTest < ActionController::TestCase
  setup do
    @industria_emprego = industria_empregos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:industria_empregos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create industria_emprego" do
    assert_difference('IndustriaEmprego.count') do
      post :create, industria_emprego: { id_emprego: @industria_emprego.id_emprego, id_industria: @industria_emprego.id_industria }
    end

    assert_redirected_to industria_emprego_path(assigns(:industria_emprego))
  end

  test "should show industria_emprego" do
    get :show, id: @industria_emprego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @industria_emprego
    assert_response :success
  end

  test "should update industria_emprego" do
    patch :update, id: @industria_emprego, industria_emprego: { id_emprego: @industria_emprego.id_emprego, id_industria: @industria_emprego.id_industria }
    assert_redirected_to industria_emprego_path(assigns(:industria_emprego))
  end

  test "should destroy industria_emprego" do
    assert_difference('IndustriaEmprego.count', -1) do
      delete :destroy, id: @industria_emprego
    end

    assert_redirected_to industria_empregos_path
  end
end
