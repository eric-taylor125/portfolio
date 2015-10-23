require 'test_helper'

class EmpregosControllerTest < ActionController::TestCase
  setup do
    @emprego = empregos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empregos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emprego" do
    assert_difference('Emprego.count') do
      post :create, emprego: { ID_Tipo_de_Emprego: @emprego.ID_Tipo_de_Emprego, ID_Usuario: @emprego.ID_Usuario, data_expiracao: @emprego.data_expiracao, data_inicio: @emprego.data_inicio, descricao: @emprego.descricao, titulo: @emprego.titulo }
    end

    assert_redirected_to emprego_path(assigns(:emprego))
  end

  test "should show emprego" do
    get :show, id: @emprego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emprego
    assert_response :success
  end

  test "should update emprego" do
    patch :update, id: @emprego, emprego: { ID_Tipo_de_Emprego: @emprego.ID_Tipo_de_Emprego, ID_Usuario: @emprego.ID_Usuario, data_expiracao: @emprego.data_expiracao, data_inicio: @emprego.data_inicio, descricao: @emprego.descricao, titulo: @emprego.titulo }
    assert_redirected_to emprego_path(assigns(:emprego))
  end

  test "should destroy emprego" do
    assert_difference('Emprego.count', -1) do
      delete :destroy, id: @emprego
    end

    assert_redirected_to empregos_path
  end
end
