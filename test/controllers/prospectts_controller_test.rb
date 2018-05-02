require 'test_helper'

class ProspecttsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospectt = prospectts(:one)
  end

  test "should get index" do
    get prospectts_url
    assert_response :success
  end

  test "should get new" do
    get new_prospectt_url
    assert_response :success
  end

  test "should create prospectt" do
    assert_difference('Prospectt.count') do
      post prospectts_url, params: { prospectt: { company: @prospectt.company, first_name: @prospectt.first_name, job_title: @prospectt.job_title, last_address: @prospectt.last_address, mail: @prospectt.mail, phone: @prospectt.phone } }
    end

    assert_redirected_to prospectt_url(Prospectt.last)
  end

  test "should show prospectt" do
    get prospectt_url(@prospectt)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospectt_url(@prospectt)
    assert_response :success
  end

  test "should update prospectt" do
    patch prospectt_url(@prospectt), params: { prospectt: { company: @prospectt.company, first_name: @prospectt.first_name, job_title: @prospectt.job_title, last_address: @prospectt.last_address, mail: @prospectt.mail, phone: @prospectt.phone } }
    assert_redirected_to prospectt_url(@prospectt)
  end

  test "should destroy prospectt" do
    assert_difference('Prospectt.count', -1) do
      delete prospectt_url(@prospectt)
    end

    assert_redirected_to prospectts_url
  end
end
