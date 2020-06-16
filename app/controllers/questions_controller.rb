class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    if params[:question] == 'I am going to work'
      @something = 'Great!'
    elsif params[:question].end_with? '?'
      @something = 'Silly qestion, get dressed and go to work!'
    else
      @something = "I don't care, get dressed and go to work!"
    end
  end
end
