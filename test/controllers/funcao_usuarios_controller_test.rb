require 'test_helper'

class FuncaoUsuariosControllerTest < ActionController::TestCase
  setup do
    @funcao_usuario = funcao_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcao_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcao_usuario" do
    assert_difference('FuncaoUsuario.count') do
      post :create, funcao_usuario: { id_funcao: @funcao_usuario.id_funcao, id_usuario: @funcao_usuario.id_usuario }
    end

    assert_redirected_to funcao_usuario_path(assigns(:funcao_usuario))
  end

  test "should show funcao_usuario" do
    get :show, id: @funcao_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funcao_usuario
    assert_response :success
  end

  test "should update funcao_usuario" do
    patch :update, id: @funcao_usuario, funcao_usuario: { id_funcao: @funcao_usuario.id_funcao, id_usuario: @funcao_usuario.id_usuario }
    assert_redirected_to funcao_usuario_path(assigns(:funcao_usuario))
  end

  test "should destroy funcao_usuario" do
    assert_difference('FuncaoUsuario.count', -1) do
      delete :destroy, id: @funcao_usuario
    end

    assert_redirected_to funcao_usuarios_path
  end
end
