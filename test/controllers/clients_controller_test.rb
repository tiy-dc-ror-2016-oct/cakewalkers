require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "create client" do
    post "/clients", params: { user: { email: "amax3002@gmail.com", full_name: "Alex Guy", password: "password", password_confirmation: "password" } }

    assert_response :redirect
    assert_equal User.last.full_name, "Alex Guy"
  end

  test "show specific client information" do
    get client_url(User.last)

    assert_select "h1", "Client Details for Alex Guy"
  end

  test "delete specific client information" do
    user_to_be_deleted = User.last
    delete client_url(user_to_be_deleted)

    assert_redirected_to root_url
    assert_raise ActiveRecord::RecordNotFound do
      User.find(user_to_be_deleted.id)
    end
  end
end
