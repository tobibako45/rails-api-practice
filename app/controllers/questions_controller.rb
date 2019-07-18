class QuestionsController < ApplicationController

  def index
    questions = File.open("public/questions.json") do |file|
      JSON.load(file)
    end
    render json: questions, status: 200
  end

end
