class AnswersController < ApplicationController
  def create
    @exam = Exam.find(params.require(:exam_id))
    @question = @exam.questions.find_by(id: params.require(:question_id))
    @answer = @question.answers.create(params.require(:answer).permit(:title,:correct))
    redirect_to redirect_path
  end
  def new
    @exam = Exam.find(params.require(:exam_id))
    @question = @exam.questions.find_by(id: params.require(:question_id))
    @answer = @question.answers.build
  end
  def show
    @exam = Exam.find(params.require(:exam_id))
    @question = @exam.questions.find_by(id: params.require(:id))
  end
  def destroy
    @exam = Exam.find(params.require(:exam_id))
    @question = @exam.questions.find_by(id: params.require(:question_id))
    @answer = @question.answers.find_by(id: params.require(:id))
    @answer.destroy
    redirect_to exam_question_path(@exam,@question)
  end
end