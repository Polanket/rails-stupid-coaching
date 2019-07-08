# frozen_string_literal: true

# Class for managing questions
class QuestionsController < ApplicationController
  ANSWERS = {
    work: 'Great!',
    q_mark: 'Silly question, get dressed and go to work!',
    else: "I don't care, get dressed and go to work!'"
  }.freeze

  def ask; end

  def answer
    @question = params[:question]
    @answer = ''
    return @answer = ANSWERS[:work] if @question == 'I am going to work'

    return @answer = ANSWERS[:q_mark] if @question.match?(/\?$/)

    @answer = ANSWERS[:else]
  end
end
