require 'test_helper'

class IndustriaConcursosControllerTest < ActionController::TestCase
  setup do
    @industria_concurso = industria_concursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:industria_concursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create industria_concurso" do
    assert_difference('IndustriaConcurso.count') do
      post :create, industria_concurso: { id_concurso: @industria_concurso.id_concurso, id_industria: @industria_concurso.id_industria }
    end

    assert_redirected_to industria_concurso_path(assigns(:industria_concurso))
  end

  test "should show industria_concurso" do
    get :show, id: @industria_concurso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @industria_concurso
    assert_response :success
  end

  test "should update industria_concurso" do
    patch :update, id: @industria_concurso, industria_concurso: { id_concurso: @industria_concurso.id_concurso, id_industria: @industria_concurso.id_industria }
    assert_redirected_to industria_concurso_path(assigns(:industria_concurso))
  end

  test "should destroy industria_concurso" do
    assert_difference('IndustriaConcurso.count', -1) do
      delete :destroy, id: @industria_concurso
    end

    assert_redirected_to industria_concursos_path
  end
end
