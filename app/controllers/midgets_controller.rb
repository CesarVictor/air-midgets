class MidgetsController < ApplicationController
  before_action :set_midget, only: %i[edit update show destroy]

  def new
    @midgets = Midget.new
  end

  def create
    @midget = Midget.new(midget_params)
    if @midget.save
      redirect_to midget_path(@midget)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @midget.update(midget_params)
      redirect_to midget_path(@midget)
    else
      render 'edit'
    end
  end

  def destroy
    if @midget.destroy
      redirect_to midgets_path
    else
      redirect_to midget_path(@midget)
    end
  end

  private

  def midget_params
    params.require(:midget).permit(:name, :speciality, :price, :description, :city)
  end

  def set_midget
    @midget = Midget.find(params[:id])
  end
end
