require 'test_helper'

class PredictionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:predictions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prediction" do
    assert_difference('Prediction.count') do
      post :create, :prediction => { }
    end

    assert_redirected_to prediction_path(assigns(:prediction))
  end

  test "should show prediction" do
    get :show, :id => predictions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => predictions(:one).to_param
    assert_response :success
  end

  test "should update prediction" do
    put :update, :id => predictions(:one).to_param, :prediction => { }
    assert_redirected_to prediction_path(assigns(:prediction))
  end

  test "should destroy prediction" do
    assert_difference('Prediction.count', -1) do
      delete :destroy, :id => predictions(:one).to_param
    end

    assert_redirected_to predictions_path
  end
end
