class AnswersController < ApplicationController
  def create
  	@exam = Exam.find(params.require(:exam_id))
  	@question = @exam.questions.find_by(id: params.require(:question_id))
	@answer = @question.answers.create(params.require(:answer).permit(:title))
	redirect_to exam_question_path(@exam,@question)
  end
  def show
  	@exam = Exam.find(params.require(:exam_id))
  	@question = @exam.questions.find_by(id: params.require(:id))
  end
end