class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new
    @actor = Actor.new
  end

  def create
    Actor.create actor_params
    redirect_to actors_path
  end

  def edit
    @actor = Actor.find(params[:id])
  end


  def update
    actor = Actor.find(params[:id])
    actor.update_attributes actor_params
    redirect_to actor_path(actor)
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    redirect_to actors_path
  end

  private # Private means only the controller can call on this
  def actor_params
    params.require(:actor).permit(:name)
  end
end
