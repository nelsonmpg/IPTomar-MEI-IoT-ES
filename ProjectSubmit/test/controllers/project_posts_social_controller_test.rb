require 'test_helper'

class ProjectPostsSocialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get project_posts_social_index_url
    assert_response :success
  end

end
