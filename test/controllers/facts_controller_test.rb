require 'test_helper'

class FactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fact = facts(:one)
  end

  test "should get index" do
    get facts_url
    assert_response :success
  end

  test "should get new" do
    get new_fact_url
    assert_response :success
  end

  test "should create fact" do
    assert_difference('Fact.count') do
      post facts_url, params: { fact: { fact_category: @fact.fact_category, fact_content: @fact.fact_content, fact_image: @fact.fact_image, fact_title: @fact.fact_title, track_id: @fact.track_id } }
    end

    assert_redirected_to fact_url(Fact.last)
  end

  test "should show fact" do
    get fact_url(@fact)
    assert_response :success
  end

  test "should get edit" do
    get edit_fact_url(@fact)
    assert_response :success
  end

  test "should update fact" do
    patch fact_url(@fact), params: { fact: { fact_category: @fact.fact_category, fact_content: @fact.fact_content, fact_image: @fact.fact_image, fact_title: @fact.fact_title, track_id: @fact.track_id } }
    assert_redirected_to fact_url(@fact)
  end

  test "should destroy fact" do
    assert_difference('Fact.count', -1) do
      delete fact_url(@fact)
    end

    assert_redirected_to facts_url
  end
end
