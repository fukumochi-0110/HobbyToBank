class HobbiesController < ApplicationController
  def index
    @hobby = Hobby.all
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobby_params)
    if @hobby.save
      redirect_to hobbies_path
    else
      render :new
    end
  end


  private
  
  def hobby_params
    params.require(:hobby).permit(:hobby, :price).merge(user_id: current_user.id)
  end
end
