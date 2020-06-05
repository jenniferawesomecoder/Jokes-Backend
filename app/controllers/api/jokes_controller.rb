class Api::JokesController < ApplicationController

  def index
    jokes = Joke.all
    render json: jokes
  end

  def show
    joke = Joke.find(params[:id])
    render json: joke
  end

  def favorited_by
    joke = Joke.find(params[:id])
    render json: joke.favorited_by
  end
end
