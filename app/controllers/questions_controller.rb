class QuestionsController < ApplicationController
  def create
  	@exam = Exam.find(params.require(:exam_id))
  	if !params.require(:question).permit(:type).empty?
  		@question = @exam.questions.create(params.require(:question).permit(:title,:type))
  		redirect_to @exam
  	else 
  		redirect_to @exam
  	end
  end
  def show
  	@exam = Exam.find(params.require(:exam_id))
  	@question = @exam.questions.find_by(id: params.require(:id))
  end
end
	