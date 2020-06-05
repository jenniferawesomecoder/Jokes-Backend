class Api::GroupsController < ApplicationController

  def index
    groups = Group.all
    render json: groups
  end

  def create
    group = Group.create(group_params)
    if group.save
      render json: group
    else
      render json: { message: group.errors }, status: 400
    end
  end

  def show
    current_group = Group.find(params[:id])
    render json: current_group
  end

  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: { message: @group.errors }, status: 400
    end
  end

  def destroy
    current_group = Group.find(params[:id])
    current_group.destroy
  end


  def collections
    jokes = current_group.collections.uniq
    render json: jokes
  end

  def add_to_collections
    current_group = Group.find(params[:id])
    joke = Joke.find_or_create_by(joke_params)
    current_group.collections << joke unless current_group.collections.include?(joke)
    render json: current_group.collections.uniq
  end


  def remove_from_collections
    current_group = Group.find(params[:id])
    joke = Joke.find_by(id: params[:joke][:id])
    current_group.collections.delete(joke)
    render json: current_group.collections
  end

  private

  def group_params
    params.require(:group).permit(
      :title,
      :description
    )
  end

  def joke_params
    params.require(:joke).permit(:content)
  end


end
