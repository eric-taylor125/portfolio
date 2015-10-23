require 'test_helper'

class FuncaoConcursosControllerTest < ActionController::TestCase
  setup do
    @funcao_concurso = funcao_concursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcao_concursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcao_concurso" do
    assert_difference('FuncaoConcurso.count') do
      post :create, funcao_concurso: { id_concurso: @funcao_concurso.id_concurso, id_funcao: @funcao_concurso.id_funcao }
    end

    assert_redirected_to funcao_concurso_path(assigns(:funcao_concurso))
  end

  test "should show funcao_concurso" do
    get :show, id: @funcao_concurso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funcao_concurso
    assert_response :success
  end

  test "should update funcao_concurso" do
    patch :update, id: @funcao_concurso, funcao_concurso: { id_concurso: @funcao_concurso.id_concurso, id_funcao: @funcao_concurso.id_funcao }
    assert_redirected_to funcao_concurso_path(assigns(:funcao_concurso))
  end

  test "should destroy funcao_concurso" do
    assert_difference('FuncaoConcurso.count', -1) do
      delete :destroy, id: @funcao_concurso
    end

    assert_redirected_to funcao_concursos_path
  end
end
