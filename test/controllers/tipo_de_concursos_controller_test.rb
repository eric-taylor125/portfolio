require 'test_helper'

class TipoDeConcursosControllerTest < ActionController::TestCase
  setup do
    @tipo_concurso = tipo_de_concursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:TipoConcursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_concurso" do
    assert_difference('TipoConcurso.count') do
      post :create, tipo_concurso: { nome: @tipo_concurso.nome }
    end

    assert_redirected_to tipo_de_concurso_path(assigns(:tipo_concurso))
  end

  test "should show tipo_concurso" do
    get :show, id: @tipo_concurso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_concurso
    assert_response :success
  end

  test "should update tipo_concurso" do
    patch :update, id: @tipo_concurso, tipo_concurso: { nome: @tipo_concurso.nome }
    assert_redirected_to tipo_de_concurso_path(assigns(:tipo_concurso))
  end

  test "should destroy tipo_concurso" do
    assert_difference('TipoConcurso.count', -1) do
      delete :destroy, id: @tipo_concurso
    end

    assert_redirected_to tipo_de_concursos_path
  end
end
