require 'test_helper'

class GemmsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gemms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gemm" do
    assert_difference('Gemm.count') do
      post :create, :gemm => { }
    end

    assert_redirected_to gemm_path(assigns(:gemm))
  end

  test "should show gemm" do
    get :show, :id => gemms(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gemms(:one).to_param
    assert_response :success
  end

  test "should update gemm" do
    put :update, :id => gemms(:one).to_param, :gemm => { }
    assert_redirected_to gemm_path(assigns(:gemm))
  end

  test "should destroy gemm" do
    assert_difference('Gemm.count', -1) do
      delete :destroy, :id => gemms(:one).to_param
    end

    assert_redirected_to gemms_path
  end
end
