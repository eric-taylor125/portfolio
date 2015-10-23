require 'test_helper'

class ProvinciaConcursosControllerTest < ActionController::TestCase
  setup do
    @provincia_concurso = provincia_concursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provincia_concursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provincia_concurso" do
    assert_difference('ProvinciaConcurso.count') do
      post :create, provincia_concurso: { id_concurso: @provincia_concurso.id_concurso, id_provincia: @provincia_concurso.id_provincia }
    end

    assert_redirected_to provincia_concurso_path(assigns(:provincia_concurso))
  end

  test "should show provincia_concurso" do
    get :show, id: @provincia_concurso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provincia_concurso
    assert_response :success
  end

  test "should update provincia_concurso" do
    patch :update, id: @provincia_concurso, provincia_concurso: { id_concurso: @provincia_concurso.id_concurso, id_provincia: @provincia_concurso.id_provincia }
    assert_redirected_to provincia_concurso_path(assigns(:provincia_concurso))
  end

  test "should destroy provincia_concurso" do
    assert_difference('ProvinciaConcurso.count', -1) do
      delete :destroy, id: @provincia_concurso
    end

    assert_redirected_to provincia_concursos_path
  end
end
