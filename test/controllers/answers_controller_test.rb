require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  test "should get _answer" do
    get :_answer
    assert_response :success
  end

end
