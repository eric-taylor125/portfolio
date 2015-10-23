require 'test_helper'

class ProvinciaEmpregosControllerTest < ActionController::TestCase
  setup do
    @provincia_emprego = provincia_empregos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provincia_empregos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provincia_emprego" do
    assert_difference('ProvinciaEmprego.count') do
      post :create, provincia_emprego: { id_emprego: @provincia_emprego.id_emprego, id_provincia: @provincia_emprego.id_provincia }
    end

    assert_redirected_to provincia_emprego_path(assigns(:provincia_emprego))
  end

  test "should show provincia_emprego" do
    get :show, id: @provincia_emprego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provincia_emprego
    assert_response :success
  end

  test "should update provincia_emprego" do
    patch :update, id: @provincia_emprego, provincia_emprego: { id_emprego: @provincia_emprego.id_emprego, id_provincia: @provincia_emprego.id_provincia }
    assert_redirected_to provincia_emprego_path(assigns(:provincia_emprego))
  end

  test "should destroy provincia_emprego" do
    assert_difference('ProvinciaEmprego.count', -1) do
      delete :destroy, id: @provincia_emprego
    end

    assert_redirected_to provincia_empregos_path
  end
end
