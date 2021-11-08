class QuestionsController < ApplicationController
  def ask
    # hello
  end

  def answer
    @question = params[:ask]
    @answer = coach(@question)
  end

  def coach(question)
    if question == 'I am going to work'
      'Great!'
    elsif question.end_with?
      'Silly question, get dressed and go to work!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
