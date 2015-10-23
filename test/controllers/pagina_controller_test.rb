require 'test_helper'

class PaginaControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get sobre" do
    get :sobre
    assert_response :success
  end

  test "should get ajuda" do
    get :ajuda
    assert_response :success
  end

end
