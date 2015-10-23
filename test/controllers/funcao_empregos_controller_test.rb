require 'test_helper'

class FuncaoEmpregosControllerTest < ActionController::TestCase
  setup do
    @funcao_emprego = funcao_empregos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcao_empregos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcao_emprego" do
    assert_difference('FuncaoEmprego.count') do
      post :create, funcao_emprego: { id_emprego: @funcao_emprego.id_emprego, id_funcao: @funcao_emprego.id_funcao }
    end

    assert_redirected_to funcao_emprego_path(assigns(:funcao_emprego))
  end

  test "should show funcao_emprego" do
    get :show, id: @funcao_emprego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funcao_emprego
    assert_response :success
  end

  test "should update funcao_emprego" do
    patch :update, id: @funcao_emprego, funcao_emprego: { id_emprego: @funcao_emprego.id_emprego, id_funcao: @funcao_emprego.id_funcao }
    assert_redirected_to funcao_emprego_path(assigns(:funcao_emprego))
  end

  test "should destroy funcao_emprego" do
    assert_difference('FuncaoEmprego.count', -1) do
      delete :destroy, id: @funcao_emprego
    end

    assert_redirected_to funcao_empregos_path
  end
end
