require 'test_helper'

class IndustriaUsuariosControllerTest < ActionController::TestCase
  setup do
    @industria_usuario = industria_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:industria_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create industria_usuario" do
    assert_difference('IndustriaUsuario.count') do
      post :create, industria_usuario: { id_industria: @industria_usuario.id_industria, id_usuario: @industria_usuario.id_usuario }
    end

    assert_redirected_to industria_usuario_path(assigns(:industria_usuario))
  end

  test "should show industria_usuario" do
    get :show, id: @industria_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @industria_usuario
    assert_response :success
  end

  test "should update industria_usuario" do
    patch :update, id: @industria_usuario, industria_usuario: { id_industria: @industria_usuario.id_industria, id_usuario: @industria_usuario.id_usuario }
    assert_redirected_to industria_usuario_path(assigns(:industria_usuario))
  end

  test "should destroy industria_usuario" do
    assert_difference('IndustriaUsuario.count', -1) do
      delete :destroy, id: @industria_usuario
    end

    assert_redirected_to industria_usuarios_path
  end
end
