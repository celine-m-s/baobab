require 'test_helper'

class DealsControllerTest < ActionController::TestCase
  setup do
    @deal = deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deal" do
    assert_difference('Deal.count') do
      post :create, deal: { customer: @deal.customer, date: @deal.date, deposit: @deal.deposit, due_date: @deal.due_date, invoice_number: @deal.invoice_number, payment_status: @deal.payment_status, payment_type: @deal.payment_type, price: @deal.price, shipping_cost: @deal.shipping_cost, vat: @deal.vat }
    end

    assert_redirected_to organization_deal_path(assigns(:deal))
  end

  test "should show deal" do
    get :show, id: @deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal
    assert_response :success
  end

  test "should update deal" do
    patch :update, id: @deal, deal: { customer: @deal.customer, date: @deal.date, deposit: @deal.deposit, due_date: @deal.due_date, invoice_number: @deal.invoice_number, payment_status: @deal.payment_status, payment_type: @deal.payment_type, price: @deal.price, shipping_cost: @deal.shipping_cost, vat: @deal.vat }
    assert_redirected_to organization_deal_path(assigns(:deal))
  end

  test "should destroy deal" do
    assert_difference('Deal.count', -1) do
      delete :destroy, id: @deal
    end

    assert_redirected_to organization_deals_path
  end
end
