require 'test_helper'

class CadastrosControllerTest < ActionController::TestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference('Cadastro.count') do
      post :create, cadastro: { concent: @cadastro.concent, dateC: @cadastro.dateC, dateE: @cadastro.dateE, hd: @cadastro.hd, local: @cadastro.local, name: @cadastro.name, number: @cadastro.number, obs: @cadastro.obs, proced: @cadastro.proced, volume: @cadastro.volume }
    end

    assert_redirected_to cadastro_path(assigns(:cadastro))
  end

  test "should show cadastro" do
    get :show, id: @cadastro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastro
    assert_response :success
  end

  test "should update cadastro" do
    patch :update, id: @cadastro, cadastro: { concent: @cadastro.concent, dateC: @cadastro.dateC, dateE: @cadastro.dateE, hd: @cadastro.hd, local: @cadastro.local, name: @cadastro.name, number: @cadastro.number, obs: @cadastro.obs, proced: @cadastro.proced, volume: @cadastro.volume }
    assert_redirected_to cadastro_path(assigns(:cadastro))
  end

  test "should destroy cadastro" do
    assert_difference('Cadastro.count', -1) do
      delete :destroy, id: @cadastro
    end

    assert_redirected_to cadastros_path
  end
end
