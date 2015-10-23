require 'test_helper'

class EstadoPropostaControllerTest < ActionController::TestCase
  setup do
    @estado_propostum = estado_proposta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_proposta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_propostum" do
    assert_difference('EstadoPropostum.count') do
      post :create, estado_propostum: { nome: @estado_propostum.nome }
    end

    assert_redirected_to estado_propostum_path(assigns(:estado_propostum))
  end

  test "should show estado_propostum" do
    get :show, id: @estado_propostum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_propostum
    assert_response :success
  end

  test "should update estado_propostum" do
    patch :update, id: @estado_propostum, estado_propostum: { nome: @estado_propostum.nome }
    assert_redirected_to estado_propostum_path(assigns(:estado_propostum))
  end

  test "should destroy estado_propostum" do
    assert_difference('EstadoPropostum.count', -1) do
      delete :destroy, id: @estado_propostum
    end

    assert_redirected_to estado_proposta_path
  end
end
