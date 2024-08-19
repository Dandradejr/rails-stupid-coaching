class QuestionsController < ApplicationController
  def question
  end
  def answer
  end

  def answer
    @question = params[:question] # Obtém a pergunta do parâmetro
    @answer = coach_answer(@question) # Calcula a resposta usando a lógica do treinador
  end

  private

  def coach_answer(question)
    if question == 'i am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
