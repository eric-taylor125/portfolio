require 'test_helper'

class TipoDeUsuariosControllerTest < ActionController::TestCase
  setup do
    @tipo_usuario = tipo_de_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:TipoUsuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_usuario" do
    assert_difference('TipoUsuario.count') do
      post :create, tipo_usuario: { nome: @tipo_usuario.nome }
    end

    assert_redirected_to tipo_de_usuario_path(assigns(:tipo_usuario))
  end

  test "should show tipo_usuario" do
    get :show, id: @tipo_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_usuario
    assert_response :success
  end

  test "should update tipo_usuario" do
    patch :update, id: @tipo_usuario, tipo_usuario: { nome: @tipo_usuario.nome }
    assert_redirected_to tipo_de_usuario_path(assigns(:tipo_usuario))
  end

  test "should destroy tipo_usuario" do
    assert_difference('TipoUsuario.count', -1) do
      delete :destroy, id: @tipo_usuario
    end

    assert_redirected_to tipo_de_usuarios_path
  end
end