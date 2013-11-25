require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get indexpage" do
    get :indexpage
    assert_response :success
  end

end
