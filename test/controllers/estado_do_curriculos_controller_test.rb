require 'test_helper'

class EstadoDoCurriculosControllerTest < ActionController::TestCase
  setup do
    @estado_curriculo = estado_do_curriculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:EstadoCurriculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_curriculo" do
    assert_difference('EstadoCurriculo.count') do
      post :create, estado_curriculo: { nome: @estado_curriculo.nome }
    end

    assert_redirected_to estado_do_curriculo_path(assigns(:estado_curriculo))
  end

  test "should show estado_curriculo" do
    get :show, id: @estado_curriculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_curriculo
    assert_response :success
  end

  test "should update estado_curriculo" do
    patch :update, id: @estado_curriculo, estado_curriculo: { nome: @estado_curriculo.nome }
    assert_redirected_to estado_do_curriculo_path(assigns(:estado_curriculo))
  end

  test "should destroy estado_curriculo" do
    assert_difference('EstadoCurriculo.count', -1) do
      delete :destroy, id: @estado_curriculo
    end

    assert_redirected_to estado_do_curriculos_path
  end
end
