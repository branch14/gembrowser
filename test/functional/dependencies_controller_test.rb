require 'test_helper'

class DependenciesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dependencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dependency" do
    assert_difference('Dependency.count') do
      post :create, :dependency => { }
    end

    assert_redirected_to dependency_path(assigns(:dependency))
  end

  test "should show dependency" do
    get :show, :id => dependencies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dependencies(:one).to_param
    assert_response :success
  end

  test "should update dependency" do
    put :update, :id => dependencies(:one).to_param, :dependency => { }
    assert_redirected_to dependency_path(assigns(:dependency))
  end

  test "should destroy dependency" do
    assert_difference('Dependency.count', -1) do
      delete :destroy, :id => dependencies(:one).to_param
    end

    assert_redirected_to dependencies_path
  end
end
