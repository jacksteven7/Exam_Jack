class QuestionsController < ApplicationController
before_action :find_exam 

  def create
  	@exam = Exam.find(params.require(:exam_id))
  	if !params.require(:question).permit(:type).empty?
  		@question = @exam.questions.create(params.require(:question).permit(:title,:type))
  	else 
  		redirect_to redirect_path
  	end
  end
  def new
  end
  def show
  	@question = @exam.questions.find_by(id: params.require(:id))
  end
  def edit
    @question = @exam.questions.find_by(id: params.require(:id))
  end
  def update
    @question = @exam.questions.find_by(id: params.require(:id))
    if @question.update(params.require(:question).permit(:title,:type))
      redirect_to exam_question_path(@exam,@question)
    else
      render 'edit'
    end
  end
  def destroy
    @question = @exam.questions.find_by(id: params.require(:id))
    @question.destroy
    redirect_to @exam 
  end

  private 

  def find_exam
    @exam = Exam.find(params.require(:exam_id))
  end

end