require 'test_helper'

class PurchacesControllerTest < ActionController::TestCase
  setup do
    @purchace = purchaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchace" do
    assert_difference('Purchace.count') do
      post :create, purchace: { catagory: @purchace.catagory, invoice_id: @purchace.invoice_id, name: @purchace.name, quantity: @purchace.quantity }
    end

    assert_redirected_to purchace_path(assigns(:purchace))
  end

  test "should show purchace" do
    get :show, id: @purchace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchace
    assert_response :success
  end

  test "should update purchace" do
    patch :update, id: @purchace, purchace: { catagory: @purchace.catagory, invoice_id: @purchace.invoice_id, name: @purchace.name, quantity: @purchace.quantity }
    assert_redirected_to purchace_path(assigns(:purchace))
  end

  test "should destroy purchace" do
    assert_difference('Purchace.count', -1) do
      delete :destroy, id: @purchace
    end

    assert_redirected_to purchaces_path
  end
end
