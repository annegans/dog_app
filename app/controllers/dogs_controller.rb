class DogsController < ApplicationController

  def index  
    @dogs = Dog.all
  end

  def show 
     @dog = Dog.find(params[:id])
  end

  def new 
    @dog = Dog.new
  end
 
 def create
  Dog.create(dog_params)
  ridirect_to(dogs.path)
 end

 private 

  def dog_params
    # This is a security method that allows us to update 
    params.require(:dog).permit(:name, :breed, :age, :color)
  end

end