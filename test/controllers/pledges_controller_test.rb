require 'test_helper'

class PledgesControllerTest < ActionController::TestCase
  setup do
    @campaign = campaigns(:one)
    @pledge = pledges(:one)
  end

  test "should get index" do
    get :index, params: { campaign_id: @campaign }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { campaign_id: @campaign }
    assert_response :success
  end

  test "should create pledge" do
    assert_difference('Pledge.count') do
      post :create, params: { campaign_id: @campaign, pledge: @pledge.attributes }
    end

    assert_redirected_to campaign_pledge_path(@campaign, Pledge.last)
  end

  test "should show pledge" do
    get :show, params: { campaign_id: @campaign, id: @pledge }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { campaign_id: @campaign, id: @pledge }
    assert_response :success
  end

  test "should update pledge" do
    put :update, params: { campaign_id: @campaign, id: @pledge, pledge: @pledge.attributes }
    assert_redirected_to campaign_pledge_path(@campaign, Pledge.last)
  end

  test "should destroy pledge" do
    assert_difference('Pledge.count', -1) do
      delete :destroy, params: { campaign_id: @campaign, id: @pledge }
    end

    assert_redirected_to campaign_pledges_path(@campaign)
  end
end
