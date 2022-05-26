class MidgetsController < ApplicationController
  before_action :set_midget, only: [:edit, :update, :show, :destroy]
  before_action :set_index, only: [:index]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index

    @markers = @midgets.geocoded.map do |midget|
      {
        lat: midget.latitude,
        lng: midget.longitude,
        info_window: render_to_string(partial: "info_window", locals: { midget: midget }),
        image_url: helpers.asset_url("https://mon-nain-de-jardin.com/wp-content/uploads/2021/06/cropped-cropped-Nain-logo-sans-bg.png")
      }
    end
  end

  def new
    @midget = Midget.new
  end

  def create
    @midget = Midget.new(midget_params)
    @midget.user_id = current_user.id
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

  def set_index

    if params[:query].present?
      sql_query = "name ILIKE :query OR speciality ILIKE :query OR city ILIKE :query"
      @midgets = Midget.where(sql_query, query: "%#{params[:query]}%")
    else
      @midgets = Midget.all
    end
  end
end
