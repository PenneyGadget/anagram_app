class WordsController < ApplicationController
  respond_to :html, :json

  def create
    binding.pry
    @words = Word.new(word_params)

    respond_with @words
  end

  private

  def word_params
    params.require(:words).permit(words: [])
  end

end
