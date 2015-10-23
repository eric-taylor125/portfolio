require 'test_helper'

class CurriculosEmpregosControllerTest < ActionController::TestCase
  setup do
    @curriculos_emprego = curriculos_empregos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curriculos_empregos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curriculos_emprego" do
    assert_difference('CurriculosEmprego.count') do
      post :create, curriculos_emprego: { id_curriculo: @curriculos_emprego.id_curriculo, id_emprego: @curriculos_emprego.id_emprego }
    end

    assert_redirected_to curriculos_emprego_path(assigns(:curriculos_emprego))
  end

  test "should show curriculos_emprego" do
    get :show, id: @curriculos_emprego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curriculos_emprego
    assert_response :success
  end

  test "should update curriculos_emprego" do
    patch :update, id: @curriculos_emprego, curriculos_emprego: { id_curriculo: @curriculos_emprego.id_curriculo, id_emprego: @curriculos_emprego.id_emprego }
    assert_redirected_to curriculos_emprego_path(assigns(:curriculos_emprego))
  end

  test "should destroy curriculos_emprego" do
    assert_difference('CurriculosEmprego.count', -1) do
      delete :destroy, id: @curriculos_emprego
    end

    assert_redirected_to curriculos_empregos_path
  end
end
