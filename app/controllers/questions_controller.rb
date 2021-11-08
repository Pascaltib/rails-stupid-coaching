class QuestionsController < ApplicationController
  def ask; end

  def answer
    @ask_input = params[:ask_input] if params[:ask_input]
    @response = ''
    if @ask_input != 'I am going to work right now!' && (@ask_input[@ask_input.length - 1] != '?')
      @response = "I don't care, get dressed and go to work!"
    elsif @ask_input[@ask_input.length - 1] == '?'
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = ''
    end
  end
end
