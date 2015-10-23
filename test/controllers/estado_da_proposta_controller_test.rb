require 'test_helper'

class EstadoDaPropostaControllerTest < ActionController::TestCase
  setup do
    @estado_proposta = estado_da_proposta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:EstadoProposta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_proposta" do
    assert_difference('EstadoDaPropostum.count') do
      post :create, estado_proposta: { nome: @estado_proposta.nome }
    end

    assert_redirected_to estado_da_propostum_path(assigns(:estado_proposta))
  end

  test "should show estado_proposta" do
    get :show, id: @estado_proposta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_proposta
    assert_response :success
  end

  test "should update estado_proposta" do
    patch :update, id: @estado_proposta, estado_proposta: { nome: @estado_proposta.nome }
    assert_redirected_to estado_da_propostum_path(assigns(:estado_proposta))
  end

  test "should destroy estado_proposta" do
    assert_difference('EstadoDaPropostum.count', -1) do
      delete :destroy, id: @estado_proposta
    end

    assert_redirected_to estado_da_proposta_path
  end
end
