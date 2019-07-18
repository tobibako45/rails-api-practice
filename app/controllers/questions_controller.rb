class QuestionsController < ApplicationController

  def index
    # JSON
    questions = File.open("#{Rails.public_path}/questions.json") do |file|
      JSON.load(file)
    end

    # YAML
    # questions = YAML.load_file("#{Rails.public_path}/questions.yml")

    render json: questions, status: 200
  end

end
