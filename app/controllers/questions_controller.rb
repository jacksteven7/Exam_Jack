class QuestionsController < ApplicationController
  def create
  	@exam = Exam.find(params.require(:exam_id))
  	@question = @exam.questions.create(params.require(:question).permit(:title,:type))
  	redirect_to @exam
  end
  def show
  	@exam = Exam.find(params.require(:exam_id))
  	@question = @exam.questions.create(params.require(:question).permit(:title,:type))
  end
end
