class QuestionsController < ApplicationController

  def index
    # JSON
    questions = File.open("public/questions.json") do |file|
      JSON.load(file)
    end

    # YAML
    # questions = YAML.load_file("public/questions.yml")

    render json: questions, status: 200
  end

end
