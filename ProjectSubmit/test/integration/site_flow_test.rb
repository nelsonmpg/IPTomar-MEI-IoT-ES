require 'test_helper'

class SiteFlowTest < ActionDispatch::IntegrationTest

  test "can see the home page" do
    get "/"
    assert_select "title", "ProjectSubmit"
  end

  test "can create a school" do
	  get "/schools/new"
	  assert_response :success
	 
	  post "/schools",
	    params: { school: { name: "Test School", description: "Descrição ao criar uma escola." } }
	  assert_response :redirect
	  follow_redirect!
	  assert_response :success
	  assert_select "p", "Test School"
	end

end
