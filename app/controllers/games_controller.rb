class GamesController < ApplicationController
  LETTERS_LENGTH = 10
  @actual_time = Time.now
  def new
    @letters = generate_letters(LETTERS_LENGTH)
  end

  def score
    if params[:word]
      @word = params[:word]
    end
    if params[:letters]
      @letters = params[:letters]
    end
    if params[:actual_time]
      @start = params[:actual_time]
    end
  end

private

  def generate_letters(letters_size)
    chartset = Array("A".."Z")
    Array.new(letters_size) { chartset.sample }
  end
end
