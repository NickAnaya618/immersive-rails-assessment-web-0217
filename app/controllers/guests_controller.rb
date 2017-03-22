class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by(id: params[:id])
    @episodes = Episode.all
  end

  def update
    binding.pry
    @guest = Guest.find_by(id: params[:id])
    respond_to do |format|
       if @guest.update_attributes(id: params[:id])
         format.html { redirect_to @guest, notice: 'Guest was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: "edit" }
         format.json { render json: @guest.errors, status: :unprocessable_entity }
       end
     end
  end
end
