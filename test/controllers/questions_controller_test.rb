require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  test "should get _question" do
    get :_question
    assert_response :success
  end

end
