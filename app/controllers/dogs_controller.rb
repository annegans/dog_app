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
    redirect_to(dogs.path)
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to(dog_path)
  end

  def destroy 
    dog = Dog.find(params[:id])
    dog.destroy
    redirect_to(dog_path)
  end

 private 

  def dog_params
    # This is a security method that allows us to update 
    params.require(:dog).permit(:name, :breed, :age, :color)
  end

end