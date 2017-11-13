class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @query = params[:query]

    @answer = if @query.downcase.include? "work"
      "YES!!"
    else
      ["No, fuck you!", "I don't care", "Go to work!"].sample
    end
  end
end
